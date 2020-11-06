import 'package:flutter/material.dart';

import '../../../core/models/models.dart';

class InformationCard extends StatelessWidget {
  final DeviceInformation deviceInformation;

  const InformationCard({this.deviceInformation});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      borderRadius: BorderRadius.circular(15.0),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[700],
              Colors.blue[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Device information',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 280.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    deviceInformation != null
                        ? 'Device: ${deviceInformation.device}'
                        : 'Device: Unknown device',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Brand: ${deviceInformation.brand}'
                        : 'Brand: Unknown brand',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Manufacturer: ${deviceInformation.manufacturer}'
                        : 'Manufacturer: Unknown manufacturer',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Model: ${deviceInformation.model}'
                        : 'Model: Unknown model',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Hardware: ${deviceInformation.hardware}'
                        : 'Hardware: Unknown hardware',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Display: ${deviceInformation.display}'
                        : 'Display: Unknown display',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    deviceInformation != null
                        ? 'Host: ${deviceInformation.host}'
                        : 'Host: Unknown host',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
