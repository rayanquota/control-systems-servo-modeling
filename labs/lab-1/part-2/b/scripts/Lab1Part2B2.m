%% ===== Part B.2: Closed-Loop Transfer Functions, Poles, and Zeros ===== %%

% Define proportional gain values
K_values = [2, 5, 10];

% Preallocate cell arrays to store results
G = cell(1,3);
T = cell(1,3);

% Loop through each gain value
for i = 1:length(K_values)

    k = K_values(i);

    % Closed-loop denominator for unity feedback system
    % (s+1)^2 + k = s^2 + 2s + (1 + k)
    den = [1 2 (1 + k)];

    % Create open-loop transfer function
    G{i} = tf(k, den);

    % Compute closed-loop transfer function with unity feedback
    T{i} = feedback(G{i}, 1);

    % Display closed-loop transfer function
    fprintf('\nClosed-loop Transfer Function for k = %d:\n', k);
    disp(T{i});

    % Extract poles and zeros using roots()
    poles = roots(T{i}.Denominator{1});
    zeros_ = roots(T{i}.Numerator{1});

    % Display poles and zeros
    fprintf('Poles for k = %d:\n', k);
    disp(poles);

    fprintf('Zeros for k = %d:\n', k);
    disp(zeros_);

end
