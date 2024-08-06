import 'package:flutter/material.dart';



class AdoptionForm extends StatefulWidget {
  @override
  _AdoptionFormState createState() => _AdoptionFormState();
}

class _AdoptionFormState extends State<AdoptionForm> {
  bool homeVisitYes = false;
  bool homeVisitNo = false;
  bool ageBelow18 = false;
  bool age18to30 = false;
  bool ageAbove30 = false;
  bool genderMale = false;
  bool genderFemale = false;
  bool genderOthers = false;
  bool familyApprovalYes = false;
  bool familyApprovalSingle = false;
  TextEditingController identificationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Adoption Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Home Visit:', style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text('Yes'),
              value: homeVisitYes,
              onChanged: (bool? value) {
                setState(() {
                  homeVisitYes = value ?? false;
                  if (homeVisitYes) homeVisitNo = false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('No'),
              value: homeVisitNo,
              onChanged: (bool? value) {
                setState(() {
                  homeVisitNo = value ?? false;
                  if (homeVisitNo) homeVisitYes = false;
                });
              },
            ),
            Divider(),
            Text('Age:', style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text('Below 18'),
              value: ageBelow18,
              onChanged: (bool? value) {
                setState(() {
                  ageBelow18 = value ?? false;
                  if (ageBelow18) {
                    age18to30 = false;
                    ageAbove30 = false;
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('18-30'),
              value: age18to30,
              onChanged: (bool? value) {
                setState(() {
                  age18to30 = value ?? false;
                  if (age18to30) {
                    ageBelow18 = false;
                    ageAbove30 = false;
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Above 30'),
              value: ageAbove30,
              onChanged: (bool? value) {
                setState(() {
                  ageAbove30 = value ?? false;
                  if (ageAbove30) {
                    ageBelow18 = false;
                    age18to30 = false;
                  }
                });
              },
            ),
            Divider(),
            Text('Gender:', style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text('Male'),
              value: genderMale,
              onChanged: (bool? value) {
                setState(() {
                  genderMale = value ?? false;
                  if (genderMale) {
                    genderFemale = false;
                    genderOthers = false;
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Female'),
              value: genderFemale,
              onChanged: (bool? value) {
                setState(() {
                  genderFemale = value ?? false;
                  if (genderFemale) {
                    genderMale = false;
                    genderOthers = false;
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Others'),
              value: genderOthers,
              onChanged: (bool? value) {
                setState(() {
                  genderOthers = value ?? false;
                  if (genderOthers) {
                    genderMale = false;
                    genderFemale = false;
                  }
                });
              },
            ),
            Divider(),
            Text('Family Approval:', style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text('Yes'),
              value: familyApprovalYes,
              onChanged: (bool? value) {
                setState(() {
                  familyApprovalYes = value ?? false;
                  if (familyApprovalYes) familyApprovalSingle = false;
                });
              },
            ),
            CheckboxListTile(
              title: Text("I'm Single"),
              value: familyApprovalSingle,
              onChanged: (bool? value) {
                setState(() {
                  familyApprovalSingle = value ?? false;
                  if (familyApprovalSingle) familyApprovalYes = false;
                });
              },
            ),
            Divider(),
            Text('Valid Identification:', style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox(height:15),
            Text("Upaload valid documents"),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: TextField(
                  controller: identificationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Upload document',
                  ),
                ),),
                SizedBox(width:10),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Upload'),
                ),
              ],
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50, // Set the height of the button
                  width: 150, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Define your onPressed function here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),
                ),
                SizedBox(
                  height: 50, // Set the height of the button
                  width: 150, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Define your onPressed function here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text('Request',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}