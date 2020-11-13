<nav class="sb-navbar navbar navbar-expand-lg sb-bg-black fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.php">
            <img 
                src="assets/images/logo-invertida.png" 
                alt="logo"
                class="logo"
            />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
            <i class="fa fa-times icon-close"></i>
            <i class="fa fa-bars icon-open"></i>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ml-auto sb-w-700">
                <li class="nav-item align-self-center">                   
                    <a 
                        class="nav-link" 
                        data-toggle="modal"
                        data-target="#modal-agendamentos"
                        href="#"
                    >
                        AGENDAMENTOS
                    </a>
                </li>
                <li class="nav-item align-self-center">                   
                    <a 
                        class="nav-link" 
                        data-toggle="modal"
                        data-target="#modal-perfil"
                        href="#"
                    >
                        PERFIL
                    </a>
                </li>
                <li class="nav-item align-self-center">
                    <a class="nav-link sb-btn-outline-secondary sb-w-700 pr-3 pl-3" href="#">
                        SAIR 
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Modal Agendamentos -->
<div class="modal fade" id="modal-agendamentos" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title sb-txt-secondary sb-w-700">
                    Agendamentos
                </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true" class="sb-txt-white">
                        &times;
                    </span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="sb-txt-white sb-w-500">
                    Não há agendamentos feitos
                </h5>

                <!-- <div class="row">
                    <div class="col-sm-12 mt-1 mb-1">
                        <div class="card shadow-sm sb-bg-black">
                            <div class="card-body">
                                <h5 class="sb-txt-secondary sb-w-700 mb-2">
                                    Nome da Barbearia
                                </h5>
                                <h6 class="sb-txt-white sb-w-500">
                                    <i class="fa fa-calendar"></i>
                                    <span class="ml-1">Data: 01/01/2021</span>
                                </h6>
                                <h6 class="sb-txt-white sb-w-500">
                                    <i class="fa fa-clock-o"></i>
                                    <span class="ml-1">Horário: 09H30</span>
                                </h6>
                                <h6 class="sb-txt-white sb-w-500">
                                    <i class="fa fa-cut"></i>
                                    <span class="ml-1">Serviço: Corte de Cabelo</span>
                                </h6>
                                <h6 class="sb-w-500 sb-txt-white">
                                    <i class="fa fa-map-marker"></i>
                                    <span class="ml-1">
                                        Rua exemplo | Nº 127 | George Américo
                                    </span>
                                </h6>
                                <h6 class="sb-txt-white sb-w-500">
                                    <i class="fa fa-phone"></i>
                                    <span class="ml-1">Telefone: (75) 98888-7777</span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary sb-w-700" data-dismiss="modal">
                    Fechar
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Model Perfil -->
<div class="modal fade" id="modal-perfil" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title sb-txt-secondary sb-w-700">
                    Perfil
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true" class="sb-txt-white">
                        &times;
                    </span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form-perfil">
                    <!-- Nome -->
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-4 col-form-label sb-txt-white">
                            Nome:
                        </label>
                        <div class="col-sm-8">
                            <input 
                                type="text" 
                                class="form-control-plaintext sb-form-input pl-2" 
                                value="João Carlos Ferreira Neto"
                                id="input-nome"
                                readonly 
                            >
                        </div>
                    </div>

                    <!-- Telefone -->
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-4 col-form-label sb-txt-white">
                            Telefone:
                        </label>
                        <div class="col-sm-8">
                            <input 
                                type="text" 
                                class="form-control-plaintext sb-form-input pl-2 maskTelefone" 
                                value="(75) 97999-8888"
                                id="input-telefone"
                                readonly 
                            >
                        </div>
                    </div>

                    <!-- Data de Nascimento -->
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-5 col-form-label sb-txt-white">
                            Data de Nascimento:
                        </label>
                        <div class="col-sm-7">
                            <input 
                                type="date" 
                                class="form-control-plaintext sb-form-input pl-2" 
                                value="2000-01-01"
                                id="input-data-nascimento"
                                readonly 
                            >
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-4 col-form-label sb-txt-white">
                            Email:
                        </label>
                        <div class="col-sm-8">
                            <input 
                                type="email" 
                                class="form-control-plaintext sb-form-input pl-2" 
                                value="teste@teste.com"
                                id="input-email"
                                readonly 
                            >
                        </div>
                    </div>

                    <div class="btn-salvar">
                        <button 
                            class="btn sb-btn-secondary sb-w-700"
                            id="salvar"
                        >
                            Salvar Alterações
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary sb-w-700" data-dismiss="modal">
                    Fechar
                </button>
                <button 
                    class="btn sb-btn-secondary sb-w-700"
                    id="editar"
                >
                    Editar
                </button>
            </div>
        </div>
    </div>
</div>

