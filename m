Return-Path: <devicetree+bounces-63120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 421A98B3C6A
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:07:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6509C1C20CBF
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E8E14C5BF;
	Fri, 26 Apr 2024 16:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DmgTfwZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47691474A0
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147667; cv=none; b=Yi7/j0vQlPqzRNVoy4j1IVBFhzVb+DsjMResa5rW/KRuZNREz7drQOGu9lZvI3Ojx6HRe6RWVqqXCeUTv9rCac93sqwIFnOJ3GujzsGDVJX63VlBIiHrMaICjpucajahUAALLKdH5rhAogaTCoUcQusAsLcdSY24fgVVdOfpMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147667; c=relaxed/simple;
	bh=Ov5uUPnrz3wAws4wWrFyH7JPRH8FOtLsH3Miyh1IPmw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kiK7pPhf0qG1fzerhIyRDHWkC0qJv2XyWMHtOGR3sVP4a55CQAoHoWLyRZL6OZLPFQ7xqJu+FMh8qS/3+S0+1xkX1CfgdXroLvvffJftwckXO9KsZraojCzzxjansXVs9HVNPky4SOnAzyqDTKolwN3elhcPTsYfqSEH9d1bWTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DmgTfwZI; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34b3374ae22so2470852f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 09:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714147664; x=1714752464; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e98uEa894yCRMEcpOdy/aYqOMPHaErz9efzMY9n7gOU=;
        b=DmgTfwZIL1WfgXYW+oGfOOZn5WITWxOMH03hBBYtDoc7yO0wDEQmszeGTroQSXodgp
         T4dTqblZoEdyU6iqIjBdM5BODjEEvBjvwr3y8wL39A6gAmFaOL0CIQ1fl65v8H+0+BjL
         LY+EpehAknTfhQJAwXt2KqOF2ZTNaaLhxFMuYBXX4WOaAG0J6LwJzmXM9FOhlx5c+E5C
         T8L0/fZbJ4a+FVgTsjo53aL6xXgY5yk8Vde8d2XeaMuyIgpUeh2Vt02CO0KOwhwL2WYD
         b7mnTfXjB2nmscCU3hIrUR31qpkYzZfRMwc+gopuRPR4eQfacRrK2fBOqZVLbkxTBk7f
         Djjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714147664; x=1714752464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e98uEa894yCRMEcpOdy/aYqOMPHaErz9efzMY9n7gOU=;
        b=oLsVF9moswHqPV40BKdF7d+7YRytylMm8vzMmQlMzOFb49jopyMSf3gOFvl9pafShT
         U1MrCJCtMFWtztF8F4nyWfDL24/9kCG8WcnmP+sTvlsoeOAbCjtte50PLZ9cV5Q+UYGA
         yeEZ0Z6yqRt1NkbWjI5Uwshnq670SZtrCA/5uIzJfXAz0redYsYuigc6w0IA1VY4c9jg
         xwkG4eHBj/VO116wMWVTwgLOhiHMCCkmniDRWfvsLVW+xS/5e5TWx3EN552wpj/+vPp9
         WBhbgOZXfbtsiVQ+G4/QW/KKxKThQ9QyrhSKxal5RcogaoH5fuCNqDZzhJeO9d9vA0kd
         xYJw==
X-Gm-Message-State: AOJu0YzOd5MMzq24TltBwcLhOnLYALzXpXNZhi64lwiKCOSgxnWrLGrB
	1Qz1nCgt1GyuO0zJxtk1DCGzCCTkYX6AvcMjg+yX8n9EYU6hwBe1
X-Google-Smtp-Source: AGHT+IFPsYon1jXLWFTL68+Mkma0tqyi5dVEaECddz1D4hvd9+t9cZxPgeJo7xRi8H9x71Ea+jLy9A==
X-Received: by 2002:adf:fecf:0:b0:343:734e:73d1 with SMTP id q15-20020adffecf000000b00343734e73d1mr2440243wrs.37.1714147664042;
        Fri, 26 Apr 2024 09:07:44 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id c11-20020adffb0b000000b0034b1a91be72sm10834913wrr.14.2024.04.26.09.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 09:07:43 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH v4 4/4] arm64: dts: allwinner: h700: Add RG35XX-H DTS
Date: Fri, 26 Apr 2024 18:07:42 +0200
Message-ID: <2187659.Mh6RI2rZIc@jernej-laptop>
In-Reply-To: <20240426095141.13602-6-ryan@testtoast.com>
References:
 <20240426095141.13602-2-ryan@testtoast.com>
 <20240426095141.13602-6-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 26. april 2024 ob 11:51:42 GMT +2 je Ryan Walklin napisal(a):
> The RG35XX-H adds thumbsticks, a stereo speaker, and a second USB port to the RG35XX-Plus, and has a horizontal form factor.
> 
> Enabled in this DTS:
> - Thumbsticks
> - Second USB port
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
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
> Changelog v3..v4:
> - Remove redundant USB OTG and PHY nodes.
> 
> [1]: https://lore.kernel.org/linux-sunxi/20240417170423.20640-1-macroalpha82@gmail.com/T/#t
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../sun50i-h700-anbernic-rg35xx-h.dts         | 37 +++++++++++++++++++
>  2 files changed, 38 insertions(+)
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
> index 000000000000..fd581360e987
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> @@ -0,0 +1,37 @@
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

Remove empty line.

With that:
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

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
> 





