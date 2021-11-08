import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/hot_product_detail.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/show_hot_product_detail.dart';

class PharmacityHotProduct extends StatelessWidget {
  HotProductDetail product;

  PharmacityHotProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width * 0.45,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotDetail(product: product)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height * 0.2,
              width: size.width * 0.4,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(
                product.discount,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: size.width * 0.3,
              alignment: Alignment.centerLeft,
              // margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Text(
                    'Thương hiệu',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(product.brand),
                  ),
                ],
              ),
            ),
            Container(
              height: 35.0,
              child: Text(
                product.name,
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: product.price + ' VND',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: 'cái!',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.red,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: product.discountPrice + ' VND',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'cái!',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 180,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: Text(
                  'Thêm vào giỏ hàng',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}