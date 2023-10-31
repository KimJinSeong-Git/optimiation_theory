clc; clear;

% 목적 함수 정의
objective = @(x) x(1) * x(2) * x(3);

% 초기 추정값 설정 (Ct(1), Ct(2), Ct(3))
x0 = [1, 1, 1];

% 제약 조건 함수 정의
% g_1: dt ≥ P / (π * S_y * t)
% g_2: d ≥ sqrt((104 * ρ * L^3) / E)
% g_3: t ≥ 0.05
% g_4: d ≥ 10t

P = 100;

constraint = @(x) [x(1) * x(3) - P / (pi * S_y * x(3));
                   sqrt((104 * rho * L^3) / E) - x(2);
                   0.05 - x(3);
                   10 * x(3) - x(1)];

% 제약 조건의 하한과 상한 정의 (lb와 ub)
lb = [0, 0, 0];  % 하한 (모든 파라미터는 0 이상)
ub = [Inf, Inf, Inf];  % 상한 (파라미터에 상한을 설정하지 않음)

% 최적화 실행
options = optimoptions('fmincon', 'Display', 'iter');  % 최적화 옵션 설정
[x_opt, fval, exitflag, output] = fmincon(objective, x0, [], [], [], [], lb, ub, constraint, options);

% 결과 출력
disp(['최적 파라미터 Ct(1): ', num2str(x_opt(1))]);
disp(['최적 파라미터 Ct(2): ', num2str(x_opt(2))]);
disp(['최적 파라미터 Ct(3): ', num2str(x_opt(3))]);
disp(['최소 목적 함수 값: ', num2str(fval)]);
