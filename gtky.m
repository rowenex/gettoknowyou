function gtky 
%Listed Variables; Accent marks + Grammar Unique to specific language(s)
egrave = "è";
eaigu = "é";
ecircumflex = "ê";
agrave = "à";
aaigu = "á"; 
acircumflex = "â"; 
ugrave = "ù";
uaigu = "ú";
ucircumflex = "û";
cedilla = "ç"; 
oaigu = "ó"; 
ocircumflex = "ô"; 
ntilde = "ñ";
accented_i = 'í';
icircumflex = "î"; 
english_the = 'the';
english_I_space = " I ";
english_I_ns = "I ";
french_ui = "ui";
french_j = "j'";
french_m = "m'";
%Spanish_letter_accents= [eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
%English_indications = [english_the,english_I_space,english_I_ns];
%French_indicators = [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j];
all_accents= [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j,eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
detect_language = [];

%Questions 
Q1= 'What is your name?'; %begin in english no matter what

    q2e = 'What is your favorite color?';
    q2s= '¿Cuál es tu color favorito?';
    q2f= 'Quelle est votre couleur préférée?';

    q3e= 'Where are you from?';
    q3s= '¿De dónde eres?';
    q3f='D’où êtes-vous?';

    q4e= 'What is your favorite holiday?';
    q4s='¿Cual es tu día festivo favorito?';
    q4f='Quelle est votre fête préférée?';

    q5e= 'If you could have a superpower, what would it be?';
    q5s= 'Si tuvieras un superpoder, ¿cuál sería?';
    q5f='Si vous aviez un super pouvoir, quel serait-il?';

    q6e= 'What is your favorite animal?';
    q6s= '¿Cuál es tu animal favorito?';
    q6f='Quel est votre animal préféré';

    q7e= 'What is your favorite food?';
    q7s= '¿Cuál es tu comida favorita?';
    q7f='Quel est votre plat préféré?';
 
    q8e= 'Do you prefer movies or books?';
    q8s= '¿Prefieres películas o libros?';
    q8f='Préférez-vous les films ou les livres?';

    q9e= 'Do you prefer coffee or tea? What is your favorite coffee shop?';
    q9s= '¿Prefieres café o té? ¿Cuál es tu cafetería favorita?';
    q9f='Vous préférez le café ou le thé? Quel est ton café préféré?';

    q10e= 'What type of music are you into?';
    q10s= '¿Qué tipo de música te gusta?' ; 
    q10f='Quels types de musique aimez-vous?';
 

Q2=[];
Q3 =[];
Q4 =[];
Q5 =[];
Q6 =[];
Q7 =[];
Q8 =[];
Q9 =[];
Q10 =[];

prompt = ' ';

    spanish_phrases= [ntilde, "yo ", "llamo", "soy", "estoy", "favorito","favorita", "mi", " es ", "favorito", "favorita","gusta", "dia", "festivo", "superpoder", "comida","libros", "películas", "más", "prefiero", "voy", "genero","música", "sí", "té"];
    french_phrases = [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j, "préfé", "les", "mon", "suis", "je"];
    english_phrases_all = [english_the,english_I_space,english_I_ns, "My","favorite", "name"," want ", " is ", "from"," it " "superpower", "holiday", "food","prefer","books","movie","like","coffee","music ", "love"];
         total_count_Spanish=0;
         total_count_English= 0; 
         total_count_French=0; 
         total_count_unknown=0;

 
%the nested function that tests for the language
    function language_testing 
        detect_language = 4; %initiate detect_language to not be any specific language (make 3 work)
        
        %To account for a word such as préférer; counts accent marks to see
        %if they exceed one. If 1+ accent mark in a word (as indicated/noted) by 
        %the program then it has to be French!

       words_in_phrase= split(user_answer);
        num_of_accents= 0;
        for ff= 1:length(words_in_phrase)
            num_of_accents= count(words_in_phrase(ff), all_accents);
                if num_of_accents > 1
                    detect_language=1; 
                    break
                end
        end 

        if detect_language ~= 1
         for p= 1:length(spanish_phrases) %new problem arising with spanish detection! 
             if any(strfind(lower(user_answer), spanish_phrases(p))) %|| something about spanish words with one accent ... 
                 detect_language=0; 
             end 
         end 
        end

        if detect_language ~= 0
        for f = 1:length(french_phrases)
            if any(strfind(lower(user_answer), french_phrases(f)))
                detect_language = 1;
            end
        end
        end

        if (detect_language ~= 0) & (detect_language ~= 1)
        for e = 1:length(english_phrases_all)
            if any(strfind(lower(user_answer), english_phrases_all(e)))
                 detect_language = 2;
            end
        end
        end

        if (detect_language ~= 0) & (detect_language ~= 1) & (detect_language ~= 2)
            detect_language = 3;
        end
    end

function add_it_up
        if detect_language== 0 
           total_count_Spanish = total_count_Spanish +1;
        end
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
        if detect_language == 2
               total_count_English = total_count_English +1;
        end
        if detect_language == 3
                total_count_unknown = total_count_unknown + 1;
        end     
end

%QUESTION 1
fprintf(Q1,'s')
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 2
if detect_language == 0 
    Q2 = q2s;
elseif detect_language ==1
    Q2 = q2f;
elseif detect_language == 2 || detect_language ==3
    Q2 = q2e;
else% look at the note on the line below
    Q2 = q2e;  % these two lines are kind of inefficient? do we need to include if we already detect for an unspecified language already? 
end

fprintf(Q2,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 3
if detect_language == 0 
    Q3 = q3s;
elseif detect_language ==1
    Q3 = q3f;
elseif detect_language == 2 || detect_language ==3
    Q3 = q3e;
else %same note as Q2- presuming its the same for the rest of the Qs (through Q10) 
    Q3 = q3e;
end

fprintf(Q3,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 4
if detect_language == 0 
    Q4 = q4s;
elseif detect_language ==1
    Q4 = q4f;
elseif detect_language == 2 || detect_language ==3
    Q4 = q4e;
else
    Q4 = q4e;
end

fprintf(Q4,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 5
if detect_language == 0 
    Q5 = q5s;
elseif detect_language ==1
    Q5 = q5f;
elseif detect_language == 2 || detect_language ==3
    Q5 = q5e;
else
    Q5 = q5e;
end

fprintf(Q5,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 6
if detect_language == 0 
    Q6 = q6s;
elseif detect_language ==1
    Q6 = q6f;
elseif detect_language == 2 || detect_language ==3
    Q6 = q6e;
else
    Q6 = q6e;
end

fprintf(Q6,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 7
if detect_language == 0 
    Q7 = q7s;
elseif detect_language ==1
    Q7 = q7f;
elseif detect_language == 2 || detect_language ==3
    Q7 = q7e;
else
    Q7 = q7e;
end

fprintf(Q7,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 8
if detect_language == 0 
    Q8 = q8s;
elseif detect_language ==1
    Q8 = q8f;
elseif detect_language == 2 || detect_language ==3
    Q8 = q8e;
else
    Q8 = q8e;
end

fprintf(Q8,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 9
if detect_language == 0 
    Q9 = q9s;
elseif detect_language ==1
    Q9 = q9f;
elseif detect_language == 2 || detect_language ==3
    Q9 = q9e;
else
    Q9 = q9e;
end

fprintf(Q9,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

%QUESTION 10
if detect_language == 0 
    Q10 = q10s;
elseif detect_language ==1
    Q10 = q10f;
elseif detect_language == 2 || detect_language ==3
    Q10 = q10e;
else
    Q10 = q10e;
end

fprintf(Q10,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(detect_language)

disp(total_count_unknown)
disp(total_count_French)
disp(total_count_English)
disp(total_count_Spanish)

 %end tally of languages here + display 
        if (total_count_Spanish > total_count_English) && (total_count_Spanish > total_count_French)
            majority_user_answer = 'This user had the majority of their answers in Spanish.'; 
        elseif (total_count_English > total_count_Spanish) && (total_count_English > total_count_French) 
            majority_user_answer = 'This user had the majority of their answers in English.'; 
        elseif (total_count_French > total_count_Spanish) && (total_count_French > total_count_English)
            majority_user_answer= 'This user had the majority of their answers in French.';
        elseif (total_count_Spanish == total_count_English) &&(total_count_Spanish > total_count_French)
            majority_user_answer= 'This user had the majority of their answers tied between English and Spanish.' ;
        elseif (total_count_Spanish == total_count_French) && (total_count_Spanish > total_count_English)
            majority_user_answer= 'This user had the majority of their answers tied between French and Spanish.';
        elseif (total_count_French == total_count_English) && (total_count_French > total_count_Spanish)
            majority_user_answer= 'This user had the majority of their answers tied between English and French.';
        else
            majority_user_answer= 'This user had the majority of their answers in an unspecified language for this program.';
        end 
        
        getting_to_know_you = majority_user_answer;
        disp(getting_to_know_you)
        disp("It was great to get to know you!")
end 
