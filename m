Return-Path: <devicetree+bounces-46680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA5086A8E4
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 08:23:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86F372859D2
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 07:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C1F23776;
	Wed, 28 Feb 2024 07:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="cA5AbS7F"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C29C249E3
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 07:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709105027; cv=none; b=LbmUDyqoZoyXroFvVP/JDbk4MXnaZ8iWxDuThXfq0gG/BbuqRKVZnfKgf0ET9Sc7ffcD0ZrdmDqUdoqj+S5UhfpTVABWgdD94VNMNZtufxLJzlJXyTaUduCqVN01Lft/Xjk9MoNB9DWuCupa6/lQTfaUovKkFiFkl0coQnJ2+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709105027; c=relaxed/simple;
	bh=zumgVgY4MWpxMr9WOFTw6dQ/oLKaouf0K3XWWkY76Wk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FmFKLvNmE8COuzQEBF2rYGfTLoepVxGMmAgh8t6ghcaSH86fWyStuEhTtmn1kta1Jie1x9brqyKKGUN9WAmbMEc4/12+4BLjYC2vbEm/MEmK4r0TzFT84k2P/JvSNwORcObt7drwbBWVSQBRYjsxtHjo1hWoc2zYlQrwd7UIIys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=cA5AbS7F; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=q9H//BiI/ym0fKCLWzaI/cltEf13UeT/Rxb1Q8FD9Ro=; b=cA5AbS7FT2W+TtczbuXrokzsLh
	gh9c0U16ZT+TQJAOJx7Wb2S7BYBfTVz8swofccvQG7Jdek3itaWF1lStLcxB5+zAkCrM+9qYabPqq
	Qibul3Q09z1zXkuPojXp+41G/nYkMuOKmo24rWrW3Id7KOiC7wE6nUlfKta6N+FZILMU7ItnH3sFw
	oUs/Yel6+2IpRU3Q5efTlGS2r3dNDqD32opLVj3z1t4K9QGFWMdWMMNDY0Cgra3FUQSSOvMy9T3NX
	2mqm4rZS4QLKNXIwA+eg7YfyelCy1qFHBIA+FjNMei8+QgfBRJIQRbkAJ/8rzobBgZGdguCpfDE2Q
	NgXRnMcw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rfEHv-006pgV-3P; Wed, 28 Feb 2024 07:23:35 +0000
Date: Wed, 28 Feb 2024 08:23:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
Message-ID: <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ujsyxbuinxttmqy"
Content-Disposition: inline
In-Reply-To: <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>


--2ujsyxbuinxttmqy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 10:00:48PM +0100, Andrew Lunn wrote:
> > +&gmac0 {
> > +	assigned-clocks =3D <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > +	assigned-clock-parents =3D <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_M=
AC0_2TOP>;
> > +	assigned-clock-rates =3D <0>, <125000000>;
> > +	clock_in_out =3D "output";
> > +	phy-handle =3D <&rgmii_phy0>;
> > +	phy-mode =3D "rgmii";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&gmac0_miim
> > +		     &gmac0_tx_bus2
> > +		     &gmac0_rx_bus2
> > +		     &gmac0_rgmii_clk
> > +		     &gmac0_rgmii_bus>;
> > +	rx_delay =3D <0x2f>;
> > +	tx_delay =3D <0x3c>;
>=20
> Have you tried phy-mode =3D "rgmii-id"; and not have these two _delay
> settings?

I didnt' up to now. I applied the following on top of my dts:

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm6=
4/boot/dts/rockchip/rk3568-qnap-ts433.dts
index ba7137f80075..a8747d9f36da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -39,15 +39,13 @@ &gmac0 {
 	assigned-clock-rates =3D <0>, <125000000>;
 	clock_in_out =3D "output";
 	phy-handle =3D <&rgmii_phy0>;
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac0_miim
 		     &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	rx_delay =3D <0x2f>;
-	tx_delay =3D <0x3c>;
 	status =3D "okay";
 };
=20
and this makes the machine unable to complete dhcp. I see the requests
and replies on the dhcp server side, but the machine tells me not to
receive a dhcp reply. So the above patch breaks the receive path.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2ujsyxbuinxttmqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXe33QACgkQj4D7WH0S
/k7RGQf/VOOi8RQ6O6wC8HHbsx0rt4Zy1y7PhIMp+mIQTFYEZFeufAySXLSIKevd
L54Bh9wF8pJrzoFEaq0bVcO7SWEL1Xmo0cni4FcKEHDemEUL+vvprP8OuzPUTY7v
zVupTSIh9IW12dHekSxSqNHMkEwFyglKyyYFzDqTRTvJmh6QbjmZWdKqlAteMkxa
Zq6j2Z8QKwqh5MGleAKlqeIiBXTrBL0zg7CgKxznv21cz9Pjqm0g7XiS2drixj2L
JZ2XGkUmy0+X5MIEbaOEak3fjDMxYs9x6nOfSOmwizCuC9HwCrxtmM0ZE1Q7gwLg
ngERLNaJtWI5y4lENFSrJUFLND68SQ==
=jwME
-----END PGP SIGNATURE-----

--2ujsyxbuinxttmqy--

