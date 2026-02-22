// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhotosModel {

@HiveField(0) int get albumId;@HiveField(1) int get id;@HiveField(2) String get title;@HiveField(3) String get url;@HiveField(4) String get thumbnailUrl;
/// Create a copy of PhotosModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotosModelCopyWith<PhotosModel> get copyWith => _$PhotosModelCopyWithImpl<PhotosModel>(this as PhotosModel, _$identity);

  /// Serializes this PhotosModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotosModel&&(identical(other.albumId, albumId) || other.albumId == albumId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,albumId,id,title,url,thumbnailUrl);

@override
String toString() {
  return 'PhotosModel(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $PhotosModelCopyWith<$Res>  {
  factory $PhotosModelCopyWith(PhotosModel value, $Res Function(PhotosModel) _then) = _$PhotosModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int albumId,@HiveField(1) int id,@HiveField(2) String title,@HiveField(3) String url,@HiveField(4) String thumbnailUrl
});




}
/// @nodoc
class _$PhotosModelCopyWithImpl<$Res>
    implements $PhotosModelCopyWith<$Res> {
  _$PhotosModelCopyWithImpl(this._self, this._then);

  final PhotosModel _self;
  final $Res Function(PhotosModel) _then;

/// Create a copy of PhotosModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? albumId = null,Object? id = null,Object? title = null,Object? url = null,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
albumId: null == albumId ? _self.albumId : albumId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhotosModel].
extension PhotosModelPatterns on PhotosModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotosModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotosModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotosModel value)  $default,){
final _that = this;
switch (_that) {
case _PhotosModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotosModel value)?  $default,){
final _that = this;
switch (_that) {
case _PhotosModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int albumId, @HiveField(1)  int id, @HiveField(2)  String title, @HiveField(3)  String url, @HiveField(4)  String thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotosModel() when $default != null:
return $default(_that.albumId,_that.id,_that.title,_that.url,_that.thumbnailUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int albumId, @HiveField(1)  int id, @HiveField(2)  String title, @HiveField(3)  String url, @HiveField(4)  String thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _PhotosModel():
return $default(_that.albumId,_that.id,_that.title,_that.url,_that.thumbnailUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int albumId, @HiveField(1)  int id, @HiveField(2)  String title, @HiveField(3)  String url, @HiveField(4)  String thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _PhotosModel() when $default != null:
return $default(_that.albumId,_that.id,_that.title,_that.url,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhotosModel implements PhotosModel {
  const _PhotosModel({@HiveField(0) required this.albumId, @HiveField(1) required this.id, @HiveField(2) required this.title, @HiveField(3) required this.url, @HiveField(4) required this.thumbnailUrl});
  factory _PhotosModel.fromJson(Map<String, dynamic> json) => _$PhotosModelFromJson(json);

@override@HiveField(0) final  int albumId;
@override@HiveField(1) final  int id;
@override@HiveField(2) final  String title;
@override@HiveField(3) final  String url;
@override@HiveField(4) final  String thumbnailUrl;

/// Create a copy of PhotosModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotosModelCopyWith<_PhotosModel> get copyWith => __$PhotosModelCopyWithImpl<_PhotosModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotosModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotosModel&&(identical(other.albumId, albumId) || other.albumId == albumId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,albumId,id,title,url,thumbnailUrl);

@override
String toString() {
  return 'PhotosModel(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$PhotosModelCopyWith<$Res> implements $PhotosModelCopyWith<$Res> {
  factory _$PhotosModelCopyWith(_PhotosModel value, $Res Function(_PhotosModel) _then) = __$PhotosModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int albumId,@HiveField(1) int id,@HiveField(2) String title,@HiveField(3) String url,@HiveField(4) String thumbnailUrl
});




}
/// @nodoc
class __$PhotosModelCopyWithImpl<$Res>
    implements _$PhotosModelCopyWith<$Res> {
  __$PhotosModelCopyWithImpl(this._self, this._then);

  final _PhotosModel _self;
  final $Res Function(_PhotosModel) _then;

/// Create a copy of PhotosModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? albumId = null,Object? id = null,Object? title = null,Object? url = null,Object? thumbnailUrl = null,}) {
  return _then(_PhotosModel(
albumId: null == albumId ? _self.albumId : albumId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
