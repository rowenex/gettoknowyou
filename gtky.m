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
%Q2= ['q2e', 'q2s', 'q2f']; 
%Q2= [];
%if detect_language == 2
 %   Q2 = 'What is your favorite color?';
%elseif detect_language == 0
 %   Q2 = '¿Cuál es tu color favorito?';
%elseif detect_language == 1
 %   Q2 = 'Quelle est votre couleur préférée?';
    q2e = 'What is your favorite color?';
    q2s= '¿Cuál es tu color favorito?';
    q2f= 'Quelle est votre couleur préférée?';
%end

%Q3=  ['q3e', 'q3s', 'q3f'];
    q3e= 'Where are you from?';
    q3s= '¿De dónde eres?';
    q3f='D’où êtes-vous?';
   % Q3=  [q3e, q3s, q3f];
%Q4= ['q4e', 'q4s', 'q4f'];
    q4e= 'What is your favorite holiday?';
    q4s='¿Cual es tu día festivo favorito?';
    q4f='Quelle est votre fête préférée?';
   % Q4= [q4e, q4s, q4f];
%Q5=  ['q5e', 'q5s', 'q5f'];
    q5e= 'If you could have a superpower, what would it be?';
    q5s= 'Si tuvieras un superpoder, ¿cuál sería?';
    q5f='Si vous aviez un super pouvoir, quel serait-il?';
   % Q5=  [q5e, q5s, q5f];
%Q6=  ['q6e', 'q6s', 'q6f'];
    q6e= 'What is your favorite animal?';
    q6s= '¿Cuál es tu animal favorito?';
    q6f='Quel est votre animal préféré';
   % Q6=  [q6e, q6s, q6f];
%Q7=  ['q7e', 'q7s', 'q7f'];
    q7e= 'What is your favorite food?';
    q7s= '¿Cuál es tu comida favorita?';
    q7f='Quel est votre plat préféré?';
  %  Q7=  [q7e, q7s, q7f];
%Q8= ['q8e', 'q8s', 'q8f'];
    q8e= 'Do you prefer movies or books?';
    q8s= '¿Prefieres películas o libros?';
    q8f='Préférez-vous les films ou les livres?';
  %  Q8= [q8e, q8s, q8f];
%Q9= ['q9e', 'q9s', 'q9f'];
    q9e= 'Do you prefer coffee or tea? What is your favorite coffee shop?';
    q9s= '¿Prefieres café o té? ¿Cuál es tu cafetería favorita?';
    q9f='Vous préférez le café ou le thé? Quel est ton café préféré?';
  %  Q9= [q9e, q9s, q9f];
%Q10= ['q10e', 'q10s', 'q10f'];
    q10e= 'What type of music are you into?';
    q10s= '¿Qué tipo de música te gusta?' ; 
    q10f='Quels types de musique aimez-vous?';
  %  Q10= [q10e, q10s, q10f];

Q2=[];
Q3 =[];
Q4 =[];
Q5 =[];
Q6 =[];
Q7 =[];
Q8 =[];
Q9 =[];
Q10 =[];
%questions = {Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10};
%squests = {q2s,q3s,q4s,q5s,q6s,q7s,q8s,q9s,q10s};
%fquests = {q2f,q3f,q4f,q5f,q6f,q7f,q8f,q9f,q10f};
%equests = {q2e,q3e,q4e,q5e,q6e,q7e,q8e,q9e,q10e};
%N = length(questions);
%M = length(squests);

%prompt = ' ';
%Starting the "for loop" in order to run program for 10 questions ; %intialization condition; first Question presented 

%for i= 1:N
    %prompt = ['',i]; %first thing is to print the question to the user; specific to the Q number
    %maybe here we could do like "if detect_language = 0, i = q2s or
    %something? I think the change needs to happen up here
   % if detect_language == 2
   %     for j = 2:M 
   %         fprintf(equests{j}, '%s');
   %     end
   % elseif detect_language == 1
   %     for j = 2:M 
   %         fprintf(fquests{j}, '%s');
   %     end
   % elseif detect_language == 0
   %     for j = 2:M
   %         fprintf(squests{j}, '%s');
    %    end
    %end
    
    %This is a rough outline
    %It works but: 1. It prints all the questions at once 
                 % 2. It does not account for the first question

    %fprintf(questions{i}, 's'); 
    %Currently disabling this to test code above
  %  user_answer = input(prompt, "s"); %insert their answer + input the answer into the program 
    %Spanish detection 
prompt = ' ';
%Starting the "for loop" in order to run program for 10 questions ; %intialization condition; first Question presented 

    
    spanish_phrases= ["llamo", "soy", "estoy", "favorit", "mi", "es", "favorito", "favorita","gusta", "dia", "festivo", "superpoder", "comida","libros", "películas", "más", "Prefiero", "voy", "genero","música"];
    french_phrases = ["les", "mon", "suis", "je"];
    english_phrases_all = ["My","favorite", "name"," is ", "from"," it " "superpower", "holiday", "food","prefer","books","movie","like","coffee","music "]; %add favorite?
         total_count_Spanish=0;
         total_count_English= 0; 
         total_count_French=0; 

        
% disp(spanish_phrases)

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


%span = length(spanish_phrases);
%fren = length(french_phrases);
%eng = length(english_phrases_all);
%splituser = split(user_answer);
%usersplit = length(splituser);
%for ii = 1:usersplit
%    for ss = 1:span
%        if contains(spanish_phrases,ii, IgnoreCase=true)
%            detect_language = 0;
%        end     
%    end
%end
%for jj = 1:usersplit
%    for ff = 1:fren
%        if strfind(ff,jj)
%            detect_language = 1;
%        end     
%    end
%end
%for gg = 1:usersplit
%    for ee = 1:eng
%        if strfind(ee,gg)
%            detect_language = 2;
%        end     
%    end
%end
%disp(detect_language)
%above is what I'm thinking so far for the TA session I went to, but it
%doesn't work

%if any(strfind(lower(user_answer), spanish_phrases)) || any(ismember(lower(user_answer), Spanish_letter_accents))
  %      detect_language = 0;
   %     if detect_language== 0 
   %         total_count_Spanish = total_count_Spanish +1; 
       % if detect_language == 0
        %    if i==2
       %         fprintf(q2s);
         %   elseif i==3
          %      fprintf(q3s);
           % elseif i==4
       %         fprintf(q4s);
       %     elseif i==5
      %          fprintf(q5s);
      %      elseif i==6
      %          fprintf(q6s)
      %      elseif i==7
       %         fprintf(q7s)
      %      elseif i==8
      %          fprintf(q8s)
      %      elseif i==9
      %          fprintf(q9s)
      %      elseif i==10
      %          fprintf(q10s)
     %       else
     %           'Lo siento, no tengo más preguntas en español.\n';
     %       end %ends if i==2 for spanish
      %  end %ends detect_language = 0 (Spanish)
   %     end
  %  elseif any(strfind(lower(user_answer), french_phrases)) || any(ismember(lower(user_answer), French_indicators))
   %     detect_language = 1;
   %     if detect_language == 1 
   %         total_count_French= total_count_French +1; 
         %   if i==2
         %       fprintf(q2f);
          %  elseif i==3
         %       fprintf(q3f);
         %   elseif i==4
         %       fprintf(q4f);
         %   elseif i==5
         %       fprintf(q5f);
          %  elseif i==6
          %      fprintf(q6f)
          %  elseif i==7
          %      fprintf(q7f)
          %  elseif i==8
          %      fprintf(q8f)
          %  elseif i==9
          %     fprintf(q9f)
          %  elseif i==10
          %      fprintf(q10f)
          %  else
         %       'Nous sommes désolées, il n''y a plus de questions.';
          %  end%ends if i==2 for french
    %    end%ends detect_language = 1 (French)             
   % elseif any(strfind(lower(user_answer), english_phrases_all)) || any(ismember(lower(user_answer), English_indications))
    %       detect_language = 2;
      %    if detect_language == 2
      %         total_count_English = total_count_English +1;
        % if detect_language == 2
          %   if i==2
          %      fprintf(q2e);
          %  elseif i==3
          %      fprintf(q3e);
          %  elseif i==4
          %      fprintf(q4e);
          %  elseif i==5
          %      fprintf(q5e);
          %  elseif i==6
          %      fprintf(q6e)
          %  elseif i==7
          %      fprintf(q7e)
          %  elseif i==8
          %      fprintf(q8e)
          %  elseif i==9
          %      fprintf(q9e)
          %  elseif i==10
          %      fprintf(q10e)
          %  else
          %      "I'm sorry, there's no more English questions!\n";
          %  end
     %    end
           
  %  else
   %     detect_language= 3; 
    %    if detect_language == 3
           %if i == 1
            %     fprintf(Q1)
          %  if i==2
          %      fprintf(q2e);
          %  elseif i==3
          %      fprintf(q3e);
          %  elseif i==4
          %      fprintf(q4e);
          %  elseif i==5
          %      fprintf(q5e);
          %  elseif i==6
          %      fprintf(q6e)
          %  elseif i==7
          %      fprintf(q7e)
          %  elseif i==8
          %      fprintf(q8e)
          %  elseif i==9
          %      fprintf(q9e)
          %  elseif i==10
          %      fprintf(q10e)
          %  else
           %     "I'm sorry, there's no more English questions!\n";
           % end%ends i ==2 english
  %      end %ends detect_language 2 (English!)
  %  end
%   disp(detect_language)



if detect_language == 0 
    Q2 = q2s;
elseif detect_language ==1
    Q2 = q2f;
elseif detect_language == 2 || detect_language ==3
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

%if detect_language ~=0 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q3 = q3s;
elseif detect_language ==1
    Q3 = q3f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q4 = q4s;
elseif detect_language ==1
    Q4 = q4f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end
     

if detect_language == 0 
    Q5 = q5s;
elseif detect_language ==1
    Q5 = q5f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end


if detect_language == 0 
    Q6 = q6s;
elseif detect_language ==1
    Q6 = q6f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q7 = q7s;
elseif detect_language ==1
    Q7 = q7f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q8 = q8s;
elseif detect_language ==1
    Q8 = q8f;
elseif detect_language == 2 || detect_language ==3
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
%else 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q9 = q9s;
elseif detect_language ==1
    Q9 = q9f;
elseif detect_language == 2 || detect_language ==3
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

%else 
%    detect_language= 3; 
%end

if detect_language == 0 
    Q10 = q10s;
elseif detect_language ==1
    Q10 = q10f;
elseif detect_language == 2 || detect_language ==3
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

    

           


















