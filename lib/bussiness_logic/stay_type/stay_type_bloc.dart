import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ui/models/stay_type_model.dart';
import 'package:flutter_airbnb_ui/res.dart';

part 'stay_type_event.dart';

part 'stay_type_state.dart';

enum StayType { cabins, lakeFront, nationalPark, tinyHomes, aframes, none }

class StayTypeBloc extends Bloc<StayTypeEvent, StayTypeState> {
  static List<StayTypeModel> stayTypeModelList = [
    StayTypeModel(stayType: StayType.cabins, stayTypeIcon: Res.cabins,stayTitle: "Cabins"),
    StayTypeModel(stayType: StayType.lakeFront, stayTypeIcon: Res.lakefront,stayTitle: "Lake Front"),
    StayTypeModel(
        stayType: StayType.nationalPark, stayTypeIcon: Res.nationalPark,stayTitle: "National Park"),
    StayTypeModel(stayType: StayType.tinyHomes, stayTypeIcon: Res.tinyHomes,stayTitle: "Tiny Homes"),
    StayTypeModel(stayType: StayType.aframes, stayTypeIcon: Res.aframes,stayTitle: "A-frames")
  ];

  static List<StayTypeModel> getStayTypes() => stayTypeModelList;

  StayTypeBloc() : super(StayTypeInitial(stayType: StayType.none)) {
    on<StayTypeEvent>((event, emit) {
      if (event is StayTypeChange) {
        emit(StayTypeInitial(stayType: event.stayType));
      }
    });
  }
}
