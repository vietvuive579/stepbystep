import 'package:flutter/material.dart';
import 'package:stepbystep/product.dart';
import 'package:get/get.dart';

import 'model.dart';

List<Bank> listBank = [
  Bank(
    aim: "Vay mua nhà xã hội",
    description: "Ngày áp dụng gói vay",
    mainaim: "",
    image: "vcb.png",
    lscd: "5%/năm",
    lssud: "7%/năm",
    kvtd: "75% tài sản đảm bảo",
  ),
  Bank(
    aim: "Vay xây dụng sửa chữa nhà",
    description: "Ngày áp dụng gói vay",
    mainaim: "",
    image: "vtb.png",
    lscd: "7,7%/năm",
    lssud: "9%/năm",
    kvtd: "90% tài sản đảm bảo",
  ),
  Bank(
    aim: "Vay mua nhà",
    description: "Ngày áp dụng gói vay",
    mainaim: "Vay nhu cầu nhà ở",
    image: "bidv.png",
    lscd: "6,0%/năm",
    lssud: "8%/năm",
    kvtd: "90% tài sản đảm bảo",
  ),
  Bank(
    aim: "Vay mua nhà",
    description: "Ngày áp dụng gói vay",
    mainaim: "Vay nhu cầu nhà ở",
    image: "mb.png",
    lscd: "8,0%/năm",
    lssud: "10%/năm",
    kvtd: "100% tài sản đảm bảo",
  ),
];

// ignore: camel_case_types
class theScreen extends StatelessWidget {
  theScreen({Key? key}) : super(key: key);

  //@override
  //_theScreenState createState() => _theScreenState();
//}

//class _theScreenState extends State<theScreen> {
  var valueChoose1 = "Tất cả".obs;
  var valueChoose2 = "Tất cả".obs;
  var valueChoose3 = "Tất cả".obs;
  var valueChoose4 = "Tất cả".obs;

  List<RxString> get listOptions {
    return <RxString>["Tất cả".obs, "Item1".obs, "Item2".obs, "Item3".obs];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.blue,
          ),
          title: const Text(
            'Chọn gói vay',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
        ),
        body: tabBar(),
      ),
    );
  }

  DefaultTabController tabBar() {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          const Material(
            child: TabBar(
              tabs: <Widget>[
                Text('Vay tín chấp'),
                Text('Vay thế chấp'),
              ],
              indicatorColor: Colors.orange,
              //isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.blueGrey,
              labelPadding: EdgeInsets.all(20),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildinfo(),
                Center(child: Text("Transit")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildinfo() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          constInfo1(),
          boxInfo1(),
          const SizedBox(height: 10.0),
          constInfo2(),
          boxInfo2(),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Đề xuất",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const Divider(
            color: Colors.black,
            //height: 10,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
          myListView(),
        ],
      ),
    );
  }

  ListView myListView() {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      //itemCount: 4,
      children: <Widget>[
        ProductBox(
          aim: "Vay mua nhà xã hội",
          description: "Ngày áp dụng gói vay",
          mainaim: "",
          image: "vcb.png",
          lscd: "5%/năm",
          lssud: "7%/năm",
          kvtd: "75% tài sản đảm bảo",
        ),
        ProductBox(
          aim: "Vay xây dụng sửa chữa nhà",
          description: "Ngày áp dụng gói vay",
          mainaim: "",
          image: "vtb.png",
          lscd: "7,7%/năm",
          lssud: "9%/năm",
          kvtd: "90% tài sản đảm bảo",
        ),
        ProductBox(
          aim: "Vay mua nhà",
          description: "Ngày áp dụng gói vay",
          mainaim: "Vay nhu cầu nhà ở",
          image: "bidv.png",
          lscd: "6,0%/năm",
          lssud: "8%/năm",
          kvtd: "90% tài sản đảm bảo",
        ),
        ProductBox(
          aim: "Vay mua nhà",
          description: "Ngày áp dụng gói vay",
          mainaim: "Vay nhu cầu nhà ở",
          image: "mb.png",
          lscd: "8,0%/năm",
          lssud: "10%/năm",
          kvtd: "100% tài sản đảm bảo",
        ),
      ],
    );
  }

  Row constInfo1() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.values,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Chọn ngân hàng*',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.0),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mục đích vay',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row constInfo2() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.values,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Thời gian vay',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.0),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Thời gian ưu đãi lãi suất',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row boxInfo1() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => DropdownButton<RxString>(
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: valueChoose1,
                  onChanged: (RxString? newValue1) {
                    valueChoose1.value = newValue1!.value;
                  },
                  items: listOptions
                      .map<DropdownMenuItem<RxString>>((RxString value) {
                    return DropdownMenuItem<RxString>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => DropdownButton<RxString>(
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: valueChoose2,
                  onChanged: (RxString? newValue2) {
                    valueChoose2.value = newValue2!.value;
                  },
                  items: listOptions
                      .map<DropdownMenuItem<RxString>>((RxString value) {
                    return DropdownMenuItem<RxString>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row boxInfo2() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => DropdownButton<RxString>(
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: valueChoose3,
                  onChanged: (RxString? newValue3) {
                    valueChoose3.value = newValue3!.value;
                  },
                  items: listOptions
                      .map<DropdownMenuItem<RxString>>((RxString value) {
                    return DropdownMenuItem<RxString>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => DropdownButton<RxString>(
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: valueChoose4,
                  onChanged: (RxString? newValue4) {
                    valueChoose4.value = newValue4!.value;
                  },
                  items: listOptions
                      .map<DropdownMenuItem<RxString>>((RxString value) {
                    return DropdownMenuItem<RxString>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
