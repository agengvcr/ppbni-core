@extends('adminlte::page')

@section('title', 'Anggota')

@section('content_header')
<meta name="csrf-token" content="{{ csrf_token() }}" />
    


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" id="tambahBaru" >
  Tambah Anggota
</button>

<!-- Modal -->
<div class="modal fade" id="tambahAnggota" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Tambah Anggota</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form action="{{action('AnggotaController@postData')}}" method="POST">
            <div class="modal-body">
                @csrf
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">NIK</label>
                    <input required name="nik" type="text" class="form-control input-sm col-sm-8" placeholder="NIK">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">ID Anggota</label>
                    <input required name="id" type="text" class="form-control input-sm col-sm-8" placeholder="ID Anggota">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Nama</label>
                    <input required name="nama" type="text" class="form-control input-sm col-sm-8"placeholder="Nama">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Agama</label>
                    <select required name="agama" id="inputState" class="form-control col-sm-8">
                        <option>Islam</option>
                        <option>Budha</option>
                        <option>Kristen</option>
                        <option>Budha</option>
                    </select>
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Tempat Lahir</label>
                    <input required name="tempatlahir" type="text" class="form-control input-sm col-sm-8"placeholder="Alamat">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Tanggal Lahir</label>
                    <input required name="tanggallahir" type="date" class="form-control input-sm col-sm-8"placeholder="Alamat">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Alamat</label>
                    <input required name="alamat" type="text" class="form-control input-sm col-sm-8"placeholder="Alamat">
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Masa Berlaku</label>
                    <input required name="masaberlaku" type="date" class="form-control input-sm col-sm-8"placeholder="Alamat">
                </div>
                <div class="form-row" id ="divisi">
                    <label class="col-sm-3" for="exampleInputEmail1">Divisi</label>
                    <select required name="divisi" id="inputState" class="form-control col-sm-8">
                        <option>DPC</option>
                        <option>DPAC</option>
                        <option>RANTING</option>
                    </select>
                </div>
                <div class="form-row" id="kecamatan">
                    <label class="col-sm-3" for="exampleInputEmail1">Kecamatan</label>
                    <select  name="kecamatan" id="inputState" class="form-control col-sm-8">
                    @foreach($kecamatan as $row)
                        <option>{{$row->nama}}</option>
                    @endforeach
                    </select>
                </div>
                <div class="form-row" id="desa">
                    <label class="col-sm-3" for="exampleInputEmail1">Desa</label>
                    <select  name="desa" id="desa" class="form-control col-sm-8">
                    </select>
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Jabatan</label>
                    <select required name="jabatan" id="inputState" class="form-control col-sm-8">
                        <option value= "KETUA">KETUA</option>
                        <option value="WAKIL KETUA">WAKIL KETUA</option>
                        <option value="SEKRETARIS">SEKRETARIS</option>
                        <option value="WAKIL SEKRETARIS">WAKIL SEKRETARIS</option>
                        <option value="BENDAHARA">BENDAHARA</option>
                        <option value="WAKIL BENDAHARA">WAKIL BENDAHARA</option>
                        <option value="BIDANG HUKUM, HAM DAN PERUNDANG-UNDANGAN">BIDANG HUKUM, HAM DAN PERUNDANG-UNDANGAN</option>
                        <option value="BIDANG BIROKRASI PEMERINTAH DAN HUBUNGAN ANTAR LEMBAGA">BIDANG BIROKRASI PEMERINTAH DAN HUBUNGAN ANTAR LEMBAGA</option>
                        <option value="BIDANG ORGANISASI KADERISASI KEANGGOTAAN (OKK)">BIDANG ORGANISASI KADERISASI KEANGGOTAAN (OKK)</option>
                        <option value="BIDANG PERTAHANAN DAN KEAMANAN (HANKAM)">BIDANG PERTAHANAN DAN KEAMANAN (HANKAM)</option>
                        <option value="BIDANG PENDIDIKAN DAN LATIHAN (DIKLAT) PENGEMBANGAN SUMBER DAYA MANUSIA DAN SEKTOR INFORMAL">BIDANG PENDIDIKAN DAN LATIHAN (DIKLAT) PENGEMBANGAN SUMBER DAYA MANUSIA DAN SEKTOR INFORMAL</option>
                        <option value="BIDANG KEPEMUDAAN OLAHRAGA DAN ORGANISASI">BIDANG KEPEMUDAAN OLAHRAGA DAN ORGANISASI</option>
                        <option value="BIDANG USAHA MIKRO KECIL MENENGAH DAN KOPERASI">BIDANG USAHA MIKRO KECIL MENENGAH DAN KOPERASI</option>
                        <option value="BIDANG SOSIAL POLITIK">BIDANG SOSIAL POLITIK</option>
                        <option value="BIDANG HUBUNGAN MASYARAKAT (HUMAS)">BIDANG HUBUNGAN MASYARAKAT (HUMAS)</option>
                        <option value="BIDANG SENI DAN BUDAYA">BIDANG SENI DAN BUDAYA</option>
                        <option value="BIDANG KERUKUNAN UMAT BERAGAMA">BIDANG KERUKUNAN UMAT BERAGAMA</option>
                        <option value="BIDANG KESEHATAN, BENCANA ALAM, PERLINDUNGAN ANAK DAN PEMBERDAYAAN PEREMPUAN">BIDANG KESEHATAN, BENCANA ALAM, PERLINDUNGAN ANAK DAN PEMBERDAYAAN PEREMPUAN</option>
                        <option value="BIDANG PENGEMBANGAN SARANA PRASARANA JARINGAN KEMITRAAN INDUSTRI PERBURUHAN, TRANSPORTASI DAN CORPORATE SOSIAL RESPONDENSIBILITY (CSR)">BIDANG PENGEMBANGAN SARANA PRASARANA JARINGAN KEMITRAAN INDUSTRI PERBURUHAN, TRANSPORTASI DAN CORPORATE SOSIAL RESPONDENSIBILITY (CSR)</option>
                        <option value="KOMANDAN SATGAS">KOMANDAN SATGAS</option>
                        <option value="WAKIL SATGAS">WAKIL SATGAS</option>
                        <option value="ANGGOTA SATGAS">ANGGOTA SATGAS</option>
                    </select>
                </div>
                <div class="form-row">
                    <label class="col-sm-3" for="exampleInputEmail1">Index</label>
                    <select required name="index" id="inputState" class="form-control col-sm-8">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
        </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="deleteAnggota" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Hapus Anggota</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form id="form-delete" action="{{action('AnggotaController@postDelete')}}" method="POST">
            <div class="modal-body">
                @csrf
                <input type="hidden" name="id">
                Apa kamu yakin menghapus data ini ?
            </div>
                
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-danger">Delete</button>
            </div>
        </form>
        </div>
    </div>
</div>


@stop

@section('content')

@if(Session::has('success'))
<div class="alert alert-success alert-dismissible">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Success!</strong> {{Session::get('success')}}
</div>
@endif
@if(Session::has('error'))
<div class="alert alert-danger alert-dismissible">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Error!</strong> {{Session::get('error')}}
</div>
@endif
<table id="grid" class="table table-striped table-bordered compact" style="width:100%">
    <thead>
        <tr>
            <th>NIK</th>
            <th>ID Anggota</th>
            <th>Nama</th>
            <th>Masa Berlaku</th>
            <th>Divisi</th>
            <!-- <th>Tempat Tanggal Lahir</th> -->
            <th>Jabatan</th>
            <th>Index</th>
            <th>Kecamatan</th>
            <th>Desa</th>
            <!-- <th>Jabatan</th> -->
            <!-- <th>Alamat</th> -->
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($model as $row)
            <tr>
                <td>{{$row->anggota_nik}}</td>
                <td>{{$row->anggota_id}}</td>
                <td>{{$row->anggota_nama}}</td>
                <td>{{\Carbon\Carbon::parse($row->anggota_masaberlaku)->format('d-F-Y')}}</td>
                <td>{{$row->anggota_divisi}}</td>
                <!-- <td>2011/04/25</td> -->
                <td>{{$row->anggota_jabatan}}</td>
                <td>{{$row->anggota_index}}</td>
                <td>{{$row->anggota_kecamatan}}</td>
                <td>{{$row->anggota_desa}}</td>
                <!-- <td></td> -->
                <!-- <td></td> -->
                <td>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-success edit-data" data-id="{{$row->anggota_id}}">Edit</button>
                        <button type="button" class="btn btn-danger delete-data" data-id="{{$row->anggota_id}}">Delete</button>
                    </div>
                </td>
            </tr>
        @endforeach            
    </tbody>
</table>
@stop

@section('css')
    
@stop

@section('footer')
    
@stop

@section('js')
<script>
    $(document).ready(function() {
        $('#grid').DataTable();
        $('[name=kecamatan]').on("change",function(){
            var kecamatan = $(this).val();
            $.ajax({
                type: 'GET',
                url: "{{action('AnggotaController@getDesa')}}"+'?kecamatan='+kecamatan,
                dataType : 'html',
                success: function(data) {
                    console.log('test');
                    $('[name=desa]').html(data);
                }
            });
        });

        $('[name=divisi]').on('change',function(){
            if($(this).val() == 'DPC'){
                $('#desa').hide();
                $('#kecamatan').hide();
            }else if ($(this).val() == 'DPAC'){
                $('#desa').hide();
                $('#kecamatan').show();
            }
        });


        $('#tambahBaru').on('click',function(){
            var targetContainer = $('#tambahAnggota');
                        targetContainer.find('[name=nik]').val('');
                        targetContainer.find('[name=id]').val('').attr('readonly',true);
                        targetContainer.find('[name=nama]').val('');
                        targetContainer.find('[name=alamat').val('');
                        targetContainer.find('[name=masaberlaku]').val('');
                        targetContainer.find('[name=divisi]').val('');
                        targetContainer.find('[name=kecamatan]').val('');
                        targetContainer.find('[name=desa]').val('');
                        targetContainer.find('[name=jabatan]').val('');
                        targetContainer.modal('show');
        });
        $('.edit-data').on('click',function(){
            var id = $(this).data('id');

            $.ajax({
                type: 'GET',
                url: "{{action('AnggotaController@get')}}"+'/'+id,
                dataType : 'json',
                success: function(data) {
                    var targetContainer = $('#tambahAnggota');
                        targetContainer.find('[name=nik]').val(data.anggota_nik);
                        targetContainer.find('[name=id]').val(data.anggota_id).attr('readonly',true);
                        targetContainer.find('[name=nama]').val(data.anggota_nama);
                        targetContainer.find('[name=alamat').val(data.anggota_alamat);
                        targetContainer.find('[name=masaberlaku]').val(data.anggota_masaberlaku);
                        targetContainer.find('[name=divisi]').val(data.anggota_divisi);
                        targetContainer.find('[name=kecamatan]').val(data.anggota_kecamatan);
                        targetContainer.find('[name=index]').val(data.anggota_index);
                        targetContainer.find('[name=desa]').empty().append("<option value='"+data.anggota_desa+"'>"+data.anggota_desa+"</option>");
                        // targetContainer.find('[name=desa]').val(data.anggota_desa);
                        targetContainer.find('[name=jabatan]').val(data.anggota_jabatan);
                        targetContainer.modal('show');
                }
            });
        });

        $('.delete-data').on('click',function(){
            var id = $(this).data('id');
            var targetContainer = $('#deleteAnggota');
                targetContainer.find('[name=id]').val(id).attr('readonly',true);
                targetContainer.modal('show');
                
        });
    });
</script>

@stop