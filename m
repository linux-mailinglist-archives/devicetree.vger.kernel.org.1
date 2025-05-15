Return-Path: <devicetree+bounces-177743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90993AB8D47
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 19:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF2E59E154C
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3509E2566DF;
	Thu, 15 May 2025 17:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="n/1g+h6+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7693C2561B9
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747329018; cv=none; b=Acs+qCgj0WKuhbvUR7VIaUh2kSC9fXSheQGw2Ja05WpJcL5t8wsBdPsmJcqOu4/Gfz4siLQl1KIw5ismegSUfMgUbAwt3/mjjRA1t2yLAx0y7ojg8V+eSXKDG3/FQHuaxBJGR58SZStELET8vNhmdxoVhcJB83fXChovlMgJGJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747329018; c=relaxed/simple;
	bh=7l959DDc7jBJh95vOkWz3tllgngyDo+k0XrFifMPGTE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hz13d7DT9aRKHjM3KaB6m44pfSyswsNU/Jwypbo8ricnhYXWUqqChpW/ZALnhshpjrU3h7LGw85Gkvj+AcKiMDU02oc/7TYK8LiuxlIb9oHBzik1uJRG19rsXdQ0D/r3fjhgM12VZRO5N9ABUH7Jg1k1ebaMWuELylP0BA6DyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=n/1g+h6+; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 79E8E3F285
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747329008;
	bh=hc10wZlOZXdQSTbtiNrSV2vv5sB6wouwtdIbWrMrirQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=n/1g+h6+xEGwyMVYQHML0fkLRjN/999MtpfAj5h7byIauToL948Vp8WRUaTk6yI23
	 QQ2+oqrDJTyXvt1fzMXs68FC/CJFuLYhz7vy/Iyxmd/NiZ2n6qP1XrzwjHot/hHjhX
	 uXnJteiXFKh+rQK+TYcTM1v0Lb1UlNsTNhhVzfEAE2ZCwwvfrBYnJHfb3lbt6e+jPn
	 JgU0XiCpMK/OB0QfP/Xc5HkYk+2LuHNytF5C3DuKVgOI2MwUpvfi6CClCycjcFRMU4
	 U7dvyHXpH4QdxlJi1Ss2gQvtnRmCo0oXwQUI4xPcIXewA7mIwY9cuz/GRqe+2SIDM/
	 CInsACzHL6Kog==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-604aa7573f9so1264556eaf.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 10:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747329007; x=1747933807;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hc10wZlOZXdQSTbtiNrSV2vv5sB6wouwtdIbWrMrirQ=;
        b=uQ/ebryulhb544adKdI2nM58Is6hPaoK31uyiILjTSke4571x48wiDb1pcqHUBPk1S
         1i42g11X7PFTt7ZC4egZJirHzJalLFXktywrrc/miGBDPvrcTyCwTzd33Q7Ew0JNLhh3
         +oG+54aMWXGG4twxlRkBDeAYjIxTWkNgSOpMeEgdAQV1AM46/ih2PGKepfASoDyP8vLS
         c5jjJdXoq4fKVkVBj5lyCspiQnsBfAipEu5WGeRlMvnEC/oLt4JxuQnQdDjl9MN6m/R+
         Luo7SY0kxUfjU7mZBSw8ztH+p0sIILpEffhLgLNzi1LvT/HD9cZQbFsXOoZsoOXjT4Fl
         K4rg==
X-Forwarded-Encrypted: i=1; AJvYcCVP2i/XsIlleEsk5BUzYN9hve9hltzw30RANSlCOaX5ISHhgPztR2uZTk/vyiNaWpJazymMBuJCPhkc@vger.kernel.org
X-Gm-Message-State: AOJu0YzYLN+mdl2WNr3R+EPDefuiwKughwjYlBI+3ltQY19spsV00ecf
	K++30vXa7BD9ROg6/K8v84iUDRnq/jLYz0XCc7LG88YRnjXVaOysuPyJSkZacDdcYhFF+V8aCER
	moc/TGLNM952qzEEuWcA0idlTkfoFBn1/fXTXOFLFz5qVTw6XHuYqgzeQZF+MKz7VB84+ZQlpYA
	z/EpuP+WTfJ5K02CS66jCYZWC8Vn8b1EpMRuQFZcx2GE5hni2t32mBbg==
X-Gm-Gg: ASbGncsSWrOzuZDRJW/6L/RWzf5nlYizx2Yo6xAx57+M110sJwfF3uFF9rvkDq+Aler
	2Os71hpzUzjByrKs6TG7GEualCVFSoyIGJ3816Fsrfr46qjtzQ5Cjr+7sukRGGENPNOxyEA==
X-Received: by 2002:a05:6820:1841:b0:606:107a:ebd8 with SMTP id 006d021491bc7-609f374ddb4mr117614eaf.5.1747329007174;
        Thu, 15 May 2025 10:10:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzb9VcV3Lnf5ruIIC6ey76hxyhG8TiKGAlKsdKpz4KyWmg3ddQXbaDSEZE53clpDxkh1hdWXrmr5qJP7/70kY=
X-Received: by 2002:a05:6820:1841:b0:606:107a:ebd8 with SMTP id
 006d021491bc7-609f374ddb4mr117595eaf.5.1747329006841; Thu, 15 May 2025
 10:10:06 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:10:05 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:10:05 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250502103101.957016-5-e@freeshell.de>
References: <20250502103101.957016-1-e@freeshell.de> <20250502103101.957016-5-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 10:10:05 -0700
X-Gm-Features: AX0GCFsnIcyqJ3U7xBWuljucy5NCfIr9h3FNHYe_s9G96TiWFSA6H61K7riL4Vc
Message-ID: <CAJM55Z8sqZ8g1zbphoKaqkZfFoh6GGCXF9dVPds5FydY3=46Gg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] riscv: dts: starfive: jh7110-common:
 bootph-pre-ram hinting needed by boot loader
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Add bootph-pre-ram hinting to jh7110-common.dtsi:
>   - i2c5_pins and i2c-pins subnode for connection to eeprom
>   - eeprom node
>   - qspi flash configuration subnode
>   - memory node
>   - mmc0 for eMMC
>   - mmc1 for SD Card
>   - uart0 for serial console
>
>   With this the U-Boot SPL secondary program loader may drop such overrides.
>
> Signed-off-by: E Shattow <e@freeshell.de>

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index f1dc45b98e1d..d2cdb2f276c3 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -28,6 +28,7 @@ chosen {
>  	memory@40000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x40000000 0x1 0x0>;
> +		bootph-pre-ram;
>  	};
>
>  	gpio-restart {
> @@ -249,6 +250,7 @@ emmc_vdd: aldo4 {
>  	eeprom@50 {
>  		compatible = "atmel,24c04";
>  		reg = <0x50>;
> +		bootph-pre-ram;
>  		pagesize = <16>;
>  	};
>  };
> @@ -268,6 +270,7 @@ &mmc0 {
>  	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
>  	assigned-clock-rates = <50000000>;
>  	bus-width = <8>;
> +	bootph-pre-ram;
>  	cap-mmc-highspeed;
>  	mmc-ddr-1_8v;
>  	mmc-hs200-1_8v;
> @@ -285,6 +288,7 @@ &mmc1 {
>  	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO1_SDCARD>;
>  	assigned-clock-rates = <50000000>;
>  	bus-width = <4>;
> +	bootph-pre-ram;
>  	no-sdio;
>  	no-mmc;
>  	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
> @@ -323,6 +327,7 @@ &qspi {
>  	nor_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> +		bootph-pre-ram;
>  		cdns,read-delay = <2>;
>  		spi-max-frequency = <100000000>;
>  		cdns,tshsl-ns = <1>;
> @@ -402,6 +407,8 @@ GPOEN_SYS_I2C2_DATA,
>  	};
>
>  	i2c5_pins: i2c5-0 {
> +		bootph-pre-ram;
> +
>  		i2c-pins {
>  			pinmux = <GPIOMUX(19, GPOUT_LOW,
>  					      GPOEN_SYS_I2C5_CLK,
> @@ -410,6 +417,7 @@ GPI_SYS_I2C5_CLK)>,
>  					      GPOEN_SYS_I2C5_DATA,
>  					      GPI_SYS_I2C5_DATA)>;
>  			bias-disable; /* external pull-up */
> +			bootph-pre-ram;
>  			input-enable;
>  			input-schmitt-enable;
>  		};
> @@ -638,6 +646,7 @@ GPOEN_DISABLE,
>  };
>
>  &uart0 {
> +	bootph-pre-ram;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";
> --
> 2.49.0
>

