/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
const { execSync } = require('child_process');
const { platform } = require('process');

if (platform === 'darwin') {
  execSync('ruby ' + __dirname + '/copy_resource.rb');
}
