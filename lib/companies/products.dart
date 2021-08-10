import 'package:finalproject/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _products();
  }
}

class _products extends State<Products> {
  var product_list = [
    {
      "name": "Black dress",
      "picture": "image/dres.jpg",
      "old_price": "150",
      "price": "90",
    },
    {
      "name": "Black shoes",
      "picture": "image/kk.png",
      "old_price": "100",
      "price": "75",
    },
    {
      "name": "small bag",
      "picture": "image/bbg.jpg",
      "old_price": "70",
      "price": "55",
    },
    {
      "name": "trouser",
      "picture": "image/bant.jpg",
      "old_price": "90",
      "price": "70",
    },
    {
      "name": "jacket",
      "picture": "image/jac.jpg",
      "old_price": "200",
      "price": "140",
    },
    {
      "name": "white shirt",
      "picture": "image/ts.jpg",
      "old_price": "40",
      "price": "30",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_prod(
            Product_name: product_list[index]['name'],
            Product_picture: product_list[index]['picture'],
            Product_oldprice: product_list[index]['old_price'],
            Product_price: product_list[index]['price'],
          );
        });
  }
}

class single_prod extends StatelessWidget {
  final Product_name;
  final Product_picture;
  final Product_oldprice;
  final Product_price;

  const single_prod(
      {Key key,
      this.Product_name,
      this.Product_picture,
      this.Product_oldprice,
      this.Product_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: Hero(
            tag: Product_name,
            child: Material(
                child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (contex) => productsDetails(
                        productsDetails_name: Product_name,
                        productsDetails_new_price: Product_price,
                        productsDetails_old_price: Product_oldprice,
                        productsDetails_picture: Product_picture,
                      ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                        leading: Text(
                          Product_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "\$ $Product_price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "\$ $Product_oldprice",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ))),
                child: Image.asset(
                  Product_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ))));
  }
}
