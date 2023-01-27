import 'package:flutter/material.dart';

import '../../widgets/categoryfilter_widget.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          CateGoryFilter(),
          Divider(color: Colors.orange,thickness: 5,indent: 5,),
          CateGoryFilter(checkBool: false,),

        ],
      ),
    );
  }
}
