Return-Path: <devicetree+bounces-158721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C7A67D35
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03E1616E45B
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A38A1DED7B;
	Tue, 18 Mar 2025 19:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="g/KHEQ5H"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38D51531E1
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742326831; cv=none; b=lK2tsKhUb66fYVuUJjBFb2gdPXhQWzuEabguNBId5RHgP0k3PC17L69qaX/TgsGUs9HB/sjA68uNtBSDJXEU2PI1uon8cm2K3nBVC3qpjcQv5YiCW6Y/WGKhw/kyUcTSjMgoxFa+cMw9FpHY4OQqsnxEX//RFPED6jrDSU7gWLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742326831; c=relaxed/simple;
	bh=MuqdTHbY7lU6G/zwRVzjLWKfWPNFmXT+b55ooYvWyrQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CDKuZL+YV5FUJ06wKOokgXTXJ6w/ulFpcRrWuUrDu8j+G7b84zsJ0OIFkTx8Wfe2x0Tzn7srKZ83g/st1GdziAcMMf3gX3rDfAgFNpWRInDL4fm0wgERUI0jhWUmC1SwOu0drSk5bAoeJLbBMG+FCU7MBUvZOuCBbfIJQvzdffk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=g/KHEQ5H; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2yIRsFHirJ37KBcLD30+yZG2Opb6u/GoLSe5oqPfVTk=; b=g/KHEQ5HuI0l8F6zgsgk6oHdFg
	TfUN3InEJ5E+MTgL/itqTJpX3ootj1FWXqQzd7rl8//QbBWqScJDg5ZJHBVCXwuXnDC/AItAkGxmG
	cB/c0o1uv67ZeVYvwIp+bheSnj0X88axXENu7NtMXnSsKQ+LnkD5hKCtkrSiB8febnkkdegLDZqQ+
	CaufOzzMeL6qvCk2QtJIwIGxo7nTxLSMV7wriKfDEcPJ30TXHeCcJ3qTuxS0AHoKHQzixfVBjMG8F
	B6vNsj6FGbSSWvoukwz7twEmJgz0NWqNPHeBnQBYqby6zUcSc7iRHonK3vEaEXt4MdPogXXudNs8o
	2gUG8i4A==;
Received: from i53875bc6.versanet.de ([83.135.91.198] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tucnY-0001yR-FC; Tue, 18 Mar 2025 20:40:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 20:40:23 +0100
Message-ID: <2984786.e9J7NaK4W3@diego>
In-Reply-To: <20250318184550.47642-2-uwe@kleine-koenig.org>
References: <20250318184550.47642-2-uwe@kleine-koenig.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hey Uwe,

Am Dienstag, 18. M=C3=A4rz 2025, 19:45:49 MEZ schrieb Uwe Kleine-K=C3=B6nig:
> Instead of relying on the MDIO broadcast address (0) talk to the phy on
> its configured address. Also add the phy reset gpio which was found by
> Heiko inspecting the U-Boot vendor source code. He is still trying to
> recover.

I believe these want to be two separate changes ... as indicated by
the "Also ..." in the commit message:
=2D reset-gpio addition=20
=2D mdio address change

and I guess both could possibly have a

=46ixes: 9da1c0327d58 ("arm64: dts: rockchip: Add basic support for QNAP TS=
=2D433")


Heiko

> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> ---
>  .../arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 7bd32d230ad2..411f8ac7994b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -481,9 +481,14 @@ eeprom@56 {
>  };
> =20
>  &mdio0 {
> -	rgmii_phy0: ethernet-phy@0 {
> +	rgmii_phy0: ethernet-phy@3 {
> +		/* Motorcomm YT8521 phy */
>  		compatible =3D "ethernet-phy-ieee802.3-c22";
> -		reg =3D <0x0>;
> +		reg =3D <0x3>;
> +		pinctrl-0 =3D <&eth_phy0_reset_pin>;
> +		pinctrl-names =3D "default";
> +		reset-assert-us =3D <10000>;
> +		reset-gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;
>  	};
>  };
> =20
> @@ -556,6 +561,12 @@ &pcie3x2 {
>  };
> =20
>  &pinctrl {
> +	gmac0 {
> +		eth_phy0_reset_pin: eth-phy0-reset-pin {
> +			rockchip,pins =3D <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
>  	keys {
>  		copy_button_pin: copy-button-pin {
>  			rockchip,pins =3D <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;
>=20
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
>=20





