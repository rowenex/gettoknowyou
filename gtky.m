disp("Welcome to Get to Know You!")
disp("1. Please answer questions in only English, French, or Spanish")
disp("2. Please answer the question as straightforwardly as possible")
disp("3. Please adhere to the grammar rules of the language") 
disp("4. Please answer in full sentences, such as 'My favorite song is...'")
%answer --> input(prompt, s)
%asking a question-->prompt('insert q here')

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
english_the = 'the';
english_I_space = " I ";
english_I_ns = "I ";
Spanish_letter_accents= [eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
English_indications = [english_the,english_I_space,english_I_ns];
 
%Q1
Q1= prompt('What is your name?');
fprintf(Q1) 
answer_1= input(prompt,'s');

%Q1 Spanish detection 
spanish_phrases_Q1= ['llamo', 'soy', 'estoy']; 
answer_1_spanish = false; 
for q1= 1:length(spanish_phrases_Q1)
    %find spanish phrases specific for q1 in the answer
    if ~isempty(strfind(lower(answer_1), spanish_phrases_Q1(q1))
        answer_1_spanish = true;
        break
        if answer_1_spanish==true
            detect_language='Spanish';
        end 
    end 
end 

%Q1 French Detection 

%Q1 English detection 
english_phrases_Q1 = ['My', 'name'];
answer = false;

%Q1 no specified language detection 

%Q1--> Q2 language changer for Q2
if detect_language= 'Spanish'
    Q2= prompt('¿Cuál es tu color favorito?');
elseif detect_language= 'French'
    Q2= 
elseif detect_language= 'English' | detect_language= 'Not specified'
    Q2= prompt('What''s your favorite color?');
end
fprint(Q2)
answer_2=input(prompt, 's'); 

%Q2 Spanish Detection (phrases+ accent markings)
spanish_phrases_Q2= ['mi', 'es', 'favorito', 'favorita']; 
answer_2_spanish = false; 
for q1= 1:length(spanish_phrases_Q2)
    %find spanish phrases specific for q1 in the answer
    if ~isempty(strfind(lower(answer_2), spanish_phrases_Q2(Q2))
        answer_2_spanish = true;
        break
    elseif exist("ntilde")
      answer_2_spanish= true; 
      break 
    elseif 
    for i= 1:length(answer)
            ismember(answer_2(i),Spanish_letter_accents)
      count=count+1; 
    end 
        if count<= %need a statement that makes sure that the accent number doesn't exceed the possible number accents for spanish words/phrases.
            answer_2_spanish=true;
            break 
        end 
    end
end 

if answer_2_spanish==true
    detect_language='Spanish';
end


%Q2--> Q3 language changer for Q3
if detect_language= 'Spanish'
    Q3= prompt('¿De dónde eres?');
elseif detect_language= 'French'
    Q3= 
elseif detect_language= 'English' | detect_language= 'Not specified'
    Q3= 
end
fprint(Q3)
answer_3=input(prompt, 's'); 






%Spanish code detection for accent marks; Will be incorporated on a
%question by questions basis. 
count=0; 
for i= 1:length(answer)
    %check if answer is an accent mark

    if exist("ntilde")
      detect_language= 'Spanish'; 
    elseif ismember(answer(i),Spanish_letter_accents)
      count=count+1; 
         %incorporate counting of accent marks. If # of accent marks is > the
         %number of words in the answer str, cannot be Spanish. 
    end 
end

end

