
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'super_localizations_ar.dart';
import 'super_localizations_en.dart';

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
    Locale('en')
  ];

  /// No description provided for @feedbackAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Added Successfully'**
  String get feedbackAddedSuccessfully;

  /// No description provided for @errorServerException.
  ///
  /// In en, this message translates to:
  /// **'Oops! We couldn\'t connect to the server'**
  String get errorServerException;

  /// No description provided for @errorCacheException.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get errorCacheException;

  /// No description provided for @errorConnectionException.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get errorConnectionException;

  /// No description provided for @errorEmptyException.
  ///
  /// In en, this message translates to:
  /// **'There is no data!'**
  String get errorEmptyException;

  /// No description provided for @errorInvalidException.
  ///
  /// In en, this message translates to:
  /// **'Invalid Data!'**
  String get errorInvalidException;

  /// No description provided for @errorExpireException.
  ///
  /// In en, this message translates to:
  /// **'Code has been expired'**
  String get errorExpireException;

  /// No description provided for @errorNotFoundException.
  ///
  /// In en, this message translates to:
  /// **'No account with these credentials'**
  String get errorNotFoundException;

  /// No description provided for @errorUserExistsException.
  ///
  /// In en, this message translates to:
  /// **'This user is already exist'**
  String get errorUserExistsException;

  /// No description provided for @errorPasswordException.
  ///
  /// In en, this message translates to:
  /// **'Wrong password!'**
  String get errorPasswordException;

  /// No description provided for @errorUnauthenticatedException.
  ///
  /// In en, this message translates to:
  /// **'Sorry! you are not authenticated to do this'**
  String get errorUnauthenticatedException;

  /// No description provided for @errorBlockedException.
  ///
  /// In en, this message translates to:
  /// **'Sorry! you have been blocked, Contact the admin to more info'**
  String get errorBlockedException;

  /// No description provided for @errorUnexpectedException.
  ///
  /// In en, this message translates to:
  /// **'Oops! Unexpected error happened! please try again'**
  String get errorUnexpectedException;

  /// No description provided for @errorConflictException.
  ///
  /// In en, this message translates to:
  /// **'The request could not be completed due to a conflict'**
  String get errorConflictException;

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
  String validOtherThan(String attribute, int count);

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

  /// No description provided for @validTaken.
  ///
  /// In en, this message translates to:
  /// **'{attribute} has already been taken'**
  String validTaken(String attribute);

  /// No description provided for @validTooLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is too long (maximum is 1 character)}other{{attribute} is too long (maximum is {count} characters)}'**
  String validTooLong(String attribute, int count);

  /// No description provided for @validTooShort.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is too short (minimum is 1 character)}other{{attribute} is too short (minimum is {count} characters)}}'**
  String validTooShort(String attribute, int count);

  /// No description provided for @validWrongLength.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=1{{attribute} is the wrong length (should be 1 character)}other{{attribute} is the wrong length (should be {count} characters)}}'**
  String validWrongLength(String attribute, int count);

  /// No description provided for @commonHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get commonHome;

  /// No description provided for @commonSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonSearch;

  /// No description provided for @commonLogOut.
  ///
  /// In en, this message translates to:
  /// **'LOG OUT'**
  String get commonLogOut;

  /// No description provided for @commonMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get commonMessage;

  /// No description provided for @commonLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get commonLogin;

  /// No description provided for @commonForgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget password'**
  String get commonForgetPassword;

  /// No description provided for @commonProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get commonProfile;

  /// No description provided for @commonOk.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get commonOk;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get commonYes;

  /// No description provided for @commonAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get commonAll;

  /// No description provided for @commonMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get commonMore;

  /// No description provided for @commonSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get commonSend;

  /// No description provided for @commonUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get commonUpdate;

  /// No description provided for @commonName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get commonName;

  /// No description provided for @commonUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get commonUsername;

  /// No description provided for @commonEmail.
  ///
  /// In en, this message translates to:
  /// **'E-mail Address'**
  String get commonEmail;

  /// No description provided for @commonOr.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get commonOr;

  /// No description provided for @commonFirstName.
  ///
  /// In en, this message translates to:
  /// **'firstName'**
  String get commonFirstName;

  /// No description provided for @commonLastName.
  ///
  /// In en, this message translates to:
  /// **'lastName'**
  String get commonLastName;

  /// No description provided for @commonPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get commonPassword;

  /// No description provided for @commonPasswordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get commonPasswordConfirmation;

  /// No description provided for @commonCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get commonCity;

  /// No description provided for @commonCountry.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get commonCountry;

  /// No description provided for @commonAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get commonAddress;

  /// No description provided for @commonPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get commonPhone;

  /// No description provided for @commonPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get commonPhoneNumber;

  /// No description provided for @commonMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get commonMobile;

  /// No description provided for @commonAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get commonAge;

  /// No description provided for @commonSex.
  ///
  /// In en, this message translates to:
  /// **'Sex'**
  String get commonSex;

  /// No description provided for @commonGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get commonGender;

  /// No description provided for @commonContent.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get commonContent;

  /// No description provided for @commonDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get commonDescription;

  /// No description provided for @commonExcerpt.
  ///
  /// In en, this message translates to:
  /// **'Excerpt'**
  String get commonExcerpt;

  /// No description provided for @commonAvailable.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get commonAvailable;

  /// No description provided for @commonSize.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get commonSize;

  /// No description provided for @commonPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get commonPrice;

  /// No description provided for @commonDesc.
  ///
  /// In en, this message translates to:
  /// **'Desc'**
  String get commonDesc;

  /// No description provided for @commonTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get commonTitle;

  /// No description provided for @commonRegister.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get commonRegister;

  /// No description provided for @commonSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get commonSeeAll;

  /// No description provided for @commonServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get commonServices;

  /// No description provided for @commonSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get commonSubmit;

  /// No description provided for @commonQ.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonQ;

  /// No description provided for @dtDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dtDate;

  /// No description provided for @dtTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get dtTime;

  /// No description provided for @dtYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get dtYear;

  /// No description provided for @dtMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get dtMonth;

  /// No description provided for @dtDay.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get dtDay;

  /// No description provided for @dtHour.
  ///
  /// In en, this message translates to:
  /// **'Hour'**
  String get dtHour;

  /// No description provided for @dtMinute.
  ///
  /// In en, this message translates to:
  /// **'Minute'**
  String get dtMinute;

  /// No description provided for @dtSecond.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get dtSecond;

  /// No description provided for @dtSunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get dtSunday;

  /// No description provided for @dtMonday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get dtMonday;

  /// No description provided for @dtTuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get dtTuesday;

  /// No description provided for @dtWednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get dtWednesday;

  /// No description provided for @dtThursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get dtThursday;

  /// No description provided for @dtFriday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get dtFriday;

  /// No description provided for @dtSaturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get dtSaturday;
}

class _SuperLocalizationsDelegate extends LocalizationsDelegate<SuperLocalizations> {
  const _SuperLocalizationsDelegate();

  @override
  Future<SuperLocalizations> load(Locale locale) {
    return SynchronousFuture<SuperLocalizations>(lookupSuperLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SuperLocalizationsDelegate old) => false;
}

SuperLocalizations lookupSuperLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return SuperLocalizationsAr();
    case 'en': return SuperLocalizationsEn();
  }

  throw FlutterError(
    'SuperLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
