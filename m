Return-Path: <devicetree+bounces-84933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4892892E445
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:11:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5C7AB21857
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 10:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B5C15747C;
	Thu, 11 Jul 2024 10:10:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611E014E2F1
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 10:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720692657; cv=none; b=cLPJn/6LE+CjA1Kv3VkF+HEEGB6CemgEXrDxGeY+lqgpn4U8QOpCLE4AhtaewxeaNy/gRneXve5n7hVtdKz5lc5TTXpop8Ydud65VZ49A4ElwdM2moLh5RTWsCsdHdZUn8HtZEWyPiK+/hAAGvDiMVdJ36+gxMt0WJrZkS/ExsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720692657; c=relaxed/simple;
	bh=RKoqHfGigndorqIK0+wPq33CUvtidQBPotJNDsI3/1c=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gaEw/Pw3t+imaR7Uyx+9/wrn0O/RH07IulZ6yoscYPhOZD2fIxw51fUbqqYbH7P6p0Zzna+6MFxYEV9X2+l/4+2zk79tkASX+s+XOSWC9x4VglbjqJriFSTAUAM8m4lRHghCX7w0MxFPN9gpeR216DI+TuMHCm2l/lC1abHEUxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10BDE1007;
	Thu, 11 Jul 2024 03:11:20 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 494843F766;
	Thu, 11 Jul 2024 03:10:53 -0700 (PDT)
Date: Thu, 11 Jul 2024 11:10:50 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, ryan@testtoast.com, samuel@sholland.org,
 jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 4/4] arm64: dts: allwinner: h700: Add Anbernic
 RG35XX-SP
Message-ID: <20240711111050.68f324b1@donnerap.manchester.arm.com>
In-Reply-To: <20240710231718.106894-5-macroalpha82@gmail.com>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
	<20240710231718.106894-5-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 10 Jul 2024 18:17:18 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
> clamshell form-factor. The key differences between the SP and the Plus
> is a lid switch and an RTC on the same i2c bus as the PMIC.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  3 +-
>  .../sun50i-h700-anbernic-rg35xx-sp.dts        | 34 +++++++++++++++++++
>  2 files changed, 36 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 0db7b60b49a1..00bed412ee31 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -49,5 +49,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
> -dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-sp.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
> new file mode 100644
> index 000000000000..0cf16dc903cd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
> + */
> +
> +#include <dt-bindings/input/gpio-keys.h>
> +#include "sun50i-h700-anbernic-rg35xx-plus.dts"
> +
> +/ {
> +	model = "Anbernic RG35XX SP";
> +	compatible = "anbernic,rg35xx-sp", "allwinner,sun50i-h700";
> +
> +	gpio-keys-lid {
> +		compatible = "gpio-keys";
> +
> +		lid-switch {
> +			label = "Lid Switch";
> +			gpios = <&pio 4 7 GPIO_ACTIVE_LOW>; /* PE7 */
> +			linux,can-disable;
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			wakeup-event-action = <EV_ACT_DEASSERTED>;
> +			wakeup-source;
> +		};
> +	};
> +};
> +
> +&r_i2c {
> +	rtc_ext: rtc@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +};


