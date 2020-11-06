class DeviceInformation {
  final String device;
  final String brand;
  final String model;
  final String manufacturer;
  final String hardware;
  final String display;
  final String host;

  DeviceInformation({
    this.device,
    this.brand,
    this.model,
    this.manufacturer,
    this.hardware,
    this.display,
    this.host,
  });

  factory DeviceInformation.fromMethodChannel(List<dynamic> response) =>
      DeviceInformation(
        device: response[0],
        brand: response[1],
        model: response[2],
        manufacturer: response[3],
        hardware: response[4],
        display: response[5],
        host: response[6],
      );
}
