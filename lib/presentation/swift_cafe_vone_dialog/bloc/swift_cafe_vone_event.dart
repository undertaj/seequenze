// ignore_for_file: must_be_immutable

part of 'swift_cafe_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SwiftCafeVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SwiftCafeVoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SwiftCafeVone widget is first created.
class SwiftCafeVoneInitialEvent extends SwiftCafeVoneEvent {
  @override
  List<Object?> get props => [];
}
