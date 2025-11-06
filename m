Return-Path: <devicetree+bounces-235829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ED8C3D458
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 893BE1892907
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D40350A11;
	Thu,  6 Nov 2025 19:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lwfghxUy"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047D436B
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762458338; cv=none; b=bUGftJezzMBAmeiwcKOzlJocCuUKlfQ56+98Au3i86ZsS2nSHvaDe/38aHjvkKyO9htzUm3YZoPNTPLs9qSeOzHzgcZ8KofvyQQQnpm2CQRQCgQ5+vwGLjUhlNC5VF/NhUIfz9VS6BhhCEdwbg4FTH7/5OkPG1FUg/VZcMvEQEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762458338; c=relaxed/simple;
	bh=YM2xs3kpGN6Sp7f2zfiTtG4ooJVe1Q61RsA7fo9up1U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JVBEiVhExC9bn4Vrxt5tLBbsbZCTziPJ2CMQ8iapaO3BvSdfdytR33h/2jpR3hooNOW5Mmc891ejXL4ZAb1CZwr5MQd/KTcQiGeWJZ1LvE4nLuRQQvdHEsz2mnSVg6Lh16mOcF9RnMQn3+F3QUtQlapILbStzzjgYy27/r66xRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lwfghxUy; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bNCTfdUYGfYwpTXCs05Wi92PJgfBGxwDffQgA/Eoyhg=; b=lwfghxUygOTW5wy+ryDKWkrh4q
	4ykv+c62oXDCezOSS/pvo8TizGZKIkv5/x6bGWQcDQ6mGAZO9Fw36MU86CznIrjxFRwSgleORlNyq
	xk2mzWdS2iS3KMwZXlaBODbdKXtllFg0v00X13zpRCvXD2BQQP9vMskC+EbGRf4wPF0894BWPIxqr
	HYmsGlEHc559+yksOE9PishRL4cKu8pN9DQodr8ggBJEz3BNqoy61h/jsv+tgZxgbyb0vRsOhA8Oe
	0LPOQHUPKWkzVKulK7IIbg0nedXreSkG+L2hMALPmpq3bIhJqiEKwwfZpx4Y3sU48lXMiLKm87BYY
	uKFHBwZA==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH5vK-0000jx-0F; Thu, 06 Nov 2025 20:45:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 2/5] arm64: dts: rockchip: Add Additional pinctrl defs for
 Indiedroid Nova
Date: Thu, 06 Nov 2025 20:45:33 +0100
Message-ID: <3438819.aeNJFYEL58@phil>
In-Reply-To: <20251105205708.732125-3-macroalpha82@gmail.com>
References:
 <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Chris,

Am Mittwoch, 5. November 2025, 21:57:05 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Define the pinctrl nodes for the WiFi interrupts, correct the pinctrl
> for the ethernet according to the schematic, and add the clk32k_in
> control for the RTC. Add the correct regulator mapping for the PCIE
> too.

way too much completely different things to stuff into one patch.

=2D Adding the sdio wifi is one
=2D ethernet is next ... you're not fixing, but removing the pinctrl?
=2D pcie2 fixes is another one
=2D and the clkin32k as well


Heiko

>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
>  1 file changed, 28 insertions(+), 15 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/a=
rch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index debab7732b71..f40782b6c7db 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -406,7 +406,7 @@ rtc_hym8563: rtc@51 {
>  		clock-output-names =3D "hym8563";
>  		interrupt-parent =3D <&gpio0>;
>  		interrupts =3D <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-0 =3D <&hym8563_int>;
> +		pinctrl-0 =3D <&hym8563_int>, <&clk32k_in>;
>  		pinctrl-names =3D "default";
>  		wakeup-source;
>  	};
> @@ -459,8 +459,11 @@ &i2s5_8ch {
>  };
> =20
>  &pcie2x1l2 {
> -	pinctrl-0 =3D <&rtl8111_perstb>;
> +	pinctrl-0 =3D <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
> +		    <&pcie20x1m0_waken>;
>  	pinctrl-names =3D "default";
> +	reset-gpios =3D <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply =3D <&vcc_3v3_s3>;
>  	status =3D "okay";
>  };
> =20
> @@ -486,12 +489,6 @@ bt_wake_host: bt-wake-host {
>  		};
>  	};
> =20
> -	ethernet-pins {
> -		rtl8111_perstb: rtl8111-perstb {
> -			rockchip,pins =3D <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
>  	hym8563 {
> =20
>  		hym8563_int: hym8563-int {
> @@ -500,13 +497,6 @@ hym8563_int: hym8563-int {
>  		};
>  	};
> =20
> -	sdio-pwrseq {
> -		wifi_enable_h: wifi-enable-h {
> -			rockchip,pins =3D
> -				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>  	usb-typec {
>  		usbc0_int: usbc0-int {
>  			rockchip,pins =3D
> @@ -518,6 +508,18 @@ typec5v_pwren: typec5v-pwren {
>  				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	wifi {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins =3D
> +				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_host_wake_irq: wifi-host-wake-irq {
> +			rockchip,pins =3D
> +				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
>  };
> =20
>  &saradc {
> @@ -538,6 +540,7 @@ &sdhci {
>  };
> =20
>  &sdio {
> +	#address-cells =3D <1>;
>  	bus-width =3D <4>;
>  	cap-sd-highspeed;
>  	cap-sdio-irq;
> @@ -549,9 +552,19 @@ &sdio {
>  	no-sd;
>  	non-removable;
>  	sd-uhs-sdr104;
> +	#size-cells =3D <0>;
>  	vmmc-supply =3D <&vcc_3v3_s3>;
>  	vqmmc-supply =3D <&vcc_1v8_s3>;
>  	status =3D "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg =3D <1>;
> +		interrupt-parent =3D <&gpio0>;
> +		interrupts =3D <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names =3D "host-wake";
> +		pinctrl-0 =3D <&wifi_host_wake_irq>;
> +		pinctrl-names =3D "default";
> +	};
>  };
> =20
>  &sdmmc {
>=20





