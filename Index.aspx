<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">


    <!--------------------->


    <!-- CARD PRINCIPAL -->
    <header class="masthead">
        <div class="container">
            <div class="masthead-heading text-uppercase mb-4">FLIPDESK</div>
            <!--<div class="masthead-subheading pb-5">Cada mensagem é uma nova oportunidade</div>-->
            <div class="teste pb-5">Cada mensagem é uma nova oportunidade</div>

            <a class="btn btn-primary btn-xl text-uppercase" href="Cadastro_Empresa.aspx">Fazer meu cadastro</a>
        </div>
    </header>


    <!--------------------->


    <!-- RECURSOS -->
    <section class="page-section" id="services">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Recursos do sistema Flipdesk</h2>
                <h3 class="section-subheading text-muted">O que podemos te oferecer?</h3>
            </div>

            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Venda Muito Mais!</h4>
                    <p class="text-muted">
                        A empresa que está sempre disposta a responder seus clientes rápido
                        certamente se destaca entre as outras. Um bom suporte atrai muitos clientes.
                    </p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Design Super Intuitivo</h4>
                    <p class="text-muted">
                        O Flipdesk possui uma interface simples que entrega praticidade e liberdade ao
                        usuário, resultando em um sistema de fácil manuseio e aprendizado.
                    </p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Segurança Extrema</h4>
                    <p class="text-muted">
                        Todos os dados do sistema são extremamente bem guardados conosco, isso inclui
                        os dados da empresa cadastrada e de seus respectivos clientes.
                    </p>
                </div>
            </div>
        </div>
    </section>


    <!--------------------->


    <!-- COMO FUNCIONA? -->
    <section class="page-section" id="about">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Como funciona?</h2>
                <h3 class="section-subheading text-muted">Estes passos vão te ajudar a entender como começar no Flipdesk
                </h3>
            </div>
            <ul class="timeline">
                <li>
                    <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="assets/img/about/1.jpg"
                            alt="..." />
                    </div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4>Cadastro da Empresa</h4>
                        </div>
                        <div class="timeline-body">
                            <p class="text-muted">
                                Um responsável da empresa precisa se cadastrar, informando alguns
                                dados da empresa e o número de celular para ser realizado os atendimentos.
                                Assim que cadastrado, você já poderá usar o sistema Flipdesk como ADMINISTRADOR.
                            </p>
                        </div>
                    </div>
                </li>
                <li class="timeline-inverted">
                    <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="assets/img/about/2.jpg"
                            alt="..." />
                    </div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4>Convide os outros Usuários</h4>
                        </div>
                        <div class="timeline-body">
                            <p class="text-muted">
                                Após você ter criado o seu cadastro no sistema e já possuir acesso,
                                basta
                                agora convidar os outros atendentes. Esse convite é feito através do sistema,
                                dentro das configurações de usuários. Nela, basta criar um novo usuários atendente
                                e informar o E-Mail dele.
                            </p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="assets/img/about/3.jpg"
                            alt="..." />
                    </div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4>Cadastro de Atendentes</h4>
                        </div>
                        <div class="timeline-body">
                            <p class="text-muted">
                                Estes usuários que o ADMINISTRADOR cadastrou receberão um E-Mail para
                                criarem
                                suas contas de atendente. Basta pedir para verificarem suas caixas
                                de entrada e se cadastrarem usando o link recebido pelo E-Mail, informando somente
                                alguns
                                dados básicos.
                            </p>
                        </div>
                    </div>
                </li>

                <li class="timeline-inverted">
                    <div class="timeline-image">
                        <h4>Pronto
                            <br />
                            para
                            <br />
                            atender!
                        </h4>
                    </div>
                </li>
            </ul>
        </div>
    </section>


    <!--------------------->


    <!-- CONTATO -->
    <section class="page-section" id="contact">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Alguma Dúvida?</h2>
                <h3 class="section-subheading text-light">Entre em contato conosco para ajudarmos!</h3>
            </div>
            <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                <div class="row align-items-stretch mb-5">
                    <div class="col-md-6">
                        <div class="form-group">
                            <!-- Nome input-->
                            <input class="form-control" id="name" type="text" placeholder="Nome*"
                                data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="name:required">Um nome é obrigatório</div>
                        </div>
                        <div class="form-group">
                            <!-- Email input-->
                            <input class="form-control" id="email" type="email" placeholder="Email*"
                                data-sb-validations="required,email" />
                            <div class="invalid-feedback" data-sb-feedback="email:required">
                                O seu E-Mail é obrigatório
                            </div>
                            <div class="invalid-feedback" data-sb-feedback="email:email">E-Mail inválido!</div>
                        </div>
                        <div class="form-group mb-md-0">
                            <!-- Celular input-->
                            <input class="form-control" id="phone" type="tel" placeholder="Celular*"
                                data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">
                                O seu celular é obrigatório
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group form-group-textarea mb-md-0">
                            <!-- Mensagem input-->
                            <textarea class="form-control" id="message" placeholder="Sua mensagem/dúvida"
                                data-sb-validations="required"></textarea>
                            <div class="invalid-feedback" data-sb-feedback="message:required">
                                Por favor preencha este
                                campo
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Submit sucesso -->
                <div class="d-none" id="submitSuccessMessage">
                    <div class="text-center text-white mb-3">
                        <div class="fw-bolder">Enviado com sucesso!</div>
                    </div>
                </div>
                <!-- Submit error -->
                <div class="d-none" id="submitErrorMessage">
                    <div class="text-center text-danger mb-3">Erro ao enviar mensagem</div>
                </div>
                <!-- Submit Button-->
                <div class="text-center">
                    <button class="btn btn-primary btn-xl text-uppercase disabled"
                        id="submitButton" type="submit">
                        Enviar</button>
                </div>
            </form>
        </div>
    </section>


    <!--------------------->


    <!-- RODAPÉ -->
    <footer class="footer py-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 text-lg-start">Flipdesk&copy; 2022
                    <br>
                    Todos os direitos reservados</div>
                <div class="col-lg-4 my-3 my-lg-0">
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i
                        class="fab fa-twitter"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i
                        class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i
                        class="fab fa-linkedin-in"></i></a>
                </div>
                <div class="col-lg-4 text-lg-end">
                    <a class="link-dark text-decoration-none me-3" href="#!">Politica de Privacidade</a>
                    <a class="link-dark text-decoration-none" href="#!">Termos de uso</a>
                </div>
            </div>
        </div>
    </footer>
</asp:Content>

