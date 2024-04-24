Return-Path: <devicetree+bounces-62225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F718B0620
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:36:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DFF2284338
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEE9158D9B;
	Wed, 24 Apr 2024 09:36:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B938282EE
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713951385; cv=none; b=t8xOmxKamhW/Z0sspf75OL05LrBzQCps3q23vQGzytkvGwOmi83uCKgZPOWnahSW0lquNy3uZ4S+WOsIRy+gD5tG0AVGcB1VF4Ayc5BBA07UTv13vH/WeQrPpZ0LPBO5ulmatS2G3n2HSoEwyrDE37Rr4JH6jMjF65ojR9zw5HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713951385; c=relaxed/simple;
	bh=XYUSje7s+vIF31JkBL5OE6mbhV5TbJ4IkrpChsZMHWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uDLbn9/3mvAmfu0zUyq9YY9oGlRQcYyw+PSoRJ49J934sq1W/XTy1ZJYUJsA2dJRm5bbTKMvLg2dmBSWDmOUY39FV2a4rxryen6uPsS53MP17flepS1qELw/nkzqnJ6kvXQ5Vf6JDhrNRQO/78/QUe1w1WVY9RsfDCIlsBMviJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rzZ2o-0004t5-F1; Wed, 24 Apr 2024 11:36:02 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rzZ2m-00E3Pa-Ji; Wed, 24 Apr 2024 11:36:00 +0200
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 27E402BECD3;
	Wed, 24 Apr 2024 09:36:00 +0000 (UTC)
Date: Wed, 24 Apr 2024 11:35:59 +0200
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
Message-ID: <20240424-notorious-roadrunner-of-will-0c55ce-mkl@pengutronix.de>
References: <20240417-mcp251xfd-gpio-feature-v1-0-bc0c61fd0c80@ew.tq-group.com>
 <20240417-mcp251xfd-gpio-feature-v1-3-bc0c61fd0c80@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7mrp4odhvvzy4nqr"
Content-Disposition: inline
In-Reply-To: <20240417-mcp251xfd-gpio-feature-v1-3-bc0c61fd0c80@ew.tq-group.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--7mrp4odhvvzy4nqr
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

Can you enhance the DT binding to reflect this?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--7mrp4odhvvzy4nqr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmYo0nwACgkQKDiiPnot
vG8jwwf8C78MKwbC/RCbrV/cNcA+Z+3H66miJLcSjDg7A0mLZEjmJGCd6sDt9swW
9ZusbKULy3vRQh8aOIf7zLkU3CuJbigbqfJO8e33B9nhN5SOJ0huOFssog5M24LI
8k+L6Q6/bAkcC0SPuvCP1F/2+o3gYyjciEzfENA1yTBtvHvXHiJfc8JVTUkxrjan
pfeZmgA2+hPXQUEuoxO3FMIzeiTe8l80Dxmrn6CdJSIfJsfm+rPnSaKY+bNdU4o+
GP2VPfEds8yew+72uP7XgXmeZNVlnbAngGp82f8NxmCtvjBlTHkrjFE6/6+ZiuYw
T5U6eqYVSFiHHWztQV81KACO+XZOsA==
=Gi+/
-----END PGP SIGNATURE-----

--7mrp4odhvvzy4nqr--

