from faker import Faker
fake=Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return  hashed 

def factory_user(target):

    data={
        'faker':{
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email':{
            'name': 'Pedro',
            'lastname': 'De Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'abc123'
        },
        'login': {
            'name' : 'Fernando',
            'lastname': 'Papito',
            'email': 'papito@hotmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@do.com',
            'password': 'pwd123',
            'geek_profile' :{
            'whats': '12345678910',
            'desc': 'Seu computador está lento ? Reiniciando do nada ? Talvez Seja Virus bla bla bla bla poe fogo nele que é melhor',
            'printer_repair': 'Sim',
            'work': 'Remoto',
            'cost': '100'
        }
        },
        'attempt_be_geek':{
            'name': 'Dio',
            'lastname': 'Linux',
            'email': 'dio@linux.com',
            'password': 'pwd123',
            'geek_profile' :{
            'whats': '21988888888',
            'desc': 'Contando caracteres  Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres Contando caracteres ',
            'printer_repair': 'Não',
            'work': 'Remoto',
            'cost': '150'
            }
}
}


    return data[target ]