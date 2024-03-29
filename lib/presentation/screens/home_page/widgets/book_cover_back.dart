import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_airbnb_ui/constants.dart';
import 'package:flutter_airbnb_ui/models/property.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/widgets/avatar.dart';

class BookCoverBack extends StatelessWidget {
  const BookCoverBack(
      this.listing, {
        super.key,
      });

  final Property listing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Constants.bookBorderRadius),
          bottomLeft: Radius.circular(Constants.bookBorderRadius),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(-6, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
            imageUrl: listing.hostAvatarUrl,
            hasBadge: true,
          ),
          const SizedBox(height: 10),
          Text(
            listing.hostName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 16),
                SizedBox(width: 2),
                Flexible(
                  child: Text(
                    'SuperHost',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
