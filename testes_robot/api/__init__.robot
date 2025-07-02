*** Settings ***
# Configurações compartilhadas por todos os testes da pasta
Library    RequestsLibrary
Library    Collections
Suite Setup    Log    Iniciando suíte de testes da API...
Suite Teardown    Log    Suíte de testes concluída.

*** Variables ***
${BASE_URL}    https://serverest.dev