import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'empty_screen.dart';

class SmsPageState extends StatefulWidget {
  @override
  _SmsPageState createState() => new _SmsPageState();
}

class _SmsPageState extends State<SmsPageState> {
  List<DropdownMenuItem<int>> listTypeOfSportsCourts = [];
  void loadListTypeOfSportsCourts() {
    listTypeOfSportsCourts = [];
    listTypeOfSportsCourts.add(new DropdownMenuItem(
      child: new Text('+51'),
      value: 1,
    ));
    listTypeOfSportsCourts.add(new DropdownMenuItem(
      child: new Text('+1'),
      value: 0,
    ));
  }

  TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: '+51');
  }

  @override
  Widget build(BuildContext context) {
    loadListTypeOfSportsCourts();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ingrese su número',
              style: new TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Segoe UI',
                color: Colors.grey,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            Form(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[

                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('CountryPickerDropdown'),
                              ListTile(title: _buildCountryPickerDropdown()),
                            ],
                          ),
                        ),


                        CountryPickerDropdown(
                          initialValue: 'tr',
                          itemBuilder: _buildDropdownItem,
                          onValuePicked: (Country country) {
                            print("${country.name}");
                          },
                        ),

                      ],
                    ),
                    SizedBox(height: 20.0),
                    ButtonTheme(
                      minWidth: 350.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => EmptyScreen()));
                        },
                        textColor: Colors.white,
                        color: Colors.amber,
                        child: new Text(
                          "ENVIAR CODIGO DE VERIFICACIÓN",
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'Verificar +51 978324756',
                      style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Segoe UI',
                        color: Colors.green,
                        fontSize: 31.0,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Esperando para detectar automáticamente el SMS enviado',
                      style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Segoe UI',
                        color: Colors.black,
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const SizedBox(width: 80.0),
                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        //const SizedBox(width: 5.0),
                        new Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DropdownButtonHideUnderline(
                              child: Text(

                                '-',
                                style: new TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Segoe UI',
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),

                            ),
                          ),
                        ),

                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        new Flexible(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0, style: BorderStyle.solid),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0),),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '5',
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(width: 80.0),
                      ],
                    ),
                    SizedBox(width: 4.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[


                        const SizedBox(height: 10.0),
                        new Flexible(
                          child: Container(
                            child:    Text(

                              "________________________________________",

                            ),
                          ),
                        ),
                      ],

                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const SizedBox(height: 20.0),
                        new Flexible(
                          child: Container(
                            //  padding: EdgeInsets.all(8.0),
                            child:    Text(
                              "VOLVER A REENVIAR CÓDIGO"  ,
                              style: new TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14.0),
                        new Flexible(
                          child: Container(
                            child:    Text(
                              "    00:00 ",

                            ),
                          ),
                        ),
                      ],

                    ),

                  ],
                )),
          ],
        ),
      ),
    );


  }
  _buildCountryPickerDropdown() => Row(
    children: <Widget>[
      CountryPickerDropdown(
        initialValue: 'tr',
        itemBuilder: _buildDropdownItem,
        onValuePicked: (Country country) {
          print("${country.name}");
        },
      ),
      SizedBox(
        width: 8.0,
      ),
      Expanded(
        child: TextField(
          decoration: InputDecoration(labelText: "Celular"),
        ),
      )
    ],
  );

  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );

}