import 'package:english_words/models/quotes_model.dart';
import 'package:flutter/material.dart';

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<QuoteModel> quotesList = [
    QuoteModel(
      id: 1,
      quote:
          'Live as if you were to die tomorrow. Learn as if you were to live forever.',
    ),
    QuoteModel(
      id: 2,
      quote: 'That which does not kill us makes us stronger.',
    ),
    QuoteModel(
      id: 3,
      quote:
          'We must not allow other people’s limited perceptions to define us.',
    ),
    QuoteModel(
      id: 4,
      quote: 'Do what you can, with what you have, where you are.',
    ),
    QuoteModel(
      id: 5,
      quote: 'Be yourself; everyone else is already taken.',
    ),
    QuoteModel(
      id: 6,
      quote: 'This above all: to thine own self be true',
    ),
    QuoteModel(
      id: 7,
      quote: 'If you cannot do great things, do small things in a great way',
    ),
    QuoteModel(
      id: 8,
      quote: 'If opportunity doesn’t knock, build a door.',
    ),
    QuoteModel(
      id: 9,
      quote: 'Strive not to be a success, but rather to be of value',
    ),
    QuoteModel(
      id: 10,
      quote: 'A journey of a thousand leagues begins beneath one’s feet.',
    ),
    QuoteModel(
      id: 11,
      quote: 'Be yourself; everyone else is already taken.',
    ),
    QuoteModel(
      id: 12,
      quote: 'This above all: to thine own self be true',
    ),
    QuoteModel(
      id: 13,
      quote: 'If you cannot do great things, do small things in a great way',
    ),
    QuoteModel(
      id: 14,
      quote: 'If opportunity doesn’t knock, build a door.',
    ),
    QuoteModel(
      id: 15,
      quote: 'Strive not to be a success, but rather to be of value',
    ),
  ];

  List _isFavorite = List.filled(15, false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quotesList.length, //int
      itemBuilder: (context, i) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(
                quotesList[i].quote,
                style: TextStyle(fontSize: 18),
              ),
            ),
            IconButton(
                icon: _isFavorite[i]
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    _isFavorite[i] = !_isFavorite[i];
                  });
                })
          ],
        );
      },
    );
  }
}
