import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/global.dart';



class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {



  @override
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController txtname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtadd = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            "InvoiceG",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
            }, icon: Icon(Icons.camera))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter Customer Info",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Enter Name...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    controller: txtname,
                    validator: (value) {

                      if(value!.isEmpty || value==null)
                        {
                          return "Enter Name ";
                        }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Enter Phone...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    controller: txtphone,
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return "Enter Phone Number ";
                      }
                    }
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Enter Email...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    controller: txtemail,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Enter Email ";
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Enter Address...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    controller: txtadd,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Enter Address ";
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {

                        if (key.currentState!.validate()) {
                          g1.name = txtname.text;
                          g1.email = txtemail.text;
                          g1.phone = txtphone.text;
                          g1.add = txtadd.text;
                          Navigator.pushNamed(context, 'product');
                        }
                      },
                      child: const Text("Save"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
