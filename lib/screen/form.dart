import 'package:flutter/material.dart';
import 'package:helloworld/screen/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

enum productTypeEnum { Downloadable, Deliverable }

class _MyFormState extends State<MyForm> {
  var _productName;
  final _productController = TextEditingController();
  bool? _checkBox, _listTileCheckBox = false;
  productTypeEnum? _productTypeEnum;

  _MyFormState() {
    _selectedVal = _productSizeLists[0];
  }
  final _productSizeLists = ["Small", "Medium", "Large", "Xlarge"];
  String _selectedVal = "Small";

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productController,
              decoration: const InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Product Name: ${_productController.text}"),
            const SizedBox(
              height: 20.0,
            ),
            //checkbox
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.purple,
              tristate: true,
              value: _checkBox,
              onChanged: (val) {
                setState(
                  () {
                    _checkBox = val;
                  },
                );
              },
            ),
            //checkboxTile
            CheckboxListTile(
              value: _listTileCheckBox,
              onChanged: (value) {
                setState(() {
                  _listTileCheckBox = value;
                });
              },
              title: Text("Top Product"),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<productTypeEnum>(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      tileColor: Colors.deepPurpleAccent.shade100,
                      value: productTypeEnum.Deliverable,
                      groupValue: _productTypeEnum,
                      title: Text(productTypeEnum.Deliverable.name),
                      onChanged: ((value) {
                        setState(() {
                          _productTypeEnum = value;
                        });
                      })),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: RadioListTile<productTypeEnum>(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      tileColor: Colors.deepPurpleAccent.shade100,
                      value: productTypeEnum.Downloadable,
                      groupValue: _productTypeEnum,
                      title: Text(productTypeEnum.Downloadable.name),
                      onChanged: ((value) {
                        setState(() {
                          _productTypeEnum = value;
                        });
                      })),
                ),
              ],
            ),
            //Dropdown menu
            DropdownButton(
              value: _selectedVal,
              items: _productSizeLists
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: ((value) {
                setState(() {
                  _selectedVal = value as String;
                });
              }),
            ),
            DropdownButtonFormField(
              value: _selectedVal,
              items: _productSizeLists
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: ((value) {
                setState(() {
                  _selectedVal = value as String;
                });
              }),
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              decoration: InputDecoration(
                  labelText: "Product size",
                  prefixIcon: Icon(
                    Icons.accessibility_new_rounded,
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder()),
            ),

            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(200, 50),
      ),
      onPressed: (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(productName: _productController.text);
          }),
        );
      }),
      child: Text(
        "Submit Form".toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
