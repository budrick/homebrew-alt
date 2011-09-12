require 'formula'

class Imapsync < Formula
  url 'https://fedorahosted.org/released/imapsync/imapsync-1.456.tgz'
  homepage 'http://freshmeat.net/projects/imapsync/'
  md5 'e9ea9ab5eba11cfe1c62ae9be1d9d7ae'

  def install
    system 'perl', '-c', 'imapsync'
    system 'pod2man', 'imapsync', 'imapsync.1'
    bin.install 'imapsync'
    man1.install 'imapsync.1'
  end

  def caveats; <<-EOS.undent
      You must install Mail::IMAPClient and Authen::NTLM from CPAN:
          cpan -i Mail::IMAPClient Authen::NTLM
    EOS
  end


end
