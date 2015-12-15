/*
 * Copyright (c) 2015, Adel Noureddine.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BSD 3-Clause License
 * which accompanies this distribution, and is available at
 * https://opensource.org/licenses/BSD-3-Clause
 *
 * Author : Adel Noureddine
 */

#include <iostream>
#include <vector>
#include <fstream>

double unitodocpp_version = 0.1;

void print_tasks();

void process_user_task(int argc, const char **pString);

using namespace std;

// Default filename todo.txt
string todo_file;
string default_todo_filename = "/todo.txt";

int main(int argc, const char **argv) {
	char cwd[1024];
	if (getcwd(cwd, sizeof(cwd)) != NULL) {
		todo_file = cwd;
		todo_file += default_todo_filename;

		if (argc == 1)
			print_tasks();
		else
			process_user_task(argc, argv);
	}
}

vector<string> read_file(string filename) {
	string line;
	vector<string>  file_content;
	ifstream in(filename);

	if (in.is_open()) {
		while (getline(in, line)) {
			file_content.push_back(line);
		}
		in.close();
	}

	return file_content;
}

void print_tasks() {
	vector<string> user_input_data = read_file(todo_file);
	for (vector<string>::iterator it = user_input_data.begin(); it != user_input_data.end(); it++) {
		switch ((*it)[0]) {
			case '-':
				cout << "\e[;2m" << *it << "\e[;0m" << endl;
				break;
			case '+':
				cout << *it << endl;
				break;
			default:;
		}
	}
}

void add_task(string task) {
	try {
		ofstream out;
		out.open(todo_file, ios::out | ios::app);
		out << task << "\n";
		out.close();
		cout << "Task added to " << todo_file << endl;
	} catch (int e) {
		throw(errno);
	}
}

void process_user_task(int argc, const char **user_input) {
	if ((*user_input[1] == '+') || (*user_input[1] == '-')) {
		if (argc > 2) {
			string task;
			for (int i = 1; i < argc; i++) {
				task.append(user_input[i]).append(" ");
			}
			add_task(task);
		} else {
			cout << "Missing task message" << endl;
			return;
		}
	} else {
		cout << "Invalid todo task format" << endl;
		return;
	}
}