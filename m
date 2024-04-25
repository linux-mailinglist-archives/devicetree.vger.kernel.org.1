Return-Path: <devicetree+bounces-62539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 971108B1815
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 02:36:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBE2AB2450D
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 00:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24B480C;
	Thu, 25 Apr 2024 00:36:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2677EF
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 00:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714005379; cv=none; b=iCKFR/RW7ZMjTKhUyXv8NAiG/UzOpWwsYHzc5WxieJAO8ZuQNjk+soVDfo+Xv/yLXefqkqHTr3UM/PEInhrY//FQTiFczjKtWRpRXI6+pGdQvr03iin/A0VeYQijIBsz7nOcz7IIJ0UxVmIFJXgxPQLYUKVEEmSQAQ0CzHQ3HA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714005379; c=relaxed/simple;
	bh=Pk/sHrPl6C3mqNZupy8ctRKT5NWa/ZiuI+NX9d52oUY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZKTwP9Yr8Hv7fUs8BvX2kOADJgvFIJ4wb/pGgin2t4aO3MItZMQAXhn6E8zUkBlmkbw631FGdUcbV7y6A4bMWLIIXcn8+nav2VU9lq4tzdovMHUDx/LfH7Ky7G39AksCcJImyuDvAa91rp+3OK766scYM703Mdq7sCahJEK4GIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B4401007;
	Wed, 24 Apr 2024 17:36:45 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB4E13F7BD;
	Wed, 24 Apr 2024 17:36:15 -0700 (PDT)
Date: Thu, 25 Apr 2024 01:35:59 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 4/4] arm64: dts: allwinner: h700: Add RG35XX-H DTS
Message-ID: <20240425013559.5b5d1fe4@minigeek.lan>
In-Reply-To: <20240424110947.9057-5-ryan@testtoast.com>
References: <20240424110947.9057-1-ryan@testtoast.com>
	<20240424110947.9057-5-ryan@testtoast.com>
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

On Wed, 24 Apr 2024 23:09:47 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

> The RG35XX-H adds thumbsticks, a stereo speaker, and a second USB port to the RG35XX-Plus, and has a horizontal form factor.
> 
> Enabled in this DTS:
> - Thumbsticks
> - Second USB port
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Add GP ADC joystick axes and mux [1]
> - Add EHCI/OHCI1 for second USB port and add vbus supply
> 
> Changelog v2..v3:
> - Add DTB to Makefile
> - Remove USB vbus supply
> - Remove GPADC joysticks until required patches land [1]
> - Move thumbsticks into existing gpio gamepad node
> - Move changelog and links below fold-line
> 
> [1]: https://lore.kernel.org/linux-sunxi/20240417170423.20640-1-macroalpha82@gmail.com/T/#t
> 
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../sun50i-h700-anbernic-rg35xx-h.dts         | 46 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 4217328b1889..c2c871d8b71e 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -49,3 +49,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> new file mode 100644
> index 000000000000..3f4435ff9b71
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> @@ -0,0 +1,46 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
> + */
> +
> +#include "sun50i-h700-anbernic-rg35xx-plus.dts"
> +
> +/ {
> +	model = "Anbernic RG35XX H";
> +	compatible = "anbernic,rg35xx-h", "allwinner,sun50i-h700";
> +};
> +
> +&gpio_keys_gamepad {
> +
> +	button-thumbl {
> +		label = "GPIO Thumb Left";
> +		gpios = <&pio 4 8 GPIO_ACTIVE_LOW>; /* PE8 */
> +		linux,input-type = <EV_KEY>;
> +		linux,code = <BTN_THUMBL>;
> +	};
> +
> +	button-thumbr {
> +		label = "GPIO Thumb Right";
> +		gpios = <&pio 4 9 GPIO_ACTIVE_LOW>; /* PE9 */
> +		linux,input-type = <EV_KEY>;
> +		linux,code = <BTN_THUMBR>;
> +	};
> +};
> +
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +&ohci1 {
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};

Those two nodes look redundant, since they exist already in the base
.dts. I guess &usbphy needs to be adjusted later, but &usbotg is likely
to stay the same? Anyway, it doesn't really hurt, so:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre



