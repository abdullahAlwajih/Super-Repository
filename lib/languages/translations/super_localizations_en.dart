

import 'package:intl/intl.dart' as intl;
import 'super_localizations.dart';

/// The translations for English (`en`).
class SuperLocalizationsEn extends SuperLocalizations {
  SuperLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get feedbackAddedSuccessfully => 'Added Successfully';

  @override
  String get errorServerException => 'Oops! We couldn\'t connect to the server';

  @override
  String get errorCacheException => 'No Internet Connection';

  @override
  String get errorConnectionException => 'No Internet Connection';

  @override
  String get errorEmptyException => 'There is no data!';

  @override
  String get errorInvalidException => 'Invalid Data!';

  @override
  String get errorExpireException => 'Code has been expired';

  @override
  String get errorNotFoundException => 'No account with these credentials';

  @override
  String get errorUserExistsException => 'This user is already exist';

  @override
  String get errorPasswordException => 'Wrong password!';

  @override
  String get errorUnauthenticatedException => 'Sorry! you are not authenticated to do this';

  @override
  String get errorBlockedException => 'Sorry! you have been blocked, Contact the admin to more info';

  @override
  String get errorUnexpectedException => 'Oops! Unexpected error happened! please try again';

  @override
  String get errorConflictException => 'The request could not be completed due to a conflict';

  @override
  String validAccepted(String attribute) {
    return '$attribute must be accepted';
  }

  @override
  String validBlank(String attribute) {
    return '$attribute can\'t be blank';
  }

  @override
  String validConfirmation(String attribute, String other) {
    return '$attribute doesn\'t match $other';
  }

  @override
  String validEmpty(String attribute) {
    return '$attribute can\'t be empty';
  }

  @override
  String validEqualTo(String attribute, Object count) {
    return '$attribute must be equal to $count';
  }

  @override
  String validEven(String attribute) {
    return '$attribute must be even';
  }

  @override
  String validExclusion(String attribute) {
    return '$attribute is reserved';
  }

  @override
  String validGreaterThan(String attribute, Object count) {
    return '$attribute must be greater than $count';
  }

  @override
  String validGreaterThanOrEqualTo(String attribute, Object count) {
    return '$attribute must be greater than or equal to $count';
  }

  @override
  String validInclusion(String attribute) {
    return '$attribute is not included in the list';
  }

  @override
  String validInvalid(String attribute) {
    return '$attribute is invalid';
  }

  @override
  String validLessThan(String attribute, Object count) {
    return '$attribute must be less than $count';
  }

  @override
  String validLessThanOrEqualTo(String attribute, Object count) {
    return '$attribute must be less than or equal to $count';
  }

  @override
  String validNotANumber(String attribute) {
    return '$attribute is not a number';
  }

  @override
  String validNotAnInteger(String attribute) {
    return '$attribute must be an integer';
  }

  @override
  String validOdd(String attribute) {
    return '$attribute must be odd';
  }

  @override
  String validOtherThan(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$attribute must be other than $count',
    );
  }

  @override
  String validPresent(String attribute) {
    return '$attribute must be blank';
  }

  @override
  String validRequired(String attribute) {
    return '$attribute must exist';
  }

  @override
  String validTaken(String attribute) {
    return '$attribute has already been taken';
  }

  @override
  String validTooLong(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '$attribute is too long (maximum is 1 character)',
      other: '$attribute is too long (maximum is $count characters)',
    );
  }

  @override
  String validTooShort(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '$attribute is too short (minimum is 1 character)',
      other: '$attribute is too short (minimum is $count characters)',
    );
  }

  @override
  String validWrongLength(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '$attribute is the wrong length (should be 1 character)',
      other: '$attribute is the wrong length (should be $count characters)',
    );
  }

  @override
  String get commonHome => 'Home';

  @override
  String get commonSearch => 'Search';

  @override
  String get commonLogOut => 'LOG OUT';

  @override
  String get commonMessage => 'Message';

  @override
  String get commonLogin => 'Login';

  @override
  String get commonForgetPassword => 'Forget password';

  @override
  String get commonProfile => 'Profile';

  @override
  String get commonOk => 'Ok';

  @override
  String get commonYes => 'Yes';

  @override
  String get commonAll => 'All';

  @override
  String get commonMore => 'More';

  @override
  String get commonSend => 'Send';

  @override
  String get commonUpdate => 'Update';

  @override
  String get commonName => 'Name';

  @override
  String get commonUsername => 'Username';

  @override
  String get commonEmail => 'E-mail Address';

  @override
  String get commonOr => 'Or';

  @override
  String get commonFirstName => 'firstName';

  @override
  String get commonLastName => 'lastName';

  @override
  String get commonPassword => 'Password';

  @override
  String get commonPasswordConfirmation => 'Confirm password';

  @override
  String get commonCity => 'City';

  @override
  String get commonCountry => 'Country';

  @override
  String get commonAddress => 'Address';

  @override
  String get commonPhone => 'Phone';

  @override
  String get commonPhoneNumber => 'Phone Number';

  @override
  String get commonMobile => 'Mobile';

  @override
  String get commonAge => 'Age';

  @override
  String get commonSex => 'Sex';

  @override
  String get commonGender => 'Gender';

  @override
  String get commonContent => 'Content';

  @override
  String get commonDescription => 'Description';

  @override
  String get commonExcerpt => 'Excerpt';

  @override
  String get commonAvailable => 'Available';

  @override
  String get commonSize => 'Size';

  @override
  String get commonPrice => 'Price';

  @override
  String get commonDesc => 'Desc';

  @override
  String get commonTitle => 'Title';

  @override
  String get commonRegister => 'Register';

  @override
  String get commonSeeAll => 'See all';

  @override
  String get commonServices => 'Services';

  @override
  String get commonSubmit => 'Submit';

  @override
  String get commonQ => 'Search';

  @override
  String get dtDate => 'Date';

  @override
  String get dtTime => 'Time';

  @override
  String get dtYear => 'Year';

  @override
  String get dtMonth => 'Month';

  @override
  String get dtDay => 'Day';

  @override
  String get dtHour => 'Hour';

  @override
  String get dtMinute => 'Minute';

  @override
  String get dtSecond => 'Second';

  @override
  String get dtSunday => 'Sunday';

  @override
  String get dtMonday => 'Monday';

  @override
  String get dtTuesday => 'Tuesday';

  @override
  String get dtWednesday => 'Wednesday';

  @override
  String get dtThursday => 'Thursday';

  @override
  String get dtFriday => 'Friday';

  @override
  String get dtSaturday => 'Saturday';
}
