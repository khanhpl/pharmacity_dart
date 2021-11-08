import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class MyUserRanking extends StatefulWidget {
  @override
  State<MyUserRanking> createState() {
    return _MyUserRankingState();
  }
}

class _MyUserRankingState extends State<MyUserRanking> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: _pageWidth * 0.7,
                child: Text('Quy chế xếp hạng'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: [
            Container(
              width: _pageWidth,
              height: _pageHeight * 0.28,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(10.0, _pageHeight * 0.06, 10, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Xếp hạng của bạn ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '(0 điểm)',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.wallet_membership,
                    size: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _pageHeight * 0.25 * 0.05),
                    child: Text(
                      'Thành viên',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _pageHeight * 0.25 * 0.1),
                    child: Container(
                      width: _pageWidth * 0.7,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: _pageWidth * 0.85,
                    margin: EdgeInsets.only(top: _pageHeight * 0.28 * 0.1),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.wallet_membership,
                              ),
                              Text('Thành viên'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: _pageWidth * 0.05),
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.wallet_membership,
                                ),
                                Text('V.I.P'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //BODY
            Container(
              width: _pageWidth,
              height: _pageHeight * 0.525,
              alignment: Alignment.center,
              // margin: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Điều kiện lên hạng',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: _pageWidth * 0.2,
                    child: Divider(
                      color: Colors.blue.shade700,
                      height: _pageWidth * 0.05,
                      thickness: 2.5,
                    ),
                  ),
                  Container(
                    child: Text(
                        '* Bạn chỉ cần duy trì chi tiêu tích lũy từ 8.000.000 VNĐ trở lên trong vòng 12 tháng gần nhất sẽ được nâng hạng VIP. '
                        'Hạng VIP của bạn sẽ được giữ trong 365 ngày kể từ ngày nâng hạng. '
                        'Sau khi hết ngày thứ 365, hạng thành viên của bạn sẽ được xét lại dựa trên chi tiêu tích lũy trong 12 tháng gần nhất.'),
                  ),
                  Container(
                    width: _pageWidth,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: Dash(
                      direction: Axis.horizontal,
                      length: _pageWidth - 20,
                      dashLength: 12,
                      dashColor: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Phân loại hạng thành viên',
                    ),
                  ),
                  Container(
                    width: _pageWidth * 0.2,
                    child: Divider(
                      color: Colors.blue.shade700,
                      height: _pageWidth * 0.05,
                      thickness: 2.5,
                    ),
                  ),
                  Container(
                    width: _pageWidth - 20,
                    height: _pageHeight * 0.07,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.wallet_membership,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Thành viên',
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.arrow_drop_down_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _pageWidth - 20,
                    height: _pageHeight * 0.07,
                    // alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.wallet_membership,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 10, top: 10),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'V.I.P',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Để lên hạng cần thêm ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '8.000.000 ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'điểm',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.arrow_drop_down_outlined),
                          ),
                        ),
                      ],
                    ),
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