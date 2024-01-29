Return-Path: <devicetree+bounces-36110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D75A83FF82
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04C081F218BA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 07:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D764E1CF;
	Mon, 29 Jan 2024 07:58:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAAC4F1EB
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706515085; cv=none; b=Wn1RrLlb1pRIq3q2sLOrClMIN3pG0eIn9kI8NXxNxOkwspbueb3/W8MdV5y/J4sGi89oo2fGCjbaf1qVzAfFiYBBwgRYtq9UFwU7AxYIS8AsonLhpIcFJDA858rL65lb1PhptTdwW4Q4eR+46zRjGswPALoFu4vnnCqmBJyn2/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706515085; c=relaxed/simple;
	bh=3961m81izv0uX/Yoc35WgcGFE3fDDN7KcZfdeu3Ss4g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lOVLcVyKesVTHeMBI5w/bAEh7i1yGbY7WemX8g0gkbGGrI9MWs5WzeY4CugfWZOoCQorLV68JU0cpSPKu6Ndul7p9lb+XxqN7AzSBJidJ4ZODkqVz++yLYeqWFXJTjTdWkin29/Agoo3BYDLnSadpLLJ1FkGVHDEU9rOOQy9/WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rUMWW-0005l1-Ih; Mon, 29 Jan 2024 08:57:44 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rUMWT-0037Px-CT; Mon, 29 Jan 2024 08:57:41 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id F04C02806DB;
	Mon, 29 Jan 2024 07:57:40 +0000 (UTC)
Date: Mon, 29 Jan 2024 08:57:40 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: William Qiu <william.qiu@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-can@vger.kernel.org, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Wolfgang Grandegger <wg@grandegger.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v1 0/4] CAST Controller Area Network driver support
Message-ID: <20240129-gills-excitable-01213b5b28eb-mkl@pengutronix.de>
References: <20240129031239.17037-1-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tikucubn3q4pl4l6"
Content-Disposition: inline
In-Reply-To: <20240129031239.17037-1-william.qiu@starfivetech.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--tikucubn3q4pl4l6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 29.01.2024 11:12:35, William Qiu wrote:
> Hi,
>=20
> This patchset adds initial rudimentary support for the CAST Controller
> Area Network driver. And we registered cast in kernel as well. This
> driver will be applied in JH7110 SoC first, so add relevant
> compatibility support.

Is there a public available data sheet for the IP core?

Marc

>=20
> William Qiu (4):
>   dt-bindings: vendor-prefixes: Add cast vendor prefix
>   dt-bindings: can: Add bindings for CAST CAN Controller
>   can: cast: add driver for CAST CAN controller
>   riscv: dts: starfive: jh7110: Add CAN node
>=20
>  .../devicetree/bindings/net/can/cast,can.yaml |   95 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
>  MAINTAINERS                                   |    7 +
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      |   32 +
>  drivers/net/can/Kconfig                       |    7 +
>  drivers/net/can/Makefile                      |    1 +
>  drivers/net/can/cast_can.c                    | 1215 +++++++++++++++++
>  7 files changed, 1359 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/can/cast,can.ya=
ml
>  create mode 100644 drivers/net/can/cast_can.c
>=20
> --
> 2.34.1
>=20
>=20
>=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--tikucubn3q4pl4l6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmW3WnEACgkQvlAcSiqK
BOjlzQf/UD7WTrwznL8zamHmMbaReSd0vVpfMLVv2e28fbSycVxa2OEhI1pfZfne
xuQsMea7kfXw3QVeMBAxNdozGG44rHBwDm6CJrnWOQxE8NcUCZpmfh8XdMecbNAU
1NE+gGxVoQOwSJinA7JfXB3EvM9ab+U3FEYYZIY/oRV5YmMLei+trVrlqwRfjM5J
FIfsDRi1maagiZXgHFsK/3u4bFb53KUyXOPHJn8+XUQ2NNcixRXnOkrSBcd567A0
gt8QR2eEyDwCwFSwcjM3ExvkOG3QsU/BJ6KEyqha4MBJ/7ltLzC+YhQLscMF0pPo
y+aScUf3mPvdsoWNL3hioAk8GPnvmQ==
=8SPb
-----END PGP SIGNATURE-----

--tikucubn3q4pl4l6--

