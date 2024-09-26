import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifyapp/common/helpers/is_dark_mode.dart';
import 'package:spotifyapp/common/widgets/button/basic_app_button.dart';
import 'package:spotifyapp/core/configs/assets/app_images.dart';
import 'package:spotifyapp/core/configs/assets/app_vectors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),
           Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
           ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG
            )
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                      textAlign: TextAlign.center,
                    ),
                    
                  ),
                  SizedBox(
                    height: 32,
                  ),
              
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){}, 
                          title: 'Register',
                        ),
                      ),
                      SizedBox(width: 24,),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){}, 
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode ? Colors.white : Colors.black
                            ),
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
