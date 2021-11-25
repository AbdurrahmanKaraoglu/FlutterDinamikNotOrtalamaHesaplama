import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';
import 'package:flutter_dinamik_not/helper/data_helper.dart';

class KrediDropdownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediDropdownWidget({Key? key, required this.onKrediSecildi}) : super(key: key);

  @override
  _KrediDropdownWidgetState createState() => _KrediDropdownWidgetState();
}

class _KrediDropdownWidgetState extends State<KrediDropdownWidget> {
  double secilenKrediDegeri = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(color: Sabitler.anaRenk.shade100.withOpacity(0.3), borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        value: secilenKrediDegeri,
        onChanged: (value) {
          setState(() {
            secilenKrediDegeri = value!;
            widget.onKrediSecildi(secilenKrediDegeri);
          });
        },
        items: DataHelper.tumDerslerinKredileri(),
        underline: Container(),
      ),
    );
  }
}
