import 'package:flutter/material.dart';

import '../data/colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final FocusNode _focusNode = FocusNode();
  final text = "Ask Meta AI or Search";

  final textStyle =
      const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13,bottom: 20, right: 13,top: 2),

      child: SearchBar(
        focusNode: _focusNode,

        hintText: text,
        hintStyle: WidgetStatePropertyAll(textStyle),
        padding:const  WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 15)),
        leading:const  Icon(
          Icons.search_rounded,
          color: Colors.grey,
        ),
        backgroundColor:const WidgetStatePropertyAll(kSearchBarColor),
      ),
    );
  }
}
