        % Santiago Fleiderman
        % Homework 1
        %Senior Seminar



      a = input ('Enter left endpoint of the interval:  ');
      b = input ('Enter right endpoint of the interval:  ');
      N = input ('Enter number of subintervals: ');
      alpha = input ('Enter initial condition: ');
      
      % Step 1
      h = (b-a)/N;  
      t = a;
      w = alpha;
      z = 0;
      yI = alpha;
    yI_w = yI-w;
      fprintf("        i     T(i)    W(i)    y(ti)    y(i)-ti\n") 
     fprintf(' %8.0f %8.2f %8.4f %8.4f %8.4f  \n',z,t,w,yI,yI_w);
     
     for i = 1:N;
         % Step 3
            k1 = h* fe(t,w);
            k2 = h* fe(t+h/2, w + k1/2);
            k3 = h* fe(t+h/2, w +k2/2);
            k4 = h* fe(t + h, w +k3);
            w = w + (k1 +2*k2+ 2*k3+ k4)/6;
            t= a+ i*h;
            yI = fe2(t,alpha);
            yI_w = yI-w;
            z = z+1;
            % Step 4
            fprintf(' %8.0f %8f %8f %8f %8f \n',z,t,w,yI,yI_w);


     end;

