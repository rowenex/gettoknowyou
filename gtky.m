disp("Welcome to Get to Know You!")
disp("1. Please answer the question as straightforwardly as possible")
disp("2. Please adhere to the grammar rules of the language") 
disp("3. Please answer in full sentences, such as 'My favorite song is...'")
%answer --> input(prompt, s)
%asking a question-->prompt('insert q here')

%create a function so that the code can run "if-else" statements 
function getting_to_know_you = detect_language(user_answer)

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
inverted_exclam = '!';
inverted_question = '¿';
english_the = 'the';
english_I_space = " I ";
english_I_ns = "I ";
french_ui = "ui";
french_j = "j'";
french_m = "m'";
Spanish_letter_accents= [eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
English_indications = [english_the,english_I_space,english_I_ns];
French_indicators = [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j];

%Questions 
Q1= 'What is your name?'; %begin in english no matter what
Q2= ['q2e', 'q2s', 'q2f'];
    q2e= 'What is your favorite color?';
    q2s= '¿Cuál es tu color favorito?';
    q2f= 'Quelle est votre couleur préférée?';
Q3=  ['q3e', 'q3s', 'q3f'];
    q3e= 'Where are you from?';
    q3s= '¿De dónde eres?';
    q3f='D’où êtes-vous?';
Q4= ['q4e', 'q4s', 'q4f'];
    q4e= 'What is your favorite holiday?';
    q4s='¿Cual es tu día festivo favorito?';
    q4f='Quelle est votre fête préférée?';
Q5=  ['q5e', 'q5s', 'q5f'];
    q5e= 'If you could have a superpower, what would it be?';
    q5s= 'Si tuvieras un superpoder, ¿cuál sería?';
    q5f='Si vous aviez un super pouvoir, quel serait-il?';
Q6=  ['q6e', 'q6s', 'q6f'];
    q6e= 'What is your favorite animal?';
    q6s= '¿Cuál es tu animal favorito?';
    q6f='Quel est votre animal préféré';
Q7=  ['q7e', 'q7s', 'q7f'];
    q7e= 'What is your favorite food?';
    q7s= '¿Cuál es tu comida favorita?';
    q7f='Quel est votre plat préféré?';
Q8= ['q8e', 'q8s', 'q8f'];
    q8e= 'Do you prefer movies or books?';
    q8s= '¿Prefieres películas o libros?';
    q8f='Préférez-vous les films ou les livres?';
Q9= ['q9e', 'q9s', 'q9f'];
    q9e= 'Do you prefer coffee or tea? What is your favorite coffee shop?';
    q9s= '¿Prefieres café o té? ¿Cuál es tu cafetería favorita?';
    q9f='Vous préférez le café ou le thé? Quel est ton café préféré?';
Q10= ['q10e', 'q10s', 'q10f'];
    q10e= 'What type of music are you into?';
    q10s= '¿Qué tipo de música te gusta?' ; 
    q10f='Quels types de musique aimez-vous?';

%Starting the "for loop" in order to run program for 10 questions ; %intialization condition; first Question presented 
for i= 1:10
    prompt=fprintf('Q%d: ', i); %first thing is to print the question to the user; specific to the Q number
    user_answer= input(prompt,'s'); %insert their answer + input the answer into the program 
    
    %Spanish detection 
    spanish_phrases= ['llamo', 'soy', 'estoy', 'mi', 'es', 'favorito', 'favorita','gusta', 'dia', 'festivo', 'superpoder', 'comida','libros', 'películas', 'más', 'Prefiero', 'voy', 'genero','música'];
    french_phrases = ['les', 'mon'];
    english_phrases_all = ['My', 'name', 'favorite',' is ', ' from', 'it ', 'superpower', 'animal', 'holiday','food','prefer','books','movies','like','coffee','music '];
         total_count_Spanish=0;
         total_count_English= 0; 
         total_count_French=0; 
    if any(strfind(lower(user_answer), spanish_phrases)) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 'Spanish';
        if detect_language== 'Spanish' 
            total_count_Spanish= total_count_Spanish +1; 
        if detect_language == 'Spanish' 
            if i==2
                fprintf(q2s);
            elseif i==3
                fprintf(q3s);
            elseif i==4
                fprintf(q4s);
            elseif i==5
                fprintf(q5s);
            elseif i==6
                fprintf(q6s)
            elseif i==7
                fprintf(q7s)
            elseif i==8
                fprintf(q8s)
            elseif i==9
                fprintf(q9s)
            elseif i==10
                fprintf(q10s)
            else
                'Lo siento, no tengo más preguntas en español.\n';
            end %ends if i==2 for spanish
        end %ends detect_language = spanish
        end
    elseif any(strfind(lower(user_answer), french_phrases)) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 'French';
        if detect_language== 'French' 
            if i==2
                fprintf(q2f);
            elseif i==3
                fprintf(q3f);
            elseif i==4
                fprintf(q4f);
            elseif i==5
                fprintf(q5f);
            elseif i==6
                fprintf(q6f)
            elseif i==7
                fprintf(q7f)
            elseif i==8
                fprintf(q8f)
            elseif i==9
                fprintf(q9f)
            elseif i==10
                fprintf(q10f)
            else
            end%ends if i==2 for french
        end%ends detect_language = french
       %english detection
                'Nous sommes désolées, il n''y a plus de questions.';
    elseif any(strfind(lower(user_answer), english_phrases_all)) || any(ismember(lower(user_answer), English_indications))
           detect_language = 'English';
    else
        detect_language= 'No specified language.'; 
        if detect_language== 'English' | detect_language == 'No specified language.'
            if i==2
                fprintf(q2e);
            elseif i==3
                fprintf(q3e);
            elseif i==4
                fprintf(q4e);
            elseif i==5
                fprintf(q5e);
            elseif i==6
                fprintf(q6e)
            elseif i==7
                fprintf(q7e)
            elseif i==8
                fprintf(q8e)
            elseif i==9
                fprintf(q9e)
            elseif i==10
                fprintf(q10e)
            else
                "I'm sorry, there's no more English questions!\n";
            end%ends i ==2 english
        end %ends detect_language english
    end
end 
 %end tally of languages here + display 
        if total_count_Spanish > total_count_English & total_count_Spanish > total_count_French
            majority_user_answer = 'This user had the majority of their answers in Spanish.'; 
        elseif total_count_English > total_count_Spanish & total_count_English > total_count_French 
            majority_user_answer = 'This user had the majority of their answers in English.'; 
        elseif total_count_French > total_count_Spanish & total_count_French > total_count_English
            majority_user_answer= 'This user had the majority of their answers in French.';
        elseif total_count_Spanish == total_count_English & total_count_Spanish > total_count_French
            majority_user_answer= 'This user had the majority of their answers tied between English and Spanish.' ;
        elseif total_count_Spanish == total_count_French & total_count_Spanish > total_count_English
            majority_user_answer= 'This user had the majority of their answers tied between French and Spanish.';
        elseif total_count_French == total_count_English & total_count_French > total_count_Spanish
            majority_user_answer= 'This user had the majority of their answers tied between English and French.';
        else
            majority_user_answer= 'This user had the majority of their answers in an unspecified language for this program.';
        end 
        disp(majority_user_answer)
end 

    

           


















