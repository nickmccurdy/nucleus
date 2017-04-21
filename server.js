import Index from './pages'
import Koa from 'koa'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'

const app = new Koa()

app.use(ctx => { ctx.body = renderToStaticMarkup(<Index/>) })

app.listen(3000)
