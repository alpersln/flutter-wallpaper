import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wpapp/photoProvider.dart';

import 'screens/PhotoList.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => PhotoProvider(),
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoListView(),
    ),
  ));
}
