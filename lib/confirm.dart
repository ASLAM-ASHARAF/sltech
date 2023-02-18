import 'package:flutter/material.dart';

class screenthree extends StatelessWidget {
  const screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/OIP.goT4aZFkFfLdCFYFfuf1_AHaIj?pid=ImgDet&w=1200&h=1385&rs=1'),
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
