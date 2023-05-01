# maintainer fhdk - https://github.com/fhdk/lxqt-kwin
pkgname="lxqt-kwin-settings"
pkgdesc="lxqt kwin theme"
pkgver=0.2
pkgrel=1
arch=('any')
license=('AGPLv3')
url='https://github.com/fhdk/lxqt-kwin'

package(){
    install -d -m755 $pkgdir/etc
    install -d -m755 $pkgdir/root
    install -d -m755 $pkgdir/usr
    cp -r $startdir/etc $startdir/usr $startdir/root $pkgdir
}
