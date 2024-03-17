// ignore_for_file: must_be_immutable

part of 'inner_vone_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InnerVoneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InnerVoneContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InnerVoneContainer widget is first created.
class InnerVoneContainerInitialEvent extends InnerVoneContainerEvent {
  @override
  List<Object?> get props => [];
}
