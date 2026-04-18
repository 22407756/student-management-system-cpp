import tkinter as tk
import random

app = tk.Tk()
app.title("Puzzle Game 🧩")
app.geometry("300x350")

numbers = list(range(1, 9)) + [""]
random.shuffle(numbers)

buttons = []

def swap(i):
    empty_index = numbers.index("")
    
    # Check if move is allowed (up, down, left, right)
    if i in [empty_index - 1, empty_index + 1, empty_index - 3, empty_index + 3]:
        # prevent wrap-around rows
        if i % 3 == 2 and empty_index % 3 == 0:
            return
        if i % 3 == 0 and empty_index % 3 == 2:
            return

        numbers[empty_index], numbers[i] = numbers[i], numbers[empty_index]
        update_buttons()

def update_buttons():
    for i in range(9):
        buttons[i]["text"] = numbers[i]

def check_win():
    if numbers == list(range(1, 9)) + [""]:
        win_label.config(text="You Win! 🎉")

# Create buttons
for i in range(9):
    btn = tk.Button(app, text=numbers[i], font=("Arial", 18),
                    width=4, height=2,
                    command=lambda i=i: swap(i))
    btn.grid(row=i//3, column=i%3)
    buttons.append(btn)

# Win message
win_label = tk.Label(app, text="", font=("Arial", 14))
win_label.grid(row=4, column=0, columnspan=3)

# Update + check loop
def game_loop():
    update_buttons()
    check_win()
    app.after(500, game_loop)

game_loop()

app.mainloop()