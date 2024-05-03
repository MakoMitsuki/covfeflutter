import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// color theme
const Color transparent = Color(0x00000000);
var backgroundColor = Colors.grey[300];
const mainColor = Colors.brown;
var menuIconsColor = Colors.brown;
const safeAreaPadding = EdgeInsets.all(25.0);
const safeAreaPaddingH = EdgeInsets.symmetric(horizontal: 25.0);
const safeAreaPaddingV = EdgeInsets.symmetric(vertical: 25.0);
const pageTitleTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w900);

// drawer menu
const menuListItemTextStyle = TextStyle(fontSize: 20, color: Colors.white);
const double menuListItemIconSize = 35;

// currency
//final oCcy = NumberFormat("#,##0.00", "en_GB");
final oCcy = NumberFormat.currency(locale: "en_GB",
      symbol: "£");