Return-Path: <devicetree+bounces-149907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1DEA40C29
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 00:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 770011898661
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 23:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F12320371D;
	Sat, 22 Feb 2025 23:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="RHwtNUT5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9BD202C53
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 23:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740267531; cv=none; b=Jw5YnBS+Wte1jIj2m5NgRbuYwrDivfVyASMkU/1vnX3FWMH/w8zHjZfy/Q/Gjsd+e1ljaJ+hdHyHnNvHnD5gDZ9hWdrFrhBrx9VDnflF70JiTwqlWim2zveC92LmILN1aftNTrJXtEW9RIiBfvgxCcEFk2kqcbN9O5g1BihsTDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740267531; c=relaxed/simple;
	bh=HkKJo7D8kiSYl07R72oYrpq6Qon8mXJJb1kwE+eWQ7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TUuTACWuL7QqvjWAHYBuFZX4C2Pj2iofzUcj7mRYiH5mGhQYUhbJwQ4s0rwQc77N6rEIbGRXE0BRLR8s6Pfs957u+sXcDw0Zieu0UL5mL6yCsjMI/3yluz+RC9fJgkkYsa3bDNYVVO52nWkKc1dAg2abzI587bvvg1NFPBcAZNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=RHwtNUT5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1b8dcsvV0KMpUsmywMLVSbHtKwY8Jh4pQroQdR1NS/M=; b=RHwtNUT5ARMMwWoj7TytQqvR3y
	bgbqNuuC1BD9On/VNthfzZdrntYa52/LNiBLnHvlGLtucPQ6KKHXhQrQHg6x97ApvBo/kzb9cLMnB
	G8b13KQmdkTJVZOafA042nXkooyYA2hKIjGJMufinD+Xiwp1LFa3FdGzNonIA4eT7ypT+1XVXj/S4
	9Yv4tKXADoHNv5TGO68tiirJlmKttzu5tUye6MY5TVeCRjh9DDe7uv2Axo4ub7QDAeaafJdEOG1py
	8O3ABASjOb0vwYL/W9u8PW0wz3C6lGmRQA/N3LLiZrjtR37NoLlW4FIlvPOXdJHziCyTvhllePLuQ
	dW+2v4yQ==;
Received: from i53875a10.versanet.de ([83.135.90.16] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tlz4z-0004Pp-AY; Sun, 23 Feb 2025 00:38:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Sun, 23 Feb 2025 00:38:40 +0100
Message-ID: <2700899.tdWV9SEqCh@phil>
In-Reply-To: <Z7OahO_OtwYSmtmQ@windev.fritz.box>
References:
 <Z7OaTzIpeJ-IACrl@windev.fritz.box> <Z7OahO_OtwYSmtmQ@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi Patrick,

Am Montag, 17. Februar 2025, 21:22:28 MEZ schrieb Patrick Wildt:
> MNT Reform 2 is an open source laptop with replaceable CPU modules,
> including a version with the RK3588-based MNT RCORE[1], which is based
> on Firefly's iCore-3588Q SoM:
> 
> - Rockchip RK3588
> - Quad A76 and Quad A55 CPU
> - 6 TOPS NPU
> - up to 32GB LPDDR4x RAM
> - SD Card slot
> - Gigabit ethernet port
> - HDMI port
> - 2x mPCIe ports for WiFi or NVMe
> - 3x USB 3.0 Type-A HOST port
> 
> [1] https://shop.mntre.com/products/mnt-reform
> 
> Signed-off-by: Lukas F. Hartmann <lukas@mntre.com>
> Signed-off-by: Patrick Wildt <patrick@blueri.se>

bureaucracy question, what is Lukas' relationship with the patch?
Two options:
(1) Lukas initially developed the patch, then the "From:" should be
    set accordingly
(2) Both of you developed it together, then we should have a
    Co-Developed-by: Lukas F. Hartmann <lukas@mntre.com>
    up there


Some more style things below...


> ---
> Changes for v4:
> - Added chassis-type.
> - Removed unused nodes.
> - Sorted nodes alphabetically.
> Changes for v3:
> - Split DT as it's based on a Firefly iCore-3588Q SoM.
> Changes for v2:
> - Aligned with bindings and schemas to appease DTB check warnings.
> - Aligned with format of other RK3588 boards for consistency.
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3588-firefly-icore-3588q.dtsi  | 451 ++++++++++++++++++
>  .../boot/dts/rockchip/rk3588-mnt-reform2.dts  | 336 +++++++++++++
>  3 files changed, 788 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index def1222c1907..88381d9a20e3 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -145,6 +145,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-firefly-itx-3588j.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-h96-max-v58.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-mnt-reform2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> new file mode 100644
> index 000000000000..898a7b29692f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> @@ -0,0 +1,451 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +#include "rk3588.dtsi"
> +
> +/ {
> +	compatible = "firefly,icore-3588q", "rockchip,rk3588";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +	};
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +	mem-supply = <&vdd_cpu_big0_s0>;

you don't need the unspecified mem-supply for the cpu cores,
that is vendor-kernel voodoo and not part of the upstream binding.

Same for all cores.


> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> new file mode 100644
> index 000000000000..936dd959524f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> @@ -0,0 +1,336 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2024 MNT Research GmbH
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "rk3588-firefly-icore-3588q.dtsi"
> +
> +/ {
> +	model = "MNT Reform 2 with RCORE RK3588 Module";
> +	compatible = "mntre,reform2-rcore", "firefly,icore-3588q", "rockchip,rk3588";
> +	chassis-type = "laptop";
> +
> +	aliases {
> +		ethernet0 = &gmac0;
> +		mmc1 = &sdmmc;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm8 0 10000 0>;
> +		enable-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		brightness-levels = <0 8 16 32 64 128 160 200 255>;
> +		default-brightness-level = <128>;

please sort standard properties alphabetically (compatible at the top,
status at the bottom, rest alphabetically)

> +	};
> +
> +&pcie2x1l2 {
> +	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +	pinctrl-0 = <&pcie2_0_rst>;

more sorting

> +	status = "okay";
> +};
> +

> +&pcie3x4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie3_reset>;
> +	reset-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <1>;

again sorting

> +	vpcie3v3-supply = <&vcc3v3_pcie30>;
> +	status = "okay";
> +};
> +

> +&sdmmc {
> +	bus-width = <4>;
> +	max-frequency = <40000000>;
> +	no-sdio;
> +	no-mmc;
> +	no-1-8-v;
> +	cap-sd-highspeed;
> +	vqmmc-supply = <&vcc3v3_pcie30>;
> +	vmmc-supply = <&vcc3v3_pcie30>;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +	disable-wp;

more sorting

> +	status = "okay";
> +};
> +


Heiko



