
import 'package:flutter/material.dart';
import 'package:invoiceapp/screen/Info/infor_screen.dart';

import 'package:invoiceapp/screen/home/home_screen.dart';
import 'package:invoiceapp/screen/invoice/invoice.dart';
import 'package:invoiceapp/screen/product/product_screen.dart';
import 'package:invoiceapp/screen/testing/testing_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  '/': (context) => HomeScreen(),
  'info': (context) => InfoScreen(),
  'product': (context) => ProductScreen(),
  'invoice':(context) => InvoiceScreen(),
  'bill': (context) => Testing(),


};
