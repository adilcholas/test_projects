import 'package:ewire_test/widgets/balance.dart';
import 'package:ewire_test/widgets/panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.8;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SlidingUpPanel(
            minHeight: panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            //borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            body: CurrentBalance(),
            panelBuilder: (controller) => PanelWidget(controller: controller)),
      ),
    );
  }
}
