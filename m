Return-Path: <devicetree+bounces-61150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C34B68ABDDE
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 02:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D00D1F21003
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 00:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EDE645;
	Sun, 21 Apr 2024 00:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3A563D
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 00:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713660814; cv=none; b=qJkGn4SG1ulwGhfJLPhzOfoh06LihSS1syptD3gfqQBWIxylW5olg1CNyknUVxZUc4vDKqracmaX7qieD8rwTwPWa7vL6PaMTu/7/ZB1leal9pnq24u3ws0mxXB/vt1v/mPEreAiiBCNTZmOcYTKXx9n5GznxjayFUjqS8MRNsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713660814; c=relaxed/simple;
	bh=h/BAdutdAlWS7f1a9p69SiM6dEUziZl7NtE2m3ZaPBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q+KIYKKmhgJoWjlQgCOhujhwMOYghWf3eGAWw6YDlS9bv83Lvn+VhsYHzhHamljKclOW7iuTOQcTUVFOGywIMgSM6mitR3kpUMYyvov6VltSgPT9zFGqnqqBmWttYnge063C0DAXjFv0S7UmJQRw+feTrh7zPqefT1X5oG17Z2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84FE3339;
	Sat, 20 Apr 2024 17:54:00 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FD1C3F792;
	Sat, 20 Apr 2024 17:53:30 -0700 (PDT)
Date: Sun, 21 Apr 2024 01:53:17 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 3/5] arm64: dts: allwinner: h700: Add RG35XX-Plus DTS
Message-ID: <20240421015317.4a400e31@minigeek.lan>
In-Reply-To: <20240420104354.334947-9-ryan@testtoast.com>
References: <20240420104354.334947-5-ryan@testtoast.com>
	<20240420104354.334947-9-ryan@testtoast.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 20 Apr 2024 22:43:57 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

Hi,

> The RG35XX-Plus adds a RTL8221CS SDIO Wifi/BT chip to the RG35XX (2024).
> 
> Enabled in this DTS:
> - WiFi
> - Bluetooth
> - Supporting power sequence and GPIOs
> 
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Remove redundant &uart0 node and DTS version tag
> - Add GPIO bank comments
> - Use generic pwrseq name
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  .../sun50i-h700-anbernic-rg35xx-plus.dts      | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
> new file mode 100644
> index 000000000000..67ba1c7bb3ca
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
> @@ -0,0 +1,53 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + */
> +
> +#include "sun50i-h700-anbernic-rg35xx-2024.dts"
> +
> +/ {
> +	model = "Anbernic RG35XX Plus";
> +	compatible = "anbernic,rg35xx-plus", "allwinner,sun50i-h700";
> +
> +	wifi_pwrseq: pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rtc CLK_OSC32K_FANOUT>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&x32clk_fanout_pin>;
> +		pinctrl-names = "default";
> +		post-power-on-delay-ms = <200>;
> +		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
> +	};
> +};
> +
> +/* SDIO WiFi RTL8821CS */
> +&mmc1 {
> +	vmmc-supply = <&reg_cldo4>;
> +	vqmmc-supply = <&reg_pll_dcx0>;

It would be great to confirm what the I/O voltage for MMC1/WiFi really
is, 1.8V or 3.3V? Is someone with a board able to measure this?

The rest looks good to me, thanks for the changes.

Cheers,
Andre

> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: wifi@1 {
> +	   reg = <1>;
> +	   interrupt-parent = <&pio>;
> +	   interrupts = <6 15 IRQ_TYPE_LEVEL_LOW>; /* PG15 */
> +	   interrupt-names = "host-wake";
> +	};
> +};
> +
> +/* Bluetooth RTL8821CS */
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
> +		device-wake-gpios = <&pio 6 17 GPIO_ACTIVE_HIGH>; /* PG17 */
> +		enable-gpios = <&pio 6 19 GPIO_ACTIVE_HIGH>; /* PG19 */
> +		host-wake-gpios = <&pio 6 16 GPIO_ACTIVE_HIGH>; /* PG16 */
> +	};
> +};


