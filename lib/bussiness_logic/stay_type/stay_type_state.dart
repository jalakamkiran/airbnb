part of 'stay_type_bloc.dart';

abstract class StayTypeState {
  final StayType stayType;
  StayTypeState({required this.stayType});
}

class StayTypeInitial extends StayTypeState {
  StayTypeInitial({required super.stayType});
}
