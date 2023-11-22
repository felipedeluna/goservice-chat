create database goservice_db;

INSERT INTO usuarios (dtype, id, email, habilitado, nome, perfil, senha)
VALUES
    ('Administrador', 1, 'arthuradmin@email.com', 1, 'Arthur Rafael', 'ADMIN', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Cliente', 2, 'arthurcliente@email.com', 1, 'Arthur Rafael', 'CLIENTE', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Prestador', 3, 'arthurprestador@email.com', 1, 'Arthur Rafael', 'PRESTADOR', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Administrador', 4, 'lunaadmin@email.com', 1, 'Felipe de Luna', 'ADMIN', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Cliente', 5, 'lunacliente@email.com', 1, 'Felipe de Luna', 'CLIENTE', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Prestador', 6, 'lunaprestador@email.com', 1, 'Felipe de Luna', 'PRESTADOR', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Administrador', 7, 'araujoadmin@email.com', 1, 'Felipe Araujo', 'ADMIN', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Cliente', 8, 'araujocliente@email.com', 1, 'Felipe Araujo', 'CLIENTE', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'), -- senha = 123456
    ('Prestador', 9, 'araujoprestador@email.com', 1, 'Felipe Araujo', 'PRESTADOR', '$2a$10$R3vVpSfoKUQ0zOFQjcd.QuvXFtcPhlFmpKn/GxNpdhisTahMYJuDG'); -- senha = 123456

INSERT INTO servicos (id, categoria, descricao, nome)
VALUES
    (1,'Limpeza','Esse serviço envolve a remoção de sujeira, manchas e odores de carpetes em residências ou escritórios.','Limpeza de carpetes'),
    (2, 'Manutenção', 'Esse serviço envolve a manutenção preventiva e corretiva de equipamentos eletrônicos em residências ou escritórios.', 'Manutenção de equipamentos eletrônicos'),
    (3, 'Consultoria', 'Esse serviço envolve a prestação de consultoria empresarial para empresas de pequeno e médio porte.', 'Consultoria empresarial'),
    (4, 'Entrega', 'Esse serviço envolve a entrega de produtos e encomendas em residências ou escritórios.', 'Entrega de produtos'),
    (5, 'Design', 'Esse serviço envolve a criação de projetos gráficos e visuais para empresas e indivíduos.', 'Design gráfico'),
    (6, 'Desenvolvimento', 'Esse serviço envolve o desenvolvimento de software e aplicativos para empresas e indivíduos.', 'Desenvolvimento de software'),
    (7, 'Marketing', 'Esse serviço envolve a criação e execução de campanhas de marketing para empresas e indivíduos.', 'Marketing digital'),
    (8, 'Suporte', 'Esse serviço envolve a prestação de suporte técnico para equipamentos eletrônicos em residências ou escritórios.', 'Suporte técnico'),
    (9, 'Saúde', 'Esse serviço envolve a prestação de serviços de saúde para empresas e indivíduos.', 'Serviços de saúde'),
    (10, 'Treinamento', 'Esse serviço envolve a prestação de treinamento e capacitação para empresas e indivíduos.', 'Treinamento empresarial');


SELECT * FROM usuarios;

SELECT * FROM servicos;