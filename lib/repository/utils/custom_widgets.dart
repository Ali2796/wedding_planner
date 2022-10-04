import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'data_constants.dart';
import 'my_custom_card.dart';

class CustomWidget {
  static Widget customContainer(
      {required Widget child,
      double height = double.infinity,
      double width = double.infinity,
      void Function()? onTap,
      bool borderEnabled = false}) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                0.1,
                1.5,
              ),
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                -0.1,
                -0.001,
              ),
              spreadRadius: -1,
            ),
          ]),
      child: SizedBox(
        height: height,
        width: width,
        child: OutlineGradientButton(
            strokeWidth: 2,
            onTap: onTap,
            radius: const Radius.circular(50),
            inkWell: true,
            elevation: 5,
            backgroundColor: Colors.white,
            gradient: borderEnabled
                ? LinearGradient(
                    colors: [Colors.orange, Colors.pink.shade200],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0, width * 0.5])
                : const LinearGradient(colors: [Colors.white, Colors.white70]),
            child: Center(child: child)),
      ),
    );
  }

  //////////////////////////////////////////////////
  static Widget customTextField3({
    TextEditingController? controller,
    String? initialValue,
    required BuildContext context,
    bool obscureText = false,
    String? titleName,
    Widget? suffix,
    void Function()? onTap,
    FormFieldValidator<String>? validate,
    TextInputType textInputType = TextInputType.text,
    int? maxLength,
    Key? key,
    TextInputType? inputType,
    List<TextInputFormatter>? inputFormatters,
    String? prefixText,
  }) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                0.1,
                1.5,
              ),
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                -0.1,
                -0.001,
              ),
              spreadRadius: -1,
            ),
          ]),
      child: TextFormField(
        controller: controller,
        key: key,
        onTap: onTap,
        inputFormatters: inputFormatters,
        validator: validate,
        autofocus: false,
        keyboardType: inputType,
        maxLength: maxLength,
        obscureText: obscureText,
        cursorColor: Colors.black,
        // maxLines: 1,
        style: GoogleFonts.tinos(
            textStyle: Theme.of(context).textTheme.bodyText1,
            color: CustomColors.textFontColor,
            fontSize: 14),
        decoration: InputDecoration(
          prefixText: prefixText,

          suffix: suffix,
          hintText: titleName,
          hintStyle: GoogleFonts.tinos(
              textStyle: Theme.of(context).textTheme.bodyText1,
              color: CustomColors.textFontColor,
              fontSize: 14),
          fillColor: Colors.white70,
          border: InputBorder.none,
          // errorBorder:  OutlineInputBorder(borderRadius:BorderRadius.circular(50),borderSide: BorderSide(width: 1,color: Colors.red)),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }

  ////////////////////////////////DropDown//////////////////////

  static Widget dropdownButton2({
    required List items,
    double? dropDownMaxHeight,
    required BuildContext context,
    void Function(String?)? onChanged,
    void Function(String?)? onSaved,
    required String titleName,
    FormFieldValidator<String>? validate,
  }) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                0.1,
                1.5,
              ),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              offset: const Offset(
                -0.1,
                -0.001,
              ),
              spreadRadius: -1,
            ),
          ]),
      child: DropdownButtonFormField2(
          decoration: const InputDecoration(
            //isDense: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
          ),
          isExpanded: true,
          icon:
              const Icon(Icons.arrow_drop_down, color: CustomColors.iconsColor),
          iconSize: 25,
          buttonHeight: 50,
          hint: Text(titleName,
              style: GoogleFonts.tinos(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  color: CustomColors.textFontColor,
                  fontSize: 14)),
          style: GoogleFonts.tinos(
              textStyle: Theme.of(context).textTheme.bodyText1,
              color: CustomColors.textFontColor,
              fontSize: 14),
          scrollbarAlwaysShow: true,
          scrollbarRadius: const Radius.circular(20),
          scrollbarThickness: 10,
          buttonPadding: const EdgeInsets.only(left: 20, right: 10),
          dropdownMaxHeight: 300,
          dropdownOverButton: false,
          dropdownDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: GoogleFonts.tinos(
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          color: CustomColors.textFontColor,
                          fontSize: 14),
                    ),
                  ))
              .toList(),
          validator: validate,
          onChanged: onChanged,
          onSaved: onSaved),
    );
  }

  ////////////////////////////Drawer/////////////////////

  static Widget myCustomDrawer(
      {required BuildContext context,
      double? height,
      double? width,
      //Color? color,
      Widget? child}) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: child,
    );
  }

  static Widget customCardButton({
    double? height,
    double? width,
    IconData? icon,
    double? iconSize,
    String? title,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          MyCustomCard.customCard(
              height: height!,
              width: width!,
              child: Icon(
                icon!,
                size: iconSize!,
                color: CustomColors.buttonBackgroundColor,
              )),
          const SizedBox(
            height: 15,
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 18, color: CustomColors.textFontColor),
          )
        ],
      ),
    );
  }
}
