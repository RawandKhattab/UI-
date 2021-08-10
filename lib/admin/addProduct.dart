import 'package:finalproject/screen/custom.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  static String id = 'AddProduct';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height * .25,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(
                        image: AssetImage('image/fsb.png'),
                      )
                    ],
                  ),
                ),
              ),
              CustomTextField(
                hint: 'Product Name',
                onClick: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Product Price',
                onClick: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Product Description',
                onClick: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Product Category',
                onClick: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Product Location',
                onClick: () {},
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Add Product'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
