import 'package:flutter/material.dart';

class Cuppons extends StatefulWidget {
  const Cuppons({super.key});

  @override
  State<Cuppons> createState() => _CupponsState();
}

class _CupponsState extends State<Cuppons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    buildMainAppHeader(),
                    Divider(thickness: 1),
                    buildSubHeader(),
                    Divider(thickness: 0.5),
                    SizedBox(height: 10),
                    buildCouponList(),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Payment offers:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    buildCouponList(),
                    SizedBox(height: 200),
                  ],
                ),
              ),

              //buttom bar
              buildBottomBar(),
            ],
          ),
          Positioned(
            child: buildGreenOfferBar(),

            bottom: 80,
            left: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}

Widget buildMainAppHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(
      children: [
        Image.asset('assets/images/logy.png', height: 36),
        SizedBox(width: 10),
        Text(
          'SpaceZ',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.menu, size: 28, color: Color(0xFFA85B30)),
      ],
    ),
  );
}

Widget buildSubHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      children: [
        Icon(Icons.arrow_back, size: 26),
        SizedBox(width: 10),
        Text(
          "Coupons",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget buildCouponList() {
  return ListView.builder(
    itemCount: 2,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => buildCouponCard(),
  );
}

Widget buildCouponCard() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 238, 227, 227),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
      ],
    ),
    child: Row(
      children: [
        Container(
          height: 120,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFA85B30),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Center(
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                "₹6,900",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LONGSTAY",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          color: Color(0xFFA85B30),
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Apply",
                          style: TextStyle(
                            color: Color(0xFFA85B30),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 6),

                Text(
                  "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
                  style: TextStyle(fontSize: 13, color: Colors.black54),
                ),

                SizedBox(height: 8),
                Text(
                  "Read more",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBottomBar() {
  return Container(
    height: 70,
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(top: BorderSide(color: Colors.black12)),
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "₹16,000 for 2 nights",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text("24 Apr - 26 Apr | 8 guests"),
                SizedBox(width: 8),
                Icon(Icons.edit_outlined, size: 18),
              ],
            ),
          ],
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            "Reserve",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}

Widget buildGreenOfferBar() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    decoration: BoxDecoration(color: Colors.green),
    child: Center(
      child: Row(
        children: [
          Icon(Icons.percent_rounded, color: Colors.white),
          SizedBox(width: 10),
          Text(
            "Book now & Unlock exclusive rewards!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
