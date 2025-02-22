Return-Path: <devicetree+bounces-149802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE12A4078F
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 11:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9C687ACE59
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223B12080DB;
	Sat, 22 Feb 2025 10:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IoFSy4Ku"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5802C1FBE9B
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 10:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740221086; cv=none; b=gc176Dv2r7/5zXIsdp+su2oXLaGrar1ZoSvJWPyhq5bVlzS76ijD+8LXF5Mu7EF4w/lV5qJBYLki8fHcdTkSyLr1FcSttRWzg1wCBorqpLxVZFS7w5y2fn6gwELVFjryiccMYw1SFVOwJnk/3831XUcFO64J/0KQ9O3kbstnR5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740221086; c=relaxed/simple;
	bh=ZkSYuU2wPBZsc0CMDXq4Db5mtSgXumjkBjdN1jIn1FA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=egDN5cqSffwi0pmql4pahLH07akWg7mo/P7iWQ3cjSmTcKt3l5cKvyCz0XJ5Q580GBM3AxX4Iz1bY1w2PxppluzMBCXz8jGOd/Jhvr0r48pStKVsk2h1P7q3btpP5sVTBg3TMnNDytaJ6Jah3AYh1bwKSGRtn/WvQyn/9wPRABY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IoFSy4Ku; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-38f325ddbc2so2119436f8f.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 02:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740221082; x=1740825882; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kln87c/5kKVDMW1BPsIyv6Xt4UdEnHbw8gswLoQRLeM=;
        b=IoFSy4KuBFVolg0txB1A2rFMKdJYrhBr3rjps8Mn33kMnkh99fSAvWlJ3uxcimmGiR
         nppjgU1e76RKrBQts9nsVCAxOcKeb7ggkW/1JErpaDHnLKAWuwHbK1etUMWNy2usfTg4
         N8QLvSl3RCjR/u12RimYiPDwu/lJtQr7OcapfvXlBvtBJAgae4sP0pwBnj5jabifBxLj
         nYk1qKqD2++hbty3h1A91xVhOU9Emc0yE1ZXjgOxMN75FcMO2WCjPHZ0etgVi6I7XKMu
         68XRqGdIyWOIoFfWwoRh4slpL69kMDxANWd1zaOyZzwqL4Wur8yf/xjuROFYCO4yBHkb
         8V3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740221082; x=1740825882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kln87c/5kKVDMW1BPsIyv6Xt4UdEnHbw8gswLoQRLeM=;
        b=uHsmywl/7OhUnx3f7DeeCLJTyeRqyiuEMwjPrloGzKOqOJAjIa5/wR6Zy3o8mJVe4Z
         700Xy1KWWpxdib65E96YuGq+9F34WzbpIvM6S1aRpJKMA/smOFakxdP+17p0QT4OxDU+
         ff54QiBuMFglWcVRG8t8SoDyYqL/C5NQwHeemHHydDY42giIKG9y5C4Q8TqDindYy58+
         xJ1dg4LCM3YT1vq8GNMGBmBBtrQCGWO3+Z8iYHSbRNE1++oTLOFa4Sxt2QI2qsXv5A7G
         P+7K8PL+j7Ra9E9ON4eMPQpbsd5nm7lFwAOVI0jy49N4ndTNHYAcXoF4S2CWQH2sh8Uk
         fcvw==
X-Gm-Message-State: AOJu0Yz20wWNNMA5977eEvAIVDv4ODCbxVkckJNjjmz5S2TIYdviV22X
	0CM3EhrpUDoPCSwvlM6A7YTrOqO8qx59UA5ODX9GClKa5gf/pBbS
X-Gm-Gg: ASbGnctiGPO7yifNzHV6wllhkNvnOsi1BaCqj9tI2osccB4AMni4S0wVVy2nfE4ui6A
	OhDF7oJiRQJm6Oxj8IcMEPoblPhyV/VqJRkGz3KM8W8Zc2XjrQwGbcvimPHPrdT2ROmLGVBPw8+
	1WN9PgMtknY21rrFffFm9Tlx8ZqhUTtZSs87Qdnd/UuphpPfAtvkISuebPl/rNdZYv6HLUixyka
	kXok1MwRlobvo1p4f6XQGS1o0THEDdIZ0zNABaD7wqSNrn8JPE7TO2jhjJut+9dfW76usch9Zk9
	rh80nPsDQjQKA+cUuSCZykIIxIlRG79Q6+EtEnm37mjRqCen5Iec5guNq3g+mnuJhsORJHJRX0E
	b4Q==
X-Google-Smtp-Source: AGHT+IGlk5s5bSykqpq59rfKC/AkOqaYQYpG5g3eNqje/wCAOIpYetAD1JWu0hEmADBRto9+cG1uvA==
X-Received: by 2002:a05:6000:401e:b0:385:fd07:8616 with SMTP id ffacd0b85a97d-38f7023e7abmr5279379f8f.0.1740221082457;
        Sat, 22 Feb 2025 02:44:42 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439b036756csm43118085e9.31.2025.02.22.02.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 02:44:41 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, samuel@sholland.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 1/4] arm64: dts: allwinner: h700: Add MMC2 for Anbernic RG35XX
Date: Sat, 22 Feb 2025 11:44:39 +0100
Message-ID: <1884930.atdPhlSkOF@jernej-laptop>
In-Reply-To: <20241018160617.157083-2-macroalpha82@gmail.com>
References:
 <20241018160617.157083-1-macroalpha82@gmail.com>
 <20241018160617.157083-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Chris,

sorry it took so long.

Dne petek, 18. oktober 2024 ob 18:06:14 Srednjeevropski standardni =C4=8Das=
 je Chris Morgan napisal(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the second MMC slot on the Anbernic RG35XX series.
> The second MMC card is connected to MMC2 (WiFi if present is MMC1).
> The MMC logic is powered by cldo3 via the power domain to which
> it is connected, and also has an external 3.3v GPIO controlled
> regulator required for functionality.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 27 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-20=
24.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> index 80ccab7b5ba7..e2039fd76b3d 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> @@ -18,6 +18,9 @@ / {
>  	compatible =3D "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
> =20
>  	aliases {
> +		mmc0 =3D &mmc0;
> +		mmc1 =3D &mmc2;
> +		mmc2 =3D &mmc1;

Please drop those. As a rule, we don't have it in any DT, since there are m=
ore
universal to identify root partition than a relying on device order.

>  		serial0 =3D &uart0;
>  	};
> =20
> @@ -175,6 +178,15 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power input */
>  		regulator-min-microvolt =3D <5000000>;
>  		regulator-max-microvolt =3D <5000000>;
>  	};
> +
> +	reg_vcc3v3_mmc2: regulator-vcc3v3-mmc2 {
> +		compatible =3D "regulator-fixed";
> +		enable-active-high;
> +		gpio =3D <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-name =3D "vcc3v3-mmc2";
> +	};
>  };
> =20
>  &cpu0 {
> @@ -186,10 +198,21 @@ &ehci0 {
>  };
> =20
>  &mmc0 {
> -	vmmc-supply =3D <&reg_cldo3>;
> -	disable-wp;
> +	bus-width =3D <4>;
>  	cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> +	disable-wp;
> +	no-1-8-v;

Please leave properties in same order to minimize patch size. From
what I can see, only above property is added, which is not needed anyway.

> +	vmmc-supply =3D <&reg_cldo3>;
> +	status =3D "okay";
> +};
> +
> +&mmc2 {
>  	bus-width =3D <4>;
> +	cd-gpios =3D <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
> +	disable-wp;
> +	no-1-8-v;
> +	vmmc-supply =3D <&reg_vcc3v3_mmc2>;
> +	vqmmc-supply =3D <&reg_cldo3>;

Is this another SD card slot or eMMC? You configured it as it would be SD c=
ard,
but mmc2 slots are usually used for eMMC, which needs different configurati=
on.

Best regards,
Jernej

>  	status =3D "okay";
>  };
> =20
>=20





