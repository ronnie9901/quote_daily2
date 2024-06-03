import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_daily/random/randomquote.dart';
import 'package:quote_daily/random/randomquote.dart';
import 'package:quote_daily/random/randomquote.dart';

import 'global.dart';

quotemodel? quotemodelll;
class randomquotes extends StatefulWidget {
  const randomquotes({super.key});

  @override
  State<randomquotes> createState() => _randomquotesState();
}


class _randomquotesState extends State<randomquotes> {
  @override
  void initState() {
   quotemodelll = quotemodel.toList(quotelist!);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('quotes '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             ...List.generate(quotemodelll!.quotemodelList.length, (index) => Card(
               color: colorlist[index % colorlist.length],
               child: ListTile(
                 title: Text(quotemodelll!.quotemodelList[index].quote!),
                   subtitle: Text(quotemodelll!.quotemodelList[index].author!),
        
               ),
             )),
            FloatingActionButton(onPressed: () {
             Random randon=Random();
             int x= randon.nextInt((quotemodelll!.quotemodelList.length));


               showDialog<String>(
               context: context,
               builder: (BuildContext context) => AlertDialog(
                 title: Text(quotemodelll!.quotemodelList[x].quote!),
                 content: Text(quotemodelll!.quotemodelList[x].author!),
                 actions: [
                   Row(
                     children: [
                       InkWell(onTap: () {
                         Navigator.of(context).pop();
                       },child: Text(' cancel ')),
                       TextButton(onPressed: () {
                         Navigator.of(context).pop();
                       }, child: Text('back'))
                     ],
                   )
                 ],
               ),



             );},
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}



class quotemodel{
  String? quote;
  String? author;

   quotemodel({this.quote,this.author});

  List<quotemodel> quotemodelList=[];
  factory quotemodel.fromqoute(Map m1)
  {
    return quotemodel(author: m1['author'],quote: m1['quote']);
  }

  quotemodel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
      {
        quotemodelList!.add(quotemodel.fromqoute(l1[i]));
      }
  }

}
