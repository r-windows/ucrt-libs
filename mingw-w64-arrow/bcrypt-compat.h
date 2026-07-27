/* BCrypt algorithm pseudo-handle (available since Windows 10 1703), missing
 * from mingw-w64 headers before v11. Needed by the bundled google-cloud-cpp
 * (google/cloud/internal/win32/sign_using_sha256.cc). This file is
 * force-included in every TU via CXXFLAGS, so it deliberately includes
 * nothing itself; BCRYPT_ALG_HANDLE is resolved at the point of use. */
#ifndef BCRYPT_RSA_ALG_HANDLE
#define BCRYPT_RSA_ALG_HANDLE ((BCRYPT_ALG_HANDLE) 0x000000e1)
#endif
