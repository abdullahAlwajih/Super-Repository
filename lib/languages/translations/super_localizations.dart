
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'super_localizations_ar.dart';
import 'super_localizations_en.dart';
import 'super_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of SuperLocalizations returned
/// by `SuperLocalizations.of(context)`.
///
/// Applications need to include `SuperLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'translations/super_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: SuperLocalizations.localizationsDelegates,
///   supportedLocales: SuperLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the SuperLocalizations.supportedLocales
/// property.
abstract class SuperLocalizations {
  SuperLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static SuperLocalizations? of(BuildContext context) {
    return Localizations.of<SuperLocalizations>(context, SuperLocalizations);
  }

  static const LocalizationsDelegate<SuperLocalizations> delegate = _SuperLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get appAbout;

  /// No description provided for @appAboutTheApp.
  ///
  /// In en, this message translates to:
  /// **'about the app'**
  String get appAboutTheApp;

  /// No description provided for @appApp.
  ///
  /// In en, this message translates to:
  /// **'application'**
  String get appApp;

  /// No description provided for @appAppLanguage.
  ///
  /// In en, this message translates to:
  /// **'application language'**
  String get appAppLanguage;

  /// No description provided for @appAppSettings.
  ///
  /// In en, this message translates to:
  /// **'Application settings'**
  String get appAppSettings;

  /// No description provided for @appAppVersion.
  ///
  /// In en, this message translates to:
  /// **'app version'**
  String get appAppVersion;

  /// No description provided for @appApplicationPreferences.
  ///
  /// In en, this message translates to:
  /// **'Application Preferences'**
  String get appApplicationPreferences;

  /// No description provided for @appDarkMode.
  ///
  /// In en, this message translates to:
  /// **'dark theme'**
  String get appDarkMode;

  /// No description provided for @appHome.
  ///
  /// In en, this message translates to:
  /// **'Main'**
  String get appHome;

  /// No description provided for @appLightMode.
  ///
  /// In en, this message translates to:
  /// **'light theme'**
  String get appLightMode;

  /// No description provided for @appNeedsToBeUpdated.
  ///
  /// In en, this message translates to:
  /// **'The app needs to be updated'**
  String get appNeedsToBeUpdated;

  /// No description provided for @appNewUpdate.
  ///
  /// In en, this message translates to:
  /// **'new update'**
  String get appNewUpdate;

  /// No description provided for @appNewUpdateWithFace.
  ///
  /// In en, this message translates to:
  /// **'New update 😍'**
  String get appNewUpdateWithFace;

  /// No description provided for @appShareApplication.
  ///
  /// In en, this message translates to:
  /// **'share app'**
  String get appShareApplication;

  /// No description provided for @appSoPleaseUpdateToTheNewVersion.
  ///
  /// In en, this message translates to:
  /// **'So please update to the new version.'**
  String get appSoPleaseUpdateToTheNewVersion;

  /// No description provided for @appTapAgainToLeave.
  ///
  /// In en, this message translates to:
  /// **'Press again to leave'**
  String get appTapAgainToLeave;

  /// No description provided for @appToUseThisAppPleaseUpdateToTheLatestVersion.
  ///
  /// In en, this message translates to:
  /// **'To use this app, please download the latest version.'**
  String get appToUseThisAppPleaseUpdateToTheLatestVersion;

  /// No description provided for @appUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get appUpdate;

  /// No description provided for @appUpdateNow.
  ///
  /// In en, this message translates to:
  /// **'update now'**
  String get appUpdateNow;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get appVersion;

  /// No description provided for @appWeArePleasedThatYouUseOurApplicationAndWeHopeThatYouWillHaveFunBrowsing.
  ///
  /// In en, this message translates to:
  /// **'We are pleased that you have used our application and we hope that you will enjoy browsing'**
  String get appWeArePleasedThatYouUseOurApplicationAndWeHopeThatYouWillHaveFunBrowsing;

  /// No description provided for @appWeAreWorkingHardToComeUpWithNewServices.
  ///
  /// In en, this message translates to:
  /// **'We are working hard to provide new services.'**
  String get appWeAreWorkingHardToComeUpWithNewServices;

  /// No description provided for @appWeAreWorkingHardToComeUpWithNewServicesSoPleaseUpdateTheNewVersion.
  ///
  /// In en, this message translates to:
  /// **'We are working hard to provide new services, so we hope that you will update to the new version'**
  String get appWeAreWorkingHardToComeUpWithNewServicesSoPleaseUpdateTheNewVersion;

  /// No description provided for @authAccount.
  ///
  /// In en, this message translates to:
  /// **'the account'**
  String get authAccount;

  /// No description provided for @authAccountApproveAlert.
  ///
  /// In en, this message translates to:
  /// **'Please wait for your account to be approved.'**
  String get authAccountApproveAlert;

  /// No description provided for @authAccountDetails.
  ///
  /// In en, this message translates to:
  /// **'account details'**
  String get authAccountDetails;

  /// No description provided for @authAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'account number'**
  String get authAccountNumber;

  /// No description provided for @authAccounts.
  ///
  /// In en, this message translates to:
  /// **'the accounts'**
  String get authAccounts;

  /// No description provided for @authAddImage.
  ///
  /// In en, this message translates to:
  /// **'add a picture'**
  String get authAddImage;

  /// No description provided for @authAddNewAddress.
  ///
  /// In en, this message translates to:
  /// **'add a new address,'**
  String get authAddNewAddress;

  /// No description provided for @authAddress.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get authAddress;

  /// No description provided for @authAddressesOfUser.
  ///
  /// In en, this message translates to:
  /// **'User Addresses'**
  String get authAddressesOfUser;

  /// No description provided for @authAge.
  ///
  /// In en, this message translates to:
  /// **'the age'**
  String get authAge;

  /// No description provided for @authAlreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Do you already have an account?'**
  String get authAlreadyHaveAnAccount;

  /// No description provided for @authAlternativePhone.
  ///
  /// In en, this message translates to:
  /// **'alternate phone number'**
  String get authAlternativePhone;

  /// No description provided for @authAnErrorOccurredPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again'**
  String get authAnErrorOccurredPleaseTryAgain;

  /// No description provided for @authAreYouSureToRemoveThisAddress.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the address?'**
  String get authAreYouSureToRemoveThisAddress;

  /// No description provided for @authAreYouSureYouWantToLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get authAreYouSureYouWantToLogout;

  /// No description provided for @authByUsingTheApplicationAndLoggingInYouAgreeTo.
  ///
  /// In en, this message translates to:
  /// **'By using the application and logging in, you agree to'**
  String get authByUsingTheApplicationAndLoggingInYouAgreeTo;

  /// No description provided for @authCanNotGetTheContactNumber.
  ///
  /// In en, this message translates to:
  /// **'Unable to get the number'**
  String get authCanNotGetTheContactNumber;

  /// No description provided for @authChangePassword.
  ///
  /// In en, this message translates to:
  /// **'change Password'**
  String get authChangePassword;

  /// No description provided for @authChooseAccount.
  ///
  /// In en, this message translates to:
  /// **'select account'**
  String get authChooseAccount;

  /// No description provided for @authChooseUserType.
  ///
  /// In en, this message translates to:
  /// **'Choose an account type'**
  String get authChooseUserType;

  /// No description provided for @authCodeIsSent.
  ///
  /// In en, this message translates to:
  /// **'Code sent, check text messages'**
  String get authCodeIsSent;

  /// No description provided for @authCodeWillBeReceivedIn.
  ///
  /// In en, this message translates to:
  /// **'You will receive the code within'**
  String get authCodeWillBeReceivedIn;

  /// No description provided for @authCompleteYourProfileDetailsToContinue.
  ///
  /// In en, this message translates to:
  /// **'Complete your profile details to continue.'**
  String get authCompleteYourProfileDetailsToContinue;

  /// No description provided for @authConfirmPIN.
  ///
  /// In en, this message translates to:
  /// **'Personal ID Confirmation'**
  String get authConfirmPIN;

  /// No description provided for @authConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'confirm password'**
  String get authConfirmPassword;

  /// No description provided for @authConfirmationCode.
  ///
  /// In en, this message translates to:
  /// **'confirmation code'**
  String get authConfirmationCode;

  /// No description provided for @authContinueWithTheSameData.
  ///
  /// In en, this message translates to:
  /// **'Continue with the same data'**
  String get authContinueWithTheSameData;

  /// No description provided for @authCreateANewAccount.
  ///
  /// In en, this message translates to:
  /// **'create a new account'**
  String get authCreateANewAccount;

  /// No description provided for @authCustomerID.
  ///
  /// In en, this message translates to:
  /// **'user id'**
  String get authCustomerID;

  /// No description provided for @authDataCompletion.
  ///
  /// In en, this message translates to:
  /// **'data completion'**
  String get authDataCompletion;

  /// No description provided for @authDonatHaveAccountQuestion.
  ///
  /// In en, this message translates to:
  /// **'First time account registration'**
  String get authDonatHaveAccountQuestion;

  /// No description provided for @authEMail.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get authEMail;

  /// No description provided for @authEditAddress.
  ///
  /// In en, this message translates to:
  /// **'address modification'**
  String get authEditAddress;

  /// No description provided for @authEditMyData.
  ///
  /// In en, this message translates to:
  /// **'modify my data'**
  String get authEditMyData;

  /// No description provided for @authEditProfile.
  ///
  /// In en, this message translates to:
  /// **'account modification'**
  String get authEditProfile;

  /// No description provided for @authEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'email address'**
  String get authEmailAddress;

  /// No description provided for @authEmailToResetPassword.
  ///
  /// In en, this message translates to:
  /// **'password reset email'**
  String get authEmailToResetPassword;

  /// No description provided for @authEnterAddress.
  ///
  /// In en, this message translates to:
  /// **'enter address'**
  String get authEnterAddress;

  /// No description provided for @authEnterCode.
  ///
  /// In en, this message translates to:
  /// **'enter code'**
  String get authEnterCode;

  /// No description provided for @authEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'enter email'**
  String get authEnterEmail;

  /// No description provided for @authEnterName.
  ///
  /// In en, this message translates to:
  /// **'Enter the name'**
  String get authEnterName;

  /// No description provided for @authEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter the password'**
  String get authEnterPassword;

  /// No description provided for @authEnterPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter a phone number'**
  String get authEnterPhone;

  /// No description provided for @authEnterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a phone number'**
  String get authEnterPhoneNumber;

  /// No description provided for @authEnterTheVerificationCodeSentMomentsAgo.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code sent moments ago.'**
  String get authEnterTheVerificationCodeSentMomentsAgo;

  /// No description provided for @authEnterTheVerificationCodeSentMomentsAgoToYourMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code sent moments ago to your mobile number:'**
  String get authEnterTheVerificationCodeSentMomentsAgoToYourMobileNumber;

  /// No description provided for @authEnterTheVerificationCodeSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter the confirmation code that was sent to the e-mail.'**
  String get authEnterTheVerificationCodeSentToYourEmail;

  /// No description provided for @authEnterTheVerificationCodeSentToYourPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter the confirmation code that was sent to your mobile number.'**
  String get authEnterTheVerificationCodeSentToYourPhone;

  /// No description provided for @authEnterVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the confirmation code'**
  String get authEnterVerificationCode;

  /// No description provided for @authExit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get authExit;

  /// No description provided for @authFemale.
  ///
  /// In en, this message translates to:
  /// **'feminine'**
  String get authFemale;

  /// No description provided for @authFirebaseSmsExpireMessage.
  ///
  /// In en, this message translates to:
  /// **'The code has expired, please enter the new code or re-register'**
  String get authFirebaseSmsExpireMessage;

  /// No description provided for @authFirstName.
  ///
  /// In en, this message translates to:
  /// **'First Name:'**
  String get authFirstName;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'did you forget your password?'**
  String get authForgotPassword;

  /// No description provided for @authFourthName.
  ///
  /// In en, this message translates to:
  /// **'fourth name'**
  String get authFourthName;

  /// No description provided for @authFullAddress.
  ///
  /// In en, this message translates to:
  /// **'the full address'**
  String get authFullAddress;

  /// No description provided for @authFullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get authFullName;

  /// No description provided for @authGender.
  ///
  /// In en, this message translates to:
  /// **'sex'**
  String get authGender;

  /// No description provided for @authHelpAndPolicies.
  ///
  /// In en, this message translates to:
  /// **'Help and Privacy Policy'**
  String get authHelpAndPolicies;

  /// No description provided for @authHomeAddress.
  ///
  /// In en, this message translates to:
  /// **'Home Address'**
  String get authHomeAddress;

  /// No description provided for @authIAccept.
  ///
  /// In en, this message translates to:
  /// **'I agree to'**
  String get authIAccept;

  /// No description provided for @authIDNumber.
  ///
  /// In en, this message translates to:
  /// **'card number'**
  String get authIDNumber;

  /// No description provided for @authIDonatHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'I dont have an account?'**
  String get authIDonatHaveAnAccount;

  /// No description provided for @authIHaveAccountBackToLogin.
  ///
  /// In en, this message translates to:
  /// **'Have an account? Back to login'**
  String get authIHaveAccountBackToLogin;

  /// No description provided for @authInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code'**
  String get authInvalidCode;

  /// No description provided for @authInvalidNumberFormat.
  ///
  /// In en, this message translates to:
  /// **'incorrect number format'**
  String get authInvalidNumberFormat;

  /// No description provided for @authLastName.
  ///
  /// In en, this message translates to:
  /// **'last name'**
  String get authLastName;

  /// No description provided for @authLetsStartWithLogin.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start logging in.'**
  String get authLetsStartWithLogin;

  /// No description provided for @authLetsStartWithRegister.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start recording!'**
  String get authLetsStartWithRegister;

  /// No description provided for @authLocalReason.
  ///
  /// In en, this message translates to:
  /// **'Please authenticate to access your account'**
  String get authLocalReason;

  /// No description provided for @authLogin.
  ///
  /// In en, this message translates to:
  /// **'sign in'**
  String get authLogin;

  /// No description provided for @authLoginTo.
  ///
  /// In en, this message translates to:
  /// **'sign in to'**
  String get authLoginTo;

  /// No description provided for @authLoginToTheApplication.
  ///
  /// In en, this message translates to:
  /// **'login to the application'**
  String get authLoginToTheApplication;

  /// No description provided for @authLogout.
  ///
  /// In en, this message translates to:
  /// **'sign out'**
  String get authLogout;

  /// No description provided for @authMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get authMale;

  /// No description provided for @authMobileNumberVerification.
  ///
  /// In en, this message translates to:
  /// **'confirm phone number'**
  String get authMobileNumberVerification;

  /// No description provided for @authNewPassword.
  ///
  /// In en, this message translates to:
  /// **'new password'**
  String get authNewPassword;

  /// No description provided for @authOrCreateNewAccount.
  ///
  /// In en, this message translates to:
  /// **'or create an account'**
  String get authOrCreateNewAccount;

  /// No description provided for @authOrLoginWithAPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Or log in with your phone number.'**
  String get authOrLoginWithAPhoneNumber;

  /// No description provided for @authOrLoginWithAnEmail.
  ///
  /// In en, this message translates to:
  /// **'or log in via e-mail'**
  String get authOrLoginWithAnEmail;

  /// No description provided for @authOrRegisterWithAPhone.
  ///
  /// In en, this message translates to:
  /// **'or use the phone number'**
  String get authOrRegisterWithAPhone;

  /// No description provided for @authOrRegisterWithAnEmail.
  ///
  /// In en, this message translates to:
  /// **'or use e-mail'**
  String get authOrRegisterWithAnEmail;

  /// No description provided for @authOrSendCodeViaEmail.
  ///
  /// In en, this message translates to:
  /// **'Or send the code via e-mail.'**
  String get authOrSendCodeViaEmail;

  /// No description provided for @authOrSendCodeViaPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Or send the code via phone number.'**
  String get authOrSendCodeViaPhoneNumber;

  /// No description provided for @authOtpReSent.
  ///
  /// In en, this message translates to:
  /// **'The code has been sent successfully'**
  String get authOtpReSent;

  /// No description provided for @authPIN.
  ///
  /// In en, this message translates to:
  /// **'personal identifier'**
  String get authPIN;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'The password'**
  String get authPassword;

  /// No description provided for @authPasswordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'confirm password'**
  String get authPasswordConfirmation;

  /// No description provided for @authPasswordMustContainAtLeastSixCharacters.
  ///
  /// In en, this message translates to:
  /// **'The password must contain at least six characters.'**
  String get authPasswordMustContainAtLeastSixCharacters;

  /// No description provided for @authPasswordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Password does not match'**
  String get authPasswordsDoNotMatch;

  /// No description provided for @authPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'phone number'**
  String get authPhoneNumber;

  /// No description provided for @authPhoneNumberIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get authPhoneNumberIsRequired;

  /// No description provided for @authPleaseAcceptTheTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Please accept the terms and conditions'**
  String get authPleaseAcceptTheTermsAndConditions;

  /// No description provided for @authPleaseAcceptTheTermsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Please accept the terms of use'**
  String get authPleaseAcceptTheTermsOfUse;

  /// No description provided for @authPleaseEnterTheCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter the code'**
  String get authPleaseEnterTheCode;

  /// No description provided for @authPleaseEnterTheCodeSentToYourDevice.
  ///
  /// In en, this message translates to:
  /// **'Please enter the code sent to your device.'**
  String get authPleaseEnterTheCodeSentToYourDevice;

  /// No description provided for @authPleaseFillInSmsCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter the confirmation code that you will receive via text message.'**
  String get authPleaseFillInSmsCode;

  /// No description provided for @authPleaseFillInSmsCodeYouWillReceive.
  ///
  /// In en, this message translates to:
  /// **'Please enter the confirmation code that you will receive via text message.'**
  String get authPleaseFillInSmsCodeYouWillReceive;

  /// No description provided for @authPleaseFillInYourMobilePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get authPleaseFillInYourMobilePhoneNumber;

  /// No description provided for @authPleaseFillInYourNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter the new password'**
  String get authPleaseFillInYourNewPassword;

  /// No description provided for @authPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get authPrivacyPolicy;

  /// No description provided for @authProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile personly'**
  String get authProfile;

  /// No description provided for @authProfileSettings.
  ///
  /// In en, this message translates to:
  /// **'profile settings'**
  String get authProfileSettings;

  /// No description provided for @authRegex.
  ///
  /// In en, this message translates to:
  /// **'incorrect pattern'**
  String get authRegex;

  /// No description provided for @authRegister.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get authRegister;

  /// No description provided for @authRegisterYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Already registered?'**
  String get authRegisterYourAccount;

  /// No description provided for @authResendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code?'**
  String get authResendCode;

  /// No description provided for @authResendTheCodeAgain.
  ///
  /// In en, this message translates to:
  /// **'Send the code again'**
  String get authResendTheCodeAgain;

  /// No description provided for @authResetPassword.
  ///
  /// In en, this message translates to:
  /// **'change Password'**
  String get authResetPassword;

  /// No description provided for @authSecondName.
  ///
  /// In en, this message translates to:
  /// **'the second name'**
  String get authSecondName;

  /// No description provided for @authSendCode.
  ///
  /// In en, this message translates to:
  /// **'send code'**
  String get authSendCode;

  /// No description provided for @authSentToYourDevice.
  ///
  /// In en, this message translates to:
  /// **'sent to your device'**
  String get authSentToYourDevice;

  /// No description provided for @authSignIn.
  ///
  /// In en, this message translates to:
  /// **'sign in'**
  String get authSignIn;

  /// No description provided for @authSignOut.
  ///
  /// In en, this message translates to:
  /// **'sign out'**
  String get authSignOut;

  /// No description provided for @authSignOutOfTheApp.
  ///
  /// In en, this message translates to:
  /// **'Log out of the application'**
  String get authSignOutOfTheApp;

  /// No description provided for @authSignUp.
  ///
  /// In en, this message translates to:
  /// **'account registration'**
  String get authSignUp;

  /// No description provided for @authSupportPolicy.
  ///
  /// In en, this message translates to:
  /// **'support policy'**
  String get authSupportPolicy;

  /// No description provided for @authTheCodeHasBeenSentTo.
  ///
  /// In en, this message translates to:
  /// **'The code has been sent to'**
  String get authTheCodeHasBeenSentTo;

  /// No description provided for @authTheNumberYouEnteredIsIncorrectPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'The number you entered is incorrect, please try again'**
  String get authTheNumberYouEnteredIsIncorrectPleaseTryAgain;

  /// No description provided for @authTheVerificationCodeWillArriveWithin.
  ///
  /// In en, this message translates to:
  /// **'Verification code will arrive within'**
  String get authTheVerificationCodeWillArriveWithin;

  /// No description provided for @authThirdName.
  ///
  /// In en, this message translates to:
  /// **'third name'**
  String get authThirdName;

  /// No description provided for @authToYourMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'To your phone number:'**
  String get authToYourMobileNumber;

  /// No description provided for @authUploadDocuments.
  ///
  /// In en, this message translates to:
  /// **'attach documents'**
  String get authUploadDocuments;

  /// No description provided for @authUploadID.
  ///
  /// In en, this message translates to:
  /// **'Identity Card Lift'**
  String get authUploadID;

  /// No description provided for @authUploadIdentity.
  ///
  /// In en, this message translates to:
  /// **'personal ID'**
  String get authUploadIdentity;

  /// No description provided for @authUploadIdentityInfo.
  ///
  /// In en, this message translates to:
  /// **'Attach your ID/ID'**
  String get authUploadIdentityInfo;

  /// No description provided for @authUserAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'This number already exists.'**
  String get authUserAlreadyExists;

  /// No description provided for @authUsername.
  ///
  /// In en, this message translates to:
  /// **'user name'**
  String get authUsername;

  /// No description provided for @authVerification.
  ///
  /// In en, this message translates to:
  /// **'verification'**
  String get authVerification;

  /// No description provided for @authVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'confirmation code'**
  String get authVerificationCode;

  /// No description provided for @authVerifyIdentity.
  ///
  /// In en, this message translates to:
  /// **'verification'**
  String get authVerifyIdentity;

  /// No description provided for @authVerifyIdentityInfo.
  ///
  /// In en, this message translates to:
  /// **'Verify your personal data'**
  String get authVerifyIdentityInfo;

  /// No description provided for @authVerifyYourMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify your phone number'**
  String get authVerifyYourMobileNumber;

  /// No description provided for @authVerifyYourQuantityAndClickCheckout.
  ///
  /// In en, this message translates to:
  /// **'Check your quantity and click checkout'**
  String get authVerifyYourQuantityAndClickCheckout;

  /// No description provided for @authWaitForTimer.
  ///
  /// In en, this message translates to:
  /// **'Please wait until the timer runs out.'**
  String get authWaitForTimer;

  /// No description provided for @authWeHaveFoundThatYourPhoneNumberIsRegisteredWithUsWithYourSubscriptionThroughSocialMediaProgramsSoWeAskYouToCompleteYourData.
  ///
  /// In en, this message translates to:
  /// **'We found that your phone number is registered with us with your subscription through social media programs, so we kindly ask you to complete your data'**
  String get authWeHaveFoundThatYourPhoneNumberIsRegisteredWithUsWithYourSubscriptionThroughSocialMediaProgramsSoWeAskYouToCompleteYourData;

  /// No description provided for @authWhenYouChooseToCreateANewAccountAllDataForTheOldAccountWillBeDeleted.
  ///
  /// In en, this message translates to:
  /// **'When you choose to create a new account, all data of the old account will be deleted'**
  String get authWhenYouChooseToCreateANewAccountAllDataForTheOldAccountWillBeDeleted;

  /// No description provided for @authWrongVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'The confirmation code is wrong'**
  String get authWrongVerificationCode;

  /// No description provided for @authYouDidNotReceiveTheCode.
  ///
  /// In en, this message translates to:
  /// **'Did you not receive the verification code?'**
  String get authYouDidNotReceiveTheCode;

  /// No description provided for @authYouDidNotReceiveTheVerificationCodeWithFace.
  ///
  /// In en, this message translates to:
  /// **'You did not receive the verification code 😕'**
  String get authYouDidNotReceiveTheVerificationCodeWithFace;

  /// No description provided for @authYouDidNotReceivedTheCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t you get the code?'**
  String get authYouDidNotReceivedTheCode;

  /// No description provided for @authYouNeedToBeLoggedIn.
  ///
  /// In en, this message translates to:
  /// **'Requires you to be logged in'**
  String get authYouNeedToBeLoggedIn;

  /// No description provided for @authYourAddress.
  ///
  /// In en, this message translates to:
  /// **'your address'**
  String get authYourAddress;

  /// No description provided for @authYourAddressIsNotSupportedChooseAAddressWithinYourRegion.
  ///
  /// In en, this message translates to:
  /// **'Your address is not supported, choose an address within your region'**
  String get authYourAddressIsNotSupportedChooseAAddressWithinYourRegion;

  /// No description provided for @authYourBalance.
  ///
  /// In en, this message translates to:
  /// **'your balance'**
  String get authYourBalance;

  /// No description provided for @authYourCreditCardNotValid.
  ///
  /// In en, this message translates to:
  /// **'Your credit card is invalid'**
  String get authYourCreditCardNotValid;

  /// No description provided for @authYourResetLinkHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'A reset link has been sent to your email'**
  String get authYourResetLinkHasBeenSentToYourEmail;

  /// No description provided for @commonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @commonAdditionalInformation.
  ///
  /// In en, this message translates to:
  /// **'additional information'**
  String get commonAdditionalInformation;

  /// No description provided for @commonAll.
  ///
  /// In en, this message translates to:
  /// **'everyone'**
  String get commonAll;

  /// No description provided for @commonAmount.
  ///
  /// In en, this message translates to:
  /// **'the amount'**
  String get commonAmount;

  /// No description provided for @commonApply.
  ///
  /// In en, this message translates to:
  /// **'Implementation of'**
  String get commonApply;

  /// No description provided for @commonApplyFilters.
  ///
  /// In en, this message translates to:
  /// **'apply filters'**
  String get commonApplyFilters;

  /// No description provided for @commonApprovalStatus.
  ///
  /// In en, this message translates to:
  /// **'admission status'**
  String get commonApprovalStatus;

  /// No description provided for @commonAreYouSureWithYourOperationAndOrder.
  ///
  /// In en, this message translates to:
  /// **'Are you sure about this process?'**
  String get commonAreYouSureWithYourOperationAndOrder;

  /// No description provided for @commonAvailable.
  ///
  /// In en, this message translates to:
  /// **'available'**
  String get commonAvailable;

  /// No description provided for @commonBalance.
  ///
  /// In en, this message translates to:
  /// **'balance'**
  String get commonBalance;

  /// No description provided for @commonBrowse.
  ///
  /// In en, this message translates to:
  /// **'Choose'**
  String get commonBrowse;

  /// No description provided for @commonCallUs.
  ///
  /// In en, this message translates to:
  /// **'call us'**
  String get commonCallUs;

  /// No description provided for @commonCamera.
  ///
  /// In en, this message translates to:
  /// **'camera'**
  String get commonCamera;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancellation'**
  String get commonCancel;

  /// No description provided for @commonCanceled.
  ///
  /// In en, this message translates to:
  /// **'canceled'**
  String get commonCanceled;

  /// No description provided for @commonCarActivationMessage.
  ///
  /// In en, this message translates to:
  /// **'Soon, this option will be activated'**
  String get commonCarActivationMessage;

  /// No description provided for @commonCategories.
  ///
  /// In en, this message translates to:
  /// **'categories'**
  String get commonCategories;

  /// No description provided for @commonCategory.
  ///
  /// In en, this message translates to:
  /// **'category'**
  String get commonCategory;

  /// No description provided for @commonChange.
  ///
  /// In en, this message translates to:
  /// **'A change'**
  String get commonChange;

  /// No description provided for @commonChat.
  ///
  /// In en, this message translates to:
  /// **'conversation'**
  String get commonChat;

  /// No description provided for @commonChooseCountry.
  ///
  /// In en, this message translates to:
  /// **'select country'**
  String get commonChooseCountry;

  /// No description provided for @commonChoosePurpose.
  ///
  /// In en, this message translates to:
  /// **'Choose Purpose'**
  String get commonChoosePurpose;

  /// No description provided for @commonClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get commonClear;

  /// No description provided for @commonClickToViewDetails.
  ///
  /// In en, this message translates to:
  /// **'Click to view details'**
  String get commonClickToViewDetails;

  /// No description provided for @commonClosed.
  ///
  /// In en, this message translates to:
  /// **'closed'**
  String get commonClosed;

  /// No description provided for @commonColor.
  ///
  /// In en, this message translates to:
  /// **'the color'**
  String get commonColor;

  /// No description provided for @commonComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get commonComingSoon;

  /// No description provided for @commonComments.
  ///
  /// In en, this message translates to:
  /// **'comments'**
  String get commonComments;

  /// No description provided for @commonCommonQuestions.
  ///
  /// In en, this message translates to:
  /// **'common questions'**
  String get commonCommonQuestions;

  /// No description provided for @commonCompetitions.
  ///
  /// In en, this message translates to:
  /// **'competitions'**
  String get commonCompetitions;

  /// No description provided for @commonConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get commonConfirm;

  /// No description provided for @commonConfirmed.
  ///
  /// In en, this message translates to:
  /// **'confirmed'**
  String get commonConfirmed;

  /// No description provided for @commonContactUs.
  ///
  /// In en, this message translates to:
  /// **'Connect with us'**
  String get commonContactUs;

  /// No description provided for @commonContent.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get commonContent;

  /// No description provided for @commonContinueToHome.
  ///
  /// In en, this message translates to:
  /// **'continue'**
  String get commonContinueToHome;

  /// No description provided for @commonCost.
  ///
  /// In en, this message translates to:
  /// **'the value'**
  String get commonCost;

  /// No description provided for @commonCount.
  ///
  /// In en, this message translates to:
  /// **'the number'**
  String get commonCount;

  /// No description provided for @commonCountry.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get commonCountry;

  /// No description provided for @commonCurrency.
  ///
  /// In en, this message translates to:
  /// **'the currency'**
  String get commonCurrency;

  /// No description provided for @commonCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'current location'**
  String get commonCurrentLocation;

  /// No description provided for @commonDeclined.
  ///
  /// In en, this message translates to:
  /// **'rejected'**
  String get commonDeclined;

  /// No description provided for @commonDefaultValue.
  ///
  /// In en, this message translates to:
  /// **'default'**
  String get commonDefaultValue;

  /// No description provided for @commonDelete.
  ///
  /// In en, this message translates to:
  /// **'delete'**
  String get commonDelete;

  /// No description provided for @commonDeny.
  ///
  /// In en, this message translates to:
  /// **'Refusal'**
  String get commonDeny;

  /// No description provided for @commonDesc.
  ///
  /// In en, this message translates to:
  /// **'Brief'**
  String get commonDesc;

  /// No description provided for @commonDescription.
  ///
  /// In en, this message translates to:
  /// **'He described'**
  String get commonDescription;

  /// No description provided for @commonDetails.
  ///
  /// In en, this message translates to:
  /// **'details'**
  String get commonDetails;

  /// No description provided for @commonDiscount.
  ///
  /// In en, this message translates to:
  /// **'discount'**
  String get commonDiscount;

  /// No description provided for @commonDoYouWantToUpdate.
  ///
  /// In en, this message translates to:
  /// **'Do you want to update?'**
  String get commonDoYouWantToUpdate;

  /// No description provided for @commonDonatHaveAnyItemInTheNotificationList.
  ///
  /// In en, this message translates to:
  /// **'There is no item in the list of notifications'**
  String get commonDonatHaveAnyItemInTheNotificationList;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'It was completed'**
  String get commonDone;

  /// No description provided for @commonDoubleTapOnAnAddressToMakeItDefault.
  ///
  /// In en, this message translates to:
  /// **'Double click on a title to make it the default'**
  String get commonDoubleTapOnAnAddressToMakeItDefault;

  /// No description provided for @commonDragToInteract.
  ///
  /// In en, this message translates to:
  /// **'swipe to the person'**
  String get commonDragToInteract;

  /// No description provided for @commonDue.
  ///
  /// In en, this message translates to:
  /// **'Worthy'**
  String get commonDue;

  /// No description provided for @commonDueAmount.
  ///
  /// In en, this message translates to:
  /// **'deserving'**
  String get commonDueAmount;

  /// No description provided for @commonDueDate.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get commonDueDate;

  /// No description provided for @commonEdit.
  ///
  /// In en, this message translates to:
  /// **'amendment'**
  String get commonEdit;

  /// No description provided for @commonEnded.
  ///
  /// In en, this message translates to:
  /// **'I finish'**
  String get commonEnded;

  /// No description provided for @commonEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get commonEnglish;

  /// No description provided for @commonExcerpt.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get commonExcerpt;

  /// No description provided for @commonExploreWhatsNew.
  ///
  /// In en, this message translates to:
  /// **'Explore what\'s new'**
  String get commonExploreWhatsNew;

  /// No description provided for @commonFaq.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get commonFaq;

  /// No description provided for @commonFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get commonFavorites;

  /// No description provided for @commonFee.
  ///
  /// In en, this message translates to:
  /// **'commission'**
  String get commonFee;

  /// No description provided for @commonFees.
  ///
  /// In en, this message translates to:
  /// **'fees'**
  String get commonFees;

  /// No description provided for @commonFields.
  ///
  /// In en, this message translates to:
  /// **'fields'**
  String get commonFields;

  /// No description provided for @commonFilters.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get commonFilters;

  /// No description provided for @commonFixed.
  ///
  /// In en, this message translates to:
  /// **'Fixed'**
  String get commonFixed;

  /// No description provided for @commonFlashDealIsEnded.
  ///
  /// In en, this message translates to:
  /// **'The deal is over'**
  String get commonFlashDealIsEnded;

  /// No description provided for @commonFlashDeals.
  ///
  /// In en, this message translates to:
  /// **'Quick Deals'**
  String get commonFlashDeals;

  /// No description provided for @commonFrom.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get commonFrom;

  /// No description provided for @commonFullAddressHint.
  ///
  /// In en, this message translates to:
  /// **'Street name, neighborhood, city'**
  String get commonFullAddressHint;

  /// No description provided for @commonGallery.
  ///
  /// In en, this message translates to:
  /// **'studio'**
  String get commonGallery;

  /// No description provided for @commonGettingDeliveryFee.
  ///
  /// In en, this message translates to:
  /// **'Delivery price is being determined, please wait...'**
  String get commonGettingDeliveryFee;

  /// No description provided for @commonGoToYourApplicationSettingsAndEnableThePermission.
  ///
  /// In en, this message translates to:
  /// **'Go to the settings of the applications on your device and activate the permissions.'**
  String get commonGoToYourApplicationSettingsAndEnableThePermission;

  /// No description provided for @commonGuest.
  ///
  /// In en, this message translates to:
  /// **'visitor'**
  String get commonGuest;

  /// No description provided for @commonHello.
  ///
  /// In en, this message translates to:
  /// **'welcome'**
  String get commonHello;

  /// No description provided for @commonHelloINeedHelp.
  ///
  /// In en, this message translates to:
  /// **'Hello, I need help.. '**
  String get commonHelloINeedHelp;

  /// No description provided for @commonHelloWithFace.
  ///
  /// In en, this message translates to:
  /// **'Welcome 👋'**
  String get commonHelloWithFace;

  /// No description provided for @commonHelpSupport.
  ///
  /// In en, this message translates to:
  /// **'Support and Help'**
  String get commonHelpSupport;

  /// No description provided for @commonIAccept.
  ///
  /// In en, this message translates to:
  /// **'I agree to'**
  String get commonIAccept;

  /// No description provided for @commonInformation.
  ///
  /// In en, this message translates to:
  /// **'informations'**
  String get commonInformation;

  /// No description provided for @commonInterest.
  ///
  /// In en, this message translates to:
  /// **'benefit'**
  String get commonInterest;

  /// No description provided for @commonIsOnlineNow.
  ///
  /// In en, this message translates to:
  /// **'Is online now'**
  String get commonIsOnlineNow;

  /// No description provided for @commonItem.
  ///
  /// In en, this message translates to:
  /// **'item'**
  String get commonItem;

  /// No description provided for @commonItems.
  ///
  /// In en, this message translates to:
  /// **'Elements'**
  String get commonItems;

  /// No description provided for @commonJoin.
  ///
  /// In en, this message translates to:
  /// **'Joined'**
  String get commonJoin;

  /// No description provided for @commonKM.
  ///
  /// In en, this message translates to:
  /// **'how much'**
  String get commonKM;

  /// No description provided for @commonLanguage.
  ///
  /// In en, this message translates to:
  /// **'the language'**
  String get commonLanguage;

  /// No description provided for @commonLanguages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get commonLanguages;

  /// No description provided for @commonLater.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get commonLater;

  /// No description provided for @commonLetsBegin.
  ///
  /// In en, this message translates to:
  /// **'Let\'s Begin'**
  String get commonLetsBegin;

  /// No description provided for @commonLoadingMoreHistory.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get commonLoadingMoreHistory;

  /// No description provided for @commonLocationDescription.
  ///
  /// In en, this message translates to:
  /// **'site description'**
  String get commonLocationDescription;

  /// No description provided for @commonLocationIsNotSpecified.
  ///
  /// In en, this message translates to:
  /// **'location not specified'**
  String get commonLocationIsNotSpecified;

  /// No description provided for @commonLocationPermission.
  ///
  /// In en, this message translates to:
  /// **'Site Access Permissions'**
  String get commonLocationPermission;

  /// No description provided for @commonLongPressToDeleteItem.
  ///
  /// In en, this message translates to:
  /// **'Long press on the item to delete it.'**
  String get commonLongPressToDeleteItem;

  /// No description provided for @commonLongPressToEditItemSwipeItemToDeleteIt.
  ///
  /// In en, this message translates to:
  /// **'Press and hold to edit the item, and drag the item to delete'**
  String get commonLongPressToEditItemSwipeItemToDeleteIt;

  /// No description provided for @commonMapsExplorer.
  ///
  /// In en, this message translates to:
  /// **'map explorer'**
  String get commonMapsExplorer;

  /// No description provided for @commonMasterCard.
  ///
  /// In en, this message translates to:
  /// **'Master Card Credit Card'**
  String get commonMasterCard;

  /// No description provided for @commonMaximum.
  ///
  /// In en, this message translates to:
  /// **'maximum'**
  String get commonMaximum;

  /// No description provided for @commonMaximumPrincipal.
  ///
  /// In en, this message translates to:
  /// **'Maximum Amount'**
  String get commonMaximumPrincipal;

  /// No description provided for @commonMe.
  ///
  /// In en, this message translates to:
  /// **'me'**
  String get commonMe;

  /// No description provided for @commonMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get commonMessage;

  /// No description provided for @commonMinPriceCannotBeLargerThanMaxPrice.
  ///
  /// In en, this message translates to:
  /// **'The minimum price cannot be higher than the maximum.'**
  String get commonMinPriceCannotBeLargerThanMaxPrice;

  /// No description provided for @commonMinimum.
  ///
  /// In en, this message translates to:
  /// **'minimum'**
  String get commonMinimum;

  /// No description provided for @commonMinimumPrincipal.
  ///
  /// In en, this message translates to:
  /// **'minimum amount'**
  String get commonMinimumPrincipal;

  /// No description provided for @commonMore.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get commonMore;

  /// No description provided for @commonMoreOptions.
  ///
  /// In en, this message translates to:
  /// **'additional options'**
  String get commonMoreOptions;

  /// No description provided for @commonNearTo.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonNearTo;

  /// No description provided for @commonNearToYourCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'near your current location'**
  String get commonNearToYourCurrentLocation;

  /// No description provided for @commonNet.
  ///
  /// In en, this message translates to:
  /// **'net'**
  String get commonNet;

  /// No description provided for @commonNewArrival.
  ///
  /// In en, this message translates to:
  /// **'recently arrived'**
  String get commonNewArrival;

  /// No description provided for @commonNewOrderFromClient.
  ///
  /// In en, this message translates to:
  /// **'new request from client'**
  String get commonNewOrderFromClient;

  /// No description provided for @commonNext.
  ///
  /// In en, this message translates to:
  /// **'next one'**
  String get commonNext;

  /// No description provided for @commonNo.
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get commonNo;

  /// No description provided for @commonNoAccountChosen.
  ///
  /// In en, this message translates to:
  /// **'No account selected'**
  String get commonNoAccountChosen;

  /// No description provided for @commonNoAddressIsAdded.
  ///
  /// In en, this message translates to:
  /// **'No title added.'**
  String get commonNoAddressIsAdded;

  /// No description provided for @commonNoCategoriesAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'There are no categories.'**
  String get commonNoCategoriesAreAvailable;

  /// No description provided for @commonNoDataIsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get commonNoDataIsAvailable;

  /// No description provided for @commonNoFavorites.
  ///
  /// In en, this message translates to:
  /// **'no favours'**
  String get commonNoFavorites;

  /// No description provided for @commonNoFileIsChosen.
  ///
  /// In en, this message translates to:
  /// **'Not selected'**
  String get commonNoFileIsChosen;

  /// No description provided for @commonNoFlashDealsAreAvailableNow.
  ///
  /// In en, this message translates to:
  /// **'There are no quick deals at the moment.'**
  String get commonNoFlashDealsAreAvailableNow;

  /// No description provided for @commonNoItemsAreOrdered.
  ///
  /// In en, this message translates to:
  /// **'No items required'**
  String get commonNoItemsAreOrdered;

  /// No description provided for @commonNoMoreHistory.
  ///
  /// In en, this message translates to:
  /// **'there is no other'**
  String get commonNoMoreHistory;

  /// No description provided for @commonNoPaymentMethodIsAdded.
  ///
  /// In en, this message translates to:
  /// **'Payment method not added.'**
  String get commonNoPaymentMethodIsAdded;

  /// No description provided for @commonNoRechargesYet.
  ///
  /// In en, this message translates to:
  /// **'no shipping'**
  String get commonNoRechargesYet;

  /// No description provided for @commonNoResultFromSearch.
  ///
  /// In en, this message translates to:
  /// **'No results from the search'**
  String get commonNoResultFromSearch;

  /// No description provided for @commonNoReviewsYetBeTheFirstOneToAddReview.
  ///
  /// In en, this message translates to:
  /// **'There are no reviews yet, be the first to add a review'**
  String get commonNoReviewsYetBeTheFirstOneToAddReview;

  /// No description provided for @commonNoSubCategoriesAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'There are no subcategories.'**
  String get commonNoSubCategoriesAreAvailable;

  /// No description provided for @commonNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get commonNote;

  /// No description provided for @commonNothingToPay.
  ///
  /// In en, this message translates to:
  /// **'nothing to pay'**
  String get commonNothingToPay;

  /// No description provided for @commonNotifications.
  ///
  /// In en, this message translates to:
  /// **'notifications'**
  String get commonNotifications;

  /// No description provided for @commonOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get commonOk;

  /// No description provided for @commonOpen.
  ///
  /// In en, this message translates to:
  /// **'open'**
  String get commonOpen;

  /// No description provided for @commonOptional.
  ///
  /// In en, this message translates to:
  /// **'(my choice)'**
  String get commonOptional;

  /// No description provided for @commonOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get commonOptions;

  /// No description provided for @commonOr.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get commonOr;

  /// No description provided for @commonOrCheckoutWith.
  ///
  /// In en, this message translates to:
  /// **'or go out with'**
  String get commonOrCheckoutWith;

  /// No description provided for @commonOrder.
  ///
  /// In en, this message translates to:
  /// **'to request'**
  String get commonOrder;

  /// No description provided for @commonOther.
  ///
  /// In en, this message translates to:
  /// **'other'**
  String get commonOther;

  /// No description provided for @commonOurDifferentBranches.
  ///
  /// In en, this message translates to:
  /// **'Our Various Branches'**
  String get commonOurDifferentBranches;

  /// No description provided for @commonOurNew.
  ///
  /// In en, this message translates to:
  /// **'our new'**
  String get commonOurNew;

  /// No description provided for @commonOurVariousServices.
  ///
  /// In en, this message translates to:
  /// **'Our various services'**
  String get commonOurVariousServices;

  /// No description provided for @commonPenalty.
  ///
  /// In en, this message translates to:
  /// **'penalty'**
  String get commonPenalty;

  /// No description provided for @commonPercent.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get commonPercent;

  /// No description provided for @commonPermissionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Access Permission Required'**
  String get commonPermissionIsRequired;

  /// No description provided for @commonPermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'requires access permission'**
  String get commonPermissionRequired;

  /// No description provided for @commonPhoneBalanceInformation.
  ///
  /// In en, this message translates to:
  /// **'balance information'**
  String get commonPhoneBalanceInformation;

  /// No description provided for @commonPhotoPermission.
  ///
  /// In en, this message translates to:
  /// **'image access permissions'**
  String get commonPhotoPermission;

  /// No description provided for @commonPickup.
  ///
  /// In en, this message translates to:
  /// **'book'**
  String get commonPickup;

  /// No description provided for @commonPleaseEnterTheAddress.
  ///
  /// In en, this message translates to:
  /// **'Please enter the address'**
  String get commonPleaseEnterTheAddress;

  /// No description provided for @commonPleaseFillInField.
  ///
  /// In en, this message translates to:
  /// **'Please fill in the field'**
  String get commonPleaseFillInField;

  /// No description provided for @commonPleaseSelectAnItem.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one item.'**
  String get commonPleaseSelectAnItem;

  /// No description provided for @commonPleaseSelectTheCity.
  ///
  /// In en, this message translates to:
  /// **'Please select a city'**
  String get commonPleaseSelectTheCity;

  /// No description provided for @commonPleaseSelectTheCountry.
  ///
  /// In en, this message translates to:
  /// **'Please select the country'**
  String get commonPleaseSelectTheCountry;

  /// No description provided for @commonPleaseSelectTheCountryAndTheLocation.
  ///
  /// In en, this message translates to:
  /// **'Please select a country and select a location.'**
  String get commonPleaseSelectTheCountryAndTheLocation;

  /// No description provided for @commonPleaseSpecifyLocationInTheCountryYouSelect.
  ///
  /// In en, this message translates to:
  /// **'Please locate in the selected country'**
  String get commonPleaseSpecifyLocationInTheCountryYouSelect;

  /// No description provided for @commonPleaseVerifyYouAreNotARobot.
  ///
  /// In en, this message translates to:
  /// **'Please complete the verification process.'**
  String get commonPleaseVerifyYouAreNotARobot;

  /// No description provided for @commonPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'please wait ...'**
  String get commonPleaseWait;

  /// No description provided for @commonPrice.
  ///
  /// In en, this message translates to:
  /// **'price'**
  String get commonPrice;

  /// No description provided for @commonPriceHighToLow.
  ///
  /// In en, this message translates to:
  /// **'high price low'**
  String get commonPriceHighToLow;

  /// No description provided for @commonPriceLowToHigh.
  ///
  /// In en, this message translates to:
  /// **'Lowest Price'**
  String get commonPriceLowToHigh;

  /// No description provided for @commonPriceRange.
  ///
  /// In en, this message translates to:
  /// **'price'**
  String get commonPriceRange;

  /// No description provided for @commonPrincipalAmount.
  ///
  /// In en, this message translates to:
  /// **'basic amount'**
  String get commonPrincipalAmount;

  /// No description provided for @commonProceed.
  ///
  /// In en, this message translates to:
  /// **'Continuation'**
  String get commonProceed;

  /// No description provided for @commonPromotionalCodes.
  ///
  /// In en, this message translates to:
  /// **'promotional codes'**
  String get commonPromotionalCodes;

  /// No description provided for @commonPurpose.
  ///
  /// In en, this message translates to:
  /// **'the purpose'**
  String get commonPurpose;

  /// No description provided for @commonQ.
  ///
  /// In en, this message translates to:
  /// **'search'**
  String get commonQ;

  /// No description provided for @commonRecentReviews.
  ///
  /// In en, this message translates to:
  /// **'recent reviews'**
  String get commonRecentReviews;

  /// No description provided for @commonRecentSearch.
  ///
  /// In en, this message translates to:
  /// **'last search'**
  String get commonRecentSearch;

  /// No description provided for @commonRecentTransactions.
  ///
  /// In en, this message translates to:
  /// **'last operations'**
  String get commonRecentTransactions;

  /// No description provided for @commonRegionMustBeSelected.
  ///
  /// In en, this message translates to:
  /// **'Area must be specified'**
  String get commonRegionMustBeSelected;

  /// No description provided for @commonRemove.
  ///
  /// In en, this message translates to:
  /// **'delete'**
  String get commonRemove;

  /// No description provided for @commonRepeatTransactions.
  ///
  /// In en, this message translates to:
  /// **'Repeat a previous operation'**
  String get commonRepeatTransactions;

  /// No description provided for @commonReports.
  ///
  /// In en, this message translates to:
  /// **'reports'**
  String get commonReports;

  /// No description provided for @commonRequestConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to continue?'**
  String get commonRequestConfirm;

  /// No description provided for @commonResendCode.
  ///
  /// In en, this message translates to:
  /// **'Re-transmitter'**
  String get commonResendCode;

  /// No description provided for @commonReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get commonReset;

  /// No description provided for @commonReturnPolicy.
  ///
  /// In en, this message translates to:
  /// **'refund policy'**
  String get commonReturnPolicy;

  /// No description provided for @commonReviewCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Review cannot be empty'**
  String get commonReviewCannotBeEmpty;

  /// No description provided for @commonReviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get commonReviews;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'save'**
  String get commonSave;

  /// No description provided for @commonSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonSearch;

  /// No description provided for @commonSearchPastConversations.
  ///
  /// In en, this message translates to:
  /// **'Search past conversations'**
  String get commonSearchPastConversations;

  /// No description provided for @commonSearchYourInterests.
  ///
  /// In en, this message translates to:
  /// **'Find Your Interest'**
  String get commonSearchYourInterests;

  /// No description provided for @commonSections.
  ///
  /// In en, this message translates to:
  /// **'sections'**
  String get commonSections;

  /// No description provided for @commonSeeAll.
  ///
  /// In en, this message translates to:
  /// **'show all'**
  String get commonSeeAll;

  /// No description provided for @commonSelectCity.
  ///
  /// In en, this message translates to:
  /// **'Choose the city'**
  String get commonSelectCity;

  /// No description provided for @commonSelectCountry.
  ///
  /// In en, this message translates to:
  /// **'Choose Country'**
  String get commonSelectCountry;

  /// No description provided for @commonSelectDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Select your delivery location'**
  String get commonSelectDeliveryAddress;

  /// No description provided for @commonSelectOptions.
  ///
  /// In en, this message translates to:
  /// **'select'**
  String get commonSelectOptions;

  /// No description provided for @commonSelectOptionsToAddThemOnTheProduct.
  ///
  /// In en, this message translates to:
  /// **'Select options to add to the product'**
  String get commonSelectOptionsToAddThemOnTheProduct;

  /// No description provided for @commonSelectPickupDelivery.
  ///
  /// In en, this message translates to:
  /// **'Choose either Pick Up or Deliver'**
  String get commonSelectPickupDelivery;

  /// No description provided for @commonSelectYourPreferredLanguages.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred languages'**
  String get commonSelectYourPreferredLanguages;

  /// No description provided for @commonSelectYourPreferredPaymentMode.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred payment mode'**
  String get commonSelectYourPreferredPaymentMode;

  /// No description provided for @commonSend.
  ///
  /// In en, this message translates to:
  /// **'send'**
  String get commonSend;

  /// No description provided for @commonSendPasswordResetLink.
  ///
  /// In en, this message translates to:
  /// **'send the link'**
  String get commonSendPasswordResetLink;

  /// No description provided for @commonServicePoints.
  ///
  /// In en, this message translates to:
  /// **'service points'**
  String get commonServicePoints;

  /// No description provided for @commonServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get commonServices;

  /// No description provided for @commonSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get commonSettings;

  /// No description provided for @commonShowLess.
  ///
  /// In en, this message translates to:
  /// **'show less'**
  String get commonShowLess;

  /// No description provided for @commonSize.
  ///
  /// In en, this message translates to:
  /// **'the size'**
  String get commonSize;

  /// No description provided for @commonSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get commonSkip;

  /// No description provided for @commonSort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get commonSort;

  /// No description provided for @commonStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get commonStart;

  /// No description provided for @commonStartExploring.
  ///
  /// In en, this message translates to:
  /// **'Start Exploration'**
  String get commonStartExploring;

  /// No description provided for @commonSubTotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get commonSubTotal;

  /// No description provided for @commonSubmit.
  ///
  /// In en, this message translates to:
  /// **'send'**
  String get commonSubmit;

  /// No description provided for @commonSubscription.
  ///
  /// In en, this message translates to:
  /// **'subscription'**
  String get commonSubscription;

  /// No description provided for @commonSupport.
  ///
  /// In en, this message translates to:
  /// **'the support'**
  String get commonSupport;

  /// No description provided for @commonSwipeItemToDeleteIt.
  ///
  /// In en, this message translates to:
  /// **'Drag the item to delete'**
  String get commonSwipeItemToDeleteIt;

  /// No description provided for @commonSwipeItemToViewMoreDetails.
  ///
  /// In en, this message translates to:
  /// **'Drag the item to view more details.'**
  String get commonSwipeItemToViewMoreDetails;

  /// No description provided for @commonTapToViewMoreDetails.
  ///
  /// In en, this message translates to:
  /// **'Click to show details'**
  String get commonTapToViewMoreDetails;

  /// No description provided for @commonTax.
  ///
  /// In en, this message translates to:
  /// **'tax'**
  String get commonTax;

  /// No description provided for @commonTaxesIncluded.
  ///
  /// In en, this message translates to:
  /// **'Taxes included'**
  String get commonTaxesIncluded;

  /// No description provided for @commonTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get commonTermsAndConditions;

  /// No description provided for @commonTermsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get commonTermsOfUse;

  /// No description provided for @commonThePaymentServiceYouSelectIsNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'The payment service you selected is not activated yet'**
  String get commonThePaymentServiceYouSelectIsNotAvailable;

  /// No description provided for @commonThisAppNeedsToTakePhotosForProfileImage.
  ///
  /// In en, this message translates to:
  /// **'This app needs access to photos to edit profile picture'**
  String get commonThisAppNeedsToTakePhotosForProfileImage;

  /// No description provided for @commonThisAppNeedsToTakeYourLocation.
  ///
  /// In en, this message translates to:
  /// **'The app needs access to your location'**
  String get commonThisAppNeedsToTakeYourLocation;

  /// No description provided for @commonTill.
  ///
  /// In en, this message translates to:
  /// **'Even'**
  String get commonTill;

  /// No description provided for @commonTitle.
  ///
  /// In en, this message translates to:
  /// **'the address'**
  String get commonTitle;

  /// No description provided for @commonToWhere.
  ///
  /// In en, this message translates to:
  /// **'To where'**
  String get commonToWhere;

  /// No description provided for @commonTodayDeals.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Deals'**
  String get commonTodayDeals;

  /// No description provided for @commonTopRated.
  ///
  /// In en, this message translates to:
  /// **'highest rating'**
  String get commonTopRated;

  /// No description provided for @commonTotal.
  ///
  /// In en, this message translates to:
  /// **'sum'**
  String get commonTotal;

  /// No description provided for @commonTotalAmount.
  ///
  /// In en, this message translates to:
  /// **'total summation'**
  String get commonTotalAmount;

  /// No description provided for @commonTotalPrice.
  ///
  /// In en, this message translates to:
  /// **'total price'**
  String get commonTotalPrice;

  /// No description provided for @commonTrackingOrder.
  ///
  /// In en, this message translates to:
  /// **'order tracking'**
  String get commonTrackingOrder;

  /// No description provided for @commonTransactions.
  ///
  /// In en, this message translates to:
  /// **'Processes'**
  String get commonTransactions;

  /// No description provided for @commonTrendingThisWeek.
  ///
  /// In en, this message translates to:
  /// **'trending this week'**
  String get commonTrendingThisWeek;

  /// No description provided for @commonTryAgain.
  ///
  /// In en, this message translates to:
  /// **'try again'**
  String get commonTryAgain;

  /// No description provided for @commonTypeYourMessageHere.
  ///
  /// In en, this message translates to:
  /// **'write your message here'**
  String get commonTypeYourMessageHere;

  /// No description provided for @commonTypeYourReviewHere.
  ///
  /// In en, this message translates to:
  /// **'Write your review here'**
  String get commonTypeYourReviewHere;

  /// No description provided for @commonUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get commonUnknown;

  /// No description provided for @commonUnnamedLocation.
  ///
  /// In en, this message translates to:
  /// **'unnamed address'**
  String get commonUnnamedLocation;

  /// No description provided for @commonUnpaid.
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get commonUnpaid;

  /// No description provided for @commonUnspecified.
  ///
  /// In en, this message translates to:
  /// **'undefined'**
  String get commonUnspecified;

  /// No description provided for @commonVerify.
  ///
  /// In en, this message translates to:
  /// **'verification'**
  String get commonVerify;

  /// No description provided for @commonVerifyYour.
  ///
  /// In en, this message translates to:
  /// **'confirmed'**
  String get commonVerifyYour;

  /// No description provided for @commonView.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get commonView;

  /// No description provided for @commonViewAll.
  ///
  /// In en, this message translates to:
  /// **'view all'**
  String get commonViewAll;

  /// No description provided for @commonViewDetails.
  ///
  /// In en, this message translates to:
  /// **'view details'**
  String get commonViewDetails;

  /// No description provided for @commonViewLess.
  ///
  /// In en, this message translates to:
  /// **'show less'**
  String get commonViewLess;

  /// No description provided for @commonViewMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get commonViewMore;

  /// No description provided for @commonViewStatement.
  ///
  /// In en, this message translates to:
  /// **'operations view'**
  String get commonViewStatement;

  /// No description provided for @commonWeWishYouANiceDay.
  ///
  /// In en, this message translates to:
  /// **'We wish you a nice day'**
  String get commonWeWishYouANiceDay;

  /// No description provided for @commonWelcome.
  ///
  /// In en, this message translates to:
  /// **'welcome'**
  String get commonWelcome;

  /// No description provided for @commonWelcomeBack.
  ///
  /// In en, this message translates to:
  /// **'welcome back'**
  String get commonWelcomeBack;

  /// No description provided for @commonWelcomeBackWithFace.
  ///
  /// In en, this message translates to:
  /// **'Welcome back 👋'**
  String get commonWelcomeBackWithFace;

  /// No description provided for @commonWelcomeWithFace.
  ///
  /// In en, this message translates to:
  /// **'Welcome 👋'**
  String get commonWelcomeWithFace;

  /// No description provided for @commonWhatTheySay.
  ///
  /// In en, this message translates to:
  /// **'what are they saying ?'**
  String get commonWhatTheySay;

  /// No description provided for @commonWhoToInteractWith.
  ///
  /// In en, this message translates to:
  /// **'Who do you want to interact with?'**
  String get commonWhoToInteractWith;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get commonYes;

  /// No description provided for @dtAM.
  ///
  /// In en, this message translates to:
  /// **'morning'**
  String get dtAM;

  /// No description provided for @dtBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dtBirthDate;

  /// No description provided for @dtDaily.
  ///
  /// In en, this message translates to:
  /// **'daily'**
  String get dtDaily;

  /// No description provided for @dtDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dtDate;

  /// No description provided for @dtDateTime.
  ///
  /// In en, this message translates to:
  /// **'date/time'**
  String get dtDateTime;

  /// No description provided for @dtDay.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get dtDay;

  /// No description provided for @dtExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get dtExpiryDate;

  /// No description provided for @dtFriday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get dtFriday;

  /// No description provided for @dtHour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get dtHour;

  /// No description provided for @dtMinute.
  ///
  /// In en, this message translates to:
  /// **'Minute'**
  String get dtMinute;

  /// No description provided for @dtMonday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get dtMonday;

  /// No description provided for @dtMonth.
  ///
  /// In en, this message translates to:
  /// **'the month'**
  String get dtMonth;

  /// No description provided for @dtMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get dtMonthly;

  /// No description provided for @dtPM.
  ///
  /// In en, this message translates to:
  /// **'evening'**
  String get dtPM;

  /// No description provided for @dtReleaseDate.
  ///
  /// In en, this message translates to:
  /// **'Release Date'**
  String get dtReleaseDate;

  /// No description provided for @dtSaturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get dtSaturday;

  /// No description provided for @dtSecond.
  ///
  /// In en, this message translates to:
  /// **'a second'**
  String get dtSecond;

  /// No description provided for @dtStartingDate.
  ///
  /// In en, this message translates to:
  /// **'starting date'**
  String get dtStartingDate;

  /// No description provided for @dtSunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get dtSunday;

  /// No description provided for @dtThursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get dtThursday;

  /// No description provided for @dtTime.
  ///
  /// In en, this message translates to:
  /// **'the time'**
  String get dtTime;

  /// No description provided for @dtTuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get dtTuesday;

  /// No description provided for @dtUnspecifiedTime.
  ///
  /// In en, this message translates to:
  /// **'time not specified'**
  String get dtUnspecifiedTime;

  /// No description provided for @dtWednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get dtWednesday;

  /// No description provided for @dtWeek.
  ///
  /// In en, this message translates to:
  /// **'a week'**
  String get dtWeek;

  /// No description provided for @dtWeekly.
  ///
  /// In en, this message translates to:
  /// **'weekly'**
  String get dtWeekly;

  /// No description provided for @dtYear.
  ///
  /// In en, this message translates to:
  /// **'the year'**
  String get dtYear;

  /// No description provided for @dtYearly.
  ///
  /// In en, this message translates to:
  /// **'annual'**
  String get dtYearly;

  /// No description provided for @errorAnErrorOccurredPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again'**
  String get errorAnErrorOccurredPleaseTryAgain;

  /// No description provided for @errorBlockedException.
  ///
  /// In en, this message translates to:
  /// **'Sorry! Your account has been banned. Please contact the administrator to remove the ban'**
  String get errorBlockedException;

  /// No description provided for @errorButYouCanClickTheButtonBelowToGoBackToTheMainPage.
  ///
  /// In en, this message translates to:
  /// **'But you can click the button below to return to the main page'**
  String get errorButYouCanClickTheButtonBelowToGoBackToTheMainPage;

  /// No description provided for @errorCacheException.
  ///
  /// In en, this message translates to:
  /// **'No data yet, try to connect to the Internet'**
  String get errorCacheException;

  /// No description provided for @errorCheckYourInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'Make sure you are connected to the Internet'**
  String get errorCheckYourInternetConnection;

  /// No description provided for @errorCheckYourInternetConnectionOrTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Make sure you are connected to the internet or try later.'**
  String get errorCheckYourInternetConnectionOrTryAgain;

  /// No description provided for @errorConflictException.
  ///
  /// In en, this message translates to:
  /// **'The request could not be completed due to a conflict'**
  String get errorConflictException;

  /// No description provided for @errorConnectionException.
  ///
  /// In en, this message translates to:
  /// **'No internet connection!'**
  String get errorConnectionException;

  /// No description provided for @errorEmptyException.
  ///
  /// In en, this message translates to:
  /// **'No data found at the moment!'**
  String get errorEmptyException;

  /// No description provided for @errorEmptyFailure.
  ///
  /// In en, this message translates to:
  /// **'There is no data at the moment'**
  String get errorEmptyFailure;

  /// No description provided for @errorExpireException.
  ///
  /// In en, this message translates to:
  /// **'code has expired'**
  String get errorExpireException;

  /// No description provided for @errorInvalidException.
  ///
  /// In en, this message translates to:
  /// **'Make sure the data entered is correct.'**
  String get errorInvalidException;

  /// No description provided for @errorInvalidFailure.
  ///
  /// In en, this message translates to:
  /// **'There is an error in the data entered'**
  String get errorInvalidFailure;

  /// No description provided for @errorNotFoundException.
  ///
  /// In en, this message translates to:
  /// **'There is no account with this data!'**
  String get errorNotFoundException;

  /// No description provided for @errorNotFoundFailure.
  ///
  /// In en, this message translates to:
  /// **'No data found at the moment!'**
  String get errorNotFoundFailure;

  /// No description provided for @errorOccurredTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again later'**
  String get errorOccurredTryAgainLater;

  /// No description provided for @errorOhOhYouAreLost.
  ///
  /// In en, this message translates to:
  /// **'Oh oh! You\'re lost'**
  String get errorOhOhYouAreLost;

  /// No description provided for @errorPasswordException.
  ///
  /// In en, this message translates to:
  /// **'The password is incorrect'**
  String get errorPasswordException;

  /// No description provided for @errorReceiveFailure.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while receiving data.'**
  String get errorReceiveFailure;

  /// No description provided for @errorServerException.
  ///
  /// In en, this message translates to:
  /// **'Sorry, we could not connect to the server'**
  String get errorServerException;

  /// No description provided for @errorThePageYouAreLookingForDoesNotExistHowYouGotHereIsQuiteAPuzzle.
  ///
  /// In en, this message translates to:
  /// **'The page you are looking for does not exist. How did you get here is a puzzle 🤭'**
  String get errorThePageYouAreLookingForDoesNotExistHowYouGotHereIsQuiteAPuzzle;

  /// No description provided for @errorThePageYouAreLookingForDoesNotExistHowYouGotHereIsQuiteAPuzzleButYouCanClickTheButtonBelowToGoBackToTheMainPage.
  ///
  /// In en, this message translates to:
  /// **'The page you are looking for does not exist. How did you get here is a puzzle 🤭 but you can click the button below to go back to the main page'**
  String get errorThePageYouAreLookingForDoesNotExistHowYouGotHereIsQuiteAPuzzleButYouCanClickTheButtonBelowToGoBackToTheMainPage;

  /// No description provided for @errorThereIsAProblemChoosingTheAddress.
  ///
  /// In en, this message translates to:
  /// **'There is a problem choosing the title'**
  String get errorThereIsAProblemChoosingTheAddress;

  /// No description provided for @errorThisAccountNotExist.
  ///
  /// In en, this message translates to:
  /// **'This account does not exist'**
  String get errorThisAccountNotExist;

  /// No description provided for @errorThisAccountNotReady.
  ///
  /// In en, this message translates to:
  /// **'This account is not ready yet'**
  String get errorThisAccountNotReady;

  /// No description provided for @errorThisEmailAccountExists.
  ///
  /// In en, this message translates to:
  /// **'This email account exists'**
  String get errorThisEmailAccountExists;

  /// No description provided for @errorUnauthenticatedException.
  ///
  /// In en, this message translates to:
  /// **'Sorry! You are not authorized for this operation, log in'**
  String get errorUnauthenticatedException;

  /// No description provided for @errorUnauthenticatedFailure.
  ///
  /// In en, this message translates to:
  /// **'Sorry! Log in again and try'**
  String get errorUnauthenticatedFailure;

  /// No description provided for @errorUnexpectedException.
  ///
  /// In en, this message translates to:
  /// **'Sorry, an unexpected error occurred, please try again later.'**
  String get errorUnexpectedException;

  /// No description provided for @errorUniqueFailure.
  ///
  /// In en, this message translates to:
  /// **'This account may already exist!\nTry changing the phone number'**
  String get errorUniqueFailure;

  /// No description provided for @errorUserExistsException.
  ///
  /// In en, this message translates to:
  /// **'This account may already exist! Try changing the phone number or email'**
  String get errorUserExistsException;

  /// No description provided for @errorUserExistsFailure.
  ///
  /// In en, this message translates to:
  /// **'There is no account with this data! Check the data.'**
  String get errorUserExistsFailure;

  /// No description provided for @errorVerifyEmailSettings.
  ///
  /// In en, this message translates to:
  /// **'Error! Check email settings'**
  String get errorVerifyEmailSettings;

  /// No description provided for @errorVerifyYourInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'check your internet connection,'**
  String get errorVerifyYourInternetConnection;

  /// No description provided for @errorWrongEmailOrPassword.
  ///
  /// In en, this message translates to:
  /// **'The email or password is wrong'**
  String get errorWrongEmailOrPassword;

  /// No description provided for @firebaseInvalidCustomToken.
  ///
  /// In en, this message translates to:
  /// **'The custom token format is incorrect or expired'**
  String get firebaseInvalidCustomToken;

  /// No description provided for @firebaseCredentialMismatch.
  ///
  /// In en, this message translates to:
  /// **'The custom token corresponds to a different Firebase project.'**
  String get firebaseCredentialMismatch;

  /// No description provided for @firebaseTokenExpired.
  ///
  /// In en, this message translates to:
  /// **'The user\'s credential is no longer valid. The user must sign in again.'**
  String get firebaseTokenExpired;

  /// No description provided for @firebaseUserDisabled.
  ///
  /// In en, this message translates to:
  /// **'The user account has been disabled by an administrator.'**
  String get firebaseUserDisabled;

  /// No description provided for @firebaseUserNotFound.
  ///
  /// In en, this message translates to:
  /// **'The user corresponding to the refresh token was not found. It is likely the user was deleted.'**
  String get firebaseUserNotFound;

  /// No description provided for @firebaseInvalidRefreshToken.
  ///
  /// In en, this message translates to:
  /// **'An invalid refresh token is provided.'**
  String get firebaseInvalidRefreshToken;

  /// No description provided for @firebaseInvalidGrantType.
  ///
  /// In en, this message translates to:
  /// **'The grant type specified is invalid.'**
  String get firebaseInvalidGrantType;

  /// No description provided for @firebaseMissingRefreshToken.
  ///
  /// In en, this message translates to:
  /// **'no refresh token provided.'**
  String get firebaseMissingRefreshToken;

  /// No description provided for @firebaseEmailExists.
  ///
  /// In en, this message translates to:
  /// **'The email address is already in use by another account.'**
  String get firebaseEmailExists;

  /// No description provided for @firebaseOperationNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Password sign-in is disabled for this project.'**
  String get firebaseOperationNotAllowed;

  /// No description provided for @firebaseTooManyAttemptsTryLater.
  ///
  /// In en, this message translates to:
  /// **'We have blocked all requests from this device due to unusual activity. Try again later.'**
  String get firebaseTooManyAttemptsTryLater;

  /// No description provided for @firebaseEmailNotFound.
  ///
  /// In en, this message translates to:
  /// **'There is no user record corresponding to this identifier. The user may have been deleted.'**
  String get firebaseEmailNotFound;

  /// No description provided for @firebaseInvalidPassword.
  ///
  /// In en, this message translates to:
  /// **'The password is invalid or the user does not have a password.'**
  String get firebaseInvalidPassword;

  /// No description provided for @firebaseInvalidIDPResponse.
  ///
  /// In en, this message translates to:
  /// **'The supplied auth credential is malformed or has expired.'**
  String get firebaseInvalidIDPResponse;

  /// No description provided for @firebaseExpiredOOBCode.
  ///
  /// In en, this message translates to:
  /// **'The action code has expired.'**
  String get firebaseExpiredOOBCode;

  /// No description provided for @firebaseInvalidOOBCode.
  ///
  /// In en, this message translates to:
  /// **'The action code is invalid. This can happen if the code is malformed, expired, or has already been used.'**
  String get firebaseInvalidOOBCode;

  /// No description provided for @firebaseInvalidIDToken.
  ///
  /// In en, this message translates to:
  /// **'The user\'s credential is no longer valid. The user must sign in again.'**
  String get firebaseInvalidIDToken;

  /// No description provided for @firebaseWeakPassword.
  ///
  /// In en, this message translates to:
  /// **' The password must be 6 characters long or more.'**
  String get firebaseWeakPassword;

  /// No description provided for @firebaseCredentialTooOldLoginAgain.
  ///
  /// In en, this message translates to:
  /// **'The user\'s credential is no longer valid. The user must sign in again.'**
  String get firebaseCredentialTooOldLoginAgain;

  /// No description provided for @firebaseFederatedUserIDAlreadyLinked.
  ///
  /// In en, this message translates to:
  /// **'This credential is already associated with a different user account.'**
  String get firebaseFederatedUserIDAlreadyLinked;

  /// No description provided for @firebaseInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'The email address is badly formatted.'**
  String get firebaseInvalidEmail;

  /// No description provided for @feedbackAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Added Successfully'**
  String get feedbackAddedSuccessfully;

  /// No description provided for @feedbackAddressesRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Addresses have been updated successfully'**
  String get feedbackAddressesRefreshedSuccessfully;

  /// No description provided for @feedbackApproved.
  ///
  /// In en, this message translates to:
  /// **'approved'**
  String get feedbackApproved;

  /// No description provided for @feedbackCartsRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Shopping carts have been updated successfully'**
  String get feedbackCartsRefreshedSuccessfully;

  /// No description provided for @feedbackCategoryRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'category updated successfully'**
  String get feedbackCategoryRefreshedSuccessfully;

  /// No description provided for @feedbackDeliveryAddressRemovedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'delivery address removed successfully'**
  String get feedbackDeliveryAddressRemovedSuccessfully;

  /// No description provided for @feedbackFaqsRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Questions have been updated successfully.'**
  String get feedbackFaqsRefreshedSuccessfully;

  /// No description provided for @feedbackFavoritesRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Favorites have been updated successfully'**
  String get feedbackFavoritesRefreshedSuccessfully;

  /// No description provided for @feedbackHasBeenUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The application has been updated successfully'**
  String get feedbackHasBeenUpdatedSuccessfully;

  /// No description provided for @feedbackMarketRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The store has been updated successfully.'**
  String get feedbackMarketRefreshedSuccessfully;

  /// No description provided for @feedbackNewAddressAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'New address has been added successfully'**
  String get feedbackNewAddressAddedSuccessfully;

  /// No description provided for @feedbackNotificationsRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Notifications updated successfully'**
  String get feedbackNotificationsRefreshedSuccessfully;

  /// No description provided for @feedbackOrderRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The request has been successfully updated'**
  String get feedbackOrderRefreshedSuccessfully;

  /// No description provided for @feedbackOrdersRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Requests updated successfully'**
  String get feedbackOrdersRefreshedSuccessfully;

  /// No description provided for @feedbackPaymentCardUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Payment card updated successfully.'**
  String get feedbackPaymentCardUpdatedSuccessfully;

  /// No description provided for @feedbackPaymentSettingsUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Payment settings have been updated successfully.'**
  String get feedbackPaymentSettingsUpdatedSuccessfully;

  /// No description provided for @feedbackProductRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Product has been updated successfully'**
  String get feedbackProductRefreshedSuccessfully;

  /// No description provided for @feedbackProfileSettingsUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile settings have been updated successfully'**
  String get feedbackProfileSettingsUpdatedSuccessfully;

  /// No description provided for @feedbackRequestHasBeenSentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The request has been sent successfully'**
  String get feedbackRequestHasBeenSentSuccessfully;

  /// No description provided for @feedbackReviewsRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Reviews updated successfully!'**
  String get feedbackReviewsRefreshedSuccessfully;

  /// No description provided for @feedbackSuccess.
  ///
  /// In en, this message translates to:
  /// **'done successfully'**
  String get feedbackSuccess;

  /// No description provided for @feedbackTheAddressUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Address has been updated successfully'**
  String get feedbackTheAddressUpdatedSuccessfully;

  /// No description provided for @feedbackTheMarketHasBeenRatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Store has been successfully rated'**
  String get feedbackTheMarketHasBeenRatedSuccessfully;

  /// No description provided for @feedbackTheProductHasBeenRatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The product has been successfully rated'**
  String get feedbackTheProductHasBeenRatedSuccessfully;

  /// No description provided for @feedbackTrackingRefreshedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Tracking has been updated successfully'**
  String get feedbackTrackingRefreshedSuccessfully;

  /// No description provided for @feedbackTransferredSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The amount has been transferred successfully.'**
  String get feedbackTransferredSuccessfully;

  /// No description provided for @feedbackYourAccountIsCreated.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created.'**
  String get feedbackYourAccountIsCreated;

  /// No description provided for @feedbackYourOrderHasBeenSuccessfullySubmitted.
  ///
  /// In en, this message translates to:
  /// **'Your request has been submitted successfully.'**
  String get feedbackYourOrderHasBeenSuccessfullySubmitted;

  /// No description provided for @placeCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get placeCity;

  /// No description provided for @placeCountry.
  ///
  /// In en, this message translates to:
  /// **'The state'**
  String get placeCountry;

  /// No description provided for @placeDistrict.
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get placeDistrict;

  /// No description provided for @placeFromWhere.
  ///
  /// In en, this message translates to:
  /// **'from where'**
  String get placeFromWhere;

  /// No description provided for @shopAddCouponCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the coupon code'**
  String get shopAddCouponCode;

  /// No description provided for @shopAddDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Add delivery address'**
  String get shopAddDeliveryAddress;

  /// No description provided for @shopAddNewDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Add a new delivery address'**
  String get shopAddNewDeliveryAddress;

  /// No description provided for @shopAddNoteToOrder.
  ///
  /// In en, this message translates to:
  /// **'Add a note to order'**
  String get shopAddNoteToOrder;

  /// No description provided for @shopAddOrderToFavorites.
  ///
  /// In en, this message translates to:
  /// **'Add the request to the favourites'**
  String get shopAddOrderToFavorites;

  /// No description provided for @shopAddToCart.
  ///
  /// In en, this message translates to:
  /// **'add to cart'**
  String get shopAddToCart;

  /// No description provided for @shopAddedToCart.
  ///
  /// In en, this message translates to:
  /// **'added to cart'**
  String get shopAddedToCart;

  /// No description provided for @shopAllBrands.
  ///
  /// In en, this message translates to:
  /// **'all brands'**
  String get shopAllBrands;

  /// No description provided for @shopAllDeliveries.
  ///
  /// In en, this message translates to:
  /// **'all connections'**
  String get shopAllDeliveries;

  /// No description provided for @shopAllMarkets.
  ///
  /// In en, this message translates to:
  /// **'all stores'**
  String get shopAllMarkets;

  /// No description provided for @shopAllPayments.
  ///
  /// In en, this message translates to:
  /// **'all payments'**
  String get shopAllPayments;

  /// No description provided for @shopAllProduct.
  ///
  /// In en, this message translates to:
  /// **'all products'**
  String get shopAllProduct;

  /// No description provided for @shopAllProducts.
  ///
  /// In en, this message translates to:
  /// **'all products '**
  String get shopAllProducts;

  /// No description provided for @shopAllStatus.
  ///
  /// In en, this message translates to:
  /// **'all cases'**
  String get shopAllStatus;

  /// No description provided for @shopAmountCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'The amount cannot be empty.'**
  String get shopAmountCannotBeEmpty;

  /// No description provided for @shopAmountIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Amount Required'**
  String get shopAmountIsRequired;

  /// No description provided for @shopApplyCoupon.
  ///
  /// In en, this message translates to:
  /// **'Coupon Execution'**
  String get shopApplyCoupon;

  /// No description provided for @shopAreSureYouWantToProceed.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to complete the application?'**
  String get shopAreSureYouWantToProceed;

  /// No description provided for @shopAreYouSureToRemoveThisItem.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this category?'**
  String get shopAreYouSureToRemoveThisItem;

  /// No description provided for @shopAreYouSureWithYourOrder.
  ///
  /// In en, this message translates to:
  /// **'Are you sure of your order?'**
  String get shopAreYouSureWithYourOrder;

  /// No description provided for @shopAreYouSureYouWantToCancelThisOrder.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel this order?'**
  String get shopAreYouSureYouWantToCancelThisOrder;

  /// No description provided for @shopAtLeastOnStarMustBeGiven.
  ///
  /// In en, this message translates to:
  /// **'At least one star'**
  String get shopAtLeastOnStarMustBeGiven;

  /// No description provided for @shopBranch.
  ///
  /// In en, this message translates to:
  /// **'branch'**
  String get shopBranch;

  /// No description provided for @shopBrands.
  ///
  /// In en, this message translates to:
  /// **'brands'**
  String get shopBrands;

  /// No description provided for @shopBuyNow.
  ///
  /// In en, this message translates to:
  /// **'Buy Now'**
  String get shopBuyNow;

  /// No description provided for @shopCVC.
  ///
  /// In en, this message translates to:
  /// **'card verification code'**
  String get shopCVC;

  /// No description provided for @shopCancelOrder.
  ///
  /// In en, this message translates to:
  /// **'Cancelling order'**
  String get shopCancelOrder;

  /// No description provided for @shopCannotOrderItemsLessThan.
  ///
  /// In en, this message translates to:
  /// **'It is not possible to order items less than'**
  String get shopCannotOrderItemsLessThan;

  /// No description provided for @shopCannotOrderItemsMoreThan.
  ///
  /// In en, this message translates to:
  /// **'You cannot order more than one item.'**
  String get shopCannotOrderItemsMoreThan;

  /// No description provided for @shopCantCalculateDeliveryFee.
  ///
  /// In en, this message translates to:
  /// **'Unable to calculate delivery charges'**
  String get shopCantCalculateDeliveryFee;

  /// No description provided for @shopCar.
  ///
  /// In en, this message translates to:
  /// **'car'**
  String get shopCar;

  /// No description provided for @shopCardNumber.
  ///
  /// In en, this message translates to:
  /// **'card number'**
  String get shopCardNumber;

  /// No description provided for @shopCart.
  ///
  /// In en, this message translates to:
  /// **'shopping cart'**
  String get shopCart;

  /// No description provided for @shopCartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Cart is empty'**
  String get shopCartIsEmpty;

  /// No description provided for @shopCashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Paiement when recieving'**
  String get shopCashOnDelivery;

  /// No description provided for @shopChangeCoupon.
  ///
  /// In en, this message translates to:
  /// **'coupon change'**
  String get shopChangeCoupon;

  /// No description provided for @shopChatWithSeller.
  ///
  /// In en, this message translates to:
  /// **'seller chat'**
  String get shopChatWithSeller;

  /// No description provided for @shopCheckBalance.
  ///
  /// In en, this message translates to:
  /// **'balance check'**
  String get shopCheckBalance;

  /// No description provided for @shopCheckout.
  ///
  /// In en, this message translates to:
  /// **'paying off'**
  String get shopCheckout;

  /// No description provided for @shopChooseBranch.
  ///
  /// In en, this message translates to:
  /// **'select branch'**
  String get shopChooseBranch;

  /// No description provided for @shopChooseCurrency.
  ///
  /// In en, this message translates to:
  /// **'Choose Currency'**
  String get shopChooseCurrency;

  /// No description provided for @shopChooseProduct.
  ///
  /// In en, this message translates to:
  /// **'select product'**
  String get shopChooseProduct;

  /// No description provided for @shopChooseTheMarketsBranch.
  ///
  /// In en, this message translates to:
  /// **'Choose a branch of stores'**
  String get shopChooseTheMarketsBranch;

  /// No description provided for @shopClickOnTheProductToGetMoreDetailsAboutIt.
  ///
  /// In en, this message translates to:
  /// **'Click on the product to get more details about it.'**
  String get shopClickOnTheProductToGetMoreDetailsAboutIt;

  /// No description provided for @shopClickOnTheStarsBelowToLeaveComments.
  ///
  /// In en, this message translates to:
  /// **'Click on the stars below to leave comments'**
  String get shopClickOnTheStarsBelowToLeaveComments;

  /// No description provided for @shopClickToConfirmYourAddressAndPayOrLongPress.
  ///
  /// In en, this message translates to:
  /// **'Click to confirm your address and pay or long press to edit your address'**
  String get shopClickToConfirmYourAddressAndPayOrLongPress;

  /// No description provided for @shopClickToPayCashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Click to pay cash on delivery'**
  String get shopClickToPayCashOnDelivery;

  /// No description provided for @shopClickToPayOnPickup.
  ///
  /// In en, this message translates to:
  /// **'Click to Pay On Receipt'**
  String get shopClickToPayOnPickup;

  /// No description provided for @shopClickToPayWithRazorpayMethod.
  ///
  /// In en, this message translates to:
  /// **'Click to pay with Razor Pay'**
  String get shopClickToPayWithRazorpayMethod;

  /// No description provided for @shopClickToPayWithYourMasterCard.
  ///
  /// In en, this message translates to:
  /// **'Click to pay with MasterCard'**
  String get shopClickToPayWithYourMasterCard;

  /// No description provided for @shopClickToPayWithYourPaypalAccount.
  ///
  /// In en, this message translates to:
  /// **'Click to pay with your PayPal account'**
  String get shopClickToPayWithYourPaypalAccount;

  /// No description provided for @shopClickToPayWithYourVisaCard.
  ///
  /// In en, this message translates to:
  /// **'Click to pay with your Visa Card'**
  String get shopClickToPayWithYourVisaCard;

  /// No description provided for @shopClubPoint.
  ///
  /// In en, this message translates to:
  /// **'purchase points'**
  String get shopClubPoint;

  /// No description provided for @shopConfirmOrder.
  ///
  /// In en, this message translates to:
  /// **'Confirm your order'**
  String get shopConfirmOrder;

  /// No description provided for @shopConfirmPayment.
  ///
  /// In en, this message translates to:
  /// **'Payment Confirmation'**
  String get shopConfirmPayment;

  /// No description provided for @shopConfirmYourDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Confirm your delivery address'**
  String get shopConfirmYourDeliveryAddress;

  /// No description provided for @shopContactSeller.
  ///
  /// In en, this message translates to:
  /// **'Contact Seller'**
  String get shopContactSeller;

  /// No description provided for @shopCoupon.
  ///
  /// In en, this message translates to:
  /// **'coupon'**
  String get shopCoupon;

  /// No description provided for @shopCouponCode.
  ///
  /// In en, this message translates to:
  /// **'coupon code'**
  String get shopCouponCode;

  /// No description provided for @shopCreatingOrder.
  ///
  /// In en, this message translates to:
  /// **'fulfill the request'**
  String get shopCreatingOrder;

  /// No description provided for @shopCustomOrder.
  ///
  /// In en, this message translates to:
  /// **'custom request'**
  String get shopCustomOrder;

  /// No description provided for @shopDefaultCreditCard.
  ///
  /// In en, this message translates to:
  /// **'virtual credit card'**
  String get shopDefaultCreditCard;

  /// No description provided for @shopDeliverTo.
  ///
  /// In en, this message translates to:
  /// **'delivery to'**
  String get shopDeliverTo;

  /// No description provided for @shopDeliverable.
  ///
  /// In en, this message translates to:
  /// **'deliverable'**
  String get shopDeliverable;

  /// No description provided for @shopDelivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get shopDelivered;

  /// No description provided for @shopDelivery.
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get shopDelivery;

  /// No description provided for @shopDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'delivery address'**
  String get shopDeliveryAddress;

  /// No description provided for @shopDeliveryAddressOutsideTheDeliveryRangeOfThisMarkets.
  ///
  /// In en, this message translates to:
  /// **'The delivery address is outside the scope of delivery for these markets.'**
  String get shopDeliveryAddressOutsideTheDeliveryRangeOfThisMarkets;

  /// No description provided for @shopDeliveryAddresses.
  ///
  /// In en, this message translates to:
  /// **'delivery addresses'**
  String get shopDeliveryAddresses;

  /// No description provided for @shopDeliveryFee.
  ///
  /// In en, this message translates to:
  /// **'delivery fee'**
  String get shopDeliveryFee;

  /// No description provided for @shopDeliveryFeeIsCalculated.
  ///
  /// In en, this message translates to:
  /// **'Delivery fee charged.'**
  String get shopDeliveryFeeIsCalculated;

  /// No description provided for @shopDeliveryInformation.
  ///
  /// In en, this message translates to:
  /// **'delivery information'**
  String get shopDeliveryInformation;

  /// No description provided for @shopDeliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'delivery options'**
  String get shopDeliveryMethod;

  /// No description provided for @shopDeliveryMethodNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Delivery method is not allowed!'**
  String get shopDeliveryMethodNotAllowed;

  /// No description provided for @shopDeliveryOrPickup.
  ///
  /// In en, this message translates to:
  /// **'delivery or receipt'**
  String get shopDeliveryOrPickup;

  /// No description provided for @shopDeliveryService.
  ///
  /// In en, this message translates to:
  /// **'Delivery Service'**
  String get shopDeliveryService;

  /// No description provided for @shopDeliveryStatus.
  ///
  /// In en, this message translates to:
  /// **'Connection status'**
  String get shopDeliveryStatus;

  /// No description provided for @shopDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'The house/apartment/company name/building...'**
  String get shopDescriptionHint;

  /// No description provided for @shopDonatHaveAnyItemInYourCart.
  ///
  /// In en, this message translates to:
  /// **'There is no item in your shopping cart'**
  String get shopDonatHaveAnyItemInYourCart;

  /// No description provided for @shopEmptyCart.
  ///
  /// In en, this message translates to:
  /// **'Cart is empty'**
  String get shopEmptyCart;

  /// No description provided for @shopEnterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get shopEnterAmount;

  /// No description provided for @shopEnterCouponCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the coupon code'**
  String get shopEnterCouponCode;

  /// No description provided for @shopEnterTheCodeSent.
  ///
  /// In en, this message translates to:
  /// **'Enter the code'**
  String get shopEnterTheCodeSent;

  /// No description provided for @shopExpectedAmount.
  ///
  /// In en, this message translates to:
  /// **'expected amount'**
  String get shopExpectedAmount;

  /// No description provided for @shopFavoriteOrders.
  ///
  /// In en, this message translates to:
  /// **'Favorite Orders'**
  String get shopFavoriteOrders;

  /// No description provided for @shopFavoriteProducts.
  ///
  /// In en, this message translates to:
  /// **'favorite products'**
  String get shopFavoriteProducts;

  /// No description provided for @shopFeaturedCategories.
  ///
  /// In en, this message translates to:
  /// **'Featured Categories'**
  String get shopFeaturedCategories;

  /// No description provided for @shopFeaturedProducts.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get shopFeaturedProducts;

  /// No description provided for @shopFetchingPaypalUrl.
  ///
  /// In en, this message translates to:
  /// **'Connecting with PayPal Link'**
  String get shopFetchingPaypalUrl;

  /// No description provided for @shopGettingCoupon.
  ///
  /// In en, this message translates to:
  /// **'Coupon is being requested, please wait...'**
  String get shopGettingCoupon;

  /// No description provided for @shopGross.
  ///
  /// In en, this message translates to:
  /// **'full amount'**
  String get shopGross;

  /// No description provided for @shopHaveCouponCode.
  ///
  /// In en, this message translates to:
  /// **'Do you have a coupon?'**
  String get shopHaveCouponCode;

  /// No description provided for @shopHowWouldYouRateThisMarket.
  ///
  /// In en, this message translates to:
  /// **'How do you rate this store?'**
  String get shopHowWouldYouRateThisMarket;

  /// No description provided for @shopInYourCart.
  ///
  /// In en, this message translates to:
  /// **'in the basket'**
  String get shopInYourCart;

  /// No description provided for @shopInvalidCouponCode.
  ///
  /// In en, this message translates to:
  /// **'wrong coupon'**
  String get shopInvalidCouponCode;

  /// No description provided for @shopKeepYourOldMealsOfThisMarket.
  ///
  /// In en, this message translates to:
  /// **'Keep your old meals in this store'**
  String get shopKeepYourOldMealsOfThisMarket;

  /// No description provided for @shopLoadingMoreBrands.
  ///
  /// In en, this message translates to:
  /// **'Download more brands'**
  String get shopLoadingMoreBrands;

  /// No description provided for @shopLoadingMoreOrders.
  ///
  /// In en, this message translates to:
  /// **'Download other requests'**
  String get shopLoadingMoreOrders;

  /// No description provided for @shopLoadingMoreProducts.
  ///
  /// In en, this message translates to:
  /// **'download other products'**
  String get shopLoadingMoreProducts;

  /// No description provided for @shopLoadingMoreReviews.
  ///
  /// In en, this message translates to:
  /// **'Download other reviews'**
  String get shopLoadingMoreReviews;

  /// No description provided for @shopLoadingMoreShops.
  ///
  /// In en, this message translates to:
  /// **'Download other stores'**
  String get shopLoadingMoreShops;

  /// No description provided for @shopMarket.
  ///
  /// In en, this message translates to:
  /// **'the shop'**
  String get shopMarket;

  /// No description provided for @shopMarkets.
  ///
  /// In en, this message translates to:
  /// **'Shops'**
  String get shopMarkets;

  /// No description provided for @shopMarketsNearTo.
  ///
  /// In en, this message translates to:
  /// **'Markets Close To'**
  String get shopMarketsNearTo;

  /// No description provided for @shopMarketsNearToYourCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Markets near your current location'**
  String get shopMarketsNearToYourCurrentLocation;

  /// No description provided for @shopMarketsResults.
  ///
  /// In en, this message translates to:
  /// **'market results'**
  String get shopMarketsResults;

  /// No description provided for @shopMostPopular.
  ///
  /// In en, this message translates to:
  /// **'The most popular'**
  String get shopMostPopular;

  /// No description provided for @shopMotorBike.
  ///
  /// In en, this message translates to:
  /// **'Motorcycle'**
  String get shopMotorBike;

  /// No description provided for @shopMyOrders.
  ///
  /// In en, this message translates to:
  /// **'My requests'**
  String get shopMyOrders;

  /// No description provided for @shopNoBrandsAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'no brands'**
  String get shopNoBrandsAreAvailable;

  /// No description provided for @shopNoFeaturedProductsFromThisSeller.
  ///
  /// In en, this message translates to:
  /// **'There are no featured products for this seller'**
  String get shopNoFeaturedProductsFromThisSeller;

  /// No description provided for @shopNoMoreBrands.
  ///
  /// In en, this message translates to:
  /// **'There are no other brands.'**
  String get shopNoMoreBrands;

  /// No description provided for @shopNoMoreOrders.
  ///
  /// In en, this message translates to:
  /// **'There are no other requests.'**
  String get shopNoMoreOrders;

  /// No description provided for @shopNoMoreProducts.
  ///
  /// In en, this message translates to:
  /// **'There are no other products.'**
  String get shopNoMoreProducts;

  /// No description provided for @shopNoMoreReviews.
  ///
  /// In en, this message translates to:
  /// **'There are no other reviews.'**
  String get shopNoMoreReviews;

  /// No description provided for @shopNoMoreShops.
  ///
  /// In en, this message translates to:
  /// **'There are no other stores.'**
  String get shopNoMoreShops;

  /// No description provided for @shopNoNewArrivals.
  ///
  /// In en, this message translates to:
  /// **'There are no newly arrived products.'**
  String get shopNoNewArrivals;

  /// No description provided for @shopNoProductsAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'no products'**
  String get shopNoProductsAreAvailable;

  /// No description provided for @shopNoRelatedProducts.
  ///
  /// In en, this message translates to:
  /// **'There are no similar products'**
  String get shopNoRelatedProducts;

  /// No description provided for @shopNoReviews.
  ///
  /// In en, this message translates to:
  /// **'no comments'**
  String get shopNoReviews;

  /// No description provided for @shopNoShopsAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'no stores'**
  String get shopNoShopsAreAvailable;

  /// No description provided for @shopNoTopSellingProductsFromThisSeller.
  ///
  /// In en, this message translates to:
  /// **'There are no preferred products for this merchant'**
  String get shopNoTopSellingProductsFromThisSeller;

  /// No description provided for @shopNotDeliverable.
  ///
  /// In en, this message translates to:
  /// **'undeliverable'**
  String get shopNotDeliverable;

  /// No description provided for @shopOnTheWay.
  ///
  /// In en, this message translates to:
  /// **'on my way'**
  String get shopOnTheWay;

  /// No description provided for @shopOneOrMoreProductsInYourCartNotDeliverable.
  ///
  /// In en, this message translates to:
  /// **'One or more products in your cart are not deliverable.'**
  String get shopOneOrMoreProductsInYourCartNotDeliverable;

  /// No description provided for @shopOpenedMarkets.
  ///
  /// In en, this message translates to:
  /// **'open markets'**
  String get shopOpenedMarkets;

  /// No description provided for @shopOrderCode.
  ///
  /// In en, this message translates to:
  /// **'order code'**
  String get shopOrderCode;

  /// No description provided for @shopOrderCost.
  ///
  /// In en, this message translates to:
  /// **'order value'**
  String get shopOrderCost;

  /// No description provided for @shopOrderDate.
  ///
  /// In en, this message translates to:
  /// **'The date of application'**
  String get shopOrderDate;

  /// No description provided for @shopOrderDetails.
  ///
  /// In en, this message translates to:
  /// **'order details'**
  String get shopOrderDetails;

  /// No description provided for @shopOrderID.
  ///
  /// In en, this message translates to:
  /// **'Private demand identification number'**
  String get shopOrderID;

  /// No description provided for @shopOrderInformation.
  ///
  /// In en, this message translates to:
  /// **'order information'**
  String get shopOrderInformation;

  /// No description provided for @shopOrderIsReceived.
  ///
  /// In en, this message translates to:
  /// **'Your request has been received.'**
  String get shopOrderIsReceived;

  /// No description provided for @shopOrderPlaced.
  ///
  /// In en, this message translates to:
  /// **'request is done'**
  String get shopOrderPlaced;

  /// No description provided for @shopOrderReceived.
  ///
  /// In en, this message translates to:
  /// **'Request received'**
  String get shopOrderReceived;

  /// No description provided for @shopOrderStatusChanged.
  ///
  /// In en, this message translates to:
  /// **'Request status changed'**
  String get shopOrderStatusChanged;

  /// No description provided for @shopOrderThisOrderIdHasBeenCanceled.
  ///
  /// In en, this message translates to:
  /// **'the request has been canceled'**
  String get shopOrderThisOrderIdHasBeenCanceled;

  /// No description provided for @shopOrderedByNearbyFirst.
  ///
  /// In en, this message translates to:
  /// **'Pre-ordered First'**
  String get shopOrderedByNearbyFirst;

  /// No description provided for @shopOrderedProducts.
  ///
  /// In en, this message translates to:
  /// **'required products'**
  String get shopOrderedProducts;

  /// No description provided for @shopOrders.
  ///
  /// In en, this message translates to:
  /// **'requests'**
  String get shopOrders;

  /// No description provided for @shopPaid.
  ///
  /// In en, this message translates to:
  /// **'The payment was made'**
  String get shopPaid;

  /// No description provided for @shopParcelDeliveryService.
  ///
  /// In en, this message translates to:
  /// **'parcel delivery service'**
  String get shopParcelDeliveryService;

  /// No description provided for @shopPayWithPaypal.
  ///
  /// In en, this message translates to:
  /// **'Pay Via Paypal'**
  String get shopPayWithPaypal;

  /// No description provided for @shopPayWithRazorPay.
  ///
  /// In en, this message translates to:
  /// **'Pay with Razor Pay'**
  String get shopPayWithRazorPay;

  /// No description provided for @shopPayWithStripe.
  ///
  /// In en, this message translates to:
  /// **'Pay Via Stripe'**
  String get shopPayWithStripe;

  /// No description provided for @shopPaymentCancelled.
  ///
  /// In en, this message translates to:
  /// **'Payment Canceled'**
  String get shopPaymentCancelled;

  /// No description provided for @shopPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get shopPaymentMethod;

  /// No description provided for @shopPaymentOptions.
  ///
  /// In en, this message translates to:
  /// **'payment options'**
  String get shopPaymentOptions;

  /// No description provided for @shopPaymentSettings.
  ///
  /// In en, this message translates to:
  /// **'Payment Settings'**
  String get shopPaymentSettings;

  /// No description provided for @shopPaymentStatus.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get shopPaymentStatus;

  /// No description provided for @shopPaymentsSettings.
  ///
  /// In en, this message translates to:
  /// **'Payments Settings'**
  String get shopPaymentsSettings;

  /// No description provided for @shopPaypal.
  ///
  /// In en, this message translates to:
  /// **'PayPal'**
  String get shopPaypal;

  /// No description provided for @shopPending.
  ///
  /// In en, this message translates to:
  /// **'pending'**
  String get shopPending;

  /// No description provided for @shopPickupYourProductFromTheMarket.
  ///
  /// In en, this message translates to:
  /// **'pick up your product from the store'**
  String get shopPickupYourProductFromTheMarket;

  /// No description provided for @shopPillPay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get shopPillPay;

  /// No description provided for @shopPleaseAddOrdersWithPriceOrMoreToPerformThePurchase.
  ///
  /// In en, this message translates to:
  /// **'To execute the order, please add an order at least its price'**
  String get shopPleaseAddOrdersWithPriceOrMoreToPerformThePurchase;

  /// No description provided for @shopPleaseChooseOneOptionToPay.
  ///
  /// In en, this message translates to:
  /// **'Please choose one of the payment options.'**
  String get shopPleaseChooseOneOptionToPay;

  /// No description provided for @shopPleaseLoginToViewTheCartItems.
  ///
  /// In en, this message translates to:
  /// **'Please login to view cart.'**
  String get shopPleaseLoginToViewTheCartItems;

  /// No description provided for @shopPreparing.
  ///
  /// In en, this message translates to:
  /// **'order processing'**
  String get shopPreparing;

  /// No description provided for @shopProceedToPayment.
  ///
  /// In en, this message translates to:
  /// **'move to payment'**
  String get shopProceedToPayment;

  /// No description provided for @shopProceedToShipping.
  ///
  /// In en, this message translates to:
  /// **'Go to Shipping'**
  String get shopProceedToShipping;

  /// No description provided for @shopProductCategories.
  ///
  /// In en, this message translates to:
  /// **'product categories'**
  String get shopProductCategories;

  /// No description provided for @shopProductName.
  ///
  /// In en, this message translates to:
  /// **'product name'**
  String get shopProductName;

  /// No description provided for @shopProductPricesDoNotMatchPleaseUpdateTheData.
  ///
  /// In en, this message translates to:
  /// **'Product prices do not match, please update the data'**
  String get shopProductPricesDoNotMatchPleaseUpdateTheData;

  /// No description provided for @shopProducts.
  ///
  /// In en, this message translates to:
  /// **'products'**
  String get shopProducts;

  /// No description provided for @shopProductsResult.
  ///
  /// In en, this message translates to:
  /// **'products result'**
  String get shopProductsResult;

  /// No description provided for @shopProductsResults.
  ///
  /// In en, this message translates to:
  /// **'product results'**
  String get shopProductsResults;

  /// No description provided for @shopProductsYouMayLike.
  ///
  /// In en, this message translates to:
  /// **'Products You Might Like'**
  String get shopProductsYouMayLike;

  /// No description provided for @shopPurchaseHistory.
  ///
  /// In en, this message translates to:
  /// **'Purchase History'**
  String get shopPurchaseHistory;

  /// No description provided for @shopQuantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get shopQuantity;

  /// No description provided for @shopReady.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get shopReady;

  /// No description provided for @shopReceiver.
  ///
  /// In en, this message translates to:
  /// **'the future'**
  String get shopReceiver;

  /// No description provided for @shopReceiverAddress.
  ///
  /// In en, this message translates to:
  /// **'recipient address'**
  String get shopReceiverAddress;

  /// No description provided for @shopReceiverInformation.
  ///
  /// In en, this message translates to:
  /// **'future information'**
  String get shopReceiverInformation;

  /// No description provided for @shopReceiverLocation.
  ///
  /// In en, this message translates to:
  /// **'recipient site'**
  String get shopReceiverLocation;

  /// No description provided for @shopReceiverName.
  ///
  /// In en, this message translates to:
  /// **'The recipient\'s name'**
  String get shopReceiverName;

  /// No description provided for @shopReceiverPhone.
  ///
  /// In en, this message translates to:
  /// **'recipient number'**
  String get shopReceiverPhone;

  /// No description provided for @shopRecentOrders.
  ///
  /// In en, this message translates to:
  /// **'last orders'**
  String get shopRecentOrders;

  /// No description provided for @shopRecipientAddress.
  ///
  /// In en, this message translates to:
  /// **'recipient address'**
  String get shopRecipientAddress;

  /// No description provided for @shopRecipientInformation.
  ///
  /// In en, this message translates to:
  /// **'Recipient Information'**
  String get shopRecipientInformation;

  /// No description provided for @shopResetCart.
  ///
  /// In en, this message translates to:
  /// **'Reset basket?'**
  String get shopResetCart;

  /// No description provided for @shopResetCartAndCancelOrderFromPreviousMarket.
  ///
  /// In en, this message translates to:
  /// **'Reset the basket and cancel the previous order'**
  String get shopResetCartAndCancelOrderFromPreviousMarket;

  /// No description provided for @shopResetYourCartAndOrderMealsFormThisMarket.
  ///
  /// In en, this message translates to:
  /// **'Reset your cart and order meals from this store'**
  String get shopResetYourCartAndOrderMealsFormThisMarket;

  /// No description provided for @shopSaveOnYourOrder.
  ///
  /// In en, this message translates to:
  /// **'Save on your request'**
  String get shopSaveOnYourOrder;

  /// No description provided for @shopSearchForMarketsOrProducts.
  ///
  /// In en, this message translates to:
  /// **'Find markets or products'**
  String get shopSearchForMarketsOrProducts;

  /// No description provided for @shopSearchProductsOf.
  ///
  /// In en, this message translates to:
  /// **'search for products'**
  String get shopSearchProductsOf;

  /// No description provided for @shopSearchProductsOfBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand Product Search'**
  String get shopSearchProductsOfBrand;

  /// No description provided for @shopSearchProductsOfShop.
  ///
  /// In en, this message translates to:
  /// **'store products search'**
  String get shopSearchProductsOfShop;

  /// No description provided for @shopSearchProductsTheMarket.
  ///
  /// In en, this message translates to:
  /// **'Search for Items'**
  String get shopSearchProductsTheMarket;

  /// No description provided for @shopSeller.
  ///
  /// In en, this message translates to:
  /// **'the seller'**
  String get shopSeller;

  /// No description provided for @shopSellerPolicy.
  ///
  /// In en, this message translates to:
  /// **'Seller Policy'**
  String get shopSellerPolicy;

  /// No description provided for @shopSellers.
  ///
  /// In en, this message translates to:
  /// **'sellers'**
  String get shopSellers;

  /// No description provided for @shopSenderAddress.
  ///
  /// In en, this message translates to:
  /// **'sender\'s address'**
  String get shopSenderAddress;

  /// No description provided for @shopSenderInformation.
  ///
  /// In en, this message translates to:
  /// **'sender information'**
  String get shopSenderInformation;

  /// No description provided for @shopSenderLocation.
  ///
  /// In en, this message translates to:
  /// **'sender site'**
  String get shopSenderLocation;

  /// No description provided for @shopSenderPhone.
  ///
  /// In en, this message translates to:
  /// **'sender number'**
  String get shopSenderPhone;

  /// No description provided for @shopSetYourDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Select the delivery address'**
  String get shopSetYourDeliveryAddress;

  /// No description provided for @shopShippingAddress.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shopShippingAddress;

  /// No description provided for @shopShippingCost.
  ///
  /// In en, this message translates to:
  /// **'freight value'**
  String get shopShippingCost;

  /// No description provided for @shopShippingMethod.
  ///
  /// In en, this message translates to:
  /// **'Shipping Method'**
  String get shopShippingMethod;

  /// No description provided for @shopShopping.
  ///
  /// In en, this message translates to:
  /// **'the shopping'**
  String get shopShopping;

  /// No description provided for @shopShoppingCart.
  ///
  /// In en, this message translates to:
  /// **'shopping cart'**
  String get shopShoppingCart;

  /// No description provided for @shopShowCart.
  ///
  /// In en, this message translates to:
  /// **'View Cart'**
  String get shopShowCart;

  /// No description provided for @shopSortProductsBy.
  ///
  /// In en, this message translates to:
  /// **'sort products by'**
  String get shopSortProductsBy;

  /// No description provided for @shopSubmitOrder.
  ///
  /// In en, this message translates to:
  /// **'fulfill the request'**
  String get shopSubmitOrder;

  /// No description provided for @shopTellUsAboutThisMarket.
  ///
  /// In en, this message translates to:
  /// **'Tell us about this store.'**
  String get shopTellUsAboutThisMarket;

  /// No description provided for @shopTellUsAboutThisProduct.
  ///
  /// In en, this message translates to:
  /// **'Tell us about this product'**
  String get shopTellUsAboutThisProduct;

  /// No description provided for @shopTheProductWasRemovedFromYourCart.
  ///
  /// In en, this message translates to:
  /// **'Item has been removed from the basket'**
  String get shopTheProductWasRemovedFromYourCart;

  /// No description provided for @shopThisMarketIsClosed.
  ///
  /// In en, this message translates to:
  /// **'This store is closed!'**
  String get shopThisMarketIsClosed;

  /// No description provided for @shopThisMarketNotSupportDeliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'This store does not support the delivery method.'**
  String get shopThisMarketNotSupportDeliveryMethod;

  /// No description provided for @shopThisOrderIsAddedToFavorite.
  ///
  /// In en, this message translates to:
  /// **'The request has been added to the favourites.'**
  String get shopThisOrderIsAddedToFavorite;

  /// No description provided for @shopThisOrderWillBeRemovedFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'The request will be removed from the favourites.'**
  String get shopThisOrderWillBeRemovedFromFavorites;

  /// No description provided for @shopThisProductWasAddedToCart.
  ///
  /// In en, this message translates to:
  /// **'This product has been added to the cart'**
  String get shopThisProductWasAddedToCart;

  /// No description provided for @shopThisProductWasAddedToFavorite.
  ///
  /// In en, this message translates to:
  /// **'Product has been added to favourites'**
  String get shopThisProductWasAddedToFavorite;

  /// No description provided for @shopThisProductWasRemovedFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'Product has been removed from favourites'**
  String get shopThisProductWasRemovedFromFavorites;

  /// No description provided for @shopTopCategories.
  ///
  /// In en, this message translates to:
  /// **'best categories'**
  String get shopTopCategories;

  /// No description provided for @shopTopMarkets.
  ///
  /// In en, this message translates to:
  /// **'Major Markets'**
  String get shopTopMarkets;

  /// No description provided for @shopTopSellers.
  ///
  /// In en, this message translates to:
  /// **'Best sellers'**
  String get shopTopSellers;

  /// No description provided for @shopTopSellingProducts.
  ///
  /// In en, this message translates to:
  /// **'top sales'**
  String get shopTopSellingProducts;

  /// No description provided for @shopTopSellingProductsFromThisSeller.
  ///
  /// In en, this message translates to:
  /// **'Best Sales For This Dealer'**
  String get shopTopSellingProductsFromThisSeller;

  /// No description provided for @shopUnknownMarket.
  ///
  /// In en, this message translates to:
  /// **'Unknown Store'**
  String get shopUnknownMarket;

  /// No description provided for @shopUpdateCart.
  ///
  /// In en, this message translates to:
  /// **'Update Cart'**
  String get shopUpdateCart;

  /// No description provided for @shopValidCouponCode.
  ///
  /// In en, this message translates to:
  /// **'true coupon'**
  String get shopValidCouponCode;

  /// No description provided for @shopViewAllProductsFromThisSeller.
  ///
  /// In en, this message translates to:
  /// **'View all products from this seller'**
  String get shopViewAllProductsFromThisSeller;

  /// No description provided for @shopViewCart.
  ///
  /// In en, this message translates to:
  /// **'View Cart'**
  String get shopViewCart;

  /// No description provided for @shopViewProducts.
  ///
  /// In en, this message translates to:
  /// **'display products'**
  String get shopViewProducts;

  /// No description provided for @shopViewSubCategories.
  ///
  /// In en, this message translates to:
  /// **'display subcategories'**
  String get shopViewSubCategories;

  /// No description provided for @shopVisaCard.
  ///
  /// In en, this message translates to:
  /// **'visa card'**
  String get shopVisaCard;

  /// No description provided for @shopWishlist.
  ///
  /// In en, this message translates to:
  /// **'wish list'**
  String get shopWishlist;

  /// No description provided for @shopYouCanDiscoverMarkets.
  ///
  /// In en, this message translates to:
  /// **'You can discover the markets and stores around you and choose the best meal for you after a few minutes we prepare and serve it to you'**
  String get shopYouCanDiscoverMarkets;

  /// No description provided for @shopYouCanNotCancelThisOrderAfterPreparingIt.
  ///
  /// In en, this message translates to:
  /// **'You cannot cancel the order after it has been processed.'**
  String get shopYouCanNotCancelThisOrderAfterPreparingIt;

  /// No description provided for @shopYouCanUseFiltersWhileSearchingForProducts.
  ///
  /// In en, this message translates to:
  /// **'You can use the filter when searching for products.'**
  String get shopYouCanUseFiltersWhileSearchingForProducts;

  /// No description provided for @shopYouDonatHaveAnyOrder.
  ///
  /// In en, this message translates to:
  /// **'You have no request'**
  String get shopYouDonatHaveAnyOrder;

  /// No description provided for @shopYouHaveNoWishlist.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have a wish list'**
  String get shopYouHaveNoWishlist;

  /// No description provided for @shopYouMustAddProductsOfTheSameMarketsChooseOne.
  ///
  /// In en, this message translates to:
  /// **'You must add products from the same markets, choose only one market!'**
  String get shopYouMustAddProductsOfTheSameMarketsChooseOne;

  /// No description provided for @shopYouMustSignInToAccessToThisSection.
  ///
  /// In en, this message translates to:
  /// **'You must be logged in to access this section'**
  String get shopYouMustSignInToAccessToThisSection;

  /// No description provided for @validAccepted.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be accepted'**
  String validAccepted(String attribute);

  /// No description provided for @validBlank.
  ///
  /// In en, this message translates to:
  /// **'{attribute} can\'t be blank'**
  String validBlank(String attribute);

  /// No description provided for @validConfirmation.
  ///
  /// In en, this message translates to:
  /// **'{attribute} doesn\'t match {other}'**
  String validConfirmation(String attribute, String other);

  /// No description provided for @validEmpty.
  ///
  /// In en, this message translates to:
  /// **'{attribute} can\'t be empty'**
  String validEmpty(String attribute);

  /// No description provided for @validEqualTo.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be equal to {count}'**
  String validEqualTo(String attribute, Object count);

  /// No description provided for @validEven.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be even'**
  String validEven(String attribute);

  /// No description provided for @validExclusion.
  ///
  /// In en, this message translates to:
  /// **'{attribute} is reserved'**
  String validExclusion(String attribute);

  /// No description provided for @validGreaterThan.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be greater than {count}'**
  String validGreaterThan(String attribute, Object count);

  /// No description provided for @validGreaterThanOrEqualTo.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be greater than or equal to {count}'**
  String validGreaterThanOrEqualTo(String attribute, Object count);

  /// No description provided for @validInclusion.
  ///
  /// In en, this message translates to:
  /// **'{attribute} is not included in the list'**
  String validInclusion(String attribute);

  /// No description provided for @validInvalid.
  ///
  /// In en, this message translates to:
  /// **'{attribute} is invalid'**
  String validInvalid(String attribute);

  /// No description provided for @validLessThan.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be less than {count}'**
  String validLessThan(String attribute, Object count);

  /// No description provided for @validLessThanOrEqualTo.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be less than or equal to {count}'**
  String validLessThanOrEqualTo(String attribute, Object count);

  /// No description provided for @validNotANumber.
  ///
  /// In en, this message translates to:
  /// **'{attribute} is not a number'**
  String validNotANumber(String attribute);

  /// No description provided for @validNotAValidAddress.
  ///
  /// In en, this message translates to:
  /// **'عنوان غير صالح'**
  String get validNotAValidAddress;

  /// No description provided for @validNotAValidDate.
  ///
  /// In en, this message translates to:
  /// **'التاريخ غير صالح'**
  String get validNotAValidDate;

  /// No description provided for @validNotAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'البريد الإلكتروني غير صالح'**
  String get validNotAValidEmail;

  /// No description provided for @validNotAValidFullName.
  ///
  /// In en, this message translates to:
  /// **'الاسم الكامل غير صالح'**
  String get validNotAValidFullName;

  /// No description provided for @validNotAValidNumber.
  ///
  /// In en, this message translates to:
  /// **'رقم غير صالح'**
  String get validNotAValidNumber;

  /// No description provided for @validNotAValidPhone.
  ///
  /// In en, this message translates to:
  /// **'رقم الهاتف غير صالح'**
  String get validNotAValidPhone;

  /// No description provided for @validNotAValidText.
  ///
  /// In en, this message translates to:
  /// **'نص غير صحيح'**
  String get validNotAValidText;

  /// No description provided for @validNotAnInteger.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be an integer'**
  String validNotAnInteger(String attribute);

  /// No description provided for @validOdd.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be odd'**
  String validOdd(String attribute);

  /// No description provided for @validOtherThan.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,other{{attribute} must be other than {count}}'**
  String validOtherThan(String attribute, num count);

  /// No description provided for @validPresent.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must be blank'**
  String validPresent(String attribute);

  /// No description provided for @validRequired.
  ///
  /// In en, this message translates to:
  /// **'{attribute} must exist'**
  String validRequired(String attribute);

  /// No description provided for @validShouldBeAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'يجب أن يكون بريدًا إلكترونيًا صالحًا'**
  String get validShouldBeAValidEmail;

  /// No description provided for @validShouldBeMoreThan3Letters.
  ///
  /// In en, this message translates to:
  /// **'يجب أن يكون أكثر من 3 أحرف'**
  String get validShouldBeMoreThan3Letters;

  /// No description provided for @validShouldBeMoreThan6Letters.
  ///
  /// In en, this message translates to:
  /// **'يجب أن يكون أكثر من 6 أحرف'**
  String get validShouldBeMoreThan6Letters;

  /// No description provided for @validTaken.
  ///
  /// In en, this message translates to:
  /// **'{attribute} has already been taken'**
  String validTaken(String attribute);

  /// No description provided for @validTooLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is too long (maximum is 1 character)}other{{attribute} is too long (maximum is {count} characters)}'**
  String validTooLong(String attribute, num count);

  /// No description provided for @validTooShort.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is too short (minimum is 1 character)}other{{attribute} is too short (minimum is {count} characters)}}'**
  String validTooShort(String attribute, num count);

  /// No description provided for @validWrongLength.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is the wrong length (should be 1 character)}other{{attribute} is the wrong length (should be {count} characters)}}'**
  String validWrongLength(String attribute, num count);
}

class _SuperLocalizationsDelegate extends LocalizationsDelegate<SuperLocalizations> {
  const _SuperLocalizationsDelegate();

  @override
  Future<SuperLocalizations> load(Locale locale) {
    return SynchronousFuture<SuperLocalizations>(lookupSuperLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_SuperLocalizationsDelegate old) => false;
}

SuperLocalizations lookupSuperLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return SuperLocalizationsAr();
    case 'en': return SuperLocalizationsEn();
    case 'fr': return SuperLocalizationsFr();
  }

  throw FlutterError(
    'SuperLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
