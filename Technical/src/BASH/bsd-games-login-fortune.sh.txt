#!/bin/sh
# Print a fortune cookie for interactive shells:
if [[ $- = *i* ]]; then
  echo
  fortune amistad.fortunes arte.fortunes asimov.fortunes ciencia.fortunes deprimente.fortunes familia.fortunes filosofia.fortunes humanos.fortunes informatica.fortunes lao-tse.fortunes leydemurphy.fortunes libertad.fortunes nietzsche.fortunes pintadas.fortunes poder.fortunes proverbios.fortunes refranes.fortunes sabiduria.fortunes schopenhauer.fortunes sentimientos.fortunes verdad.fortunes vida.fortunes
  echo
fi
