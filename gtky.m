disp("Welcome to Get to Know You!")
disp("1. Please answer questions in only English, French, or Spanish")
disp("2. Please answer the question as straightforwardly as possible")
disp("3. Please adhere to the grammar rules of the language") 
disp("4. Please answer in full sentences")
%answer = input(prompt, s)
%asking question = prompt('insert q here')

%create a function so that the code can run "if-else" statements 
function getting_to_know_you = detect_language(answer)
%Listed Variables; Accent marks + Grammar Unique to specific language(s)
egrave = "è";
eaigu = "é";
agrave = "à";
aaigu = "á";  
acircumflex = "â"; 
uaigu = "ú";
oaigu = "ó"; 
ntilde = "ñ";
accented_i = 'í';
inverted_exclam = '!';
inverted_question = '¿';
Spanish_letter_accents= [eaigu, aaigu, uaigu, oaigu, ntilde, accented_i]
 
%Q1
Q1= prompt('What is your name?');
disp(Q1) %NEED HELP FIGURING OUT HOW TO DISPLAY question to the user??? 
answer= input(prompt,'s');

%Q1 Spanish detection 
spanish_phrases_Q1= ['llamo', 'soy', 'estoy']; 
answer = false; 
for q1= 1:length(spanish_phrases_Q1)
    %find spanish phrases specific for q1 in the answer
    if ~isempty(strfind(lower(answer), phrases{q1}))
        answer = true;
        break
        if answer==true
            detect_language='Spanish';
        end 
    end 
end 


%Q1 English detection 

%Q1 no specified language detection 


%Q2







%Spanish code detection for accent marks; Will be incorporated on a
%question by questions basis. 
count=0; 
for i= 1:length(answer)
    %check if answer is an accent mark
   
if exist("ntilde")
    detect_language= 'Spanish' 
elseif ismember(answer(i),Spanish_letter_accents)
    count=count+1; 
    %incorporate counting of accent marks. If # of accent marks is > the
    %number of words in the answer str, cannot be Spanish. 
end 
end
end 

