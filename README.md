## Deploy do teste


O proposto é criar um script de provisionamento utilizando a ferramenta de automação Ansible. Esse script deve ser capaz de, quando executado, tornar uma instalação minimal do Centos 6.7 em um ambiente pronto para executar uma de nossas aplicações, seguindo os requerimentos abaixo:

- Container Java para executar a aplicação, como Tomcat ou Jetty.
- Servidor WEB Nginx configurado como proxy reverso para a aplicação sendo executada no container, de modo a servir conteúdo HTTPS utilizando um certificado auto-assinado gerado em tempo de execução do script e forçando redirecionamento de requisições HTTP para HTTPS.
- Banco de dados NoSql MongoDB configurado com autenticação e base de dados ZupDB criada com informações de login a seu critério.
- Configurações de Firewall de modo a permitir conexões externas apenas na porta 22, 80 e 443.
- Certificar que todos os componentes descritos acima sejam executados com usuários não privilegiados.

O playbook é executado localmente, com o usuário local admin. Para executar inicie com:

	ansible-playbook -i hosts site.yml

Para alterar o usuário inicie com:
	ansible-playbook -i hosts site.yml -e "uservar=usuario"

O usuário para login na base de dados MongoDB e para o gerenciador de aplicações do tomcat é:

	zupadmin / zuppass
