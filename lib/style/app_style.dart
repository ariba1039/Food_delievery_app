import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//we will create the class where  we will add all the app style
class AppStyle {
  static Color bgColor = Color(0xFFedf0f8);
  static Color PrimaryColor = Color(0xFF1e28e);
  // now we create the font style

  static TextStyle mainTitleStyle = GoogleFonts.nunito(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 24.0);
  static TextStyle subTitleStyle = GoogleFonts.nunito(color:Color(0xFF808080),fontWeight: FontWeight.w400,fontSize: 22.0);
  static TextStyle PriceTitleStyle = GoogleFonts.nunito(color:PrimaryColor ,fontWeight: FontWeight.bold ,fontSize: 2.0);

  
}
