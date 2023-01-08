# Winforms
A simple GUI library for Odin programming language.

It is built upon win32 API functions. So it needs Windows 64 bit to run.
Currently, it's a work in progress project.

## Control List
Button, Calendar, CheckBox, ComboBox, DateTimePicker, GroupBox, Label, ListBox, TextBox
NumberPicker (Updown Control), ProgressBar, RadioButton, TrackBar, TreeView

## Screenshot

![image](https://user-images.githubusercontent.com/8840907/152698667-dafafbe5-a241-42a3-8696-9e50e54a3a58.png)

![image](https://user-images.githubusercontent.com/8840907/154816848-c0114182-1c33-4d72-b3b9-66cb037f99d3.png)


## Improvements
NumberPicker improved.

![image](https://user-images.githubusercontent.com/8840907/211117713-ef6eef41-f100-4baf-971d-82cffeee2d19.png)

See the difference in old & new NumberPickers. Old one had white gaps even after painted with back color. And it's borders are looking weird. But new NumberPicker had a perfect back color drawing with even more accurate borer. 

TrackBar improved

![image](https://user-images.githubusercontent.com/8840907/211165815-8149286b-99c1-407d-8382-e6bfefed05fe.png)

TextBox improved.

![image](https://user-images.githubusercontent.com/8840907/211176545-f8cc8e0b-e420-4067-b9c2-452e851e4ea4.png)

See the changes ?.
When I wrote this library, I don't have access to Windows 11. Six months later, I got my new laptop with Win 11. After a few days, I just ran some sample code and noticed that text box is looking weird. And after spending a few hours, I found the reason. I handled the WM_CTLCOLREDIT message wrongly. But at that time, I don;t have enough time to alter the code. So I postponed the task.

ComboBox improved:

Old combo box module was a spaghetti code. Later I did the same ui library project in D & Python. Then I have realized that this could have been done without any complexity. So now, I completely re-Arranged the module and made it as simple as possible. I think I removed 100+ lines of code.


 


## Example --

```rust
import ui "winforms"
frm : ui.Form
main :: proc() {
    using ui
    frm = new_form("My New Odin Form") 
    frm.mouse_click = form_click
    create_form(&frm)

    // You can create other controls here.

    start_form() // From now, you can see the form is up & running.
}

form_click :: proc(sender : ^ui.Control, ea : ^ui.EventArgs) {
    ui.msg_box("Hi, I am from winforms !") 
}
```

## How to use --
1. Download or clone repo.
2. Copy the folder **winforms** and paste it in project folder.
3. Import **winforms** in your main file. Done !!! 👍

## Note
To enable visual styles for your application, you need to use a manifest file.
Here you can see a **app.exe.manifest** file in this repo. You can copy paste it in your project folder. Then rename it. The name must be your exe file's name. Here in my case, my exe file is **app.exe**. So my manifest file's name is **app.exe.manifest**. However, you can use a reource file and put an entry for this manifest file in it. Then you can compile the app with the manifest data embedded into your exe. 
