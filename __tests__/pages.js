import Index from '../pages'
import React from 'react'
import { create } from 'react-test-renderer'

describe('Pages', () => {
  describe('Index', () => {
    it('Renders', () => {
      create(<Index/>)
    })
  })
})
