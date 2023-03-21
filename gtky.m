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
french_c = "c'";
english_Imm = "i'm";
spanish_capital_es = "Es";
all_accents= [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j,eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
detect_language = [];

%Questions 
Q1= 'What is your name?'; %Begin in english no matter what

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

    spanish_phrases= [ntilde, "yo ", "llamo", "soy ", "estoy", "favorito","favorita", "mi ", " es ", "favorito", "favorita","gusta", "dia ", "festivo", "superpoder", "comida","libros", "películas", "más", "prefiero", "voy ", "genero","música", "sí", "té"];
    french_phrases = [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j, french_c, "préférée", "préféré", "les ", "mon ", "suis", "je", "favori ", "serait", "une ", "le ", "est ", "ces ", "ce "];
    english_phrases_all = [english_Imm, english_the,english_I_space,english_I_ns, "my ","favorite", "name"," want ", " is ", "from"," it " "superpower", "holiday", "food","prefer","books","movie","like","coffee","music ", "love", "i'm ", " am ", "it's", "it is ", "would"];
         total_count_Spanish=0;
         total_count_English= 0; 
         total_count_French=0; 
         total_count_unknown=0;

 
% introducing audiofiles + assigning them variable names. 

[y,Fs]= audioread('Hi!.m4a'); 
English_greeting= audioplayer(y,Fs); 
[Z, Gs]= audioread('¡Hola!.m4a'); 
Spanish_greeting= audioplayer(Z,Gs); 
[X, Hs]= audioread('Bonjour.m4a'); 
French_greeting= audioplayer(X, Hs); 

 
%The nested function that tests for the language
    function language_testing 
        detect_language = 4; %Initiate detect_language to not be any specific language in the code 
        
       %Detects words such as préférer with multiple accent marks, which indicates French
       words_in_phrase= split(user_answer);
        num_of_accents= 0;
        for ff= 1:length(words_in_phrase)
            num_of_accents= count(words_in_phrase(ff), all_accents);
                if num_of_accents > 1
                    detect_language=1; 
                    break
                end
        end 
%If not French, check for Spanish
        if detect_language ~= 1
         for p= 1:length(spanish_phrases)
             if any(strfind(lower(user_answer), spanish_phrases(p))) || any(strfind((user_answer), spanish_capital_es))
                 detect_language=0; 
             end 
         end 
        end
%If not Spanish and the answer does not have words with multiple accents,
%check again for French
        if detect_language ~= 0
        for f = 1:length(french_phrases)
            if any(strfind(lower(user_answer), french_phrases(f)))
                detect_language = 1;
            end
        end
        end
%If not Spanish or French, check for English
        if (detect_language ~= 0) & (detect_language ~= 1)
        for e = 1:length(english_phrases_all)
            if any(strfind(lower(user_answer), english_phrases_all(e)))
                 detect_language = 2;
            end
        end
        end
%If none of the above, the language is undetected 
        if (detect_language ~= 0) & (detect_language ~= 1) & (detect_language ~= 2)
            detect_language = 3;
        end
    end

[SPA1, SPA2] = imread('Spain.png');
[FRA1, FRA2] = imread('France.png');
[USA1, USA2] = imread('USA.png');
[UNK1, UNK2] = imread('Unknown.png');

%A nested function that counts the amount of answers that were in each
%language and also displays language's flag, the current count for the
%language input and an audio that greets you in the language you input to
%the last answer
function add_it_up
        Spa = ['The current count for Spanish answers: ', num2str(total_count_Spanish +1)];
        if detect_language== 0 
           total_count_Spanish = total_count_Spanish +1;
           imshow(SPA1, SPA2)
           disp(Spa)
           play(Spanish_greeting)
        end

        Fre = ['The current count for French answers: ', num2str(total_count_French+1)];
        if detect_language == 1 
            total_count_French= total_count_French +1; 
            disp(Fre)
            play(French_greeting)
            imshow(FRA1, FRA2)
        end
        Eng= ['The current count for English answers: ', num2str(total_count_English+1)];
        if detect_language == 2
           total_count_English = total_count_English +1;
           disp(Eng)
           play(English_greeting)
           imshow(USA1, USA2)
        end
        Unk = ['The current count for unspecified language answers: ', num2str(total_count_unknown+1)];
        if detect_language == 3
                total_count_unknown = total_count_unknown + 1;
                disp(Unk)
                imshow(UNK1, UNK2)
        end     
end


%Making the template for the user feedback on language count

%QUESTION 1
fprintf(Q1,'s')
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer1 = user_answer;
userlanguage1 = detect_language;


%QUESTION 2
if detect_language == 0 
    Q2 = q2s;
elseif detect_language ==1
    Q2 = q2f;
elseif detect_language == 2 || detect_language ==3
    Q2 = q2e;
end

disp(" ")
fprintf(Q2,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer2 = user_answer;
userlanguage2 = detect_language;


%QUESTION 3
if detect_language == 0 
    Q3 = q3s;
elseif detect_language ==1
    Q3 = q3f;
elseif detect_language == 2 || detect_language ==3
    Q3 = q3e;
end

disp(" ")
fprintf(Q3,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer3 = user_answer;
userlanguage3 = detect_language;

%QUESTION 4
if detect_language == 0 
    Q4 = q4s;
elseif detect_language ==1
    Q4 = q4f;
elseif detect_language == 2 || detect_language ==3
    Q4 = q4e;
end

disp(" ")
fprintf(Q4,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer4 = user_answer;
userlanguage4 = detect_language;

%QUESTION 5
if detect_language == 0 
    Q5 = q5s;
elseif detect_language ==1
    Q5 = q5f;
elseif detect_language == 2 || detect_language ==3
    Q5 = q5e;
end

disp(" ")
fprintf(Q5,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer5 = user_answer;
userlanguage5 = detect_language;


%QUESTION 6
if detect_language == 0 
    Q6 = q6s;
elseif detect_language ==1
    Q6 = q6f;
elseif detect_language == 2 || detect_language ==3
    Q6 = q6e;
end

disp(" ")
fprintf(Q6,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer6 = user_answer;
userlanguage6 = detect_language;


%QUESTION 7
if detect_language == 0 
    Q7 = q7s;
elseif detect_language ==1
    Q7 = q7f;
elseif detect_language == 2 || detect_language ==3
    Q7 = q7e;
end

disp(" ")
fprintf(Q7,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer7 = user_answer;
userlanguage7 = detect_language;

%QUESTION 8
if detect_language == 0 
    Q8 = q8s;
elseif detect_language ==1
    Q8 = q8f;
elseif detect_language == 2 || detect_language ==3
    Q8 = q8e;
end

disp(" ")
fprintf(Q8,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer8 = user_answer;
userlanguage8 = detect_language;



%QUESTION 9
if detect_language == 0 
    Q9 = q9s;
elseif detect_language ==1
    Q9 = q9f;
elseif detect_language == 2 || detect_language ==3
    Q9 = q9e;
end

disp(" ")
fprintf(Q9,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
useranswer9 = user_answer;
userlanguage9 = detect_language;


%QUESTION 10
if detect_language == 0 
    Q10 = q10s;
elseif detect_language ==1
    Q10 = q10f;
elseif detect_language == 2 || detect_language ==3
    Q10 = q10e;
end

disp(" ")
fprintf(Q10,'s');
user_answer = input(prompt, "s");
language_testing()
add_it_up()
disp(" ")
useranswer10 = user_answer;
userlanguage10 = detect_language;

 %Use the tally to figure out what the majority of languages used was
        if (total_count_Spanish > total_count_English) && (total_count_Spanish > total_count_French)
            majority_user_answer = 'You had the majority of your answers in Spanish.'; 
        elseif (total_count_English > total_count_Spanish) && (total_count_English > total_count_French) 
            majority_user_answer = 'You had the majority of your answers in English.'; 
        elseif (total_count_French > total_count_Spanish) && (total_count_French > total_count_English)
            majority_user_answer= 'You had the majority of your answers in French.';
        elseif (total_count_Spanish == total_count_English) &&(total_count_Spanish > total_count_French)
            majority_user_answer= 'You had the majority of your answers tied between English and Spanish.' ;
        elseif (total_count_Spanish == total_count_French) && (total_count_Spanish > total_count_English)
            majority_user_answer= 'You had the majority of your answers tied between French and Spanish.';
        elseif (total_count_French == total_count_English) && (total_count_French > total_count_Spanish)
            majority_user_answer= 'You had the majority of your answers tied between English and French.';
        else
            majority_user_answer= 'You had the majority of your answers in an unspecified language for this program.';
        end 
        
        disp(majority_user_answer)
        disp(" ")
        disp("It was great to get to know you!")
        disp(" ")
finalanswer = questdlg("Would you like to see your answers for a summary?", "Final Wrap Up!", "Yes","No","Yes");

if strcmp(finalanswer, 'Yes')
    if userlanguage1 == 0
        disp("SU NOMBRE: " + useranswer1)
    elseif userlanguage1 == 1
        disp("VOTRE NOM: " + useranswer1)
    elseif userlanguage1 == 2
        disp("YOUR NAME: " + useranswer1)
    else
        disp("YOUR NAME: " + useranswer1)
    end
    if userlanguage2 == 0
        disp("TU COLOR FAVORITO: " + useranswer2)
    elseif userlanguage2 == 1
        disp("TA COULEUR PRÉFÉRÉE: " + useranswer2)
    elseif userlanguage2 == 2
        disp("YOUR FAVORITE COLOR: " + useranswer2)
    else
        disp("YOUR FAVORITE COLOR: " + useranswer2)
    end
    if userlanguage3 == 0
        disp("DE DÓNDE ERES: " + useranswer3)
    elseif userlanguage3 == 1
        disp("D'OÙ VIENS-TU: " + useranswer3)
    elseif userlanguage3 == 2
        disp("WHERE YOU ARE FROM: " + useranswer3)
    else
        disp("WHERE YOU ARE FROM: " + useranswer3)
    end
    if userlanguage4 == 0
        disp("TU DÍA FESTIVO FAVORITA: " + useranswer4)
    elseif userlanguage4 == 1
        disp("VOTRE FÊTE PRÉFÉRÉES: " + useranswer4)
    elseif userlanguage4 == 2
        disp("YOUR FAVORITE HOLIDAY: " + useranswer4)
    else
        disp("YOUR FAVORITE HOLIDAY: " + useranswer4)
    end
    if userlanguage5 == 0
        disp("TU FUTURA SUPERPODER: " + useranswer5)
    elseif userlanguage5 == 1
        disp("VOTRE FUTUR SUPERPOUVOIR: " + useranswer5)
    elseif userlanguage5 == 2
        disp("YOUR FUTURE SUPERPOWER: " + useranswer5)
    else
        disp("YOUR FUTURE SUPERPOWER: " + useranswer5)
    end
    if userlanguage6 == 0
        disp("TU ANIMAL FAVORITO: " + useranswer6)
    elseif userlanguage6 == 1
        disp("VOTRE ANIMAL PRÉFÉRÉ: " + useranswer6)
    elseif userlanguage6 == 2
        disp("YOUR FAVORITE ANIMAL: " + useranswer6)
    else
        disp("YOUR FAVORITE ANIMAL: " + useranswer6)
    end
    if userlanguage7 == 0
        disp("TU COMIDA FAVORITA: " + useranswer7)
    elseif userlanguage7 == 1
        disp("TA NOURRITURE PRÉFÉRÉE: " + useranswer7)
    elseif userlanguage7 == 2
        disp("YOUR FAVORITE FOOD: " + useranswer7)
    else
        disp("YOUR FAVORITE FOOD: " + useranswer7)
    end
    if userlanguage8 == 0
        disp("PELÍCULAS VS LIBROS: " + useranswer8)
    elseif userlanguage8 == 1
        disp("FILMS VS LIVRES: " + useranswer8)
    elseif userlanguage8 == 2
        disp("MOVIES VS BOOKS: " + useranswer8)
    else
        disp("MOVIES VS BOOKS: " + useranswer8)
    end
    if userlanguage9 == 0
        disp("CAFÉ VS TÉ Y TU TIENDA DE BEBIDAS FAVORITA: " + useranswer9)
    elseif userlanguage9 == 1
        disp("CAFÉ VS THÉ ET VOTRE MAGASIN DE BOISSONS PRÉFÉRÉES: " + useranswer9)
    elseif userlanguage9 == 2
        disp("COFFEE VS TEA AND YOUR FAVORITE BEVERAGE SHOP: " + useranswer9)
    else
        disp("COFFEE VS TEA AND YOUR FAVORITE BEVERAGE SHOP: " + useranswer9)
    end
    if userlanguage10 == 0
        disp("TU GÉNERO DE MÚSICA FAVORITO: " + useranswer10)
    elseif userlanguage10 == 1
        disp("VOTRE GENRE DE MUSIQUE PRÉFÉRÉ: " + useranswer10)
    elseif userlanguage10 == 2
        disp("YOUR FAVORITE MUSIC GENRE: " + useranswer10)
    else
        disp("YOUR FAVORITE MUSIC GENRE: " + useranswer10)
    end
elseif strcmp(finalanswer, 'No')
    disp("Okay, thank you for playing!")
end
         
end 
