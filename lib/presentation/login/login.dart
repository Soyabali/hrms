// import 'package:flutter/material.dart';
//
// import '../resources/assets_manager.dart';
// import '../resources/color_manager.dart';
// import '../resources/routes_manager.dart';
// import '../resources/values_manager.dart';
//
// class LoginView extends StatefulWidget {
//
//   const LoginView({Key? key}) : super(key: key);
//   @override
//   _LoginViewState createState() => _LoginViewState();
// }
// class _LoginViewState extends State<LoginView>
// {
// //  LoginViewModel _viewModel = instance<LoginViewModel>();
//   //AppPreferences _appPreferences = instance<AppPreferences>();
//
//   TextEditingController _userNameController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//
//   final _formKey = GlobalKey<FormState>();
//   // _bind()
//   // {
//   //   _viewModel.start();
//   //   _userNameController
//   //       .addListener(() => _viewModel.setUserName(_userNameController.text));
//   //   _passwordController
//   //       .addListener(() => _viewModel.setPassword(_passwordController.text));
//   //   _viewModel.isUserLoggedInSuccessfullyStreamController.stream
//   //       .listen((isSuccessLoggedIn) {
//   //     // navigate to main screen
//   //     SchedulerBinding.instance?.addPostFrameCallback((_)
//   //     {
//   //       _appPreferences.setIsUserLoggedIn();
//   //       Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
//   //     });
//   //   });
//   // }
//   @override
//   void initState()
//   {
//    // _bind();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//     backgroundColor: ColorManager.white,
//
//       body: StreamBuilder<FlowState>(
//         stream: _viewModel.outputState,
//         builder: (context,snapshot)
//         {
//           return snapshot.data?.getScreenWidget(context,_getContentWidget(),()
//           {
//             _viewModel.login();
//           }) ?? _getContentWidget();
//         }
//       ),
//     );
//   }
//   Widget _getContentWidget()
//   {
//     return (
//         Container(
//         padding: EdgeInsets.only(top: AppPadding.p100),
//         color: ColorManager.white,
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Image(image: AssetImage(ImageAssets.splashLogo)),
//                 SizedBox(height: AppSize.s28),
//                 Padding(padding: EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                   child: StreamBuilder<bool>(
//                     stream: _viewModel.outputIsUserNameValid,
//                     builder: (context, snapshot) {
//                       return TextFormField(
//                         keyboardType: TextInputType.emailAddress,
//                         controller: _userNameController,
//                         decoration: InputDecoration(
//                             hintText: AppStrings.username.tr(),
//                             labelText: AppStrings.username.tr(),
//                             errorText: (snapshot.data ?? true)
//                                 ? null
//                                 : AppStrings.usernameError.tr()
//                         ),
//                       );
//                     },
//                   ),),
//                 SizedBox(height: AppSize.s28),
//                 Padding(padding: EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                   child: StreamBuilder<bool>(
//                     stream: _viewModel.outputIsPasswordValid,
//                     builder: (context, snapshot) {
//                       return TextFormField(
//                         keyboardType: TextInputType.visiblePassword,
//                         controller: _passwordController,
//                         decoration: InputDecoration(
//                             hintText: AppStrings.password.tr(),
//                             labelText: AppStrings.password.tr(),
//                             errorText: (snapshot.data ?? true)
//                                 ? null
//                                 : AppStrings.passwordError.tr()
//                         ),
//                       );
//                     },
//                   ),),
//                 SizedBox(height: AppSize.s28),
//                 Padding(padding: EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                     child: StreamBuilder<bool>(
//                       stream:_viewModel.outputIsAllInputsValid        // todo add me later,
//                       , builder: (context, snapshot)
//                     {
//                       return SizedBox(
//                         width: double.infinity,
//                         height: AppSize.s40,
//                         child: ElevatedButton(
//                             onPressed: (snapshot.data ?? false)
//                                 ? () {
//                               _viewModel.login();
//                             } : null, child: Text(AppStrings.login).tr()),
//                       );
//                     },
//                     )
//                 ),
//                 Padding(padding: EdgeInsets.only(
//                   top: AppPadding.p8,
//                   left: AppPadding.p28,
//                   right: AppPadding.p28,
//                 ),
//                 // have a two childs
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pushReplacementNamed(
//                               context, Routes.forgotPasswordRoute);
//                         },
//                         child: Text(AppStrings.forgetPassword,
//                             style: Theme.of(context).textTheme.subtitle2).tr(),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pushReplacementNamed(
//                               context, Routes.registerRoute);
//                         },
//                         child: Text(AppStrings.registerText,
//                             style: Theme.of(context).textTheme.subtitle2).tr(),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//
//     ));
//   }
//   @override
//   void dispose()
//   {
//     _viewModel.dispose();
//     super.dispose();
//   }
// }