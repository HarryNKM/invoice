import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  
  List<TextEditingController> l1 = [TextEditingController()];
  List<TextEditingController> pricelist = [TextEditingController()];
  List<String> l2 = [];
  List<String> pricelist2 = [];

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
 int? price;
  
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "InvoiceG",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
              if(formkey.currentState!.validate())
                {

                  for(int i=0;i<l1.length;i++)
                  {
                    l2.add(l1[i].text);
                    print(l2);
                  }
                  Navigator.pushNamed(context, 'invoice');
                }
                }
          , icon: const Icon(Icons.check,color: Colors.white,))
        ],
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add Items",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                 const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    l1.length,
                    (index) => Form(
                      key: formkey,
                      child: Column(
                        children: [
                           const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                      
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: l1[index],
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          l1.removeAt(index);
                                        });
                                      },
                                      icon:  const Icon(Icons.delete),
                                    ),
                                    hintText: "Jeans.....",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value) {
                                          if(value!.isEmpty || value== null)
                                            {
                                              return "Enter Item...";
                                            }
                                  },
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 100,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(hintText: "Price...",
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        ),
                                        validator: (value) {
                                          if(value!.isEmpty || value==null)
                                            {
                                              return "Enter the price";
                                            }
                                          else
                                            {
                                              return null;
                                            }
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Container(
                                      height: 55,
                                      width: 100,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(hintText: "Quantity...",
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                        ),
                                        validator: (value) {
                                          if(value!.isEmpty || value==null)
                                            {
                                              return "enter quantity";
                                            }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                      
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ).toList(),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          l1.add(TextEditingController());
                        },
                      );
                    },
                    icon: const Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
