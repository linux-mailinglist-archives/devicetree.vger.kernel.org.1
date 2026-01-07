Return-Path: <devicetree+bounces-252457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E483BCFF67F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D7CA3018332
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E297734AAE6;
	Wed,  7 Jan 2026 16:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bpkXCUQA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28432344030
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804521; cv=none; b=lBVFgo6blMICzEV6muH2W2iBkifzaDYwsnuw1EEka0A0FguNbGIU/XE0LZQejdfKOkIFJgEvNcSHOOmow2ezx2Fw8RGC6dOh2VlOam3uOL7buHXf8aJmxnFNVTzaYpoAjvtWwO/6mKCrRhd0ax4c5A2jtqY3OB8+lKub9uwYBSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804521; c=relaxed/simple;
	bh=tOyoGusLPzqg1FnKq5O3jOUWOeP64VIv2fiZGfmQ/NM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GOif1UO9NeYYxEukTYhH7RdqGfddavlkLvd6S3u0Qem1aAgn6ZwjQUOsc8GUcW+6PQ4i7hzG+ZbPKPVgky/uol8qgl088uWtb8syQy2NMgmrkmf76JdsqE4eF7gF2XKAmymZCPtmttFW18uwtQhkrj4nwiAQJkmuyM4OcsqJd5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=bpkXCUQA; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9A49AC1EC93;
	Wed,  7 Jan 2026 16:48:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A7A86606F8;
	Wed,  7 Jan 2026 16:48:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 154B8103C821A;
	Wed,  7 Jan 2026 17:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767804508; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bhPMqt25ZCX2W1/vXPkG3dGGj3DkqSNpqIcLjfvvbPc=;
	b=bpkXCUQADWlTbLZlOs+eWNY3Td76NGf09IxeXsiYtO014EjvhqoSljggwGfYxih+jd3Reu
	3dc8QA0+/W3qxOZkaHKkIUrePDjCfQm1cCrr+Lvuh4/1fnzHy6AWPo+EXeFnD3RQvyGpkQ
	J0Eb8uLuSCGXoYU4CuGh4QFctcnAgcizWxI7/4gqzKVxTlCwcK4ddj/nsKZlv22jEZXVQK
	8UIbQg7aw3JrG0YUwz3DpuJJ6pPrD3532rJ1aX5s/0ItjuX9q7GVHizd7b2Hu4i09+IO31
	m4Ib/sXOp75k1O+ByowKHyca2Ala291gbSpXrwZBa3mFJu7xeHDxHksUEc/JCw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: Add missing "#phy-cells" to
 "usb-nop-xceiv"
In-Reply-To: <20260105194636.3188884-1-robh@kernel.org>
References: <20260105194636.3188884-1-robh@kernel.org>
Date: Wed, 07 Jan 2026 17:48:25 +0100
Message-ID: <87h5sxqsh2.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

"Rob Herring (Arm)" <robh@kernel.org> writes:

> The "usb-nop-xceiv" binding requires "#phy-cells" property with a value
> of 0 though it is not really used. Add it where missing from Marvell
> platforms.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-db.dts                | 1 +
>  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 +
>  arch/arm64/boot/dts/marvell/armada-8040-db.dts                | 2 ++
>  arch/arm64/boot/dts/marvell/cn9130-crb.dtsi                   | 2 ++
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi                    | 2 ++
>  arch/arm64/boot/dts/marvell/cn9131-db.dtsi                    | 1 +
>  arch/arm64/boot/dts/marvell/cn9132-db.dtsi                    | 2 ++
>  7 files changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-db.dts b/arch/arm64/=
boot/dts/marvell/armada-3720-db.dts
> index bd4e61d5448e..06d4a3a93f84 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-db.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-db.dts
> @@ -41,6 +41,7 @@ exp_usb3_vbus: usb3-vbus {
>=20=20
>  	usb3_phy: usb3-phy {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&exp_usb3_vbus>;
>  	};
>=20=20
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dt=
s b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> index 97a180c8dcd9..e82284888b9a 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> @@ -37,6 +37,7 @@ reg_usb3_vbus: usb3-vbus {
>=20=20
>  	usb3_phy: usb3-phy {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&reg_usb3_vbus>;
>  	};
>=20=20
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/=
boot/dts/marvell/armada-8040-db.dts
> index 21ecb9c12505..c7102f74d4d5 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> @@ -51,6 +51,7 @@ cp0_reg_usb3_1_vbus: cp0-usb3-1-vbus {
>=20=20
>  	cp0_usb3_0_phy: cp0-usb3-0-phy {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp0_reg_usb3_0_vbus>;
>  	};
>=20=20
> @@ -65,6 +66,7 @@ cp1_reg_usb3_0_vbus: cp1-usb3-0-vbus {
>=20=20
>  	cp1_usb3_0_phy: cp1-usb3-0-phy {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp1_reg_usb3_0_vbus>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boo=
t/dts/marvell/cn9130-crb.dtsi
> index 5e7d6de3cdde..5689a8bdfd03 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> @@ -47,10 +47,12 @@ cp0_reg_usb3_vbus1: regulator-2 {
>=20=20
>  	cp0_usb3_0_phy0: usb-phy-1 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  	};
>=20=20
>  	cp0_usb3_0_phy1: usb-phy-2 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp0_reg_usb3_vbus1>;
>  	};
>=20=20
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9130-db.dtsi
> index 3cc320f569ad..7156739aa31a 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> @@ -50,6 +50,7 @@ cp0_reg_usb3_vbus0: regulator-2 {
>=20=20
>  	cp0_usb3_0_phy0: usb-phy-1 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp0_reg_usb3_vbus0>;
>  	};
>=20=20
> @@ -64,6 +65,7 @@ cp0_reg_usb3_vbus1: regulator-3 {
>=20=20
>  	cp0_usb3_0_phy1: usb-phy-2 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp0_reg_usb3_vbus1>;
>  	};
>=20=20
> diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9131-db.dtsi
> index 626042fce7e2..26dc91c88677 100644
> --- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
> @@ -31,6 +31,7 @@ cp1_reg_usb3_vbus0: regulator-6 {
>=20=20
>  	cp1_usb3_0_phy0: usb-phy-3 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp1_reg_usb3_vbus0>;
>  	};
>=20=20
> diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9132-db.dtsi
> index f91fc69905b8..f82d45e62753 100644
> --- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
> @@ -28,6 +28,7 @@ cp2_reg_usb3_vbus0: regulator-7 {
>=20=20
>  	cp2_usb3_0_phy0: usb-phy-4 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp2_reg_usb3_vbus0>;
>  	};
>=20=20
> @@ -42,6 +43,7 @@ cp2_reg_usb3_vbus1: regulator-8 {
>=20=20
>  	cp2_usb3_0_phy1: usb-phy-5 {
>  		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
>  		vcc-supply =3D <&cp2_reg_usb3_vbus1>;
>  	};
>=20=20
> --=20
> 2.51.0
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

