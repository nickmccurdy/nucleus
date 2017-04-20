import Index from '../pages'
import { create } from 'react-test-renderer'

describe('Pages', () => {
  describe('Index', () => {
    it('Renders', () => {
      create(<Index/>)
    })
  })
})
