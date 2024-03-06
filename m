Return-Path: <devicetree+bounces-48605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24D872B73
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 01:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA3CA287533
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 00:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022A219F;
	Wed,  6 Mar 2024 00:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="l4t4B25y"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E369173
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 00:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709683414; cv=none; b=Ax4y8RO8XnwPwuh9aV3fLAy9u2gGeC5RGWdTr7mkYKwz+osBXhGI2rfa4gcVV/rJV3heT8OXifRU87w49soTqel6s4/L9/Bk0gRR3PBkecvuetnMfCSwYXXyIzAP+2f51fdFHV23JGnJto5EMN1UlpxZS76A8GYYc54gLKydPDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709683414; c=relaxed/simple;
	bh=b5v85nJ3GVwivlq2QmpzQbyWW/x/qj+TOxzAAsOve8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fr2yFlpzfpzLsRPs1qCI+cMZf4rRhckkMrvyFXKehZ+99N5L/O26pSmlvR2+/tf3nJR9NSUC5+CSuG36ogB60hOjxAaA69AuTfMr+Zza4skS3jelhywZCkCCjTSYijw1qnFCxVe5Da6r24R7+J2y6A4YGBHgspYX3SlYJqdNY80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=l4t4B25y; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709683408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F0lEomRDVYpUwlEa/jFZCA/xqAS5OcKSK+D4gIRDum8=;
	b=l4t4B25yF+XWCF24YnTlAbjxESkywJPk4ooKwjajJl7qU5wccGUUD2ayDyxuF7jwh82wNz
	wkE0c+LBSY2gAdWbxvPAcBsGTR//FP1/QQROqCEIU7ugSaanRMzRmfWSOT9pMrOrW9qBy+
	czTjKDfV7Bw4kKkSZY+BUlaVTB6P97VStFRohtcYr49PQYPneH2JMoa2XdVX3URQMa8ZRG
	G4mj+z6izayx1iPXTznyHOarzzDG2EaaLtUp73QVPk0X1SX0VjCY3OUtopBrJzE1jaaICf
	T028P5DAoo9t0z4xWKidGk8gMAKmBxHpFt0xT/nVo+FFeEGqoVTcecVVKUD5/w==
From: Diederik de Haas <didi.debian@cknow.org>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Wed, 06 Mar 2024 01:03:14 +0100
Message-ID: <3640614.1ifTrbWeP9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
References:
 <20240304084612.711678-2-ukleinek@debian.org> <2662566.GSV3oLgti5@bagend>
 <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2871586.EqBmKDtIha";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2871586.EqBmKDtIha
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 06 Mar 2024 01:03:14 +0100
Message-ID: <3640614.1ifTrbWeP9@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Monday, 4 March 2024 23:44:48 CET Uwe Kleine-K=F6nig wrote:
> > That was because it's actually a bug report (wrt Quartz64 A and B), but
> > especially your remark made all the pieces I found earlier fall into
> > place.
> > Therefor I 'abused' this thread/patch to report it.
> >=20
> > I'm happy to test patches, but I lack the knowledge to come up with one
> > myself.
>=20
> I guess that would be:
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts index
> 59843a7a199c..f4d1deba3110 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -269,7 +269,7 @@ &gmac1 {
>         assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru
> SCLK_GMAC1>, <&gmac1_clkin>; clock_in_out =3D "input";
>         phy-supply =3D <&vcc_3v3>;
> -       phy-mode =3D "rgmii";
> +       phy-mode =3D "rgmii-id";
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&gmac1m0_miim
>                      &gmac1m0_tx_bus2
> @@ -281,8 +281,6 @@ &gmac1m0_clkinout
>         snps,reset-active-low;
>         /* Reset time is 20ms, 100ms for rtl8211f */
>         snps,reset-delays-us =3D <0 20000 100000>;
> -       tx_delay =3D <0x30>;
> -       rx_delay =3D <0x10>;
>         phy-handle =3D <&rgmii_phy1>;
>         status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts index
> 2d92713be2a0..ec1351a171d4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -176,7 +176,7 @@ &gmac1 {
>         assigned-clocks =3D <&cru SCLK_GMAC1_RX_TX>, <&cru
> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>; assigned-clock-parents =3D <&=
cru
> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>; clock_in_out =
=3D
> "input";
> -       phy-mode =3D "rgmii";
> +       phy-mode =3D "rgmii-id";
>         phy-supply =3D <&vcc_3v3>;
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&gmac1m1_miim
> @@ -189,8 +189,6 @@ &gmac1m1_clkinout
>         snps,reset-active-low;
>         /* Reset time is 20ms, 100ms for rtl8211f, also works well here */
>         snps,reset-delays-us =3D <0 20000 100000>;
> -       tx_delay =3D <0x4f>;
> -       rx_delay =3D <0x24>;
>         phy-handle =3D <&rgmii_phy1>;
>         status =3D "okay";
>  };

It turns out my research was incomplete. I already felt uneasy when I reali=
zed=20
that 'pgwipeout' had set it to rgmii and while I wasn't able to track the=20
conversation down, I did have a vague recollection of there being a discuss=
ion=20
wrt rgmii vs rgmii-id. IOW: he must have set it to rgmii deliberately.

And then I found this:
https://lore.kernel.org/all/20220606163023.3677147-1-pgwipeout@gmail.com/

=46or Model B it was initially set to rgmii-id, but was later changed to rg=
mii=20
due to compatibility issues on the production Model B.
I'm going to assume that it was (initially) set to rgmii on Model A for=20
similar reasons.

Cheers,
  Diederik
--nextPart2871586.EqBmKDtIha
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeeywgAKCRDXblvOeH7b
bn44AQCusxtYWH7F674MckmTfw3+1/4K8VVZMEJB10NYR/R/BAEA/XIREPYtRY3Z
oV+m0owJaGzI6IumbIb9O5+OZWLJdAY=
=tznc
-----END PGP SIGNATURE-----

--nextPart2871586.EqBmKDtIha--




