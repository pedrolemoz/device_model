import 'package:flutter/material.dart';

import '../../../core/models/models.dart';
import '../../../core/services/services.dart';
import '../ui_components/information_card.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  DeviceInformation deviceInformation;

  @override
  void initState() {
    super.initState();
    _getDeviceInformation();
  }

  void _getDeviceInformation() async {
    deviceInformation = await DeviceInformationService.getInformation();

    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter native integration'),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 330,
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: InformationCard(deviceInformation: deviceInformation),
        ),
      ),
    );
  }
}
