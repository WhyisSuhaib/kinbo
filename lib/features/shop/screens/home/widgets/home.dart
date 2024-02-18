import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
                child: Column(
              children: [
                SHomeAppBar()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
