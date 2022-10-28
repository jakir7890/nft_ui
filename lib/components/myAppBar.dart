import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          //title
          Expanded(
              child: Text(title, style:GoogleFonts.bebasNeue(
                fontSize: 40
              ),)

          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.grey.shade300),
              child: Icon(Icons.search, size: 36,),
            ),
          )
        ],
      ),
    );
  }
}
