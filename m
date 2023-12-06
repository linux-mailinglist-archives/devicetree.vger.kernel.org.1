Return-Path: <devicetree+bounces-22144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CD8806A0F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:49:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 599DF1F21027
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C0C19455;
	Wed,  6 Dec 2023 08:49:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86B3ED42
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:48:58 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnaR-0008Hv-Nf; Wed, 06 Dec 2023 09:48:55 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnaP-00Dv9l-Vn; Wed, 06 Dec 2023 09:48:53 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnaP-00FLpK-MD; Wed, 06 Dec 2023 09:48:53 +0100
Date: Wed, 6 Dec 2023 09:48:53 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	kernel@dh-electronics.com, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: stm32mp15x: Consolidate usbh_[eo]hci phy
 properties
Message-ID: <20231206084853.q4dfbp5twpe235se@pengutronix.de>
References: <20231206083142.1476340-2-u.kleine-koenig@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vjysfoxx6gqhdnxk"
Content-Disposition: inline
In-Reply-To: <20231206083142.1476340-2-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--vjysfoxx6gqhdnxk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Dec 06, 2023 at 09:31:43AM +0100, Uwe Kleine-K=F6nig wrote:
> diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dt=
s/st/stm32mp15xx-dkx.dtsi
> index 511113f2e399..704c0d0cfe5f 100644
> --- a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
> @@ -680,8 +680,6 @@ &usart3 {
>  };
> =20
>  &usbh_ehci {
> -	phys =3D <&usbphyc_port0>;
> -	status =3D "okay";

the status property must be kept. I will wait a bit for further review
and then resend (unless this patch is picked up with this issue fixed
up).

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vjysfoxx6gqhdnxk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVwNXQACgkQj4D7WH0S
/k5LAwf/R63YIxQTUMQX36387ftQFvDu9pWrekfpEgkzt332+TG1cDswi9gemhoI
mtPdZV/rj+5cZtBz/lLauP1gCRVe1Zln/8vC2fG9kn6fSlQ4q2/MmZquYqXmBEYl
Yt8jQKwr8txr88BjFhxMyKL5MqGlIXZmJQD+RqBTmMuAyc/FvFjQo0pPCJSA+aK0
nI3w7N35WVlZ3xnFBjslGXPUk8Zlz1Ku0ZcYJBF/dlTO0nI/tJ6rbNGshhpz1xdU
zFnz/WhwwZdLUdSxR7OSgGy8cKG1NFkskknCIqKuorV3gCjAnLvKmimqco8DOQpB
lAITDmbEe/aNUpQXFp7iUm/nc/xt6A==
=k9ak
-----END PGP SIGNATURE-----

--vjysfoxx6gqhdnxk--

