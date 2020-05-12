clear all;
close all;

disp('Here you can use the queuing functions!');
disp('Which function do you like to use?');
x = 0;
while x<1 | x>5
    prompt = 'Choose 1-5 for:\n1. M/M/1\n2. M/M/1/K\n3. M/M/s\n4. Priority M/G/1\n5.Quit\n';
    x = input(prompt);
    if x == 1
        prompt2 = {'Enter arrival rate l:','Enter service rate m:'};
        dlgtitle = 'M/M/1 Queue Inputs';
        dims = [1 50];
        definput = {'20','30'};
        answer = inputdlg(prompt2,dlgtitle,dims,definput);
        [Lq,Ls,Wq,Ws,ro] = m_m_1_queue(str2num(answer{1}),str2num(answer{2}));
        fprintf('The mean number of items in the queue Lq is %d\n',Lq);
        fprintf('The mean number of items in the system Ls is %d\n',Ls);
        fprintf('The mean waiting time in the queue Wq is %d\n',Wq);
        fprintf('The mean waiting time in the system Ws is %d\n',Ws);
        fprintf('The possibility of having n customers in the system ro is %d\n',ro);
     elseif x == 2
        prompt2 = {'Enter arrival rate l:','Enter service rate m:','Enter items in the system K:'};
        dlgtitle = 'M/M/1/K Queue Inputs';
        dims = [1 50];
        definput = {'20','30','100'};
        answer = inputdlg(prompt2,dlgtitle,dims,definput);
        [Lq,Ls,Wq,Ws,ro] = m_m_1_queueK(str2num(answer{1}),str2num(answer{2}),str2num(answer{3}));
        fprintf('The mean number of items in the queue Lq is %d\n',Lq);
        fprintf('The mean number of items in the system Ls is %d\n',Ls);
        fprintf('The mean waiting time in the queue Wq is %d\n',Wq);
        fprintf('The mean waiting time in the system Ws is %d\n',Ws);
        fprintf('The possibility of having n customers in the system ro is %d\n',ro);

    elseif x == 3
        prompt2 = {'Enter arrival rate l:','Enter service rate m:','Enter service units s:'};
        dlgtitle = 'M/M/s Queue Inputs';
        dims = [1 50];
        definput = {'20','30','2'};
        answer = inputdlg(prompt2,dlgtitle,dims,definput);
        [Lq,Ls,Wq,Ws,ro] = m_m_s_queue(str2num(answer{1}),str2num(answer{2}),str2num(answer{3}));
        fprintf('The mean number of items in the queue Lq is %d\n',Lq);
        fprintf('The mean number of items in the system Ls is %d\n',Ls);
        fprintf('The mean waiting time in the queue Wq is %d\n',Wq);
        fprintf('The mean waiting time in the system Ws is %d\n',Ws);
        fprintf('The possibility of having n customers in the system ro is %d\n',ro);

    elseif x == 4
        prompt2 = {'Enter arrival rate l for each class-k (space separated values):','Enter service rate m for each class-k (space separated values):'};
        dlgtitle = 'M/G/1 Priority Queue Inputs';
        dims = [1 50];
        definput = {'20 10 5','30 20 10'};
        answer = inputdlg(prompt2,dlgtitle,dims,definput);
        [L,W,T,R,ro] = m_g_1_priorityQueue(str2num(answer{1}),str2num(answer{2}));
        fprintf('The possibility of having n customers in the system ro is %d\n',ro);
        for i = 1:length(L)
            fprintf('The mean number of items in the queue L for class %d is %d\n',i,L(i));
        end
        for i = 1:length(W)
            fprintf('The mean waiting time W for class %d is %d\n',i,W(i));
        end
        for i = 1:length(T)
            fprintf('The total time in the system T for class %d is %d\n',i,T(i));
        end
        fprintf('The mean residual service time R for all classes is %d\n',R);
    elseif x == 5
        break;
    else
        disp('You entered a wrong choice. Please try again!')
    end
end