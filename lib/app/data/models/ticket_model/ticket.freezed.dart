// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'ticket.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// Ticket _$TicketFromJson(Map<String, dynamic> json) {
//   return _Ticket.fromJson(json);
// }

// /// @nodoc
// mixin _$Ticket {
//   String get company => throw _privateConstructorUsedError;
//   String get city => throw _privateConstructorUsedError;
//   DateTime get data => throw _privateConstructorUsedError;
//   int get departure => throw _privateConstructorUsedError;

//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $TicketCopyWith<$Res> {
//   factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
//       _$TicketCopyWithImpl<$Res, Ticket>;
//   @useResult
//   $Res call({String company, String city, DateTime data, int departure});
// }

// /// @nodoc
// class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
//     implements $TicketCopyWith<$Res> {
//   _$TicketCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? company = null,
//     Object? city = null,
//     Object? data = null,
//     Object? departure = null,
//   }) {
//     return _then(_value.copyWith(
//       company: null == company
//           ? _value.company
//           : company // ignore: cast_nullable_to_non_nullable
//               as String,
//       city: null == city
//           ? _value.city
//           : city // ignore: cast_nullable_to_non_nullable
//               as String,
//       data: null == data
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       departure: null == departure
//           ? _value.departure
//           : departure // ignore: cast_nullable_to_non_nullable
//               as int,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$TicketImplCopyWith<$Res> implements $TicketCopyWith<$Res> {
//   factory _$$TicketImplCopyWith(
//           _$TicketImpl value, $Res Function(_$TicketImpl) then) =
//       __$$TicketImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String company, String city, DateTime data, int departure});
// }

// /// @nodoc
// class __$$TicketImplCopyWithImpl<$Res>
//     extends _$TicketCopyWithImpl<$Res, _$TicketImpl>
//     implements _$$TicketImplCopyWith<$Res> {
//   __$$TicketImplCopyWithImpl(
//       _$TicketImpl _value, $Res Function(_$TicketImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? company = null,
//     Object? city = null,
//     Object? data = null,
//     Object? departure = null,
//   }) {
//     return _then(_$TicketImpl(
//       company: null == company
//           ? _value.company
//           : company // ignore: cast_nullable_to_non_nullable
//               as String,
//       city: null == city
//           ? _value.city
//           : city // ignore: cast_nullable_to_non_nullable
//               as String,
//       data: null == data
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as DateTime,
//       departure: null == departure
//           ? _value.departure
//           : departure // ignore: cast_nullable_to_non_nullable
//               as int,
//     ));
//   }
// }

// /// @nodoc
// @JsonSerializable()
// class _$TicketImpl implements _Ticket {
//   _$TicketImpl(
//       {required this.company,
//       required this.city,
//       required this.data,
//       required this.departure});

//   factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
//       _$$TicketImplFromJson(json);

//   @override
//   final String company;
//   @override
//   final String city;
//   @override
//   final DateTime data;
//   @override
//   final int departure;

//   @override
//   String toString() {
//     return 'Ticket(company: $company, city: $city, data: $data, departure: $departure)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$TicketImpl &&
//             (identical(other.company, company) || other.company == company) &&
//             (identical(other.city, city) || other.city == city) &&
//             (identical(other.data, data) || other.data == data) &&
//             (identical(other.departure, departure) ||
//                 other.departure == departure));
//   }

//   @JsonKey(ignore: true)
//   @override
//   int get hashCode => Object.hash(runtimeType, company, city, data, departure);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
//       __$$TicketImplCopyWithImpl<_$TicketImpl>(this, _$identity);

//   @override
//   Map<String, dynamic> toJson() {
//     return _$$TicketImplToJson(
//       this,
//     );
//   }
// }

// abstract class _Ticket implements Ticket {
//   factory _Ticket(
//       {required final String company,
//       required final String city,
//       required final DateTime data,
//       required final int departure}) = _$TicketImpl;

//   factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

//   @override
//   String get company;
//   @override
//   String get city;
//   @override
//   DateTime get data;
//   @override
//   int get departure;
//   @override
//   @JsonKey(ignore: true)
//   _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
