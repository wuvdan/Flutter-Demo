import 'dart:math';

import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';

import 'package:flutter/material.dart';

/// 参考文档
/// 属性配置
/// https://lbs.amap.com/api/flutter/guide/map-flutter-plug-in/map-flutter-info
///
class AMapPage extends StatefulWidget {
  const AMapPage({super.key});

  @override
  State<AMapPage> createState() => _AMapPage();
}

class _AMapPage extends State<AMapPage> {

  static const AMapApiKey amapApiKeys = AMapApiKey(
      iosKey: '8afd624508e72f7d438f82f91da8cc65',
      androidKey: 'eb909b4ee863e2bd0aa18098b7acc9ba');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AMapFlutterLocation.setApiKey("eb909b4ee863e2bd0aa18098b7acc9ba", "8afd624508e72f7d438f82f91da8cc65");
  }

  /// 设置地图中心坐标
  final LatLng mapCenter = const LatLng(31.865557, 117.281589);
  /// 添加大头针
  final Map<String, Marker> _initMarkerMap = <String, Marker>{};
  final Map<String, Polyline> _initPolylineMap = <String, Polyline>{};

  /// 添加线段
  List<LatLng> _createPoints() {
    final List<LatLng> points = <LatLng>[];
    points.add(LatLng(31.851165, 117.234438));
    points.add(LatLng(31.848522, 117.235055));
    points.add(LatLng(31.848299, 117.235055));
    points.add(LatLng(31.847743, 117.234406));
    points.add(LatLng(31.847228,  117.233209));
    points.add(LatLng(31.84716,  117.232914));
    points.add(LatLng(31.84716,  117.232914));
    points.add(LatLng( 31.847146, 117.232737));
    points.add(LatLng(31.847155, 117.232378));
    return points;
  }


  @override
  Widget build(BuildContext context) {

    /// 设置权限
    const AMapPrivacyStatement amapPrivacyStatement =
    AMapPrivacyStatement(hasContains: true, hasShow: true, hasAgree: true);


    final polylineSet = <Polyline>{};
    polylineSet.add(Polyline(
        color: Colors.red,
        width: 10,
        points: _createPoints()
    ));



    /// 模拟大头针数据
    for (int i = 0; i < 10; i++) {
      LatLng position = LatLng(mapCenter.latitude + sin(i * pi / 12.0) / 20.0, mapCenter.longitude + cos(i * pi / 12.0) / 20.0);
      Marker marker = Marker(position: position,  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange), infoWindowEnable: true, infoWindow: InfoWindow(
        title: "标题:$i",
        snippet: "副标题:$i$i",
      ));
      _initMarkerMap[marker.id] = marker;
    }



    ///使用默认属性创建一个地图
    final AMapWidget map = AMapWidget(
      apiKey: const AMapApiKey(
        iosKey: "8afd624508e72f7d438f82f91da8cc65",
        androidKey: "eb909b4ee863e2bd0aa18098b7acc9ba"
      ),
      initialCameraPosition: CameraPosition(
        target: mapCenter,
        zoom: 12
      ),
      privacyStatement: amapPrivacyStatement,
      scaleEnabled: true,
      markers: Set<Marker>.of(_initMarkerMap.values),
      polylines: polylineSet
    );




    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          titleSpacing: 100,
          title: Text("高德地图"),
        ),
        body: Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: map,
          margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        )
    );
  }
}