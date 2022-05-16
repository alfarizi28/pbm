import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbahAlamat extends StatefulWidget {
  const UbahAlamat({Key? key}) : super(key: key);

  @override
  State<UbahAlamat> createState() => _UbahAlamatState();
}

class _UbahAlamatState extends State<UbahAlamat> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-7.8032076, 110.3573354);

  @override
  void initState() {
    _markers.add(Marker(
        markerId: MarkerId('-7.8032076, 110.3573354'),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      backgroundColor: const Color(0xffB55F5E),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.12,
      title: const Text(
        "Detail Alamat",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: myAppBar,
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition:
            CameraPosition(target: _currentPosition, zoom: 14),
        markers: _markers,
      ),
    );
  }
}
