import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class invoice extends StatefulWidget {
  const invoice({super.key});

  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('invoice'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  TextEditingController txtcontroller = TextEditingController();
                  if (invoise == txtcontroller) {
                    null;
                  } else {
                    TextEditingController txtname = TextEditingController();
                    TextEditingController txtprice = TextEditingController();
                    TextEditingController txtqnty = TextEditingController();

                    setState(() {
                      invoise.add(invoicemodel(
                        name: txtname,
                        price: txtprice,
                        qty: txtqnty,
                      ));
                    });
                  }
                },
                child: Text(' add ')),
          ),
          ...List.generate(
              invoise.length,
              (index) => Center(
                    child: Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: Colors.black,)),
                      child: Column(
                        children: [
                          buildTextField(
                              name: 'name', controller: invoise[index].name),

                          buildTextField(
                              name: 'price', controller: invoise[index].price),
                          buildTextField(
                              name: 'Qunty', controller: invoise[index].qty)
                        ],
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}

Widget buildTextField({
  TextEditingController? controller,
  required String name,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box_outlined), label: Text('name')),
    ),
  );
}

List<invoicemodel> invoise = [];

class invoicemodel {
  TextEditingController? name;
  TextEditingController? qty;
  TextEditingController? price;

  invoicemodel({this.name, this.qty, this.price});
}

TextEditingController txtcontroller = TextEditingController();

String name = '';
String price = '';
String qty = '';
