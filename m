Return-Path: <devicetree+bounces-63626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F298B5A95
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18B3E1C2246F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9CB75810;
	Mon, 29 Apr 2024 13:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Gp1WXB+5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0C578B63
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714398722; cv=none; b=YR+JX3kWXjSn2xCaxKOYehzLPuq+qi/h38LzUmJ0WlDKu/DzlRIWQOiw/tKPb/vZAMDvIU+tmAowLY7ogpWGtQpFHFJ3JU8e0woi2Yq2ZZB66awvyS9hATE3/xppuHUswfiwnmRmc+QZf/dw+MzOoE8VuNimOxmodR0fgnNeYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714398722; c=relaxed/simple;
	bh=QFgXJtXoBz8QTuDguzh147u/rIxiwoLrOj0jJbOXK5Y=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TTzCilI3yM/pb9CHS95a3JUwcv3AM0ksD346Fm/TRfqMOGK9WHofIkC1AhCT3TMMMz9HjTacDA9yCZWmnIYxEtibA9CnXEpnZ04EJI1M3MYwdi5p0T2nn5zXwLJ9yhkHoB4scyyNjv5EvMh/ZKLrc5ppmUBn2rFMz3vj/jPdyvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Gp1WXB+5; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EB1AA413F5
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714398718;
	bh=+Q93uYKVHkI8FjmsQvVCYUdtbVOhu2FzIUlsEgjYqSQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Gp1WXB+5Yllq9CeIqQo+HflqrgGqLGGcDwsBKvFstLCJ13Anx87JzyXjF/CHWR1kB
	 MGtOccFIDRty6N9IjBpz/l60xenb9HqXJRPDxpuD6mYJi8WK6tz3EDJznuoCFzQPmV
	 FUDjE18A8VMZwz44/1m+vpNuzOsiogjz1Swl+4q7BsNJG0oQvHvO5H/8kbMhSZGKWD
	 RdeUNX9dvQjACLp8TgMaTP6/0YKYh1tk8jhcxkq0iGcQzJBZ1QLcN3ZeH/tT6beNes
	 QVxuh2OG/XUa1BapIMAaFWkMLdwpzWT1m7RzW+gDwrSC5HPCSfnefTM+9WRmP9NogP
	 9nNHBL4NdrzHw==
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-7f14f467812so34597241.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714398717; x=1715003517;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Q93uYKVHkI8FjmsQvVCYUdtbVOhu2FzIUlsEgjYqSQ=;
        b=tauHzoFo3PHshg/jehdPDn2fvQ6GM11Z5xJOUc3aclzzh4o+YTYcx6Ome1OU1TxDAJ
         1k2Nm94H9WbfTfQNFB0LqSVmgFybn2OuBARwwnYqwNMd+nRLWI7E5eJI8YLsKkWeKxoh
         aZJDi0yx1QeoLzl6/Vk/yqQbsr4uYb274QiV6D+4T+N1/9+sWdGW00yQ9mOoO4x3iwYL
         tJyRoIzJqnxkIP/vFQCgXg/fFgVeie96ziRm8gsERzFV0LCdMuwuE1i9JXPkACy5e2Ek
         mP6al0hnYR28SWzjB0LhxpJ2I7g1el7F/si1YPlAE1uBaZowLBxYt8nn4kA1PykovrpD
         cSGg==
X-Forwarded-Encrypted: i=1; AJvYcCVhwxeu014GAvJ8kOZ1DQtOKQq1v6QUlVEV7mYD3lLr8tKdiJiBBO0cP0yxZNX09wuBGr8+dRJqsE6Omdubh/Luo/ifcDFG4rCunw==
X-Gm-Message-State: AOJu0YxDm/8culaPBIRCOq5Lp4sELuVSi8vW7ynCAsI7kb8rxFCK0SIY
	K45iAwNpQEnMDBDSA94WpmmlAxsWqTX/KlOuFxe8KqtcQyHQWFUnfzSe1kOwOCcISqeY5lFqK+3
	7nAD4B5qwYzDhMabBTL7Pw/FAFMqExAyTG1KQ0S8P9tX2MiTxFAFloD32feqTfCjFuGe5VCDfAs
	o1NV6r144aROGkqK/9/Pkpw2vT2FIf1ePM4UeTuYnxhwxpnQBE1OAVhYrMH0Lj
X-Received: by 2002:a67:bd0e:0:b0:47b:d2e2:9336 with SMTP id y14-20020a67bd0e000000b0047bd2e29336mr12187745vsq.19.1714398716380;
        Mon, 29 Apr 2024 06:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGH6hB2bfs0xj4pBjEadwWBNZ9MR0YtcKFj/kCSFpP1XZR+oScu6QPe2skxOYLMgRQwKr8gvBtd5u28htMsKD8=
X-Received: by 2002:a67:bd0e:0:b0:47b:d2e2:9336 with SMTP id
 y14-20020a67bd0e000000b0047bd2e29336mr12187725vsq.19.1714398716003; Mon, 29
 Apr 2024 06:51:56 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Apr 2024 06:51:55 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240429001317.432-8-jszhang@kernel.org>
References: <20240429001317.432-1-jszhang@kernel.org> <20240429001317.432-8-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 29 Apr 2024 06:51:55 -0700
Message-ID: <CAJM55Z-TO9fJWqdBi8atcUGR8LsjdY5KtWNNes0j_2fOYX5vKQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] riscv: dts: starfive: introduce a common board
 dtsi for jh7110 based boards
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> This is to prepare for Milkv Mars board dts support in the following
> patch. Let's factored out common part into .dtsi.

Maybe something like:

"Many boards using the StarFive JH7110 SoC share a lot of their design with the
first VisionFive 2 boards. Let's factor out the common parts in preparation for
adding support for the Milk-V Mars board."

In any case:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../boot/dts/starfive/jh7110-common.dtsi      | 599 ++++++++++++++++++
>  .../jh7110-starfive-visionfive-2.dtsi         | 585 +----------------
>  2 files changed, 600 insertions(+), 584 deletions(-)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> new file mode 100644
> index 000000000000..8ff6ea64f048
> --- /dev/null
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -0,0 +1,599 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 StarFive Technology Co., Ltd.
> + * Copyright (C) 2022 Emil Renner Berthing <kernel@esmil.dk>
> + */
> +
> +/dts-v1/;
> +#include "jh7110.dtsi"
> +#include "jh7110-pinfunc.h"
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	aliases {
> +		ethernet0 = &gmac0;
> +		i2c0 = &i2c0;
> +		i2c2 = &i2c2;
> +		i2c5 = &i2c5;
> +		i2c6 = &i2c6;
> +		mmc0 = &mmc0;
> +		mmc1 = &mmc1;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0x1 0x0>;
> +	};
> +
> +	gpio-restart {
> +		compatible = "gpio-restart";
> +		gpios = <&sysgpio 35 GPIO_ACTIVE_HIGH>;
> +		priority = <224>;
> +	};
> +
> +	pwmdac_codec: audio-codec {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "StarFive-PWMDAC-Sound-Card";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		simple-audio-card,dai-link@0 {
> +			reg = <0>;
> +			format = "left_j";
> +			bitclock-master = <&sndcpu0>;
> +			frame-master = <&sndcpu0>;
> +
> +			sndcpu0: cpu {
> +				sound-dai = <&pwmdac>;
> +			};
> +
> +			codec {
> +				sound-dai = <&pwmdac_codec>;
> +			};
> +		};
> +	};
> +};
> +
> +&cpus {
> +	timebase-frequency = <4000000>;
> +};
> +
> +&dvp_clk {
> +	clock-frequency = <74250000>;
> +};
> +
> +&gmac0_rgmii_rxin {
> +	clock-frequency = <125000000>;
> +};
> +
> +&gmac0_rmii_refin {
> +	clock-frequency = <50000000>;
> +};
> +
> +&gmac1_rgmii_rxin {
> +	clock-frequency = <125000000>;
> +};
> +
> +&gmac1_rmii_refin {
> +	clock-frequency = <50000000>;
> +};
> +
> +&hdmitx0_pixelclk {
> +	clock-frequency = <297000000>;
> +};
> +
> +&i2srx_bclk_ext {
> +	clock-frequency = <12288000>;
> +};
> +
> +&i2srx_lrck_ext {
> +	clock-frequency = <192000>;
> +};
> +
> +&i2stx_bclk_ext {
> +	clock-frequency = <12288000>;
> +};
> +
> +&i2stx_lrck_ext {
> +	clock-frequency = <192000>;
> +};
> +
> +&mclk_ext {
> +	clock-frequency = <12288000>;
> +};
> +
> +&osc {
> +	clock-frequency = <24000000>;
> +};
> +
> +&rtc_osc {
> +	clock-frequency = <32768>;
> +};
> +
> +&tdm_ext {
> +	clock-frequency = <49152000>;
> +};
> +
> +&camss {
> +	assigned-clocks = <&ispcrg JH7110_ISPCLK_DOM4_APB_FUNC>,
> +			  <&ispcrg JH7110_ISPCLK_MIPI_RX0_PXL>;
> +	assigned-clock-rates = <49500000>, <198000000>;
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			camss_from_csi2rx: endpoint {
> +				remote-endpoint = <&csi2rx_to_camss>;
> +			};
> +		};
> +	};
> +};
> +
> +&csi2rx {
> +	assigned-clocks = <&ispcrg JH7110_ISPCLK_VIN_SYS>;
> +	assigned-clock-rates = <297000000>;
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			/* remote MIPI sensor endpoint */
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			csi2rx_to_camss: endpoint {
> +				remote-endpoint = <&camss_from_csi2rx>;
> +			};
> +		};
> +	};
> +};
> +
> +&gmac0 {
> +	phy-handle = <&phy0>;
> +	phy-mode = "rgmii-id";
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +
> +		phy0: ethernet-phy@0 {
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	clock-frequency = <100000>;
> +	i2c-sda-hold-time-ns = <300>;
> +	i2c-sda-falling-time-ns = <510>;
> +	i2c-scl-falling-time-ns = <510>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	i2c-sda-hold-time-ns = <300>;
> +	i2c-sda-falling-time-ns = <510>;
> +	i2c-scl-falling-time-ns = <510>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins>;
> +	status = "okay";
> +};
> +
> +&i2c5 {
> +	clock-frequency = <100000>;
> +	i2c-sda-hold-time-ns = <300>;
> +	i2c-sda-falling-time-ns = <510>;
> +	i2c-scl-falling-time-ns = <510>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_pins>;
> +	status = "okay";
> +
> +	axp15060: pmic@36 {
> +		compatible = "x-powers,axp15060";
> +		reg = <0x36>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +
> +		regulators {
> +			vcc_3v3: dcdc1 {
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc_3v3";
> +			};
> +
> +			vdd_cpu: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1540000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			emmc_vdd: aldo4 {
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "emmc_vdd";
> +			};
> +		};
> +	};
> +};
> +
> +&i2c6 {
> +	clock-frequency = <100000>;
> +	i2c-sda-hold-time-ns = <300>;
> +	i2c-sda-falling-time-ns = <510>;
> +	i2c-scl-falling-time-ns = <510>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c6_pins>;
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	max-frequency = <100000000>;
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
> +	assigned-clock-rates = <50000000>;
> +	bus-width = <8>;
> +	cap-mmc-highspeed;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	cap-mmc-hw-reset;
> +	post-power-on-delay-ms = <200>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_pins>;
> +	vmmc-supply = <&vcc_3v3>;
> +	vqmmc-supply = <&emmc_vdd>;
> +	status = "okay";
> +};
> +
> +&mmc1 {
> +	max-frequency = <100000000>;
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO1_SDCARD>;
> +	assigned-clock-rates = <50000000>;
> +	bus-width = <4>;
> +	no-sdio;
> +	no-mmc;
> +	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	cap-sd-highspeed;
> +	post-power-on-delay-ms = <200>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc1_pins>;
> +	status = "okay";
> +};
> +
> +&pwmdac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwmdac_pins>;
> +	status = "okay";
> +};
> +
> +&qspi {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	nor_flash: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		cdns,read-delay = <5>;
> +		spi-max-frequency = <12000000>;
> +		cdns,tshsl-ns = <1>;
> +		cdns,tsd2d-ns = <1>;
> +		cdns,tchsh-ns = <1>;
> +		cdns,tslch-ns = <1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			spl@0 {
> +				reg = <0x0 0x80000>;
> +			};
> +			uboot-env@f0000 {
> +				reg = <0xf0000 0x10000>;
> +			};
> +			uboot@100000 {
> +				reg = <0x100000 0x400000>;
> +			};
> +			reserved-data@600000 {
> +				reg = <0x600000 0xa00000>;
> +			};
> +		};
> +	};
> +};
> +
> +&pwm {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm_pins>;
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi0_pins>;
> +	status = "okay";
> +
> +	spi_dev0: spi@0 {
> +		compatible = "rohm,dh2228fv";
> +		reg = <0>;
> +		spi-max-frequency = <10000000>;
> +	};
> +};
> +
> +&sysgpio {
> +	i2c0_pins: i2c0-0 {
> +		i2c-pins {
> +			pinmux = <GPIOMUX(57, GPOUT_LOW,
> +					      GPOEN_SYS_I2C0_CLK,
> +					      GPI_SYS_I2C0_CLK)>,
> +				 <GPIOMUX(58, GPOUT_LOW,
> +					      GPOEN_SYS_I2C0_DATA,
> +					      GPI_SYS_I2C0_DATA)>;
> +			bias-disable; /* external pull-up */
> +			input-enable;
> +			input-schmitt-enable;
> +		};
> +	};
> +
> +	i2c2_pins: i2c2-0 {
> +		i2c-pins {
> +			pinmux = <GPIOMUX(3, GPOUT_LOW,
> +					     GPOEN_SYS_I2C2_CLK,
> +					     GPI_SYS_I2C2_CLK)>,
> +				 <GPIOMUX(2, GPOUT_LOW,
> +					     GPOEN_SYS_I2C2_DATA,
> +					     GPI_SYS_I2C2_DATA)>;
> +			bias-disable; /* external pull-up */
> +			input-enable;
> +			input-schmitt-enable;
> +		};
> +	};
> +
> +	i2c5_pins: i2c5-0 {
> +		i2c-pins {
> +			pinmux = <GPIOMUX(19, GPOUT_LOW,
> +					      GPOEN_SYS_I2C5_CLK,
> +					      GPI_SYS_I2C5_CLK)>,
> +				 <GPIOMUX(20, GPOUT_LOW,
> +					      GPOEN_SYS_I2C5_DATA,
> +					      GPI_SYS_I2C5_DATA)>;
> +			bias-disable; /* external pull-up */
> +			input-enable;
> +			input-schmitt-enable;
> +		};
> +	};
> +
> +	i2c6_pins: i2c6-0 {
> +		i2c-pins {
> +			pinmux = <GPIOMUX(16, GPOUT_LOW,
> +					      GPOEN_SYS_I2C6_CLK,
> +					      GPI_SYS_I2C6_CLK)>,
> +				 <GPIOMUX(17, GPOUT_LOW,
> +					      GPOEN_SYS_I2C6_DATA,
> +					      GPI_SYS_I2C6_DATA)>;
> +			bias-disable; /* external pull-up */
> +			input-enable;
> +			input-schmitt-enable;
> +		};
> +	};
> +
> +	mmc0_pins: mmc0-0 {
> +		 rst-pins {
> +			pinmux = <GPIOMUX(62, GPOUT_SYS_SDIO0_RST,
> +					      GPOEN_ENABLE,
> +					      GPI_NONE)>;
> +			bias-pull-up;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		mmc-pins {
> +			pinmux = <PINMUX(64, 0)>,
> +				 <PINMUX(65, 0)>,
> +				 <PINMUX(66, 0)>,
> +				 <PINMUX(67, 0)>,
> +				 <PINMUX(68, 0)>,
> +				 <PINMUX(69, 0)>,
> +				 <PINMUX(70, 0)>,
> +				 <PINMUX(71, 0)>,
> +				 <PINMUX(72, 0)>,
> +				 <PINMUX(73, 0)>;
> +			bias-pull-up;
> +			drive-strength = <12>;
> +			input-enable;
> +		};
> +	};
> +
> +	mmc1_pins: mmc1-0 {
> +		clk-pins {
> +			pinmux = <GPIOMUX(10, GPOUT_SYS_SDIO1_CLK,
> +					      GPOEN_ENABLE,
> +					      GPI_NONE)>;
> +			bias-pull-up;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		mmc-pins {
> +			pinmux = <GPIOMUX(9, GPOUT_SYS_SDIO1_CMD,
> +					     GPOEN_SYS_SDIO1_CMD,
> +					     GPI_SYS_SDIO1_CMD)>,
> +				 <GPIOMUX(11, GPOUT_SYS_SDIO1_DATA0,
> +					      GPOEN_SYS_SDIO1_DATA0,
> +					      GPI_SYS_SDIO1_DATA0)>,
> +				 <GPIOMUX(12, GPOUT_SYS_SDIO1_DATA1,
> +					      GPOEN_SYS_SDIO1_DATA1,
> +					      GPI_SYS_SDIO1_DATA1)>,
> +				 <GPIOMUX(7, GPOUT_SYS_SDIO1_DATA2,
> +					     GPOEN_SYS_SDIO1_DATA2,
> +					     GPI_SYS_SDIO1_DATA2)>,
> +				 <GPIOMUX(8, GPOUT_SYS_SDIO1_DATA3,
> +					     GPOEN_SYS_SDIO1_DATA3,
> +					     GPI_SYS_SDIO1_DATA3)>;
> +			bias-pull-up;
> +			drive-strength = <12>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	pwmdac_pins: pwmdac-0 {
> +		pwmdac-pins {
> +			pinmux = <GPIOMUX(33, GPOUT_SYS_PWMDAC_LEFT,
> +					      GPOEN_ENABLE,
> +					      GPI_NONE)>,
> +				 <GPIOMUX(34, GPOUT_SYS_PWMDAC_RIGHT,
> +					      GPOEN_ENABLE,
> +					      GPI_NONE)>;
> +			bias-disable;
> +			drive-strength = <2>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	pwm_pins: pwm-0 {
> +		pwm-pins {
> +			pinmux = <GPIOMUX(46, GPOUT_SYS_PWM_CHANNEL0,
> +					      GPOEN_SYS_PWM0_CHANNEL0,
> +					      GPI_NONE)>,
> +				 <GPIOMUX(59, GPOUT_SYS_PWM_CHANNEL1,
> +					      GPOEN_SYS_PWM0_CHANNEL1,
> +					      GPI_NONE)>;
> +			bias-disable;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	spi0_pins: spi0-0 {
> +		mosi-pins {
> +			pinmux = <GPIOMUX(52, GPOUT_SYS_SPI0_TXD,
> +					      GPOEN_ENABLE,
> +					      GPI_NONE)>;
> +			bias-disable;
> +			input-disable;
> +			input-schmitt-disable;
> +		};
> +
> +		miso-pins {
> +			pinmux = <GPIOMUX(53, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_SYS_SPI0_RXD)>;
> +			bias-pull-up;
> +			input-enable;
> +			input-schmitt-enable;
> +		};
> +
> +		sck-pins {
> +			pinmux = <GPIOMUX(48, GPOUT_SYS_SPI0_CLK,
> +					      GPOEN_ENABLE,
> +					      GPI_SYS_SPI0_CLK)>;
> +			bias-disable;
> +			input-disable;
> +			input-schmitt-disable;
> +		};
> +
> +		ss-pins {
> +			pinmux = <GPIOMUX(49, GPOUT_SYS_SPI0_FSS,
> +					      GPOEN_ENABLE,
> +					      GPI_SYS_SPI0_FSS)>;
> +			bias-disable;
> +			input-disable;
> +			input-schmitt-disable;
> +		};
> +	};
> +
> +	uart0_pins: uart0-0 {
> +		tx-pins {
> +			pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX,
> +					     GPOEN_ENABLE,
> +					     GPI_NONE)>;
> +			bias-disable;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		rx-pins {
> +			pinmux = <GPIOMUX(6, GPOUT_LOW,
> +					     GPOEN_DISABLE,
> +					     GPI_SYS_UART0_RX)>;
> +			bias-disable; /* external pull-up */
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
> +	status = "okay";
> +};
> +
> +&usb0 {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&U74_1 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&U74_2 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&U74_3 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&U74_4 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index e19f26628054..9d70f21c86fc 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -5,188 +5,11 @@
>   */
>
>  /dts-v1/;
> -#include "jh7110.dtsi"
> -#include "jh7110-pinfunc.h"
> -#include <dt-bindings/gpio/gpio.h>
> +#include "jh7110-common.dtsi"
>
>  / {
>  	aliases {
> -		ethernet0 = &gmac0;
>  		ethernet1 = &gmac1;
> -		i2c0 = &i2c0;
> -		i2c2 = &i2c2;
> -		i2c5 = &i2c5;
> -		i2c6 = &i2c6;
> -		mmc0 = &mmc0;
> -		mmc1 = &mmc1;
> -		serial0 = &uart0;
> -	};
> -
> -	chosen {
> -		stdout-path = "serial0:115200n8";
> -	};
> -
> -	memory@40000000 {
> -		device_type = "memory";
> -		reg = <0x0 0x40000000 0x1 0x0>;
> -	};
> -
> -	gpio-restart {
> -		compatible = "gpio-restart";
> -		gpios = <&sysgpio 35 GPIO_ACTIVE_HIGH>;
> -		priority = <224>;
> -	};
> -
> -	pwmdac_codec: audio-codec {
> -		compatible = "linux,spdif-dit";
> -		#sound-dai-cells = <0>;
> -	};
> -
> -	sound {
> -		compatible = "simple-audio-card";
> -		simple-audio-card,name = "StarFive-PWMDAC-Sound-Card";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		simple-audio-card,dai-link@0 {
> -			reg = <0>;
> -			format = "left_j";
> -			bitclock-master = <&sndcpu0>;
> -			frame-master = <&sndcpu0>;
> -
> -			sndcpu0: cpu {
> -				sound-dai = <&pwmdac>;
> -			};
> -
> -			codec {
> -				sound-dai = <&pwmdac_codec>;
> -			};
> -		};
> -	};
> -};
> -
> -&cpus {
> -	timebase-frequency = <4000000>;
> -};
> -
> -&dvp_clk {
> -	clock-frequency = <74250000>;
> -};
> -
> -&gmac0_rgmii_rxin {
> -	clock-frequency = <125000000>;
> -};
> -
> -&gmac0_rmii_refin {
> -	clock-frequency = <50000000>;
> -};
> -
> -&gmac1_rgmii_rxin {
> -	clock-frequency = <125000000>;
> -};
> -
> -&gmac1_rmii_refin {
> -	clock-frequency = <50000000>;
> -};
> -
> -&hdmitx0_pixelclk {
> -	clock-frequency = <297000000>;
> -};
> -
> -&i2srx_bclk_ext {
> -	clock-frequency = <12288000>;
> -};
> -
> -&i2srx_lrck_ext {
> -	clock-frequency = <192000>;
> -};
> -
> -&i2stx_bclk_ext {
> -	clock-frequency = <12288000>;
> -};
> -
> -&i2stx_lrck_ext {
> -	clock-frequency = <192000>;
> -};
> -
> -&mclk_ext {
> -	clock-frequency = <12288000>;
> -};
> -
> -&osc {
> -	clock-frequency = <24000000>;
> -};
> -
> -&rtc_osc {
> -	clock-frequency = <32768>;
> -};
> -
> -&tdm_ext {
> -	clock-frequency = <49152000>;
> -};
> -
> -&camss {
> -	assigned-clocks = <&ispcrg JH7110_ISPCLK_DOM4_APB_FUNC>,
> -			  <&ispcrg JH7110_ISPCLK_MIPI_RX0_PXL>;
> -	assigned-clock-rates = <49500000>, <198000000>;
> -	status = "okay";
> -
> -	ports {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		port@0 {
> -			reg = <0>;
> -		};
> -
> -		port@1 {
> -			reg = <1>;
> -
> -			camss_from_csi2rx: endpoint {
> -				remote-endpoint = <&csi2rx_to_camss>;
> -			};
> -		};
> -	};
> -};
> -
> -&csi2rx {
> -	assigned-clocks = <&ispcrg JH7110_ISPCLK_VIN_SYS>;
> -	assigned-clock-rates = <297000000>;
> -	status = "okay";
> -
> -	ports {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		port@0 {
> -			reg = <0>;
> -
> -			/* remote MIPI sensor endpoint */
> -		};
> -
> -		port@1 {
> -			reg = <1>;
> -
> -			csi2rx_to_camss: endpoint {
> -				remote-endpoint = <&camss_from_csi2rx>;
> -			};
> -		};
> -	};
> -};
> -
> -&gmac0 {
> -	phy-handle = <&phy0>;
> -	phy-mode = "rgmii-id";
> -	status = "okay";
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "snps,dwmac-mdio";
> -
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -		};
>  	};
>  };
>
> @@ -206,412 +29,6 @@ phy1: ethernet-phy@1 {
>  	};
>  };
>
> -&i2c0 {
> -	clock-frequency = <100000>;
> -	i2c-sda-hold-time-ns = <300>;
> -	i2c-sda-falling-time-ns = <510>;
> -	i2c-scl-falling-time-ns = <510>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c0_pins>;
> -	status = "okay";
> -};
> -
> -&i2c2 {
> -	clock-frequency = <100000>;
> -	i2c-sda-hold-time-ns = <300>;
> -	i2c-sda-falling-time-ns = <510>;
> -	i2c-scl-falling-time-ns = <510>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c2_pins>;
> -	status = "okay";
> -};
> -
> -&i2c5 {
> -	clock-frequency = <100000>;
> -	i2c-sda-hold-time-ns = <300>;
> -	i2c-sda-falling-time-ns = <510>;
> -	i2c-scl-falling-time-ns = <510>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c5_pins>;
> -	status = "okay";
> -
> -	axp15060: pmic@36 {
> -		compatible = "x-powers,axp15060";
> -		reg = <0x36>;
> -		interrupt-controller;
> -		#interrupt-cells = <1>;
> -
> -		regulators {
> -			vcc_3v3: dcdc1 {
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vcc_3v3";
> -			};
> -
> -			vdd_cpu: dcdc2 {
> -				regulator-always-on;
> -				regulator-min-microvolt = <500000>;
> -				regulator-max-microvolt = <1540000>;
> -				regulator-name = "vdd-cpu";
> -			};
> -
> -			emmc_vdd: aldo4 {
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "emmc_vdd";
> -			};
> -		};
> -	};
> -};
> -
> -&i2c6 {
> -	clock-frequency = <100000>;
> -	i2c-sda-hold-time-ns = <300>;
> -	i2c-sda-falling-time-ns = <510>;
> -	i2c-scl-falling-time-ns = <510>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c6_pins>;
> -	status = "okay";
> -};
> -
>  &mmc0 {
> -	max-frequency = <100000000>;
> -	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
> -	assigned-clock-rates = <50000000>;
> -	bus-width = <8>;
> -	cap-mmc-highspeed;
> -	mmc-ddr-1_8v;
> -	mmc-hs200-1_8v;
>  	non-removable;
> -	cap-mmc-hw-reset;
> -	post-power-on-delay-ms = <200>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&mmc0_pins>;
> -	vmmc-supply = <&vcc_3v3>;
> -	vqmmc-supply = <&emmc_vdd>;
> -	status = "okay";
> -};
> -
> -&mmc1 {
> -	max-frequency = <100000000>;
> -	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO1_SDCARD>;
> -	assigned-clock-rates = <50000000>;
> -	bus-width = <4>;
> -	no-sdio;
> -	no-mmc;
> -	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
> -	disable-wp;
> -	cap-sd-highspeed;
> -	post-power-on-delay-ms = <200>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&mmc1_pins>;
> -	status = "okay";
> -};
> -
> -&pwmdac {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pwmdac_pins>;
> -	status = "okay";
> -};
> -
> -&qspi {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	status = "okay";
> -
> -	nor_flash: flash@0 {
> -		compatible = "jedec,spi-nor";
> -		reg = <0>;
> -		cdns,read-delay = <5>;
> -		spi-max-frequency = <12000000>;
> -		cdns,tshsl-ns = <1>;
> -		cdns,tsd2d-ns = <1>;
> -		cdns,tchsh-ns = <1>;
> -		cdns,tslch-ns = <1>;
> -
> -		partitions {
> -			compatible = "fixed-partitions";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			spl@0 {
> -				reg = <0x0 0x80000>;
> -			};
> -			uboot-env@f0000 {
> -				reg = <0xf0000 0x10000>;
> -			};
> -			uboot@100000 {
> -				reg = <0x100000 0x400000>;
> -			};
> -			reserved-data@600000 {
> -				reg = <0x600000 0xa00000>;
> -			};
> -		};
> -	};
> -};
> -
> -&pwm {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pwm_pins>;
> -	status = "okay";
> -};
> -
> -&spi0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&spi0_pins>;
> -	status = "okay";
> -
> -	spi_dev0: spi@0 {
> -		compatible = "rohm,dh2228fv";
> -		reg = <0>;
> -		spi-max-frequency = <10000000>;
> -	};
> -};
> -
> -&sysgpio {
> -	i2c0_pins: i2c0-0 {
> -		i2c-pins {
> -			pinmux = <GPIOMUX(57, GPOUT_LOW,
> -					      GPOEN_SYS_I2C0_CLK,
> -					      GPI_SYS_I2C0_CLK)>,
> -				 <GPIOMUX(58, GPOUT_LOW,
> -					      GPOEN_SYS_I2C0_DATA,
> -					      GPI_SYS_I2C0_DATA)>;
> -			bias-disable; /* external pull-up */
> -			input-enable;
> -			input-schmitt-enable;
> -		};
> -	};
> -
> -	i2c2_pins: i2c2-0 {
> -		i2c-pins {
> -			pinmux = <GPIOMUX(3, GPOUT_LOW,
> -					     GPOEN_SYS_I2C2_CLK,
> -					     GPI_SYS_I2C2_CLK)>,
> -				 <GPIOMUX(2, GPOUT_LOW,
> -					     GPOEN_SYS_I2C2_DATA,
> -					     GPI_SYS_I2C2_DATA)>;
> -			bias-disable; /* external pull-up */
> -			input-enable;
> -			input-schmitt-enable;
> -		};
> -	};
> -
> -	i2c5_pins: i2c5-0 {
> -		i2c-pins {
> -			pinmux = <GPIOMUX(19, GPOUT_LOW,
> -					      GPOEN_SYS_I2C5_CLK,
> -					      GPI_SYS_I2C5_CLK)>,
> -				 <GPIOMUX(20, GPOUT_LOW,
> -					      GPOEN_SYS_I2C5_DATA,
> -					      GPI_SYS_I2C5_DATA)>;
> -			bias-disable; /* external pull-up */
> -			input-enable;
> -			input-schmitt-enable;
> -		};
> -	};
> -
> -	i2c6_pins: i2c6-0 {
> -		i2c-pins {
> -			pinmux = <GPIOMUX(16, GPOUT_LOW,
> -					      GPOEN_SYS_I2C6_CLK,
> -					      GPI_SYS_I2C6_CLK)>,
> -				 <GPIOMUX(17, GPOUT_LOW,
> -					      GPOEN_SYS_I2C6_DATA,
> -					      GPI_SYS_I2C6_DATA)>;
> -			bias-disable; /* external pull-up */
> -			input-enable;
> -			input-schmitt-enable;
> -		};
> -	};
> -
> -	mmc0_pins: mmc0-0 {
> -		 rst-pins {
> -			pinmux = <GPIOMUX(62, GPOUT_SYS_SDIO0_RST,
> -					      GPOEN_ENABLE,
> -					      GPI_NONE)>;
> -			bias-pull-up;
> -			drive-strength = <12>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -
> -		mmc-pins {
> -			pinmux = <PINMUX(64, 0)>,
> -				 <PINMUX(65, 0)>,
> -				 <PINMUX(66, 0)>,
> -				 <PINMUX(67, 0)>,
> -				 <PINMUX(68, 0)>,
> -				 <PINMUX(69, 0)>,
> -				 <PINMUX(70, 0)>,
> -				 <PINMUX(71, 0)>,
> -				 <PINMUX(72, 0)>,
> -				 <PINMUX(73, 0)>;
> -			bias-pull-up;
> -			drive-strength = <12>;
> -			input-enable;
> -		};
> -	};
> -
> -	mmc1_pins: mmc1-0 {
> -		clk-pins {
> -			pinmux = <GPIOMUX(10, GPOUT_SYS_SDIO1_CLK,
> -					      GPOEN_ENABLE,
> -					      GPI_NONE)>;
> -			bias-pull-up;
> -			drive-strength = <12>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -
> -		mmc-pins {
> -			pinmux = <GPIOMUX(9, GPOUT_SYS_SDIO1_CMD,
> -					     GPOEN_SYS_SDIO1_CMD,
> -					     GPI_SYS_SDIO1_CMD)>,
> -				 <GPIOMUX(11, GPOUT_SYS_SDIO1_DATA0,
> -					      GPOEN_SYS_SDIO1_DATA0,
> -					      GPI_SYS_SDIO1_DATA0)>,
> -				 <GPIOMUX(12, GPOUT_SYS_SDIO1_DATA1,
> -					      GPOEN_SYS_SDIO1_DATA1,
> -					      GPI_SYS_SDIO1_DATA1)>,
> -				 <GPIOMUX(7, GPOUT_SYS_SDIO1_DATA2,
> -					     GPOEN_SYS_SDIO1_DATA2,
> -					     GPI_SYS_SDIO1_DATA2)>,
> -				 <GPIOMUX(8, GPOUT_SYS_SDIO1_DATA3,
> -					     GPOEN_SYS_SDIO1_DATA3,
> -					     GPI_SYS_SDIO1_DATA3)>;
> -			bias-pull-up;
> -			drive-strength = <12>;
> -			input-enable;
> -			input-schmitt-enable;
> -			slew-rate = <0>;
> -		};
> -	};
> -
> -	pwmdac_pins: pwmdac-0 {
> -		pwmdac-pins {
> -			pinmux = <GPIOMUX(33, GPOUT_SYS_PWMDAC_LEFT,
> -					      GPOEN_ENABLE,
> -					      GPI_NONE)>,
> -				 <GPIOMUX(34, GPOUT_SYS_PWMDAC_RIGHT,
> -					      GPOEN_ENABLE,
> -					      GPI_NONE)>;
> -			bias-disable;
> -			drive-strength = <2>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -	};
> -
> -	pwm_pins: pwm-0 {
> -		pwm-pins {
> -			pinmux = <GPIOMUX(46, GPOUT_SYS_PWM_CHANNEL0,
> -					      GPOEN_SYS_PWM0_CHANNEL0,
> -					      GPI_NONE)>,
> -				 <GPIOMUX(59, GPOUT_SYS_PWM_CHANNEL1,
> -					      GPOEN_SYS_PWM0_CHANNEL1,
> -					      GPI_NONE)>;
> -			bias-disable;
> -			drive-strength = <12>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -	};
> -
> -	spi0_pins: spi0-0 {
> -		mosi-pins {
> -			pinmux = <GPIOMUX(52, GPOUT_SYS_SPI0_TXD,
> -					      GPOEN_ENABLE,
> -					      GPI_NONE)>;
> -			bias-disable;
> -			input-disable;
> -			input-schmitt-disable;
> -		};
> -
> -		miso-pins {
> -			pinmux = <GPIOMUX(53, GPOUT_LOW,
> -					      GPOEN_DISABLE,
> -					      GPI_SYS_SPI0_RXD)>;
> -			bias-pull-up;
> -			input-enable;
> -			input-schmitt-enable;
> -		};
> -
> -		sck-pins {
> -			pinmux = <GPIOMUX(48, GPOUT_SYS_SPI0_CLK,
> -					      GPOEN_ENABLE,
> -					      GPI_SYS_SPI0_CLK)>;
> -			bias-disable;
> -			input-disable;
> -			input-schmitt-disable;
> -		};
> -
> -		ss-pins {
> -			pinmux = <GPIOMUX(49, GPOUT_SYS_SPI0_FSS,
> -					      GPOEN_ENABLE,
> -					      GPI_SYS_SPI0_FSS)>;
> -			bias-disable;
> -			input-disable;
> -			input-schmitt-disable;
> -		};
> -	};
> -
> -	uart0_pins: uart0-0 {
> -		tx-pins {
> -			pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX,
> -					     GPOEN_ENABLE,
> -					     GPI_NONE)>;
> -			bias-disable;
> -			drive-strength = <12>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -
> -		rx-pins {
> -			pinmux = <GPIOMUX(6, GPOUT_LOW,
> -					     GPOEN_DISABLE,
> -					     GPI_SYS_UART0_RX)>;
> -			bias-disable; /* external pull-up */
> -			drive-strength = <2>;
> -			input-enable;
> -			input-schmitt-enable;
> -			slew-rate = <0>;
> -		};
> -	};
> -};
> -
> -&uart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart0_pins>;
> -	status = "okay";
> -};
> -
> -&usb0 {
> -	dr_mode = "peripheral";
> -	status = "okay";
> -};
> -
> -&U74_1 {
> -	cpu-supply = <&vdd_cpu>;
> -};
> -
> -&U74_2 {
> -	cpu-supply = <&vdd_cpu>;
> -};
> -
> -&U74_3 {
> -	cpu-supply = <&vdd_cpu>;
> -};
> -
> -&U74_4 {
> -	cpu-supply = <&vdd_cpu>;
>  };
> --
> 2.43.0
>

