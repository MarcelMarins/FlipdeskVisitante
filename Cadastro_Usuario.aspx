<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro_Usuario.aspx.cs" Inherits="Cadastro_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Flidesk</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (já inclui Bootstrap)-->
    <link href="dist/css/font-awesome.min.css" rel="stylesheet">
    <link href="dist/css/styles.css" rel="stylesheet" />
    <link href="dist/css/loginStyles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <header class="masthead1">
        <div class="container">
            <section class="form-02-main">
                <div class="row">
                    <div class="col-md-12">
                        <div class="_lk_de">
                            <form runat="server">
                                <h2>Cadastro de Atendente</h2>
                                <div class="form-03-main" style="width: 550px">
                                    <div class="logo">
                                        <a href="Index.aspx">
                                            <img src="dist/img/logo_transparente.png"></a>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" placeholder="Nome"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-Mail" TextMode="Email"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" placeholder="Senha" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="txtConfirmarSenha" runat="server" CssClass="form-control" placeholder="Confirmar Senha" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="checkbox form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="">
                                            <label class="form-check-label" for="">
                                                Concordo com os <u>Termos de Uso</u>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" CssClass="btn btn-lg w-50 rounded-pill btn-primary" Text="Cadastrar" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </header>

    <!-- RODAPÉ -->
    <footer class="footer py-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 text-lg-start">
                    Flipdesk&copy; 2022
                    <br>
                    Todos os direitos reservados
                </div>
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

