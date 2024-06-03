# quote_daily

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


<h1> DIALOG   </h1>
  <img  height= "550" src="https://github.com/ronnie9901/quote_daily2/assets/148763509/978994ad-1c50-437e-8cef-08408c2be333"  />
  <img  height= "550" src="https://github.com/ronnie9901/quote_daily2/assets/148763509/5ef923f7-1a50-4f59-a389-13270ee283cb"  />
  <img  height= "550" src="https://github.com/ronnie9901/quote_daily2/assets/148763509/deb6bddc-c637-4d6f-82fb-aa9128761db6"  />
  


  </div>




<h1>What is Factory Constructor ?</h1>
 <h2>First of all what is Constructor :</h2>
Constructor is a block of code which is automatically invoked when class is instanciated.
Constructor is automatically called when an object(instance of class) is created. It is a special member function of the class.
It mainly used to assign data in attributes.


<h2>Rules to Create Constructor :</h2>

The name constructor must be same as class name.
Constructor cannot have any return datatype like void, int, double, etc...
It cannot return anything(Value).

```
 <h1>Example</h1>
class DartProgram {
  DartProgram() {
    print("Hello Dart Language..!");
  }
}

void main() {
  DartProgram dartProgram = DartProgram();
}
Factory Constructor
Factory constructor to convert raw data into objects.
Factory constructor return the current class's object.
Factory constructor can be created using 'factory' keyword.
A factory constructor is convert  raw data into objects and returns an object of the current class. 
A constructor that takes a map in its parameters and returns an object is called a factory constructor.
Example
class Student
{
  late int age,salary;
  late String name;

  Student({required String this.name,required int this.age,required int this.salary});

  factory Student.fromStudent({required data})
  {
    return Student(
      name : data['name'],
      age : data['age'],
      salary : data['salary'],
    );
  }
}

List list = [
  {'name' : "Ankit", 'age' : 18, 'salary' :15000},
  {'name' : "Praful", 'age' : 17, 'salary' :19000},
  {'name' : "Om", 'age' : 19, 'salary' : 10000},
];

List store = [];

void main()
{
  for(int i=0; i<list.length; i++)
  {
    Student s1 = Student.fromStudent(data: list[i]);
    store.add(s1);
  }

  for(int i=0; i<store.length; i++)
  {
    print("Name :${store[i].name}");
    print("Age :${store[i].age}");
    print("Salary :${store[i].salary}\n");
  }
}
What is Model Class ?
The "model class" in Dart generally used to a class that represents a data structure within an application.
Example
import 'package:flutter/material.dart';

GlobalKey<FormState> formkey = GlobalKey();
TextEditingController txtName = TextEditingController();
TextEditingController txtCategory = TextEditingController();
TextEditingController txtPrice = TextEditingController();

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({super.key});

  @override
  State<InvoiceGenerator> createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(
                invoiceList.length,
                (index) => GestureDetector(
                      onTap: () {
                        SelectedIndex = index;
                        Navigator.of(context).pushNamed('/DetailsPage');
                      },
                      child: ListTile(
                        title: Text(
                          '${invoiceList[index].name}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Text('${invoiceList[index].category}',
                            style: const TextStyle(fontSize: 18)),
                        trailing: Text('${invoiceList[index].prise}',
                            style: const TextStyle(fontSize: 18)),
                      ),
                    )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        title: const Text('Add Details'),
                        titlePadding: const EdgeInsets.only(left: 18, top: 12),
                        content: Form(
                          key: formkey,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: txtName,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field Must Be Required';
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      label: const Text('Name')),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 20, top: 20),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    controller: txtCategory,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Field Must Be Required';
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      label: const Text('Category'),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: txtPrice,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field Must Be Required';
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      label: const Text('Price')),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                if (formkey.currentState!.validate()) {
                                  invoiceList.add(
                                    InvoiceModel(
                                      name: txtName.text,
                                      category: txtCategory.text,
                                      prise: txtPrice.text,
                                    ),
                                  );
                                  Navigator.of(context).pop();
                                  txtName.clear();
                                  txtCategory.clear();
                                  txtPrice.clear();
                                }
                              });
                            },
                            child: const Text(
                              'OK',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ),
                        ],
                      );
                    });
              });
            },
            child: const Icon(Icons.add)),
      ),
    );
  }
}

int? SelectedIndex;

List<InvoiceModel> invoiceList = [];

class InvoiceModel {
  String? name, category, prise;

  InvoiceModel({this.name, this.category, this.prise});
}
```


< h1>2. What is Modal Class?</h1>
In very simpler terms, models are just classes which help us to determine the structure of the data. Modal class in statistics refers to a class having the highest frequency. It refers to a class in which the frequency is the highest in a continuous quantitative statistical variable distribution in which the values are grouped into classes with similar dimensions.

<h1>Advantages :-</h1>

Readability
It's just easier to read and understand your code. You can create models like User, Subscription, Product, Location, which say much more then just a raw json.
Faster
You create a class (model) and you can use it in many places which speeds up your development
Safer
You can use your model as other class property or function parameter. If you pass something else your IDE will show you the warning.
Structure
Structuring the code and split it into smaller parts is a key rule of clean architecture. As your app will grow, it will be much easier if you have every model in the separate file
Related to the model
You can add to you model: from and to Json method, copyWith, getters and setter, factories, methods, props and much more that is strongly connected with your class.
Code generation
The only thing that can discourage you from using models is the fact that they contain a lot of boiler plates (lines of code that you have ti write for every model). However, currently we have so many tools that can help you with automated code generation. You can write your own snippets, use build_runner for generating fromJson/toJson methods, use freezed, GitHub Copilot, or the newest Flutter macros. Every of these options will generate the data class model for you.
Testing
Using models makes it much easier to test your code
