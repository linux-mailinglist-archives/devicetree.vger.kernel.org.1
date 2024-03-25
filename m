Return-Path: <devicetree+bounces-53040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FF888AD9A
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 189E6C44DF2
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA7813D295;
	Mon, 25 Mar 2024 15:39:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DEB131E26
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 15:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711381176; cv=none; b=CPzoA/hmx/zpxznQ1en66Ucx9yUgFTG5IS8A8yJCoqJwWIj0R9+/ROhmGIrF0dOj9D6ACSRVCudzFwFThFXiwQ7l4iV+lrkmi28e3udLHzh2/o/OMj1p1aA/DiRhESwbnINeRiU0okBLXWvlNyMhLRabgFTiNh6ZVZNga6kcJno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711381176; c=relaxed/simple;
	bh=vmoybtapapypO+4iHsD53AY45zk5pKogswpFivoEyWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OC90a13gZN7Yb/CjMdYLUZ1uj3pUQRZp6bI6BaDpaLUlsZGZltQ/j4fmTKk/6zhUW9wY2guHKK7gTkpsCrB3JplW0qgitAg4ALPO837zN5Ea8DGRaLTwmJPfPlepoBWVGbaI92HryzKx4tusD61BykTvP4rUesCnSD7250I2yUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1romQ5-0000qv-C2; Mon, 25 Mar 2024 16:39:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
Date: Mon, 25 Mar 2024 16:39:28 +0100
Message-ID: <2963425.VdNmn5OnKV@diego>
In-Reply-To: <20240325143729.83852-4-macroalpha82@gmail.com>
References:
 <20240325143729.83852-1-macroalpha82@gmail.com>
 <20240325143729.83852-4-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hmm,

Am Montag, 25. M=E4rz 2024, 15:37:28 CET schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Make the order of SDMMC predictable across the entire device lineup.
> This allows userspace to always know that sdmmc0 is the eMMC (when
> present), sdmmc1 is always the first sd card slot, sdmmc2 is always
> the 2nd sd card slot (when present), and sdmmc3 is always the wifi
> (when present).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

this is really really difficult.

=46or example, you added the rg353p, rk503 nad rg353vs and their aliases
two years ago for 6.1 , the rg353ps for 6.5.  So someone might actually
rely on those already in their userspace setup.

So reorganizing the aliases to point to different devices might actually
break userspace, which as you might know, is sort of a big deal ;-) .

Userspace programs can determine the mmc mapping via the board-compatible
though.


Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts    | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 7 +++++++
>  8 files changed, 7 insertions(+), 45 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/=
arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> index ab83e8a61615..d239a8452957 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> @@ -10,13 +10,6 @@
>  / {
>  	model =3D "Anbernic RG ARC-D";
>  	compatible =3D "anbernic,rg-arc-d", "rockchip,rk3566";
> -
> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
>  };
> =20
>  &i2c2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/=
arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> index 6264a8c78d0b..4bb13d94a759 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> @@ -10,10 +10,4 @@
>  / {
>  	model =3D "Anbernic RG ARC-S";
>  	compatible =3D "anbernic,rg-arc-s", "rockchip,rk3566";
> -
> -	aliases {
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index 8aa93c646bec..94c678c44d3a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -11,13 +11,6 @@ / {
>  	model =3D "RG353P";
>  	compatible =3D "anbernic,rg353p", "rockchip,rk3566";
> =20
> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3472000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> index b211973e36c2..25edd81ce26b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG353PS";
>  	compatible =3D "anbernic,rg353ps", "rockchip,rk3566";
> =20
> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3472000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index f49ce29ba597..5354c5958df2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -11,13 +11,6 @@ / {
>  	model =3D "RG353V";
>  	compatible =3D "anbernic,rg353v", "rockchip,rk3566";
> =20
> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3151000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> index a7dc462fe21f..02653b59f6c2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG353VS";
>  	compatible =3D "anbernic,rg353vs", "rockchip,rk3566";
> =20
> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3151000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> index 94e6dd61a2db..e7161a86a9f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG503";
>  	compatible =3D "anbernic,rg503", "rockchip,rk3566";
> =20
> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	adc-joystick {
>  		compatible =3D "adc-joystick";
>  		io-channels =3D <&adc_mux 0>,
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> index 233eade30f21..47c8fdc7c843 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -12,6 +12,13 @@
>  / {
>  	chassis-type =3D "handset";
> =20
> +	aliases {
> +		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc0;
> +		mmc2 =3D &sdmmc1;
> +		mmc3 =3D &sdmmc2;
> +	};
> +
>  	chosen: chosen {
>  		stdout-path =3D "serial2:1500000n8";
>  	};
>=20





