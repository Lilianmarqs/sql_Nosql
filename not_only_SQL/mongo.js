//dois exemplos de formas de criar uma coleção: 
db.usuarios.insertOne({});
db.createCollection("destinos")

//Inserindo documentos: 
db.usuarios.insertOne({
    "nome": "Lilian",
    "email": "lilian@teste.com",
    "idade": "26",
    "data_nascimento":"1997-04-16"})

//inserindo vários documentos: 
db.usuarios.insertMany([
    {   
        "nome": "Lilian",
        "idade": 26,
        "email": "lilian@teste.com",
        "endereco": "Rua Borboletas, 617 - Flores, Uberlândia/MG"
    },
    {   
        "nome": "Lilian",
        "idade": 26,
        "email": "lilian@teste.com",
        "endereco": "Rua Borboletas, 617 - Flores, Uberlândia/MG"
    },

]);

//inserindo mais usuários: 
db.usuarios.insertMany([{
    nome: "João",
    idade: 25,
    cidade: "São Paulo",
    estado: "SP",
    endereco: {
      rua: "Avenida Principal",
      numero: 123,
      cidade: "São Paulo",
      estado: "SP"
    }
  }, {
    nome: "Maria",
    idade: 30,
    cidade: "Rio de Janeiro",
    estado: "RJ",
    endereco: {
      rua: "Rua Secundária",
      numero: 456,
      cidade: "Rio de Janeiro",
      estado: "RJ"
    }
},{
    nome: "Carlos",
    idade: 20,
    cidade: "São Paulo",
    estado: "SP",
    endereco: {
      rua: "Rua Principal",
      numero: 789,
      cidade: "São Paulo",
      estado: "SP"
    }
  },{
    nome: "Ana",
    idade: 35,
    cidade: "São Paulo",
    estado: "SP",
    endereco: {
      rua: "Avenida Secundária",
      numero: 1011,
      cidade: "São Paulo",
      estado: "SP"
    }
    }
    ,  
    {
    nome: "Pedro",
    idade: 28,
    cidade: "Belo Horizonte",
    estado: "MG",
    endereco: {
      rua: "Rua Principal",
      numero: 1314,
      cidade: "Belo Horizonte",
      estado: "MG"
    }
  }]);


//Consultando documentos: 

db.usuarios.find({}); 
db.usuarios.find({"nome:": "João"});
db.usuarios.findOne({"nome":"Lilian"})
db.usuarios.updateOne({"nome":"Lilian"}, {$set:{idade:27}}) // alteração de documentos
db.usuarios.findOneAndDelete({"nome":"Lilian"}) //apagar documento
db.usuarios.deleteOne({"nome":"João"}) //apagar documento
db.usuarios.updateOne({"nome":"Lilian"}, {$set:{"viagens":0}})
db.usuarios.updateOne({"nome":"Lilian"}, {$inc:{"viagens":1}})  //Incremento
db.usuarios.updateOne({"nome":"Lilian"}, {$set:{"interesse":["culinaria"]}}) //array de string
db.usuarios.updateOne({"nome":"Lilian"}, {$push:{"interesse":"filmes"}})  //Incremetando array

b.usuarios.find({ $and: [{ idade: { $gte: 18 } }, { cidade: "São Paulo" }] });

db.usuarios.find({ $or: [{ idade: { $lt: 18 } }, { cidade: "Rio de Janeiro" }] });

db.usuarios.find({ idade: { $not: { $eq: 25 } } });

// Operadores de Comparação
db.usuarios.find({ idade: { $eq: 25 } });

db.usuarios.find({ idade: { $ne: 30 } }); //o operador $ne é negação

db.usuarios.find({ idade: { $gt: 30 } });

db.usuarios.find({ idade: { $gte: 30 } });

db.usuarios.find({ idade: { $lt: 30 } });

db.usuarios.find({ idade: { $lte: 30 } });

db.usuarios.find({ cidade: { $in: ["São Paulo", "Rio de Janeiro"] } });

db.usuarios.find({ cidade: { $nin: ["São Paulo", "Rio de Janeiro"] } });


// Projeção
db.usuarios.find({}, { nome: 1, idade: 1 })

// Ordenação
db.usuarios.find().sort({ idade: 1 })
// Limitação
db.usuarios.find().limit(10)
// Paginação
db.usuarios.find().skip(10).limit(5)