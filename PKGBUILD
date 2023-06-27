# Maintainer: Ernestas Damanskis <ernestasdamanskis@gmail.com>
pkgname='devify'
pkgver=1
pkgrel=1
pkgdesc="Udev device notifications"
arch=('x86_64')
url="https://github.com/pog102/devfy"
license=('MIT')
depends=('libnotify')
makedepends=('git')
source=("devify::git//github.com/pog102/devfy.git")
md5sums=('SKIP')

pkgver()
{
  cd "$pkgname"
  echo $(git rev-list --count HEAD).$(git rev-parse --short HEAD)
}


build() {
	cd "$pkgname"
	make
}

package() {
	cd "$pkgname"
	make DESTDIR="$pkgdir/" install
}
