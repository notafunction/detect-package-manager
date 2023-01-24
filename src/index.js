import { detect } from 'detect-package-manager'
import { setOutput, info, error, setFailed } from '@actions/core'

detect().then((result) => {

  setOutput('manager', result)
  info(`Detected ${result} package manager`)

}).catch((error) => {

  error(error.message)
  setFailed(error.message)

})