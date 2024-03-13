import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/global.dart';
class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text("${g1.name}"),
                Text("${g1.email}"),
                Text("${g1.phone}"),
                Text("${g1.add}"),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: g1.techadd
                      .map(
                        (e) => Text(
                      "$e",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                      .toList(),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
