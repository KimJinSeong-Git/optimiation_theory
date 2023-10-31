p = 1.5^3;
q = 2^3;

% 최소화할 함수 정의 (l^2)
fun = @(x) x^2 + (p + q)^2;

% 함수의 최소값을 찾기 위해 fminunc 사용
x_optimal = fminunc(fun, 0);

% 최적 x∗를 사용하여 l∗ 계산
l_optimal = sqrt(x_optimal^2 + (p + q)^2);

% 결과 표시
fprintf('최적 x∗ 값: %.4f\n', x_optimal);
fprintf('해당하는 l∗ 값: %.4f\n', l_optimal);
