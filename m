Return-Path: <devicetree+bounces-119517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC5D9BEF57
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 14:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53E9A1F24E7A
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CDC1FA247;
	Wed,  6 Nov 2024 13:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="SLsnzVlC"
X-Original-To: devicetree@vger.kernel.org
Received: from out-175.mta0.migadu.com (out-175.mta0.migadu.com [91.218.175.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8881D1F9EC7
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 13:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730900625; cv=none; b=ZayXe1Z7+mirwe6QgAMg27s7j6XAeYNzN0vidz78UBGFn2juwamYyCIdyhVXF6SQeZS/DnwfcBYiWdVvCMsHieDe0jopW+8XjwLIPljErYPHx6Bd3Gk70WiObQkbHcDtXpGNBQXMCZ/7uZu0X9mkUW9PFMm798o2dtMfjojsmic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730900625; c=relaxed/simple;
	bh=2X4om5Soa3ADmmiA1nr6u9X+2oPSt7F/UX+51YMP45o=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=NxXEoT4eQBf80sb5yLLSJamNHwt6hE30ndA+HODAyM5+vO+b9u5E5aJEtRZJgW9KR+h1wYpeFvyXYooGfZcAW6nMdzqVUxK3rfdaXfFA7gTIAwYYOw6uGrxG7BWNMOhZDvrdI0A0G7VQ77HLZFHQK0VJtHQfNV4JaJW4PIQ+Ngw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=SLsnzVlC; arc=none smtp.client-ip=91.218.175.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1730900620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KaeGzukjSkkdIXrI/sRrKa+8hdtWtX3cTAwGr+R/Sm4=;
	b=SLsnzVlC8dWSFPPdbsnuJcGZmSOiL8iSO7F5qRMO93o6+E5pEPed06GD8EF7pJ8tdipCnP
	cBVI61BME5zB+mvqd3sAA/J/4DSIDAUUB3GqebuDmO4O9YBnau6+006pQKdPu0Z0Hg7F2f
	AvXcqKdvMmFYMGGjlenQMJ2HSZn7lwZfoTqRpwX3VNjQc9aE6YZEiWjhinBgBdo2rmQ7an
	Mp9/Zvr5cVEVVJpntrbhHZwNHhWDkAwpOkGJoYZjxCnrTB0jbVgiMPifjhkkZc79s1Zfws
	zmf3kh6djxbkTomT/+J2m+PKqi46pBCgDVpypjPBqwFmuQcNHshU9Lnai65ABg==
Content-Type: multipart/signed;
 boundary=d325a75fd624665202bd836b8054801c6e1beb170779c0c55314142a3ace;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Wed, 06 Nov 2024 14:43:36 +0100
Message-Id: <D5F525WYXDO1.3I92CTU67RVF6@cknow.org>
Cc: <quentin.schulz@cherry.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add mipi dcphy nodes to
 rk3588
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20241106123758.423584-1-heiko@sntech.de>
 <20241106123758.423584-2-heiko@sntech.de>
In-Reply-To: <20241106123758.423584-2-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT

--d325a75fd624665202bd836b8054801c6e1beb170779c0c55314142a3ace
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Nov 6, 2024 at 1:37 PM CET, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
> Add the two MIPI-DC-phy nodes to the RK3588, that will be used by the
> DSI2 controllers and hopefully in some future also for camera input.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index 51ba7563f7d0..8c95c56e8097 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -576,6 +576,16 @@ sys_grf: syscon@fd58c000 {
>  		reg =3D <0x0 0xfd58c000 0x0 0x1000>;
>  	};
> =20
> +	mipidcphy0_grf: syscon@fd5e8000 {
> +		compatible =3D "rockchip,rk3588-dcphy-grf", "syscon";
> +		reg =3D <0x0 0xfd5e8000 0x0 0x4000>;
> +	};
> +
> +	mipidcphy1_grf: syscon@fd5ec000 {
> +		compatible =3D "rockchip,rk3588-dcphy-grf", "syscon";
> +		reg =3D <0x0 0xfd5ec000 0x0 0x4000>;
> +	};
> +
>  	vop_grf: syscon@fd5a4000 {
>  		compatible =3D "rockchip,rk3588-vop-grf", "syscon";
>  		reg =3D <0x0 0xfd5a4000 0x0 0x2000>;
> @@ -2878,6 +2888,38 @@ usbdp_phy0: phy@fed80000 {
>  		status =3D "disabled";
>  	};
> =20
> +	mipidcphy0: phy@feda0000 {
> +		compatible =3D "rockchip,rk3588-mipi-dcphy";
> +		reg =3D <0x0 0xfeda0000 0x0 0x10000>;
> +		rockchip,grf =3D <&mipidcphy0_grf>;
> +		clocks =3D <&cru PCLK_MIPI_DCPHY0>,
> +			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +		clock-names =3D "pclk", "ref";
> +		resets =3D <&cru SRST_M_MIPI_DCPHY0>,
> +			 <&cru SRST_P_MIPI_DCPHY0>,
> +			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
> +			 <&cru SRST_S_MIPI_DCPHY0>;
> +		reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +		#phy-cells =3D <0>;
> +		status =3D "disabled";
> +	};
> +
> +	mipidcphy1: phy@fedb0000 {
> +		compatible =3D "rockchip,rk3588-mipi-dcphy";
> +		reg =3D <0x0 0xfedb0000 0x0 0x10000>;
> +		rockchip,grf =3D <&mipidcphy1_grf>;
> +		clocks =3D <&cru PCLK_MIPI_DCPHY1>,
> +			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +		clock-names =3D "pclk", "ref";
> +		resets =3D <&cru SRST_M_MIPI_DCPHY1>,
> +			 <&cru SRST_P_MIPI_DCPHY1>,
> +			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
> +			 <&cru SRST_S_MIPI_DCPHY1>;
> +		reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +		#phy-cells =3D <0>;
> +		status =3D "disabled";
> +	};

No power-domains property?
RK3588 TRM v1.0 part 1 page 1097 has ALIVE(PD_BUS) for
MIPI_DC_PHY0~MIPI_DC_PHY1

Cheers,
  Diederik
> +
>  	combphy0_ps: phy@fee00000 {
>  		compatible =3D "rockchip,rk3588-naneng-combphy";
>  		reg =3D <0x0 0xfee00000 0x0 0x100>;


--d325a75fd624665202bd836b8054801c6e1beb170779c0c55314142a3ace
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZytyjAAKCRDXblvOeH7b
bn3bAP0a67joM+6d9CLYveao1RDKHB27FIWdlPfAWU00XESHxQD9EqDyGe3+QvqV
XoBO2e1oqQ/iO4szViGc6LynQn/oGgk=
=y9hB
-----END PGP SIGNATURE-----

--d325a75fd624665202bd836b8054801c6e1beb170779c0c55314142a3ace--

