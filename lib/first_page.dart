import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'List View Builder',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            _itemList(
              image: 'assets/images/imageF.jpg',
              title: 'Facebook',
              cost: '339.1',
              padding: 180,
            ),
            _itemList(
              image: 'assets/images/imageA.jpg',
              title: 'A10 NETWORKS INC.',
              cost: '10.34',
              padding: 70
            ),
            _itemList(
              image: 'assets/images/imageI.jpg',
              title: 'Intel Corp',
              cost: '56.96',
              padding: 175
            ),
            _itemList(
              image: 'assets/images/imageH.jpg',
              title: 'Hp Inc',
              cost: '32.43',
              padding: 207
            ),
            _itemList(
              image: 'assets/images/imageA.jpg',
              title: 'Advanced Micro Devices Inc.',
              cost: '77.44',
              padding: 5
            ),
            _itemList(
              image: 'assets/images/imageA.jpg',
              title: 'Apple Inc.',
              cost: '133.98',
              padding: 170
            ),
            _itemList(
              image: 'assets/images/imageA.jpg',
              title: 'Amazon.com, Inc,',
              cost: '3505.44',
              padding: 88
            ),
            _itemList(
              image: 'assets/images/imageM.jpg',
              title: 'Microsoft Corporation',
              cost: '256.51',
              padding: 57
            ),
            _itemList(
              image: 'assets/images/imageF.jpg',
              title: 'Facebook',
              cost: '339.1',
              padding: 180
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemList({required String image, required String title, required String cost, double padding = 0}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.only(left: padding),
            alignment: Alignment.bottomRight,
            child: Text(
              cost,
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}