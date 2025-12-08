Return-Path: <devicetree+bounces-245140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA83CAC9EA
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 10:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E11FD301AE27
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 09:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C1030F816;
	Mon,  8 Dec 2025 09:15:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D78130F949
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 09:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765185340; cv=none; b=cQSheN7vcuU6BadN1d9KjfDhFT+uZzbSAVTZh3JN+8x4ehJR6XCIhTW3XqnAEwWBDdkwpZadAZQ5PJUdQt72cHR5kbL8aNQMmhcJEjN3vCOakFzPKQP65cNgiJxXR8eWgUDPJmFLfredycxWeRIy5OnCarzJC68NWw1kvZqDO5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765185340; c=relaxed/simple;
	bh=NXsTl/i7NvMM1pojTo8dfjKXozOJBoPxBbRNXkSwB68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1Tcv2eF2dDihoLyey0zHHnZ76T/Mv9leWHud63pZNqFiUwC18U9Q3kXRdwADp3VuvXtrEu+zznQnvNhUDGJGqxUPKWMe9MROwHTbZy0zhPGQIs1R1dEfkwoRSSxWfPV5hrLzeXkXyZx/3He7/yFQtCoteBOIbWg+aSqzAyJb7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vSXL4-00036i-NZ; Mon, 08 Dec 2025 10:15:26 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vSXL4-004aS3-1A;
	Mon, 08 Dec 2025 10:15:26 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 9C4D24B0F69;
	Mon, 08 Dec 2025 09:15:24 +0000 (UTC)
Date: Mon, 8 Dec 2025 10:15:20 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Lei Xu <lei.xu@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-kernel@vger.kernel.org, qijian.guo@nxp.com, 
	justin.jiang@nxp.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx95: Add support for i.MX95
 15x15 FRDM board
Message-ID: <20251208-watchful-fluorescent-piculet-4b55a8-mkl@pengutronix.de>
References: <20251207-127-v1-0-5a2eeb69f150@nxp.com>
 <20251207-127-v1-2-5a2eeb69f150@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bmknb3mg3ri2dueq"
Content-Disposition: inline
In-Reply-To: <20251207-127-v1-2-5a2eeb69f150@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--bmknb3mg3ri2dueq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx95: Add support for i.MX95
 15x15 FRDM board
MIME-Version: 1.0

On 07.12.2025 05:26:06, Lei Xu wrote:
> The i.MX95 15x15 FRDM board is a compact and cost-effective development
> platform based on the i.MX95 applications processor.
>
> Add device tree support for this board, including:
[...]
>  - FlexCAN2 and FlexCAN5

[...]

> +&flexcan2 {
> +	pinctrl-0 =3D <&pinctrl_flexcan2>;
> +	pinctrl-names =3D "default";
> +	xceiver-supply =3D <&reg_can_stby>;
> +	status =3D "okay";
> +};
> +
> +&flexcan5 {
> +	pinctrl-0 =3D <&pinctrl_flexcan5>;
> +	pinctrl-names =3D "default";
> +	xceiver-supply =3D <&reg_can_stby>;
> +	status =3D "okay";
> +};

please use the "can-transceiver" instead of the "xceiver-supply" property.

regards,
Marc
--
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--bmknb3mg3ri2dueq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmk2lyUACgkQDHRl3/mQ
kZxqPQf6AyTsvZQb2ibfwoTfAHibR2yJxjK5zCkTgzu80GArfYo7C58EXHsFffwJ
DOX+Ftf0YxKCIm1UqAry6guRPFPFSJLLldS5fKtaNBcED/szvLZ8NKAbatuZ+7uy
SgDbtwJc+5j7bBssZ7JfXLeVJrYj8tpEOqYeHRLNgYlHu6/TnOrUSCTWLGvqZN/G
On9Xltc8IDMrdpaBNp/BzV2GPl15PjODjhEFQQipca+si3chUPyv64iDAEkQou7e
hrOSVJ4S+1E62o1f094o5YKFUTK79cdhmqzjsxTbGpTb8Fca53jgLaBnUKNn4cnO
GMVG5cYL0ixktrTobrNgiipgf00Wwg==
=TGy7
-----END PGP SIGNATURE-----

--bmknb3mg3ri2dueq--

