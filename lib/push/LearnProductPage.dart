import 'package:flutter/material.dart';

class Product {
  final String title; // 商品标题
  final String descriprion; // 商品描述

  Product(this.title, this.descriprion);
}

class ProductListPage extends StatelessWidget {
  final List<Product> arrProducts =
      List.generate(20, (i) => Product("商品 ${i + 1}", "这是一个商品，编号为${i + 1}"));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: this.arrProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.arrProducts[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailePage(this.arrProducts[index]),
                  ));
            },
          );
        },
      ),
    );
  }
}

class ProductDetailePage extends StatelessWidget {
  final Product product;

  ProductDetailePage(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.product.title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(this.product.descriprion)
          ],
        ),
      ),
    );
  }
}
