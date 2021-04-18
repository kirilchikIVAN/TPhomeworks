//
// Created by akhtyamovpavel on 5/1/20.
//

#include "LeapTestCase.h"

#include <Functions.h>

#define ASSERT_EXCEPTION( TRY_BLOCK, EXCEPTION_TYPE, MESSAGE ) \
try \
{ \
TRY_BLOCK \
FAIL() << "exception '" << MESSAGE << "' not thrown at all!"; \
} \
catch( const EXCEPTION_TYPE& e ) \
{ \
EXPECT_EQ( MESSAGE, (std::string)e.what() ) \
<< " exception message is incorrect. Expected the following " \
"message:\n\n" \
<< MESSAGE << "\n"; \
} \
catch( ... ) \
{ \
FAIL() << "exception '" << MESSAGE \
<< "' not thrown with expected type '" << #EXCEPTION_TYPE \
<< "'!"; \
}


TEST(LeapTest, Test1) {
    ASSERT_EXCEPTION({IsLeap(-1);}, std::invalid_argument, "Year must be greater than 0");
}
TEST(LeapTest, Test2) {
    ASSERT_EQ(false, IsLeap(3));
}

TEST(LeapTest, Test3) {
    ASSERT_EQ(false, IsLeap(100));
}

TEST(LeapTest, Test4) {
    ASSERT_EQ(true, IsLeap(400));
}

TEST(LeapTest, Test5) {
    ASSERT_EQ(true, IsLeap(4));
}


TEST(GMD, Test1) {
    ASSERT_EQ(29, GetMonthDays(4, 2));
}

TEST(GMD, Test2) {
    ASSERT_EQ(28, GetMonthDays(3, 2));
}

TEST(GMD, Test3) {
    ASSERT_EXCEPTION({GetMonthDays(4, -1);}, std::invalid_argument, "Month should be in range [1-12]");
}

TEST(GMD, Test4) {
    ASSERT_EQ(30, GetMonthDays(4, 4));
}

TEST(GMD, Test5) {
    ASSERT_EQ(31, GetMonthDays(4, 5));
}