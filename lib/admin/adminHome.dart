import 'package:finalproject/admin/addProduct.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            // height: 50,
            // width: 200,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, AddProduct.id);
              },
              child: Text('Add Product'),
            ),
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: Colors.white,
            onPressed: () {
              // Navigator.pushNamed(context, EditProduct.id);
            },
            child: Text('Edit Product'),
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: Colors.white,
            onPressed: () {
              // Navigator.pushNamed(context, OrdersScreen.id);
            },
            child: Text('View orders'),
          )
        ],
      ),
    );
  }
}
