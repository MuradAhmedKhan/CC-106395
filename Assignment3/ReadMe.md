
### MEMBERS ###
StdID | Name
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--Group Leader-->
62914 | Afifa Jamil


#### Given:  Alphabet = {'a', 'b', '0', '1', '.', '_', '@'}

#### REGULAR EXPRESSION FOR THAT TYPE OF STRING IS: (a+b)(a+b+0+1+.+_)* @ (a+b+0+1+.)*

#### NFA ScreenShot FOR R.E ####

![NFA Class Activity](https://user-images.githubusercontent.com/54790523/107609242-4b29da80-6c36-11eb-9149-26cd0eb04ef0.jpg)

### NFA To DFA Table ###

| NFA States                    | DFA States | a                            | b                            | 0                            | 1                            | _                            |  "."                         | @                         |
|------------------------------|-----------|------------------------------|------------------------------|------------------------------|------------------------------|------------------------------|------------------------------|---------------------------|
| {1,2,3}                      | A         | {5,6,7,8,9,10,11,12,13,21}   | {4,6,7,8,9,10,11,12,13,21}   | -                            | -                            | -                            | -                            | -                         |
| {5,6,7,8,9,10,11,12,13,21}   | B         | {14,20,21,7,8,9,10,11,12,13} | {15,20,21,7,8,9,10,11,12,13} | {16,20,21,7,8,9,10,11,12,13} | {17,20,21,7,8,9,10,11,12,13} | {18,20,21,7,8,9,10,11,12,13} | {19,20,21,7,8,9,10,11,12,13} | {22,23,24,25,26,27,28,35} |
| {4,6,7,8,9,10,11,12,13,21}   | C         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {14,20,21,7,8,9,10,11,12,13} | D         | D                            | E                            | F                            | G                            | H                            | I                            | j                         |
| {15,20,21,7,8,9,10,11,12,13} | E         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {16,20,21,7,8,9,10,11,12,13} | F         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {17,20,21,7,8,9,10,11,12,13} | G         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {18,20,21,7,8,9,10,11,12,13} | H         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {19,20,21,7,8,9,10,11,12,13} | I         | D                            | E                            | F                            | G                            | H                            | I                            | J                         |
| {22,23,24,25,26,27,28,35}    | J         | 29,34,35,23,24,25,26,27,28   | 30,34,35,23,24,25,26,27,28   | 31,34,35,23,24,25,26,27,28   | 32,34,35,23,24,25,26,27,28   | -                            | 33,34,35,23,24,25,26,27,28   | -                         |
| 29,34,35,23,24,25,26,27,28   | K         | K                            | L                            | M                            | N                            | -                            | O                            | -                         |
| 30,34,35,23,24,25,26,27,28   | L         | K                            | L                            | M                            | N                            | -                            | O                            | -                         |
| 31,34,35,23,24,25,26,27,28   | M         | K                            | L                            | M                            | N                            | -                            | O                            | -                         |
| 32,34,35,23,24,25,26,27,28   | N         | K                            | L                            | M                            | N                            | -                            | O                            | -                         |
| 33,34,35,23,24,25,26,27,28   | O         | K                            | L                            | M                            | N                            | -                            | O                            | -                         |


### Demo Video Of Executing Code ###

https://user-images.githubusercontent.com/54790523/107641125-0719f280-6c95-11eb-9fca-8fd495636804.mp4


### CODE OF THE PROGRAM ###

bool check = false;

string input_text = textBox1.Text;

if (input_text[0] == 'a' || input_text[0]== 'b' )

{

for (int i = 1; i < input_text.Length; i++)

{

if (input_text[i] != '@')

{

if ( input_text[i] == 'a' || input_text[i] == 'b' || input_text[i] == '0' || input_text[i] == '1' || input_text[i] == '.' || input_text[i] == '_'  )

{

check = true;

}

else

{

check = false;

break;

}

}

else

{

for (int j = i+1; j < input_text.Length; j++)

{

if (input_text[j] == 'a' || input_text[j] == 'b' || input_text[j] == '0' || input_text[j] == '1' || input_text[j] == '.' || input_text[j].ToString() == "")

{

check = true;

}

else

{

check = false;

break;

}

}

}

}

//MessageBox.Show("This is Valid String");

}

else

{

check = false;

}

if (check)

{

MessageBox.Show("This is Valid String");

}

else

{

MessageBox.Show("This is Invalid String");

}
