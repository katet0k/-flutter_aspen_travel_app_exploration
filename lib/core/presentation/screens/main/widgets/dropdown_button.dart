import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});
  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  final List<String> _items = [
    'Aspen, USA',
    'Ukraine, Kiev',
  ];
  String? selectedValue = 'Aspen, USA';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: _items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style:
                        GoogleFonts.roboto(fontSize: 14, color: Colors.black),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: const ButtonStyleData(
          padding: EdgeInsets.only(right: 5, left: 10),
          height: 20,
          width: 120,
        ),
        iconStyleData: const IconStyleData(
            icon: Icon(
          Icons.keyboard_arrow_down,
          color: Color.fromARGB(255, 31, 165, 255),
          size: 25,
        )),
        dropdownStyleData: const DropdownStyleData(
          elevation: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 30,
        ),
      ),
    );
  }
}
