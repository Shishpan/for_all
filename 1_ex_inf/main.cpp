#include <iostream>
#include <unistd.h>
#include <string.h>
#include <malloc.h>
#include <vector>

using namespace std;

int main(int argc, char * argv[], char * envp[])
{
	FILE * fp;
	fp = fopen(argv[1], "r");
	char command[256][256];
	char tmpstr[256] = "";
	vector <int> time;
	vector <string> path;
	char** key;
	int counter = 0;


	while (fgets(tmpstr, 256, fp))
	{
		key = (char **)realloc(key, (counter + 1)*sizeof(char[256]));
		string tmp(tmpstr);

		int position = tmp.find(" ",0);
		string tok = tmp.substr(0,position);
		time.push_back(atoi(tok.c_str()));
		tmp.erase(0,position + 1);

		position = tmp.find(" ",0);
		if (position < 0)
				position = tmp.length() - 1;
		tok = tmp.substr(0,position);
		path.push_back(tok.c_str());
		tmp.erase(0,position + 1);

		position = tmp.find(" ", 0);
		if (position < 0)
				position = tmp.length() - 1;
		if (position < 0)
		{
//			key.resize(counter + 1);
			key[counter] = NULL;
		}
		else
			while (position > 0)
			{
				tok = tmp.substr(0, position);
				if (key.size() < counter + 1)
					key.resize(counter + 1);
				key[counter].push_back((char*)tok.c_str());
				tmp.erase(0, position + 1);
				position = tmp.find(" ", 0);
				if (position < 0)
					position = tmp.length() - 1;
			}
		counter++;
	}
/*
	for (vector <int> :: iterator i = time.begin(); i != time.end(); i++)
		cout << *i << endl;

	cout << endl;
	for (vector <string> :: iterator i = path.begin(); i != path.end(); i++)
		cout << *i << endl;
	cout << endl;

	for (vector <vector <const char*>> :: iterator i = key.begin(); i != key.end(); i++)
	{
		if (*i != (vector <const char*>)NULL)
		{	for (vector <const char*> :: iterator j = i->begin(); j != i->end(); j++)
				cout << *j << " ";
		}
		else
			cout << "Keys not found";
		cout << endl;
	}
	*/
	for (int i = 0; i < counter; i++)
	{
		if (fork() > 0)
		{
			sleep(time[i]);
			execv(path[i].c_str(), &key[i][0]);
		}
	}
	while(1)
	{
	}

    return 0;
}
