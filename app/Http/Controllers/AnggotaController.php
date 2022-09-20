<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class AnggotaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    
    public function index(Request $request,$result = null)
    {
        
        $model = DB::select("select * from anggota where anggota_active = '1'");
        $kecamatan = self::getKecamatan();
        $kelurahan = DB::select("select * from kelurahan");
        return view('anggota.index')
            ->with('kecamatan',$kecamatan)
            ->with('kelurahan',$kelurahan)
            ->with('result',$result)
            ->with('model',$model);
    }

    public function postData(Request $request){
        $result = array('success' => false,'errorMessage' => null , 'successMessage' => null);

        $inputs = $request->all();
        $validate = self::validateData($inputs);  
        
        if($validate['success'] == true){
            $query = self::saveUpdate($inputs);

            if($query['success'] ==  false){
                $result['errorMessage'] = $query['status'];
                $result['success'] = false;
                $request->session()->flash('error', $query['status']);

            }else{
                $result['successMessage'] = $query['status'];
                $result['success'] = true;
                $request->session()->flash('success', $query['status']);
            }
        }else{
            $result['errorMessage'] = $validate['errorMessage'];
            $request->session()->flash('error', $validate['errorMessage']);

        }

        return redirect()->action('AnggotaController@index');
        
    }

    public function validateData($data){
        $result = array('success' => false,'errorMessage' => null );
        if(
            DB::selectOne("select 
            1 as result 
            from(select count(*) as total from anggota where anggota_id = ? and anggota_active = '1' group by anggota_id) as x where total > 1",[$data['id']])
        ){
            $result['success'] = false;
            $result['errorMessage'] = 'DUPLUCATE_ID';
        }else{
            $result['success'] = true;
        }

        return $result;
    }

    public function getKecamatan(){
        $model = DB::select("select * from wilayah where kode like '%32.01%' and length(kode) = 8");

        return $model;
    }

    public function getDesa(Request $request){
        $kode = DB::selectOne("select kode from wilayah where nama = ?",[$request->input('kecamatan')]);
        $model = DB::select("select * from wilayah where kode like '".$kode->kode."%' and length(kode) > 8");
        
        return view('layouts.dropdownWilayah')
            ->with('model',$model);
    }

    public function get($id){
        $model = DB::selectOne("select * from anggota where anggota_id = ? and anggota_active = '1'",[$id]);

        return response()->json($model);
    }

    public function postDelete(Request $request){
        $result = array('success' => false,'status' => null );

        
        try{
            $result['status'] = 'Data berhasil di hapus';
            $result['success'] = true;

            $arraydata=array(
                'anggota_active'=>0,
            );
            DB::table('anggota')->where('anggota_id',$request->input('id'))
                    ->where('anggota_active','1')
                    ->update($arraydata);
        }catch(\Exception $e){
            $result['success'] = false;
            $result['status'] = $e->getMessage();
        }

        $request->session()->flash('success', $result['status']);

        return redirect()->action('AnggotaController@index');
    }

    public function saveUpdate($data){
        
        $result = array('success' => false,'status' => null );
        try {
            if(
                DB::selectOne("select 1 from anggota where anggota_nik = ? and anggota_active ='1'",[$data['nik']]) &&
                !DB::selectOne("select 1 from anggota where anggota_id = ? and anggota_active = '1'",[$data['id']])                
            ){
                // update
                $result['status'] = 'NIK sudah ada !!!';
                $result['success'] = false;
            }else if( 
                // DB::selectOne("select 1 from anggota where anggota_nik = ?",[$data['nik']]) &&
                DB::selectOne("select 1 from anggota where anggota_id = ?",[$data['id']])
            ){
                
                $result['status'] = 'Data berhasil diperbaharui';
                $result['success'] = true;
                $kecamatan = $data['divisi'] == 'DPAC' || $data['divisi'] == 'RANTING' ?  $data['kecamatan']: null;
                $desa = $data['divisi'] == 'RANTING'  ?  $data['desa']: null;
                $arraydata=array(
                    'anggota_nik'=>$data['nik'],
                    // "anggota_id"=>$data['id'],
                    "anggota_nama"=>$data['nama'],
                    "anggota_alamat"=>$data['alamat'],
                    "anggota_masaberlaku"=>$data['masaberlaku'],
                    "anggota_divisi"=>$data['divisi'],
                    "anggota_kecamatan"=> $kecamatan,
                    "anggota_desa"=>$desa,
                    "anggota_jabatan"=>$data['jabatan'],
                    "anggota_modifieduserid"=>1,
                    "anggota_index" => $data['index'],
                    "anggota_modifieddate"=>\Carbon\Carbon::now(),
                    "anggota_tempatlahir" => $data['tempatlahir'],
                    "anggota_tanggallahir" => $data['tanggallahir'],
                    "anggota_agama" => $data['agama']
                );

                DB::table('anggota')->where('anggota_id',$data['id'])
                ->where('anggota_active','1')
                    ->update($arraydata);
            }else{
                // insert //default kode id APPBNI-
                $lasid = DB::selectOne("select anggota_id as lasid from anggota where anggota_active = '1' order by anggota_id desc limit 1");
                $kecamatan = $data['divisi'] == 'DPAC' || $data['divisi'] == 'RANTING' ?  $data['kecamatan']: null;
                $desa = $data['divisi'] == 'RANTING'  ?  $data['desa']: null;
                $data=array(
                    'anggota_nik'=>$data['nik'],
                    "anggota_id"=>($lasid != null ? intVal($lasid->lasid)+1 : 1),
                    "anggota_nama"=>$data['nama'],
                    "anggota_alamat"=>$data['alamat'],
                    "anggota_masaberlaku"=>$data['masaberlaku'],
                    "anggota_divisi"=>$data['divisi'],
                    "anggota_kecamatan"=>$kecamatan,
                    "anggota_desa"=>$desa,
                    "anggota_jabatan"=>$data['jabatan'],
                    "anggota_createduserid"=>1,
                    "anggota_active" => 1,
                    "anggota_index" => $data['index'],
                    "anggota_createddate"=>\Carbon\Carbon::now(),
                    "anggota_tempatlahir" => $data['tempatlahir'],
                    "anggota_tanggallahir" => $data['tanggallahir'],
                    "anggota_agama" => $data['agama']
                );
                DB::table('anggota')->insert($data);
                $result['status'] = 'Data berhasil tersimpan';
                $result['success'] = true;
            }
        } catch (\Exception $e) {
            $result['success'] = false;
            $result['status'] = $e->getMessage();
        }

        return $result;
        
    }
}
