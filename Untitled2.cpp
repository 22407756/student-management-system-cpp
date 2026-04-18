#include <iostream>
#include <conio.h>
#include <cctype>
using namespace std;

struct Student
{
    string name;
    string nickname;
    int studentNumber;
    float grade1, grade2, grade3;
    float average;
    char letterGrade;
};

Student students[100];
int countStudents = 0;

// ================= VALIDATION =================
bool isValidName(string s)
{
    if(s.length() == 0) return false;

    for(char c : s)
        if(!isalpha(c) && c != ' ')
            return false;

    return true;
}

bool isValidNumber(string s)
{
    if(s.length() == 0) return false;

    for(char c : s)
        if(!isdigit(c))
            return false;

    return true;
}

// ================= LOGIN =================
void login()
{
    string username;
    string correctUsername = "admin";

    string password = "";
    string correctPassword = "1234";
    char ch;

    cout << "===== LOGIN SYSTEM =====\n";

    cout << "Username: ";
    cin >> username;

    if(username != correctUsername)
    {
        cout << "Wrong username!\n";
        exit(0);
    }

    cout << "Password: ";
    password = "";

    while(true)
    {
        ch = getch();

        if(ch == 13) break;        // ENTER
        else if(ch == 8)           // BACKSPACE
        {
            if(password.length() > 0)
            {
                password.pop_back();
                cout << "\b \b";
            }
        }
        else
        {
            password += ch;
            cout << "*";
        }
    }

    cout << endl;

    if(password != correctPassword)
    {
        cout << "Wrong password!\n";
        exit(0);
    }

    cout << "Login successful!\n";
}

// ================= ADD STUDENT =================
void addStudent()
{
    cin.ignore(); // FIX INPUT BUG

    cout << "\nStudent " << countStudents + 1 << endl;

    // NAME
    do {
        cout << "Full name (letters only): ";
        getline(cin, students[countStudents].name);

        if(!isValidName(students[countStudents].name))
            cout << "? ERROR: Letters only!\n";

    } while(!isValidName(students[countStudents].name));

    // NICKNAME
    do {
        cout << "Nickname (letters only): ";
        getline(cin, students[countStudents].nickname);

        if(!isValidName(students[countStudents].nickname))
            cout << "? ERROR: Letters only!\n";

    } while(!isValidName(students[countStudents].nickname));

    // ID
    string id;
    do {
        cout << "Student ID (numbers only): ";
        cin >> id;

        if(!isValidNumber(id))
            cout << "? ERROR: Numbers only!\n";

    } while(!isValidNumber(id));

    students[countStudents].studentNumber = stoi(id);

    cout << "Grade 1: ";
    cin >> students[countStudents].grade1;

    cout << "Grade 2: ";
    cin >> students[countStudents].grade2;

    cout << "Grade 3: ";
    cin >> students[countStudents].grade3;

    students[countStudents].average =
        (students[countStudents].grade1 +
         students[countStudents].grade2 +
         students[countStudents].grade3) / 3;

    if(students[countStudents].average >= 90)
        students[countStudents].letterGrade = 'A';
    else if(students[countStudents].average >= 80)
        students[countStudents].letterGrade = 'B';
    else if(students[countStudents].average >= 70)
        students[countStudents].letterGrade = 'C';
    else if(students[countStudents].average >= 60)
        students[countStudents].letterGrade = 'D';
    else
        students[countStudents].letterGrade = 'F';

    countStudents++;
}

// ================= SHOW =================
void showStudents()
{
    if(countStudents == 0)
    {
        cout << "No students yet!\n";
        return;
    }

    for(int i = 0; i < countStudents - 1; i++)
    {
        for(int j = i + 1; j < countStudents; j++)
        {
            if(students[j].average > students[i].average)
            {
                Student temp = students[i];
                students[i] = students[j];
                students[j] = temp;
            }
        }
    }

    cout << "\n===== STUDENT RANKING =====\n";

    for(int i = 0; i < countStudents; i++)
    {
        cout << "\nRank " << i + 1 << endl;
        cout << "Name: " << students[i].name << endl;
        cout << "Nickname: " << students[i].nickname << endl;
        cout << "ID: " << students[i].studentNumber << endl;
        cout << "Average: " << students[i].average << endl;
        cout << "Grade: " << students[i].letterGrade << endl;
    }
}

// ================= TOP =================
void topStudent()
{
    if(countStudents == 0)
    {
        cout << "No students yet!\n";
        return;
    }

    int top = 0;

    for(int i = 1; i < countStudents; i++)
        if(students[i].average > students[top].average)
            top = i;

    cout << "\n===== TOP STUDENT =====\n";
    cout << students[top].name << " (" << students[top].average << ")\n";
}

// ================= SEARCH =================
void searchStudent()
{
    int id;
    cout << "Enter ID: ";
    cin >> id;

    for(int i = 0; i < countStudents; i++)
    {
        if(students[i].studentNumber == id)
        {
            cout << "FOUND: " << students[i].name << endl;
            return;
        }
    }

    cout << "Not found!\n";
}

// ================= MAIN =================
int main()
{
    login(); // ?? IMPORTANT: LOGIN FIRST

    int choice;

    do {
        cout << "\n===== MENU =====\n";
        cout << "1. Add Student\n";
        cout << "2. Show Students\n";
        cout << "3. Top Student\n";
        cout << "4. Search Student\n";
        cout << "5. Exit\n";
        cout << "Choose: ";

        cin >> choice;

        switch(choice)
        {
            case 1: addStudent(); break;
            case 2: showStudents(); break;
            case 3: topStudent(); break;
            case 4: searchStudent(); break;
            case 5: cout << "Bye!\n"; break;
            default: cout << "Invalid!\n";
        }

    } while(choice != 5);

    return 0;
}
