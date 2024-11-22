
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SplashViews extends StatefulWidget {
  const SplashViews({super.key});

  @override
  State<SplashViews> createState() => _SplashViewsState();
}

class _SplashViewsState extends State<SplashViews> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(AppLocalizations.of(context)!.helloWorld))

      /*
      Container(
        height: MediaQuery.sizeOf(context).height * 1,
        width: MediaQuery.sizeOf(context).width * 1,
        decoration: BoxDecoration(
          gradient: Theme.of(context).brightness == Brightness.dark
              ? null // Dark mode uses image
              : const LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          image: Theme.of(context).brightness == Brightness.dark
              ? const DecorationImage(
            image: AssetImage('assets/images/smiling-senior-patient-sitting-on-bed-in-hospital-2023-11-27-05-10-00-utc 1asasas.png'),
            fit: BoxFit.cover,
          )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text(AppLocalizations.of(context)!.helloWorld),
            InkWell(
              onTap: (){
        
              },
              child: Container(
                height: 50,
                 
                  child: Text("New Button",)
              ),
            ),
            Switch(
              activeColor: AppColor.primary,
              onChanged: (value) {
        
                setState(() {
                  Themes().switchTheme();
                  isDark = value;
                });
              },
              value: isDark,
            )
          ],
        ),
      ),
      */
    );
  }
}
