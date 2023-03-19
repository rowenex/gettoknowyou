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
detect_language = 2; %set the default language to English
Spanish_letter_accents= [eaigu, aaigu, uaigu, oaigu, ntilde, accented_i];
English_indications = [english_the,english_I_space,english_I_ns];
French_indicators = [egrave, ecircumflex, agrave, acircumflex, ugrave, ucircumflex, cedilla, ocircumflex, icircumflex, french_ui, french_m, french_j];

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
%Starting the "for loop" in order to run program for 10 questions ; %intialization condition; first Question presented 

    
    spanish_phrases= ["llamo", "soy", "estoy", "favorito","favorita", "mi", "es", "favorito", "favorita","gusta", "dia", "festivo", "superpoder", "comida","libros", "películas", "más", "Prefiero", "voy", "genero","música"];
    french_phrases = ["les", "mon", "suis", "je"];
    english_phrases_all = ["My","favorite", "name"," is ", "from"," it " "superpower", "holiday", "food","prefer","books","movie","like","coffee","music "]; %add favorite?
         total_count_Spanish=0;
         total_count_English= 0; 
         total_count_French=0; 
         total_count_unknown=0;

        
%ideas for the code: we could create a function for finding spanish,
%finding english, and finding french and use that to make the code much
%shorter. Like put the strfind into a function and just call it, for example 
% something like "if spanish_find = true"

%contains(str,substr,IgnoreCase=true

%Take user_answer (string) and read until there is a space (the first word) and compare that first string to every position in spanish_phrases until it finds a match. Do this with each word in user_answer 
fprintf(Q1,'s')
user_answer = input(prompt, "s");
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end



if detect_language == 0 
    Q2 = q2s;
elseif detect_language ==1
    Q2 = q2f;
elseif detect_language == 2 || detect_language ==3
    Q2 = q2e;
else
    Q2 = q2e;
end

fprintf(Q2,'s');
user_answer = input(prompt, "s");
for pp = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(pp))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for ff = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(ff))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for ee = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(ee))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%if detect_language ~=0 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q3 = q3s;
elseif detect_language ==1
    Q3 = q3f;
elseif detect_language == 2 || detect_language ==3
    Q3 = q3e;
else
    Q3 = q3e;
end

fprintf(Q3,'s');
user_answer = input(prompt, "s");
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end
     

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end


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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications)) 
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end
%else 
%    detect_language= 3; 
%end

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end

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
for p = 1:length(spanish_phrases)
if any(strfind(lower(user_answer), spanish_phrases(p))) || any(ismember(lower(user_answer), Spanish_letter_accents))
        detect_language = 0;
        if detect_language== 0 
            total_count_Spanish = total_count_Spanish +1; 
        end
end
end
for f = 1:length(french_phrases)
if any(strfind(lower(user_answer), french_phrases(f))) || any(ismember(lower(user_answer), French_indicators))
        detect_language = 1;
        if detect_language == 1 
            total_count_French= total_count_French +1; 
        end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) || any(ismember(lower(user_answer), English_indications))
           detect_language = 2;
          if detect_language == 2
               total_count_English = total_count_English +1;
          end
end
end
for e = 1:length(english_phrases_all)
if any(strfind(lower(user_answer), english_phrases_all(e))) == 0 && any(ismember(lower(user_answer), English_indications)) == 0 && any(strfind(lower(user_answer), french_phrases(f))) == 0 && any(ismember(lower(user_answer), French_indicators)) == 0 && any(strfind(lower(user_answer), spanish_phrases(p))) == 0 && any(ismember(lower(user_answer), Spanish_letter_accents)) == 0
           detect_language = 3;
          if detect_language == 3
               total_count_unknown = total_count_unknown +1;
          end
end
end

%else 
%    detect_language= 3; 
%end


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

    

           


















