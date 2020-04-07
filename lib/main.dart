import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';
import 'package:quotes_app/quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(author: 'Ekene', text: 'Be the best if you can, ignore the rest, if neccessary'),
    Quote(author: 'Christian', text: 'Silence is the best answer to a fool'),
    Quote(author: 'Samson', text: 'When thing go sideways, do not spend your time complaining. Find the solution')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Famous Quotes',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: quotes.map((quote) {
            return QuoteCard(
                quote: quote, delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
            },
            );
          }).toList(),
          crossAxisAlignment: CrossAxisAlignment.start,

        ),
      ),
    );
  }
}

