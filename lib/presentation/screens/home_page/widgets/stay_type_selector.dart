import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_airbnb_ui/bussiness_logic/stay_type/stay_type_bloc.dart';
import 'package:flutter_airbnb_ui/models/stay_type_model.dart';
import 'package:flutter_airbnb_ui/res.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StayTypeSelector extends StatelessWidget {
  StayTypeSelector({super.key});

  StayTypeBloc stayTypeBloc = StayTypeBloc();
  List<StayTypeModel> stayTypeItems = StayTypeBloc.getStayTypes();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StayTypeBloc, StayTypeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView.builder(
            itemCount: stayTypeItems.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  BlocProvider.of<StayTypeBloc>(context).add(
                      StayTypeChange(stayType: stayTypeItems[index].stayType));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(stayTypeItems[index].stayTypeIcon),
                      const SizedBox(
                        height: 3,
                      ),
                      Flexible(
                        child: Text(
                          stayTypeItems[index].stayTitle,
                          style: _stayTypeTextStyle(state, index),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  TextStyle _stayTypeTextStyle(StayTypeState state, int index) {
    return TextStyle(
        color: _computeIfStayTypeIsActive(state, index)
            ? Colors.black
            : Colors.grey,
        fontWeight: _computeIfStayTypeIsActive(state, index)
            ? FontWeight.bold
            : FontWeight.normal);
  }

  bool _computeIfStayTypeIsActive(StayTypeState state, int index) =>
      state.stayType == _getStayType(index);

  StayType _getStayType(int index) => stayTypeItems[index].stayType;
}
