#include <iostream>
#include <stdio.h>
#include <locale.h>
using namespace std;
int main()
{
	setlocale(LC_ALL, "Russian");

	cout << "Hello, I'm a test     ���� �" << endl;

	system("pause");
	return 0;
}