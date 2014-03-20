# Internal: defaults
class git::params {

  case $::operatingsystem {
    Darwin: {
      include boxen::config

      $configdir = "${boxen::config::configdir}/git"
      $credentialhelper = "${boxen::config::repodir}/script/boxen-git-credential"
      $global_credentialhelper = "${boxen::config::home}/bin/boxen-git-credential"
      $global_excludesfile = "${configdir}/gitignore"

      $version = '1.9.1'
    }

    default: {
      fail('Unsupported operating system!')
    }
  }
}
