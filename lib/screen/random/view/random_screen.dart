import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rendom_people/screen/random/modal/random_modal.dart';
import 'package:rendom_people/screen/random/provider/random_provider.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<RandomProvider>(context, listen: false).getData();
  }

  RandomProvider? randomProviderfalse;
  RandomProvider? randomProvidertrue;

  @override
  Widget build(BuildContext context) {
    randomProviderfalse = Provider.of<RandomProvider>(context, listen: false);
    randomProvidertrue = Provider.of<RandomProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
            body: (randomProviderfalse!.people == null)
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                : SingleChildScrollView(
                  child: Stack(children: [
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Column(
                            children: [
                              Container(
                                height: 300,
                                width: double.infinity,
                                alignment: Alignment.topLeft,
                                decoration:
                                    BoxDecoration(color: Colors.blue.shade700),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Text(
                                        "Profile",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Icon(
                                        Icons.settings_outlined,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      "${randomProvidertrue!.people!.results![0].picture!.medium}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${randomProvidertrue!.people!.results![0].name!.first}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${randomProvidertrue!.people!.results![0].location!.country}",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          " ${randomProvidertrue!.people!.results![0].location!.state} ",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 9),
                                    Text(
                                      "  ${randomProvidertrue!.people!.info!.seed}",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 55,
                            ),
                            Container(
                              height: 1,
                              width: 340,
                              decoration: BoxDecoration(color: Colors.white54),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "102",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Orders",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      randomProvidertrue!.getData();
                                    },
                                    child: Icon(
                                      Icons.refresh,
                                      size: 25,
                                    ),
                                    backgroundColor:
                                        Colors.deepOrangeAccent.shade100,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "173",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 293, left: 135, right: 100),
                        child: Container(
                          height: 30,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                              ),
                              color: Colors.blue.shade700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 340, left: 18, right: 18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.man,
                                  size: 40,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].gender}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                            width: 338,
                            decoration: BoxDecoration(
                              color: Colors.black12
                            ),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].email}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                              width: 338,
                              decoration: BoxDecoration(
                                  color: Colors.black12
                              ),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  size: 30,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].login!.username}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                              width: 338,
                              decoration: BoxDecoration(
                                  color: Colors.black12
                              ),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(
                                  Icons.date_range,
                                  size: 30,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].dob!.date}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                              width: 338,
                              decoration: BoxDecoration(
                                  color: Colors.black12
                              ),),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].phone}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                              width: 338,
                              decoration: BoxDecoration(
                                  color: Colors.black12
                              ),),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(
                                  Icons.nat,
                                  size: 30,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${randomProvidertrue!.people!.results![0].nat}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Container(height: 1,
                              width: 338,
                              decoration: BoxDecoration(
                                  color: Colors.black12
                              ),),
                          ],
                        ),
                      )
                    ]),
                )));
  }
}
