//
// Created by akhtyamovpavel on 5/1/20.
//


#include "TreeTestCase.h"
#include "Tree.h"
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


using namespace boost::filesystem;


TEST(Tree, Test1) {
    boost::filesystem::path temp = boost::filesystem::unique_path();
    ASSERT_EXCEPTION({GetTree(temp.native(),0);},
                     std::invalid_argument,
                     "Path not exist");
}

TEST(Tree, Test2) {
    path ph = temp_directory_path()/ unique_path();
    create_directories(ph);

    path file_path = ph/"file.txt";
    ofstream f(file_path);

    ASSERT_EXCEPTION({ GetTree(file_path.native(), false); },
                     std::invalid_argument,
                     "Path is not directory");
    remove_all(ph);
}

TEST(Tree, Test3) {
    path ph = temp_directory_path();
    const std::string ph_name = ph.native();
    ASSERT_EQ(path(ph_name).filename().string(), GetTree(ph_name, 1).name);
}

TEST(Tree, Test4) {
    path ph = temp_directory_path();
    const std::string ph_name = ph.native();
    ASSERT_EQ(path(ph_name).filename().string(), GetTree(ph_name, 0).name);
}


TEST(Operator, Test1) {
    path pt =  boost::filesystem::temp_directory_path();
    FileNode a = GetTree(pt.native(),0);
    ASSERT_EQ(true, a == a);
}


TEST(Filter, Test1) {
    path pt =  temp_directory_path();
    FileNode a = GetTree(pt.native(),0);
    FilterEmptyNodes(a,".");
    ASSERT_EQ(1,exists(pt.native()));

}

TEST(Filter, Test2) {
    path pt =  temp_directory_path();
    const std::string str = pt.native() +  "/john";
    create_directory(str);
    ::create_directory(str +  "/folder1");
    FileNode a = GetTree(str ,0);
    FilterEmptyNodes(a, str + "/.");
    ASSERT_EQ(0,exists(str + "/folder1"));

}
