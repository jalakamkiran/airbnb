import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ui/models/property.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/widgets/book_flip.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PropertyListing extends StatelessWidget {
  const PropertyListing(
      this.listing, {
        super.key,
      });

  final Property listing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scroll) {
          if (scroll is OverscrollNotification &&
              scroll.dragDetails != null &&
              scroll.dragDetails!.delta.dy > 10) {
            Navigator.of(context).pop();
            return false;
          }
          return true;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Hero(
                      tag: 'listing_hero_${listing.id}',
                      child: BookFlip(
                        listing,
                        initialFlipProgress: 1,
                      ),
                    ),
                  ),
                  ...List.generate(
                    listing.infoItems.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            listing.infoItems[index].icon,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              listing.infoItems[index].text,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
