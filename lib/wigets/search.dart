import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.02),
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        hintText: 'Cari layanan, makanan, & tujuan',
        hintStyle: const TextStyle(fontSize: 14, ), 
        // ignore: deprecated_member_use
        prefixIcon: SvgPicture.asset('images/search.svg', color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}