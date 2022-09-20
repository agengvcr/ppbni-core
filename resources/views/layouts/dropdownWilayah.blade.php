@if($model)
@foreach($model as $row)
<option value="{{$row->nama}}">{{$row->nama}}</option>
@endforeach

@endif