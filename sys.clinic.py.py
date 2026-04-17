#importa a biblioteca responsavel pela conexao com o mysql
import mysql.connector

def conectar_banco(ip,usuario,senha,porta,banco):
    conexao = mysql.connector.connect(
        host=ip,
        user=usuario,
        password=senha,
        port=porta,
        database=banco,
    )

    print('Conexão efetuada com sucesso')

    return conexao

conectar_banco('localhost','root','lucas14*','3306','db_sys_clinic')
#funcao que cria e retorna a conexão com o banco de dados
def conectar():
    try:
        conexao = mysql.connector.connect(
            host='localhost',
            user='root',
            password='lucas14*',
            database='db_sys_clinic'
        )
        print('Conectado')
        return conexao
    except Exception as erro:
        print('Erro ao conectar:', erro)

#clientes
def inserir_clientes(conexao, nome, telefone, email):
    try:
        #validaçao de email
        if '@' not in email or '.' not in email:
            print("Email inválido!")
            return

        cursor = conexao.cursor()
        sql = "INSERT INTO tb_clientes (nome, telefone, email) VALUES (%s, %s, %s)"
        cursor.execute(sql, (nome, telefone, email))
        conexao.commit()
        print("Cliente cadastrado!")

    except Exception as erro:
        conexao.rollback()
        print('Erro ao inserir cliente:', erro)

def listar_clientes(conexao):
    try:
        cursor = conexao.cursor()
        cursor.execute('SELECT * FROM tb_clientes')
        for c in cursor.fetchall():
            print(c)
    except Exception as erro:
        print('Erro ao listar clientes:', erro)

def deletar_cliente(conexao, id):
    try:
        cursor = conexao.cursor()
        cursor.execute('DELETE FROM tb_clientes WHERE id_cliente1 = %s', (id,))
        conexao.commit()
        print('Cliente deletado com sucesso!')
    except Exception as erro:
        print('Erro ao deletar cliente:', erro)

def atualizar_cliente(conexao, id,nome):
    try:
        cursor = conexao.cursor()
        cursor.execute('UPDATE tb_clientes SET nome = %s WHERE id_cliente = %s', (nome, id))
        conexao.commit()
        print('Cliente atualizado com sucesso!')
    except Exception as erro:
        print('Erro ao atualizar cliente:', erro)

#medicos
def inserir_medicos(conexao, nome, telefone, crm, especialidade):
    try:
        cursor = conexao.cursor()
        cursor.execute(
            'INSERT INTO tb_medicos (nome, telefone, crm, especialidade) VALUES (%s, %s, %s, %s)',
            (nome, telefone, crm, especialidade)
        )
        conexao.commit()
        print('Médico inserido com sucesso!')
    except Exception as erro:
        conexao.rollback()
        print('Erro ao inserir médico:', erro)

def listar_medico(conexao):
    try:
        cursor = conexao.cursor()
        cursor.execute('SELECT * FROM tb_medicos')
        for m in cursor.fetchall():
            print(m)
    except Exception as erro:
        print('Erro ao listar medicos:', erro)

def deletar_medico(conexao, id):
    try:
        cursor = conexao.cursor()
        cursor.execute('DELETE FROM tb_medicos WHERE id = %s', (id,))
        conexao.commit()
        print('Médico deletado com sucesso!')
    except Exception as erro:
        print('Erro ao deletar médico:', erro)

def atualizar_medico(conexao, id, nome):
    try:
        cursor = conexao.cursor()
        cursor.execute('UPDATE tb_medicos SET nome = %s WHERE id = %s', (nome, id))
        conexao.commit()
        print('Médico atualizado com sucesso!')
    except Exception as erro:
        print('Erro ao atualizar médico:', erro)

#agendamento
def inserir_agendamentos(conexao, id_cliente, id_medico, data, hora, observacao):
    try:
        cursor = conexao.cursor()
        cursor.execute('''
            INSERT INTO tb_agendamentos
            (id_cliente, id_medico, data_agendamento, hora_agendamento, observacao)
            VALUES (%s, %s, %s, %s, %s)
        ''', (id_cliente, id_medico, data, hora, observacao))

        conexao.commit()
        print('Cliente agendado com sucesso!')
    except Exception as erro:
        conexao.rollback()
        print('Erro ao agendar:', erro)

def listar_agendamentos(conexao):
    try:
        cursor = conexao.cursor()
        cursor.execute('SELECT * FROM tb_agendamentos')
        for a in cursor.fetchall():
            print(a)
    except Exception as erro:
        print('Erro ao listar agendamentos:', erro)

def deletar_agendamento(conexao, id):
    try:
        cursor = conexao.cursor()
        cursor.execute('DELETE FROM tb_agendamentos WHERE id = %s', (id,))
        conexao.commit()
        print('Agendamento deletado com sucesso!')
    except Exception as erro:
        print('Erro ao deletar agendamento:', erro)

def atualizar_status(conexao, id, status):
    try:
        cursor = conexao.cursor()
        cursor.execute(
            'UPDATE tb_agendamentos SET status_agendamento = %s WHERE id = %s',(status, id)
        )
        conexao.commit()
        print('Status atualizado com sucesso!')
    except Exception as erro:
        print('Erro ao atualizar status:', erro)

#menu
def menu():
    conexao = conectar()

    while True:
        print('\n=== SYSCLINIC ===')
        print('1 - Clientes')
        print('2 - Médicos')
        print('3 - Agendamentos')
        print('0 - Sair')

        op = input('Escolha: ')

        if op == '1':
            print('1-Cadastrar 2-Listar 3-Deletar 4-Atualizar')
            c = input('Opção: ')

            if c == '1':
                inserir_clientes(conexao,
                    input('Nome: '),
                    input('Telefone: '),
                    input('Email: '))
            elif c == '2':
                listar_clientes(conexao)
            elif c == '3':
                deletar_cliente(conexao, input('ID: '))
            elif c == '4':
                atualizar_cliente(conexao,
                    input('ID: '),
                    input('Novo nome: '))

        elif op == '2':
            print('1-Cadastrar 2-Listar 3-Deletar 4-Atualizar')
            m = input('Opção: ')

            if m == '1':
                inserir_medicos(conexao,
                    input('Nome: '),
                    input('Telefone: '),
                    input('CRM: '),
                    input('Especialidade: '))
            elif m == '2':
                listar_medico(conexao)
            elif m == '3':
                deletar_medico(conexao, input('ID: '))
            elif m == '4':
                atualizar_medico(conexao,
                    input('ID: '),
                    input('Novo nome: '))

        elif op == '3':
            print('1-Cadastrar 2-Listar 3-Deletar 4-Atualizar Status')
            a = input('Opção: ')

            if a == '1':
                inserir_agendamentos(conexao,
                    input('ID Cliente: '),
                    input('ID Médico: '),
                    input('Data (YYYY-MM-DD): '),
                    input('Hora (HH:MM): '),
                    input('Obs: '))
            elif a == '2':
                listar_agendamentos(conexao)
            elif a == '3':
                deletar_agendamento(conexao, input('ID: '))
            elif a == '4':
                atualizar_status(conexao,
                    input('ID: '),
                    input('Novo status: '))

        elif op == '0':
            print('Saindo...')
            break

menu()


