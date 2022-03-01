//import {PrismaClient} from '@prisma/client'



const express = require('express')
const app = express()
const port = 5000

const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

//prisma async code to retrive code from my sql database

app.get('/', async (req, res) => {
    const product = await prisma.products.findMany({})
    console.log(product)
    res.json(product)
  })

app.get('/post', (req, res) => {
  res.send('Hello World!')
})


app.post("/new_product", async (req, res) => {
    const product = await prisma.products.create({
      data: {
        pname: 'shoe',
        pdescription: 'SOOW34',
        pcolour: " RMW SHOOTS 185",
      },
  })
  })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})