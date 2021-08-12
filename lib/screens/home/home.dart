import 'package:avaliacao_n1/models/product.dart';
import 'package:avaliacao_n1/provider/products.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Ofertas do dia"),
        leading: Image.asset("assets/images/logo.jpg"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/linha.jpg"),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext contex,int index) {

                Product product = products.elementAt(index);

                return ListTile(
                  leading: Image.asset(product.imgProduct),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.producerName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(product.description,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(product.price,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(product.installmentPrice,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.blueAccent
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: (product.isFavorite)?Icon(Icons.favorite):Icon(Icons.favorite_border),

                    onPressed: (){
                      setState(() {
                        product.isFavorite = !product.isFavorite;
                      });
                    },

                    color: Colors.pinkAccent,
                    iconSize: 15,
                  ),
                );
              },
              separatorBuilder: (BuildContext contex,int index){
                return Divider(color: Colors.white,);
              },
              itemCount: products.length,
            ),
          )
        ],
      ),
    );
  }
}
