Return-Path: <devicetree+bounces-62222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0158A8B05D5
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC13328A47F
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B98158D96;
	Wed, 24 Apr 2024 09:15:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE75158D79
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 09:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713950156; cv=none; b=M41ncYvk1sJl2/Bkh6rvPohhQnKM6G/iRbBwg5Rn/wv1vyG4mKuHTPsNHpsYO63FhZZ1MKvhncQ08by2ptipyar5wPM31m/t5tudQ2R1uCPkV4nQ9k7tF+Rt0auQl00jVafzNuUCi0Yv9EsN6+6inFy9JsrQiZPrv6I2GvYvNaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713950156; c=relaxed/simple;
	bh=NUJHTVDyXWUBLS9fMjJ9yqahqHrA5hMzPCLeMYQT6pY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Edqz1Q94+J+GPSreqMZLwFCh9ma/b7okinVvoog05x/f1wgULAR8yHVz0zIZUA7NtjQdVLyvNS5G8cnYvfRGWeWhNR2KRCFlHcmqn1mLmdD3KocOmtFcMYopxtf5Tm3NmRPCMrCF63IYU23rm9LGtTZrxVcOSWSUT18hHUZEXc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rzYj8-0001Uv-OK; Wed, 24 Apr 2024 11:15:42 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rzYj8-00E3KS-4a; Wed, 24 Apr 2024 11:15:42 +0200
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id AFC012BECBE;
	Wed, 24 Apr 2024 09:15:41 +0000 (UTC)
Date: Wed, 24 Apr 2024 11:15:40 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Thomas Kopp <thomas.kopp@microchip.com>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux@ew.tq-group.com, alexander.stein@ew.tq-group.com
Subject: Re: [PATCH 3/4] can: mcp251xfd: add gpio functionality
Message-ID: <20240424-convivial-flawless-sturgeon-976592-mkl@pengutronix.de>
References: <20240417-mcp251xfd-gpio-feature-v1-0-bc0c61fd0c80@ew.tq-group.com>
 <20240417-mcp251xfd-gpio-feature-v1-3-bc0c61fd0c80@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yiaol2clinc7dqpe"
Content-Disposition: inline
In-Reply-To: <20240417-mcp251xfd-gpio-feature-v1-3-bc0c61fd0c80@ew.tq-group.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--yiaol2clinc7dqpe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 17.04.2024 15:43:56, Gregor Herburger wrote:
> The mcp251xfd devices allow two pins to be configured as gpio. Add this
> functionality to driver.
>=20
> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
> ---
>  drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c   | 138 +++++++++++++++++=
+++++-
>  drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c |  21 +++-
>  drivers/net/can/spi/mcp251xfd/mcp251xfd.h        |   4 +
>  3 files changed, 159 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net=
/can/spi/mcp251xfd/mcp251xfd-core.c
> index eb699288c076..5ba9fd0af4b6 100644
> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c

[...]

> +static int mcp251fdx_gpio_setup(struct mcp251xfd_priv *priv)
> +{
> +	struct gpio_chip *gc =3D &priv->gc;
> +
> +	if (!device_property_present(&priv->spi->dev, "gpio-controller"))
> +		return 0;
> +
> +	if (priv->rx_int)
> +		return dev_err_probe(&priv->spi->dev, -EINVAL,
> +				     "Can't configure gpio-controller with RX-INT!\n");
> +
> +	gc->label =3D dev_name(&priv->spi->dev);
> +	gc->parent =3D &priv->spi->dev;
> +	gc->owner =3D THIS_MODULE;
> +	gc->request =3D mcp251xfd_gpio_request;
> +	gc->get_direction =3D mcp251xfd_gpio_get_direction;
> +	gc->direction_output =3D mcp251xfd_gpio_direction_output;
> +	gc->direction_input =3D mcp251xfd_gpio_direction_input;
> +	gc->get =3D mcp251xfd_gpio_get;
> +	gc->set =3D mcp251xfd_gpio_set;

Please also implement the get_multiple and set_multiple callbacks.

> +	gc->base =3D -1;
> +	gc->can_sleep =3D true;
> +	gc->ngpio =3D ARRAY_SIZE(mcp251xfd_gpio_names);
> +	gc->names =3D mcp251xfd_gpio_names;
> +
> +	return devm_gpiochip_add_data(&priv->spi->dev, gc, priv);
> +}
> +
>  static int
>  mcp251xfd_register_get_dev_id(const struct mcp251xfd_priv *priv, u32 *de=
v_id,
>  			      u32 *effective_speed_hz_slow,
> @@ -2142,6 +2270,12 @@ static int mcp251xfd_probe(struct spi_device *spi)

[...]

> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h b/drivers/net/can/=
spi/mcp251xfd/mcp251xfd.h
> index 24510b3b8020..e2ab486862d8 100644
> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
> @@ -14,6 +14,7 @@
>  #include <linux/can/core.h>
>  #include <linux/can/dev.h>
>  #include <linux/can/rx-offload.h>
> +#include <linux/gpio/driver.h>

please keep the includes alphabetically sorted.

>  #include <linux/gpio/consumer.h>
>  #include <linux/kernel.h>
>  #include <linux/netdevice.h>
> @@ -660,6 +661,9 @@ struct mcp251xfd_priv {
> =20
>  	struct mcp251xfd_devtype_data devtype_data;
>  	struct can_berr_counter bec;
> +#ifdef CONFIG_GPIOLIB
> +	struct gpio_chip gc;
> +#endif
>  };
> =20
>  #define MCP251XFD_IS(_model) \

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--yiaol2clinc7dqpe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmYozbkACgkQKDiiPnot
vG+JlQf/Z0y+ItFFGkL6UKJDn/wg8EonNLO7KkpG/pw9rOiZGFxGjyz6g6idzKx2
u/wsIGYj0LzUxzxwLQqoNwlxmSfuiD7rtuhf+IuT2/6XZVy0FNlzrw32f2A+TsUm
n0fAgKCTIVOlaoFIMaH9zn62M4A1PKffs4xYS4AvSWIGxUrNg5DJCPuZPl1vjujc
FDrv2D+yqHaDCYsKTtL5PUjf5pm1Cq5UFMrpPM7rFQ4Oz77LV50rSGsqXhr5bB1M
NjbIef/HNxJlFtOgVTV0a4LP3Y05yV2nTN73nSOfhWnHnmHg7j3kNsi0UVZ+RMho
kdEUjwLD5cqAeHowEM+McBo47JriXg==
=4O7L
-----END PGP SIGNATURE-----

--yiaol2clinc7dqpe--

