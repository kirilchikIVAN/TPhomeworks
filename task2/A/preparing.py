new_file = open("index.h", "w+")

new_file.write(
'''int sum(int a, int b) { 
    return a + b; 
}'''
)

new_file.close()
