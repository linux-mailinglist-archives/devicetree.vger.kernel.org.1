Return-Path: <devicetree+bounces-181199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D09AC6929
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6462F18993F8
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44DA0284672;
	Wed, 28 May 2025 12:22:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767CA283FE7
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434935; cv=none; b=pjyEdtoP/mdvrT+yVUdeXATSp7ygZoKbxVbKL0KVZXNeN7tgeDj/K1YfHdN2RMewAiHZUHbdMDrex+QZ7Ur5kRzbagoSarkyzLI4obak3ZjhtNiWoxV304c64hru1lszHn1FJdexdmKe4vQaefmsF8QgngUthkmgfdCHlfFcrWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434935; c=relaxed/simple;
	bh=L6s/yq8mz6+pYVGOZSYXHTm7G9toveW1Uq3hhmEWU7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QczZHiSkGo//6n+feoxtF+Uu4D8uxxY9h3RrzPn8nDR7+USa27SnTMaV9E7xoE5MkrxwM516jOlxBI7tHTFdiQaESocVm3j5Ny6+/XfhVBVEp4fbpuJHwUHuavZUYO0axdrIViHS7/JZKwL9Zwx0hHpIxSrRuNwwVKCXucd7Xok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uKFn3-0002SH-Bf; Wed, 28 May 2025 14:21:49 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uKFn2-000aSn-37;
	Wed, 28 May 2025 14:21:48 +0200
Received: from pengutronix.de (p5b1645f7.dip0.t-ipconnect.de [91.22.69.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 930EB41B601;
	Wed, 28 May 2025 12:21:48 +0000 (UTC)
Date: Wed, 28 May 2025 14:21:48 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Sascha Hauer <s.hauer@pengutronix.de>, imx@lists.linux.dev, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, michael@amarulasolutions.com, Fabio Estevam <festevam@gmail.com>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/4] ARM: dts: mxs: support i.MX28 Amarula rmm board
Message-ID: <20250528-toucanet-of-utter-conversion-2bb1c7-mkl@pengutronix.de>
References: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
 <20250528121306.1464830-5-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d4u36iwafj365ic5"
Content-Disposition: inline
In-Reply-To: <20250528121306.1464830-5-dario.binacchi@amarulasolutions.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--d4u36iwafj365ic5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 4/4] ARM: dts: mxs: support i.MX28 Amarula rmm board
MIME-Version: 1.0

On 28.05.2025 14:11:41, Dario Binacchi wrote:
> The board includes the following resources:
>  - 256 Mbytes NAND Flash
>  - 128 Mbytes DRAM DDR2
>  - CAN
>  - USB 2.0 high-speed/full-speed
>  - Ethernet MAC
>=20
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

[...]

> +	reg_3v3: regulator-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "3v3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-always-on;
> +	};

[...]

> +&can0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&can0_pins_a>;
> +	xceiver-supply =3D <&reg_3v3>;

The xceiver-supply "reg_3v3" is an always fixed regulator, that doesn't
switch a GPIO, so IMHO, you can remove it. Saves a bit of runtime mem.

> +	status =3D "okay";
> +};

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--d4u36iwafj365ic5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmg2/9kACgkQDHRl3/mQ
kZyAngf+N7jzZFlLipBmBOA/ABOkh8i4xKnSDc8VZEjAK8pgExYn3GEOwfRnRwrE
EH6bJllykyHzbXfS9/xHs657upS0FW9caUJK2WrWj/8gUfJKVHYs1h0fRa5Cw3TC
6OPZRsWvOaarYXj7+EnnhyfJ79H3/00LwVBMqc3Arne0fz/iienfgPjW8OEDBHin
tibPVj8IDRdEoa7ZROykjv0xbfvCpuSXCKUqfCy8z60KH1m/a2yeWpjrgqDv4Pg0
pYMak6V2+BFkLpRvEzEQEG023ftbkb2FuizWwrFj+/B7K+D5iOefx3PFVblfWXwh
D2cgAu3iOjcjElKDelSSG2QRmdkD7A==
=LqyP
-----END PGP SIGNATURE-----

--d4u36iwafj365ic5--

