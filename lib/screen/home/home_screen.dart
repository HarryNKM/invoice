import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            "InvoiceG",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              Navigator.pushNamed(context, 'bill');
            }, icon: Icon(Icons.list_alt))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 40,),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30)),
                  height: 250,
                  width: MediaQuery.sizeOf(context).width,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Generat Invoice",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Text("Generate New Invoice",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30)),
                height: 250,
                width: MediaQuery.sizeOf(context).width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Older Invoices",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text("Invoices You Made Earlier",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Being Easy With InvoiceG",
                  style: TextStyle(color: Colors.pink, fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
