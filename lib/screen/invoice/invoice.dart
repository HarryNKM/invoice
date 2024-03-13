import 'package:flutter/material.dart';
class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: const Text(
              "InvoiceG",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
        ),
    );
  }
}
