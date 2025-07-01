import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
      leading: IconButton(
          highlightColor: Colors.blue,
          onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new,size: 16,)),
      ),
      body: Center(child: 
        Text("Notification Items",style: TextStyle(color: Colors.black),),),
    );
  }
}
