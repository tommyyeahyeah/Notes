%% File Info.

%{

    my_graph.m
    ----------
    This code plots the value and policy functions.

%}

%% Graph class.

classdef my_graph
    methods(Static)
        %% Plot value and policy functions.
        
        function [] = plot_policy(par,sol,sim)
            %% Plot production function.
            
            figure(1)
            
            plot(par.kgrid,sol.y)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$y_{t}$'},'Interpreter','latex') 
            title('Production Function')

            %% Plot capital policy function.
            
            figure(2)
            
            plot(par.kgrid,sol.k)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$k_{t+1}$'},'Interpreter','latex') 
            title('Capital Policy Function')

            %% Plot consumption policy function.
            
            figure(3)
            
            plot(par.kgrid,sol.c)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$c_{t}$'},'Interpreter','latex') 
            title('Consumption Policy Function')
            
            %% Plot investrment policy function.
            
            figure(4)
            
            plot(par.kgrid,sol.i)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$i_{t}$'},'Interpreter','latex') 
            title('Investment Policy Function')

            %% Plot labor supply policy function.
            
            figure(5)
            
            plot(par.kgrid,sol.n)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$n_{t}$'},'Interpreter','latex') 
            title('Labor Supply Policy Function')

            %% Plot value function.
            
            figure(6)
            
            plot(par.kgrid,sol.v)
                xlabel({'$k_{t}$'},'Interpreter','latex')
                ylabel({'$v_t(k_t,A_t)$'},'Interpreter','latex') 
            title('Value Function')
            
            %% Plot simulated output.

            tgrid = linspace(1,par.T,par.T);

            figure(7)

            plot(tgrid,sim.ysim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$y^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Output')

            %% Plot simulated capital choice.

            figure(8)

            plot(tgrid,sim.ksim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$k^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Capital Choice')

            %% Plot simulated consumption.

            figure(9)

            plot(tgrid,sim.csim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$c^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Consumption')

            %% Plot simulated investment.

            figure(10)

            plot(tgrid,sim.isim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$i^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Investment')


            %% Plot simulated labor supply.

            figure(11)

            plot(tgrid,sim.nsim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$n^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Labor Supply')

            %% Plot simulated utility.

            figure(12)

            plot(tgrid,sim.usim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$u^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Utility')

            %% Plot simulated productivity.

            figure(13)

            plot(tgrid,sim.Asim)
                xlabel({'Time'},'Interpreter','latex')
                ylabel({'$A^{sim}_t$'},'Interpreter','latex') 
            title('Simulated Productivity')

        end
        
    end
end