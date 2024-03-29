import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ui/res.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(Res.searchIcon),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Where to?',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    _searchBarBottomText("Anywhere "),
                    _searchBarBottomText(" Any week "),
                    _searchBarBottomText(" Add guests",showSeperator: false),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Res.settings),
          ),
        ],
      ),
    );
  }

  Text _searchBarBottomText(String text,{bool showSeperator = true}) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(text: text,style: TextStyle(color: Color(0xFF5E5E5E), fontSize: 12)),
          if(showSeperator) const TextSpan(text: "·",style: TextStyle(color: Color(0xFF424242), fontSize: 12))
        ],
      ),
    );
  }
}
