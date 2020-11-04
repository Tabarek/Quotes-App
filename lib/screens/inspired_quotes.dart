import 'package:english_words/widgets/quotes_list.dart';
import 'package:flutter/material.dart';

class RandomQoutes extends StatefulWidget {
  @override
  _RandomQoutesState createState() => _RandomQoutesState();
}

class _RandomQoutesState extends State<RandomQoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Inspired Quotes',
            style: TextStyle(color: Colors.pink),
          ),
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
        body: QuotesList());
  }
}
