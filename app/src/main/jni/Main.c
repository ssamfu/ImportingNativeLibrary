#include "com_samf_testnativelib_MainActivity.h"

// Note the name of the library has some prefix and postfix
// one is from another Android Studio project built library
// one is from QNX SDP built library (link use flag: -Wl,--hash-style=sysv)
// both have signature: int SumOfTwo(int, int)

//int Java_com_samf_testlib_MainActivity_SumOfTwo(int a, int b);
int _Z8SumOfTwoii(int a, int b);

JNIEXPORT jint JNICALL Java_com_samf_testnativelib_MainActivity_getSum
        (JNIEnv *env, jobject obj, jint a, jint b)
{
    //return Java_com_samf_testlib_MainActivity_SumOfTwo(a, b);
    return _Z8SumOfTwoii(a, b);
}
