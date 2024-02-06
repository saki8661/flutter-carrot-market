import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),
          enabledBorder: _buildOutLineInputBorder(),
          focusedErrorBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15),
          hintText: '용호동 주변 가게를 찾아 보세요,',
          hintStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD))
    );
  }
}
