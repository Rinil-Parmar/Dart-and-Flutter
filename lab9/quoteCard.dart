

import 'package:flutter/material.dart';
import 'quote.dart';

class quoteCard extends StatelessWidget {
  final VoidCallback delete;
  final Quote quote;
  quoteCard({
    required this.quote, required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[500],
      margin: EdgeInsets.fromLTRB(20, 30, 40, 10),
      child:
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink[300],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[300],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(onPressed: delete, icon: Icon(

                Icons.delete_outline,
                color:Colors.red[700] ,

                size: 30,
            ), label: Text("Delete",style: TextStyle(
              fontSize: 20,
              color: Colors.red[400],
            ),)
            )
          ],
        ),
      ),
    );
  }
}
