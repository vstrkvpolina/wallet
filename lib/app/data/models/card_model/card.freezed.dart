// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'card.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// Card _$CardFromJson(Map<String, dynamic> json) {
//   return _Card.fromJson(json);
// }

// /// @nodoc
// mixin _$Card {
//   int get number => throw _privateConstructorUsedError;
//   DateTime get created => throw _privateConstructorUsedError;
//   DateTime get expiration => throw _privateConstructorUsedError;
//   String get name => throw _privateConstructorUsedError;
//   String get surname => throw _privateConstructorUsedError;
//   String get bank => throw _privateConstructorUsedError;
//   int get validation => throw _privateConstructorUsedError;

//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CardCopyWith<$Res> {
//   factory $CardCopyWith(Card value, $Res Function(Card) then) =
//       _$CardCopyWithImpl<$Res, Card>;
//   @useResult
//   $Res call(
//       {int number,
//       DateTime created,
//       DateTime expiration,
//       String name,
//       String surname,
//       String bank,
//       int validation});
// }

// /// @nodoc
// class _$CardCopyWithImpl<$Res, $Val extends Card>
//     implements $CardCopyWith<$Res> {
//   _$CardCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? number = null,
//     Object? created = null,
//     Object? expiration = null,
//     Object? name = null,
//     Object? surname = null,
//     Object? bank = null,
//     Object? validation = null,
//   }) {
//     return _then(_value.copyWith(
//       number: null == number
//           ? _value.number
//           : number // ignore: cast_nullable_to_non_nullable
//               as int,
//       created: null == created
//           ? _value.created
//           : created // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       expiration: null == expiration
//           ? _value.expiration
//           : expiration // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       name: null == name
//           ? _value.name
//           : name // ignore: cast_nullable_to_non_nullable
//               as String,
//       surname: null == surname
//           ? _value.surname
//           : surname // ignore: cast_nullable_to_non_nullable
//               as String,
//       bank: null == bank
//           ? _value.bank
//           : bank // ignore: cast_nullable_to_non_nullable
//               as String,
//       validation: null == validation
//           ? _value.validation
//           : validation // ignore: cast_nullable_to_non_nullable
//               as int,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
//   factory _$$CardImplCopyWith(
//           _$CardImpl value, $Res Function(_$CardImpl) then) =
//       __$$CardImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call(
//       {int number,
//       DateTime created,
//       DateTime expiration,
//       String name,
//       String surname,
//       String bank,
//       int validation});
// }

// /// @nodoc
// class __$$CardImplCopyWithImpl<$Res>
//     extends _$CardCopyWithImpl<$Res, _$CardImpl>
//     implements _$$CardImplCopyWith<$Res> {
//   __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? number = null,
//     Object? created = null,
//     Object? expiration = null,
//     Object? name = null,
//     Object? surname = null,
//     Object? bank = null,
//     Object? validation = null,
//   }) {
//     return _then(_$CardImpl(
//       number: null == number
//           ? _value.number
//           : number // ignore: cast_nullable_to_non_nullable
//               as int,
//       created: null == created
//           ? _value.created
//           : created // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       expiration: null == expiration
//           ? _value.expiration
//           : expiration // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       name: null == name
//           ? _value.name
//           : name // ignore: cast_nullable_to_non_nullable
//               as String,
//       surname: null == surname
//           ? _value.surname
//           : surname // ignore: cast_nullable_to_non_nullable
//               as String,
//       bank: null == bank
//           ? _value.bank
//           : bank // ignore: cast_nullable_to_non_nullable
//               as String,
//       validation: null == validation
//           ? _value.validation
//           : validation // ignore: cast_nullable_to_non_nullable
//               as int,
//     ));
//   }
// }

// /// @nodoc
// @JsonSerializable()
// class _$CardImpl implements _Card {
//   _$CardImpl(
//       {required this.number,
//       required this.created,
//       required this.expiration,
//       required this.name,
//       required this.surname,
//       required this.bank,
//       required this.validation});

//   factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
//       _$$CardImplFromJson(json);

//   @override
//   final int number;
//   @override
//   final DateTime created;
//   @override
//   final DateTime expiration;
//   @override
//   final String name;
//   @override
//   final String surname;
//   @override
//   final String bank;
//   @override
//   final int validation;

//   @override
//   String toString() {
//     return 'Card(number: $number, created: $created, expiration: $expiration, name: $name, surname: $surname, bank: $bank, validation: $validation)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$CardImpl &&
//             (identical(other.number, number) || other.number == number) &&
//             (identical(other.created, created) || other.created == created) &&
//             (identical(other.expiration, expiration) ||
//                 other.expiration == expiration) &&
//             (identical(other.name, name) || other.name == name) &&
//             (identical(other.surname, surname) || other.surname == surname) &&
//             (identical(other.bank, bank) || other.bank == bank) &&
//             (identical(other.validation, validation) ||
//                 other.validation == validation));
//   }

//   @JsonKey(ignore: true)
//   @override
//   int get hashCode => Object.hash(runtimeType, number, created, expiration,
//       name, surname, bank, validation);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$CardImplCopyWith<_$CardImpl> get copyWith =>
//       __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

//   @override
//   Map<String, dynamic> toJson() {
//     return _$$CardImplToJson(
//       this,
//     );
//   }
// }

// abstract class _Card implements Card {
//   factory _Card(
//       {required final int number,
//       required final DateTime created,
//       required final DateTime expiration,
//       required final String name,
//       required final String surname,
//       required final String bank,
//       required final int validation}) = _$CardImpl;

//   factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

//   @override
//   int get number;
//   @override
//   DateTime get created;
//   @override
//   DateTime get expiration;
//   @override
//   String get name;
//   @override
//   String get surname;
//   @override
//   String get bank;
//   @override
//   int get validation;
//   @override
//   @JsonKey(ignore: true)
//   _$$CardImplCopyWith<_$CardImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
