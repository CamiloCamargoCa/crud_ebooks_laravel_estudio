<!-- Id Field -->
<div class="form-group">
    <!-- {!! Form::label('id', 'Id:') !!}
    <p>{!! $author->id !!}</p> -->
</div>

<!-- Name Field -->
<div class="form-group">
    {!! Form::label('name', 'Nombre:') !!}
    <p>{!! $author->name !!}</p>
</div>

<!-- Bio Field -->
<div class="form-group">
    {!! Form::label('bio', 'Biografia:') !!}
    <p>{!! $author->bio !!}</p>
</div>

<!-- Image Field -->
<div class="form-group">
    {!! Form::label('image', 'Imagen:') !!}
    <!-- <p>{!! $author->image !!}</p> -->
    <img src="{!! $author->image !!}" alt="">
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Creado:') !!}
    <p>{!! $author->created_at !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Actualizado:') !!}
    <p>{!! $author->updated_at !!}</p>
</div>

