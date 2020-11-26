<div class="row pt-5" style="margin-right: 0px;margin-left: 0px;">
    <div class="col-md-6 mt-5">
        <div class="profile-header">
            <h2>
                <fa-icon [icon]="faCut"></fa-icon> Serviços Cadastrados
            </h2>
        </div>
        <div class="profile-a ">
            <form class="example-form">
                <table class="table" style="text-align: center;">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Nome</th>
                            <th>Valor</th>
                            <th>Tempo</th>
                            <th>#</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr *ngFor="let item of servicos">
                            <th scope="row">
                                {{item.id}}
                            </th>
                            <th scope="row">
                                {{item.nome}}
                            </th>
                            <th scope="row">
                                {{item.valor}}
                            </th>
                            <th scope="row">
                                {{item.tempo}} minutos
                            </th>
                            <th>
                                <fa-icon class="mr-3" [icon]="faPencilAlt"></fa-icon>
                                <fa-icon [icon]="faTrash"></fa-icon>
                            </th>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>

    <div class="col-md-6 mt-5">
        <div class="profile-header">
            <h2>
                <fa-icon [icon]="faPlus"></fa-icon> Cadastrar Serviço
            </h2>
        </div>
        <div class="profile-a ">
            <form class="example-form" style="text-align: left;">
                <div class="row">
                    <div class="col-md-4">
                        <tr>
                            <th>
                                Nome do Serviço:
                            </th>
                            <td><input type="text" class="form-control ml-3"> </td>
                        </tr>
                    </div>

                    <div class="col-md-4">
                        <tr>
                            <th>
                                Valor:
                            </th>
                            <td><input type="number" class="form-control ml-3"> </td>
                        </tr>
                    </div>

                    <div class="col-md-4">
                        <tr>
                            <th>
                                Tempo:
                            </th>
                            <td><input type="time" class="form-control ml-3"> </td>
                        </tr>
                    </div>
                </div>
                <button class="btn btn-primary mt-5">
<fa-icon [icon]="faPlus"></fa-icon> Adicionar Serviço
</button>

            </form>
        </div>
    </div>
</div>