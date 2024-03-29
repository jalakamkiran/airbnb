part of 'stay_type_bloc.dart';

@immutable
abstract class StayTypeEvent {}

class StayTypeChange extends StayTypeEvent {
  final StayType stayType;

  StayTypeChange({required this.stayType});
}
