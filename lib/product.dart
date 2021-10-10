import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stepbystep/controllers.dart';

class ProductBox extends StatelessWidget {
  ProductBox(
      {required this.aim,
      required this.description,
      required this.mainaim,
      required this.image,
      required this.lscd,
      required this.lssud,
      required this.kvtd});
  final String aim;
  final String description;
  final String mainaim;
  final String image;
  final String lscd;
  final String lssud;
  final String kvtd;

  Controller controller = Get.put(Controller());

//  @override
//  State<ProductBox> createState() => _ProductBoxState();
//}

//class _ProductBoxState extends State<ProductBox> {
  String valueChoose = "Tất cả";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/logos/' + image),
                  const SizedBox(height: 5.0),
                  Text(
                    mainaim,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    aim,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "05/06/2021",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  detailInfo1(),
                  boxInfo1(),
                  const SizedBox(height: 5),
                  detailInfo2(),
                  boxInfo2(),
                  applybutton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container applybutton() {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 2),
      height: 35,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextButton(
        child: const Center(
          child: Text(
            "Áp dụng",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Row detailInfo1() {
    return Row(
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Text(
              'Lãi suất cố định',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.5,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.0),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Thời gian ưu đãi lãi suất',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row detailInfo2() {
    return Row(
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Text(
              'Lãi suất sau ưu đãi',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.5,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.0),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Khoản vay tối đa',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.5,
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
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(child: Text(lscd)),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(3),
              ),
              //Chỗ này
              child: GetBuilder<Controller>(
                init: Controller(),
                builder: (controller) => DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: valueChoose,
                  onChanged: (String? newValue) {
                    valueChoose = newValue!;
                    //print(newValue);
                  },
                  items: controller.periodList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(
                        child: Text(controller.value),
                      ),
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

  // Widget _check(String checkvalue, List<String> myListString) {
  //   // if (myListString[0] == checkvalue) {
  //   //   return Text(myListString[0]);
  //   // } else if (myListString[1] == checkvalue) {
  //   //   return Text(myListString[1]);
  //   // } else if (myListString[2] == checkvalue) {
  //   //   return Text(myListString[2]);
  //   // } else {
  //   //   return Text(myListString[3]);
  //   // }
  //   for (int i in myListString.length -1 ) {
  //     if (myListString[i] == checkvalue) {
  //       return Text(myListString[i]);
  //     }
  //   }
  // }

  Row boxInfo2() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(child: Text(lssud)),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: Text(kvtd),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
