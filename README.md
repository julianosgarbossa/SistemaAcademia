# 🏋️‍♂️ Sistema Academia

Sistema de gerenciamento para academias desenvolvido em Swift aplicando conceitos fundamentais de Programação Orientada a Objetos.

## 📚 Sobre o Projeto

Este projeto foi desenvolvido como projeto final do curso **[Programação Orientada a Objetos em Swift](https://computacao.mackenzie.br/programacao-orientada-a-objetos-em-swift/)**, oferecido pelo Mackenzie / Open Academy / TIC em Trilhas.

O objetivo era criar um sistema completo de gerenciamento para academias, aplicando na prática os principais pilares e conceitos da POO, incluindo herança, polimorfismo, protocolos, composição e encapsulamento.

## 🎯 Conceitos de POO Aplicados

O projeto demonstra a aplicação prática de diversos conceitos fundamentais:

- **🔄 Herança** - Hierarquia de classes (Pessoa → Aluno/Instrutor, Plano → PlanoMensal/PlanoAnual, Aula → AulaPersonal/AulaColetiva)
- **🎭 Polimorfismo** - Comportamentos especializados através de sobrescrita de métodos
- **📋 Protocolos** - Contrato de manutenção para equipamentos da academia
- **🧩 Composição** - Construção de objetos complexos a partir de outros objetos
- **🔒 Encapsulamento** - Controle de acesso com modificadores (`private`, `private(set)`)
- **🔀 Sobrecarga** - Múltiplas versões do método de matrícula
- **📦 Extensions** - Extensão de funcionalidades da classe Academia
- **🎲 Enumerações** - Níveis de aluno (iniciante, intermediário, avançado)
- **📊 Tuplas** - Agrupamento de dados para geração de relatórios
- **📚 Coleções** - Uso de Dicionários e Arrays para gerenciar dados

## ✨ Funcionalidades

### Gerenciamento de Pessoas
- ✅ Matricular alunos com planos diferenciados
- ✅ Contratar instrutores com especialidades
- ✅ Buscar alunos por matrícula
- ✅ Listar todos os alunos (ordenados alfabeticamente)

### Gerenciamento de Aulas
- ✅ Criar aulas personalizadas (Personal)
- ✅ Criar aulas coletivas com controle de capacidade
- ✅ Inscrever alunos em aulas coletivas
- ✅ Validação de vagas disponíveis
- ✅ Listar todas as aulas disponíveis

### Gerenciamento de Equipamentos
- ✅ Adicionar aparelhos ao sistema
- ✅ Registrar manutenções preventivas
- ✅ Controlar histórico de manutenção

### Relatórios
- ✅ Gerar relatório consolidado (total de alunos, instrutores e aulas)
- ✅ Visualizar descrições detalhadas de todos os elementos

## 🛠️ Tecnologias Utilizadas

- **Swift** - Linguagem de programação
- **Swift Playground** - Ambiente de desenvolvimento e simulação
- **Programação Orientada a Objetos** - Paradigma aplicado

## 📋 Estrutura do Projeto

O projeto foi desenvolvido em 4 fases progressivas:

### Dia 1: Fundações
- Modelagem da hierarquia de Pessoas (Pessoa, Aluno, Instrutor)
- Criação da hierarquia de Planos (Plano, PlanoMensal, PlanoAnual)
- Implementação de enumeração NivelAluno

### Dia 2: Componentes e Contratos
- Criação do protocolo Manutenção
- Modelagem da classe Aparelho
- Estrutura de Aulas com composição (Aula, AulaPersonal, AulaColetiva)

### Dia 3: Centralização
- Desenvolvimento da classe Academia (núcleo do sistema)
- Implementação de coleções (Dicionários e Arrays)
- Aplicação de sobrecarga de métodos
- Métodos de busca e listagem

### Dia 4: Integração e Demonstração
- Simulação completa do sistema
- Demonstração prática de polimorfismo
- Geração de relatórios com tuplas
- Uso de extensions

## 🚀 Como Executar

1. **Clone o repositório**
```bash
git clone https://github.com/julianosgarbossa/SistemaAcademia.git
```

2. **Abra o projeto**
```bash
cd SistemaAcademia
open SistemaAcademia.playground
```

3. **Execute no Xcode**
- Abra o arquivo `.playground` no Xcode
- Pressione `⌘ + Shift + Return` para executar
- Visualize os resultados no console
