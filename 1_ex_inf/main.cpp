#include <iostream>
#include <unistd.h>
#include <string.h>
#include <vector>
//#include <stdio.h>

using namespace std;

int main(int argc, char * argv[], char * envp[])
{
	FILE * fp;
	fp = fopen(argv[1], "r");
	char command[256][256];
	char tmpstr[256] = "";
	vector <int> time;
	vector <string> path;
	vector <vector <string>> key;
	int counter = 0;
	char* control;
	while (fgets(tmpstr, 256, fp))
	{
		string tmp(tmpstr);

		int position = tmp.find(" ",0);
		string tok = tmp.substr(0,position);
		time.push_back(atoi(tok.c_str()));
		tmp.erase(0,position + 1);

		position = tmp.find(" ",0);
		tok = tmp.substr(0,position);
		path.push_back(tok.c_str());
		tmp.erase(0,position + 1);

		position = tmp.find(" ", 0);
		if (position < 0)
				position = tmp.length() - 1;
		while (position > 0)
		{
			tok = tmp.substr(0, position);
			if (key.size() < counter + 1)
				key.resize(counter + 1);
			key[counter].push_back(tok);
			tmp.erase(0, position + 1);
			position = tmp.find(" ", 0);
			if (position < 0)
				position = tmp.length() - 1;
		}
		counter++;
	}

	for (vector <int> :: iterator i = time.begin(); i != time.end(); i++)
		cout << *i << endl;

	cout << endl;
	for (vector <string> :: iterator i = path.begin(); i != path.end(); i++)
		cout << *i << endl;
	cout << endl;

	for (vector <vector <string>> :: iterator i = key.begin(); i != key.end(); i++)
	{	for (vector <string> :: iterator j = i->begin(); j != i->end(); j++)
			cout << *j << " ";
		cout << endl;
	}

    return 0;
}
