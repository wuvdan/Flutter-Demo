
import 'package:flutter/material.dart';
import 'package:flutter_bmflocation/flutter_bmflocation.dart';
import 'package:flutter_baidu_mapapi_base/flutter_baidu_mapapi_base.dart';
import 'package:flutter_baidu_mapapi_map/flutter_baidu_mapapi_map.dart';
import 'package:permission_handler/permission_handler.dart';

class BaiduMapPage extends StatefulWidget {
  const BaiduMapPage({super.key});

  @override
  State<BaiduMapPage> createState() => _BaiduMapPage();
}

class _BaiduMapPage extends State<BaiduMapPage> {
  final LocationFlutterPlugin _myLocPlugin = LocationFlutterPlugin();

  BaiduLocationIOSOption initIOSOptions() {
    BaiduLocationIOSOption options =
    BaiduLocationIOSOption(
      // 坐标系
        coordType: BMFLocationCoordType.bd09ll,
        // 位置获取超时时间
        locationTimeout: 10,
        // 获取地址信息超时时间
        reGeocodeTimeout: 10,
        // 应用位置类型 默认为automotiveNavigation
        activityType:
        BMFActivityType.automotiveNavigation,
        // 设置预期精度参数 默认为best
        desiredAccuracy: BMFDesiredAccuracy.best,
        // 是否需要最新版本rgc数据
        isNeedNewVersionRgc: true,
        // 指定定位是否会被系统自动暂停
        pausesLocationUpdatesAutomatically: false,
        // 指定是否允许后台定位,
        // 允许的话是可以进行后台定位的，但需要项目
        // 配置允许后台定位，否则会报错，具体参考开发文档
        allowsBackgroundLocationUpdates: true,
        // 设定定位的最小更新距离
        distanceFilter: 10,
    );
    return options;
  }

  @override
  void initState() {
    super.initState();

    _myLocPlugin.setAgreePrivacy(true);
    BMFMapSDK.setAgreePrivacy(true);

    // Permission.req
    _myLocPlugin.authAK("nhP08dg7ftmeRdF28412GpklG5HyAEei");
    BMFMapSDK.setApiKeyAndCoordType("nhP08dg7ftmeRdF28412GpklG5HyAEei", BMF_COORD_TYPE.COMMON);


    _myLocPlugin.seriesLocationCallback(callback: (BaiduLocation result) {
      print(result);
    });
  }

  BMFMapOptions mapOptions = BMFMapOptions(
      center: BMFCoordinate(31.865557, 117.281589),
    mapType: BMFMapType.Standard,
    zoomLevel: 14,
    maxZoomLevel: 21,
    minZoomLevel: 4,
    logoPosition: BMFLogoPosition.CenterBottom,
    changeCenterWithDoubleTouchPointEnabled:true,
    // overlookEnabled: true,
    // overlooking: -45,
    // buildingsEnabled: false, // 3D建筑效果
    gesturesEnabled:true ,
    scrollEnabled:true ,
    zoomEnabled: true ,
    rotateEnabled :true,
    compassEnabled: true,
    // compassPosition :BMFPoint(10,200) ,
    showMapScaleBar: true,
    showMapPoi: true,
  );

  /// 添加线段
  List<BMFCoordinate> _createPoints() {
    final List<BMFCoordinate> points = <BMFCoordinate>[];
    points.add(BMFCoordinate(31.851165, 117.234438));
    points.add(BMFCoordinate(31.848522, 117.235055));
    points.add(BMFCoordinate(31.848299, 117.235055));
    points.add(BMFCoordinate(31.847743, 117.234406));
    points.add(BMFCoordinate(31.847228,  117.233209));
    points.add(BMFCoordinate(31.84716,  117.232914));
    points.add(BMFCoordinate(31.84716,  117.232914));
    points.add(BMFCoordinate( 31.847146, 117.232737));
    points.add(BMFCoordinate(31.847155, 117.232378));
    return points;
  }

  onBMFMapCreated(BMFMapController controller) {
    controller.setMapDidLoadCallback(callback: () {
      // _mapCustomMapStyle(); //设置个性化地图背景色
      print('mapDidLoad-地图加载完成!!!');
    });
    controller.showUserLocation(true);

    /// 添加Marker
    controller.addMarker(BMFMarker(
        position: BMFCoordinate(31.865557, 117.281589),
        title: 'flutterMaker',
        identifier: 'flutter_marker')
    );
    controller.addMarker(BMFMarker(
        position: BMFCoordinate(31.865565, 117.292489),
        title: 'flutterMaker',
        icon: 'images/shangchuan.png',
        identifier: 'flutter_marker2')
    );



    controller.addPolyline(
      BMFPolyline(coordinates: _createPoints(),
          indexs: [0, 0, 0, 0],
          width: 10,
         colors: [Colors.red, Colors.blue]
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("百度地图"),
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BMFMapWidget(
          onBMFMapCreated: (controller) {
            onBMFMapCreated(controller);
          },
          mapOptions: mapOptions,
        ),
      ),
    );
  }
}