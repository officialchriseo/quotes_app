import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 6.0),
            Container(
              margin: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0),
              child: RaisedButton.icon(
                  onPressed: delete,
                  icon: Icon(
                    Icons.delete
                  ),
                  label: Text(
                      'Delete',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
