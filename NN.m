%%  NN



%% ======================= Part 1: Plotting =======================
fprintf('プロット Data1 ...\n')
data1_A = csvread('data1-A.txt');
data1_B = csvread('data1-B.txt');
datal_X = csvread('data1-X.txt');


X_A = data1_A(:, 1);
Y_A = data1_A(:, 2);
X_B = data1_B(:, 1);
Y_B = data1_B(:, 2); 
X_X = datal_X(:, 1);
Y_X = datal_X(:, 2);

plotData(X_A,Y_A,X_B,Y_B,X_X,Y_X);
legend('A芙','B芙','サンプル');
%% ======================= Part 2: NN data1 =======================
Mean_AX = mean(X_A);
Mean_AY = mean(Y_A);
Mean_BX = mean(X_B);
Mean_BY = mean(Y_B);
fprintf('A芙のプロトタイプ:\n');
fprintf(' %f %f \n', Mean_AX, Mean_AY);
fprintf('B芙のプロトタイプ:\n');
fprintf(' %f %f \n', Mean_BX, Mean_BY);
fprintf('嚠霞y:\n');
for i = 1 :length(X_X)
    a = sqrt((X_X(i) - Mean_AX)^2 + (Y_X(i) - Mean_AY)^2);
    b = sqrt((X_X(i) - Mean_BX)^2 + (Y_X(i) - Mean_BY)^2);
    if(a<b)
        fprintf('%f %f',X_X(i),Y_X(i));
        fprintf('サンプルはA芙です\n');
    else
        fprintf('%f %f',X_X(i),Y_X(i));
        fprintf('サンプルはB芙です\n');
    end
end
fprintf('\nプログラム唯峭。Enter keyを兀します。data2をimportします。\n');
pause;

%% ======================= Part 3: NN data2 =======================
fprintf('プロット Data2 ...\n')
data1_A = csvread('data2-A.txt');
data1_B = csvread('data2-B.txt');
datal_X = csvread('data2-X.txt');


X_A = data1_A(:, 1);
Y_A = data1_A(:, 2);
X_B = data1_B(:, 1);
Y_B = data1_B(:, 2);
X_X = datal_X(:, 1);
Y_X = datal_X(:, 2);

plotData(X_A,Y_A,X_B,Y_B,X_X,Y_X);
legend('A芙','B芙','サンプル');
Mean_AX = mean(X_A);
Mean_AY = mean(Y_A);
Mean_BX = mean(X_B);
Mean_BY = mean(Y_B);
fprintf('A芙のプロトタイプ:\n');
fprintf(' %f %f \n', Mean_AX, Mean_AY);
fprintf('B芙のプロトタイプ:\n');
fprintf(' %f %f \n', Mean_BX, Mean_BY);
fprintf('嚠霞y:\n');
for i = 1 :length(X_X)
    a = sqrt((X_X(i) - Mean_AX)^2 + (Y_X(i) - Mean_AY)^2);
    b = sqrt((X_X(i) - Mean_BX)^2 + (Y_X(i) - Mean_BY)^2);
    if(a<b)
        fprintf('%f %f',X_X(i),Y_X(i));
        fprintf('サンプルはA芙です\n');
    else
        fprintf('%f %f',X_X(i),Y_X(i));
        fprintf('サンプルはB芙です\n');
    end
end
%%
function plotData(x1,y1,x2,y2,x3,y3)
figure('name','Data'); % open a new figure window
hold on;
plot(x1,y1,'r.', 'MarkerSize', 10);
plot(x2,y2,'b.', 'MarkerSize', 10);
plot(x3,y3,'k.', 'MarkerSize', 10);
hold off;
end
