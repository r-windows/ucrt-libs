# ucrt-libs

C/C++ libraries (x64 and arm64) for building R packages on Windows. These are mostly copied (slightly adapted) from upstream [msys2](https://github.com/msys2/MINGW-packages), and rebuilt with gcc-12 and clang-16 to be compatible with Rtools43.

Note that these days rtools43 itself already includes a lot of libraries. When possible, using those is the easiest route to build your R packages on Windows. The current repo is used for libraries which are missing, broken, misconfigured, or outdated in Rtools43.

The CI builds the libraries for gcc-12, clang and arm64-clang. The static libraries are eventually used to create [bundles](https://github.com/r-windows/bundles) that can easily be downloaded by R packages.
