import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'error_asset.static.dart';
import 'error.model.dart';
import 'exceptions.dart';

ErrorModel mapExceptionToMessage(Object exception) {
  switch (exception.runtimeType) {
    case ServerException:
      return ErrorModel(
        message: 'Error:ServerException'.tr,
        image: ErrorAssets.serverExceptionImage,
        icon: ErrorAssets.serverExceptionIcon,
        exception: ServerException(),
      );
    case ConflictException:
      return ErrorModel(
        message: (exception as ConflictException).message ?? '',
        image: ErrorAssets.connectionExceptionImage,
        icon: ErrorAssets.connectionExceptionIcon,
        exception: ConnectionException(),
      );
    case CacheException:
      return ErrorModel(
        message: 'Error:CacheException'.tr,
        image: ErrorAssets.cacheExceptionImage,
        icon: ErrorAssets.cacheExceptionIcon,
        exception: CacheException(),
      );
    case NoContentException:
      return ErrorModel(
        message: 'Error:NoContentException'.tr,
        image: ErrorAssets.noContentExceptionImage,
        icon: ErrorAssets.noContentExceptionIcon,
        exception: NoContentException(),
      );
    case ConnectionException:
      return ErrorModel(
        message: 'Error:ConnectionException'.tr,
        image: ErrorAssets.connectionExceptionImage,
        icon: ErrorAssets.connectionExceptionIcon,
        exception: ConnectionException(),
      );
    case NotFoundException:
      return ErrorModel(
        message: 'Error:NotFoundException'.tr,
        image: ErrorAssets.notFoundExceptionImage,
        icon: ErrorAssets.notFoundExceptionIcon,
        exception: NotFoundException(),
      );
    case InvalidException:
      return ErrorModel(
        message: 'Error:InvalidException'.tr,
        image: ErrorAssets.invalidExceptionImage,
        icon: ErrorAssets.invalidExceptionIcon,
        exception: InvalidException(),
      );
    case ExpireException:
      return ErrorModel(
        message: 'Error:ExpireException'.tr,
        image: ErrorAssets.expireExceptionImage,
        icon: ErrorAssets.expireExceptionIcon,
        exception: ExpireException(),
      );
    case UserExistsException:
      return ErrorModel(
        message: 'Error:UserExistsException'.tr,
        image: ErrorAssets.expireExceptionImage,
        icon: ErrorAssets.expireExceptionIcon,
        exception: UserExistsException(),
      );
    case PasswordException:
      return ErrorModel(
        message: 'Error:PasswordException'.tr,
        image: ErrorAssets.passwordExceptionImage,
        icon: ErrorAssets.passwordExceptionIcon,
        exception: PasswordException(),
      );
    case UnauthenticatedException:
      return ErrorModel(
        message: 'Error:UnauthenticatedException'.tr,
        image: ErrorAssets.unauthenticatedExceptionImage,
        icon: ErrorAssets.unauthenticatedExceptionIcon,
        exception: UnauthenticatedException(),
      );
    case BlockedException:
      return ErrorModel(
        message: 'Error:BlockedException'.tr,
        image: ErrorAssets.blockedExceptionImage,
        icon: ErrorAssets.blockedExceptionIcon,
        exception: BlockedException(),
      );
    case EmptyException:
      return ErrorModel(
        message: 'Error:EmptyException'.tr,
        image: ErrorAssets.emptyExceptionImage,
        icon: ErrorAssets.emptyExceptionIcon,
        exception: EmptyException(),
      );
    case CustomException:
      return ErrorModel(
        message: (exception as CustomException).message,
        image: ErrorAssets.emptyExceptionImage,
        icon: ErrorAssets.emptyExceptionIcon,
        exception: CustomException(message: (exception.message)),
      );
    default:
      return ErrorModel(
        message: 'Error:UnexpectedException'.tr,
        image: ErrorAssets.unexpectedErrorImage,
        icon: ErrorAssets.unexpectedErrorIcon,
        exception: UnexpectedException(),
      );
  }
}
