import 'package:flutter/material.dart';

class screentwo extends StatelessWidget {
  const screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          title: Text(
            'Create Profile',
          ),
          backgroundColor: Colors.blueGrey[800],
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: <Widget>[
              texthead(),
              SizedBox(height: 10),
              subtext(),
              SizedBox(height: 15),
              grid(),
              SizedBox(
                height: 10,
              ),
              texttwo(),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 200),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink, width: 3),
                        ),
                      ),
                    ),
                  ),
                  Text('/hr')
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                width: 35,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return screentwo();
                    }));
                  },
                  child: Text(
                    "Submit",
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget texthead() {
    return Text(
      "Portfolio",
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget subtext() {
    return Text(
      "Attach images for your completed jobs",
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget grid() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          mainAxisExtent: 120,
          childAspectRatio: 1),
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.W_T-YH9LW4A9E9wEUmvbeAHaFP?pid=ImgDet&rs=1'),
                )),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.N2DpTOOztCotD15tIq9WUQHaE8?pid=ImgDet&w=900&h=600&rs=1'),
                )),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.creativemarket.com/0.1.0/ps/3714346/1500/1000/m1/fpnw/wm0/01_camera-.jpg?1512941348&s=be8d1276189b63d839555caef7b1dd64'))),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.99b9cc2d60b6591514d5f812602a94c9?rik=eB%2bWDezIln3NZA&riu=http%3a%2f%2fghar360.com%2fblogs%2fwp-content%2fuploads%2fLuxury-Home-Interior-80.jpg&ehk=dpdBmhb2EFn1Q8GjpBEE81uZiq4ACfaR0LeH66bTdxg%3d&risl=&pid=ImgRaw&r=0'),
                )),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.IEyNPMK3EaSCeV2sZPwsiAHaFD?pid=ImgDet&w=474&h=323&rs=1'),
                )),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.N2DpTOOztCotD15tIq9WUQHaE8?pid=ImgDet&w=900&h=600&rs=1'),
                )),
          ),
        ),
      ],
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      reverse: true,
    );
  }

  Widget texttwo() {
    return Text(
      "Hourly Rates",
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
