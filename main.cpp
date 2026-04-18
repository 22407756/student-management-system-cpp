#include <iostream>
#include <cctype>
#include <limits>
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
int totalStudents = 0;

// ================= UNIFIED ERROR =================
void showError(string msg)
{
    cout << "❌ ERROR: " << msg << "\n";
    cout << "Please try again...\n";
}

// ================= VALIDATION =================
bool isValidName(string s)
{
    if (s.length() == 0) return false;

    for (char c : s)
        if (!isalpha(c) && c != ' ')
            return false;

    return true;
}

bool isValidNumber(string s)
{
    if (s.length() == 0) return false;

    for (char c : s)
        if (!isdigit(c))
            return false;

    return true;
}

// ================= VALID GRADE =================
float getValidGrade(string text)
{
    float grade;

    while (true)
    {
        cout << text;
        cin >> grade;

        if (cin.fail())
        {
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            showError("Invalid number input");
            continue;
        }

        if (grade >= 0 && grade <= 100)
            return grade;

        showError("Grade must be between 0 and 100");
    }
}

// ================= LOGIN =================
void login()
{
    string username, password;

    cout << "===== LOGIN SYSTEM =====\n";

    cout << "Username: ";
    cin >> username;

    if (username != "SARA")
    {
        showError("Wrong username");
        exit(0);
    }

    cout << "Password: ";
    cin >> password;

    if (password != "2006")
    {
        showError("Wrong password");
        exit(0);
    }

    cout << "Login successful!\n";
}

// ================= ADD STUDENT =================
void addStudent()
{
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    cout << "\nStudent " << countStudents + 1 << endl;

    // NAME
    do {
        cout << "Full name: ";
        getline(cin, students[countStudents].name);

        if (!isValidName(students[countStudents].name))
            showError("Only letters allowed in name");

    } while (!isValidName(students[countStudents].name));

    // NICKNAME
    do {
        cout << "Nickname: ";
        getline(cin, students[countStudents].nickname);

        if (!isValidName(students[countStudents].nickname))
            showError("Only letters allowed in nickname");

    } while (!isValidName(students[countStudents].nickname));

    // ID
    string id;
    do {
        cout << "Student ID: ";
        cin >> id;

        if (!isValidNumber(id))
            showError("Only numbers allowed in ID");

    } while (!isValidNumber(id));

    students[countStudents].studentNumber = stoi(id);

    // GRADES
    students[countStudents].grade1 = getValidGrade("Grade 1: ");
    students[countStudents].grade2 = getValidGrade("Grade 2: ");
    students[countStudents].grade3 = getValidGrade("Grade 3: ");

    // AVERAGE
    students[countStudents].average =
        (students[countStudents].grade1 +
         students[countStudents].grade2 +
         students[countStudents].grade3) / 3;

    // LETTER GRADE
    if (students[countStudents].average >= 90)
        students[countStudents].letterGrade = 'A';
    else if (students[countStudents].average >= 80)
        students[countStudents].letterGrade = 'B';
    else if (students[countStudents].average >= 70)
        students[countStudents].letterGrade = 'C';
    else if (students[countStudents].average >= 60)
        students[countStudents].letterGrade = 'D';
    else
        students[countStudents].letterGrade = 'F';

    countStudents++;
}

// ================= SHOW =================
void showStudents()
{
    if (countStudents == 0)
    {
        cout << "No students yet!\n";
        return;
    }

    cout << "\n===== STUDENT LIST =====\n";

    for (int i = 0; i < countStudents; i++)
    {
        cout << "\nName: " << students[i].name;
        cout << "\nID: " << students[i].studentNumber;
        cout << "\nAverage: " << students[i].average;
        cout << "\nGrade: " << students[i].letterGrade << endl;
    }
}

// ================= REMOVE =================
void removeStudent()
{
    int id;
    cout << "Enter ID to remove: ";
    cin >> id;

    int index = -1;

    for (int i = 0; i < countStudents; i++)
    {
        if (students[i].studentNumber == id)
        {
            index = i;
            break;
        }
    }

    if (index == -1)
    {
        showError("Student not found");
        return;
    }

    for (int i = index; i < countStudents - 1; i++)
        students[i] = students[i + 1];

    countStudents--;

    cout << "✅ Student removed successfully!\n";
}

// ================= TOP =================
void topStudent()
{
    if (countStudents == 0)
    {
        showError("No students available");
        return;
    }

    int top = 0;

    for (int i = 1; i < countStudents; i++)
        if (students[i].average > students[top].average)
            top = i;

    cout << "\nTop Student: " << students[top].name
         << " (" << students[top].average << ")\n";
}

// ================= SEARCH =================
void searchStudent()
{
    int id;
    cout << "Enter ID: ";
    cin >> id;

    for (int i = 0; i < countStudents; i++)
    {
        if (students[i].studentNumber == id)
        {
            cout << "FOUND: " << students[i].name << endl;
            return;
        }
    }

    showError("Student not found");
}

// ================= MAIN =================
int main()
{
    login();

    cout << "\nEnter number of students: ";
    cin >> totalStudents;

    for (int i = 0; i < totalStudents; i++)
        addStudent();

    int choice;

    do {
        cout << "\n===== MENU =====\n";
        cout << "1. Show Students\n";
        cout << "2. Top Student\n";
        cout << "3. Search Student\n";
        cout << "4. Remove Student\n";
        cout << "5. Exit\n";
        cout << "Choose: ";

        cin >> choice;

        switch (choice)
        {
            case 1: showStudents(); break;
            case 2: topStudent(); break;
            case 3: searchStudent(); break;
            case 4: removeStudent(); break;
            case 5: cout << "Bye!\n"; break;
            default: showError("Invalid menu choice");
        }

    } while (choice != 5);

    return 0;
}