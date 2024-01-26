w = 0 : .1 : 100 ;

K_B = 1.381e-23 ; T = 300 ;
nu = 1e-3 ; a = 0.75e-6 ; k = 1e-3 ;
gamma = 6 * pi * nu * a ;
w_c = k / gamma ;
S_xi = gamma * K_B * T ;


PS_UD =  S_xi ./ ( gamma^2 * ( w_c^2 + w.^2 ) ) ;

vol = 3 / 4 * pi * a^3 ;
rho = 2000 ;
m = vol * rho ;
for k = ( 1 : 1 : 10 ) * 1e-4 ;
    
m_eff = 2 * pi * sqrt( m / k ) ;
Omega = sqrt( k / m_eff ) ; Gamma = gamma / m_eff ;
%PS_OD =  S_xi ./ ( ( w.^2 - Omega ).^2 + w.^2 * Gamma^2 ) ;
PS_OD =  Gamma * Omega^2 * K_B * T ./ ( ( w.^2 - Omega^2 ).^2 + w.^2 * Gamma^2 ) / k / pi;


semilogy ( w , PS_OD )
hold on
end
hold off