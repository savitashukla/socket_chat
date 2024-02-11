import 'package:chat_socket/view/screens/roomScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import 'controller/chatController.dart';
import 'controller/messagesController.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatMessageProvider>(
          create: (context) => ChatMessageProvider(),
        ),
        ChangeNotifierProvider<SendFileProvider>(
          create: (_) => SendFileProvider(),
        ),
        ChangeNotifierProvider<MessagesProvider>(
          create: (_) => MessagesProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RoomScreen(),
      ),
    );
  }
}

void showToast(String msgs) {
  Fluttertoast.showToast(
    msg: msgs,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
  );
}
