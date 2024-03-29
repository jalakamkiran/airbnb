import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_airbnb_ui/bussiness_logic/stay_type/stay_type_bloc.dart';
import 'package:flutter_airbnb_ui/items.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/widgets/search_field.dart';
import 'package:flutter_airbnb_ui/res.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/widgets/property_card.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/widgets/stay_type_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchField(),
            ),
            SizedBox(
                height: 100,
                child: StayTypeSelector()),
            Expanded(
              child: ListView.builder(
                itemCount: listings.length,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                itemBuilder: (context, index) => PropertyCard(
                  listing: listings[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
