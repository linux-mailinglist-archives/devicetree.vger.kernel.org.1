Return-Path: <devicetree+bounces-48033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 622EF86FCB9
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16BF71F21133
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45F8199D9;
	Mon,  4 Mar 2024 09:08:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E334A12E73
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709543292; cv=none; b=fp3Sunhlf5KrZdeIVwjOOywzDJ/2/8L23zp4YfgUD8D3TsONc/4uiDvgA+CIARuEwzCfydORT6ypf1+HhIgaNRvkf7+bpiDKopB/+fOXZkDX3PI5gFzyt7jb8xiW5LQ2rOxOqpAudkooqSV+Qe8sXfWI6/imQo85tHF9774Ukks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709543292; c=relaxed/simple;
	bh=8AynVRUlltnB7cIz6mOpP8MpM5LHfEJXqQs6ok4tsO8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mvAZcw331Och4O3z+xCjW7E4VYYx3BgNsxFhsjJWzawkk17sS4q74YrZb2IFWu/YR579qEcglyc9L05n9Q2MJfZzUqVjnn4EIj08n9qRjbCI311esYp8eOL2UcipjB5IgyZ3pVJWOQNsgwrjRfeD2G144oYIbBuTIHidiscdPfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rh4Ij-0007Mu-6e; Mon, 04 Mar 2024 10:08:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 10:07:59 +0100
Message-ID: <3082796.ktpJ11cQ8Q@diego>
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
References: <20240304084612.711678-2-ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Uwe,

Am Montag, 4. M=E4rz 2024, 09:46:11 CET schrieb Uwe Kleine-K=F6nig:
> While it requires to have the right phy driver loaded (i.e. motorcomm)
> to make the phy asserting the right delays, this is generally the
> preferred way to define the MAC <-> PHY connection.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>
> ---
> Hello,
>=20
> Andrew already pointed out when I posted the patch introducing the gmac0 =
node
> that rgmii-id would be the preferred way to setup things. Back then this =
didn't
> happen because this change broke reception of network packets. However th=
is
> only happend because I didn't have the right phy driver loaded.

trying to understand how the (not) loaded module fits into this :-)
The mdio-bus is supposed to probe the phy and load the appropriate module.

=46rom your description it sounds like the correct phy module needs to be
actually loaded? Or was that meant to be a "requires to have the right phy
driver compiled" instead?


Heiko



> Best regards
> Uwe
>=20
>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 6a998166003c..36ad48d46bc1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -20,15 +20,13 @@ &gmac0 {
>  	assigned-clock-rates =3D <0>, <125000000>;
>  	clock_in_out =3D "output";
>  	phy-handle =3D <&rgmii_phy0>;
> -	phy-mode =3D "rgmii";
> +	phy-mode =3D "rgmii-id";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&gmac0_miim
>  		     &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	rx_delay =3D <0x2f>;
> -	tx_delay =3D <0x3c>;
>  	status =3D "okay";
>  };
> =20
>=20
> base-commit: 67908bf6954b7635d33760ff6dfc189fc26ccc89
>=20





