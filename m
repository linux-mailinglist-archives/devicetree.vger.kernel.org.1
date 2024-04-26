Return-Path: <devicetree+bounces-63119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 341768B3C63
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A48B51F215D0
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF3814D2B8;
	Fri, 26 Apr 2024 16:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iR9LsyB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D161014C5BF
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147565; cv=none; b=dRoi0JarDLbZE53Tf7ounRDcz7zlS8J1j2CvCPHMev9y/JDZ4+dGuuu/MiVJ/sH4xUkKGZBNiTzViSPh2v5imbKXwzJPqRDiD2rO5O0CWREoxgS1SmdMGiZyUYUyWB20Ch0T5WHtK0By/+WiepD+qUBxvK+nNrrirp99mpDiFcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147565; c=relaxed/simple;
	bh=G70njpUzltHirqMDt+qUGmfxB4e2EJ7vG9+cIWMSu9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mv5pRO8V5GWmCyb7jJUh6/EYXqH2s4P9D5V/eKeE33lmhwwut4et7eChPvR40m31o0smmBNcti/RfJbU+lYvzKos4vTIKfGPKWSum3EPK61ygEi6636In12xc3kEcxSpClgsWH6qPf/uL4bBxKKMyJ5kSSySsbIHjnzI0W97TDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iR9LsyB1; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-343e46ec237so1826204f8f.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 09:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714147561; x=1714752361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BreyMNwH07eEsN1UQMlqTNbeq4uFPEeBPKL0N+e7pEE=;
        b=iR9LsyB1rYJxu3cZv82rKLzX1gVigCnBBicxZHdlbgUDd0E1i//tMBE7anKGXvK/sR
         kBHo6TWuV5aFrhKU7myAnmM4Ct8Oija83aURo1NQlnzjqj0QmTZX01le8ljqKuccDb7J
         3FVfFxSnlJ3895X4+RIHcrSrTtXXTzc9Du+S+n+xFr4FvK9QwVqE7vVWDJ0fajdnEH02
         CQHMAdEO4W2QS0KkF3cLSyxV5ecI65u+XbN90m6tzKsP+ZfCs9FO1DJAdrdyHmUqKGUC
         HOxj/oCKRZKozZG9UKS8hxus6a3mGRtFdx061ZfDUZjz3defHRma0nN9/JvvLzZojHVq
         4U3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714147561; x=1714752361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BreyMNwH07eEsN1UQMlqTNbeq4uFPEeBPKL0N+e7pEE=;
        b=D+qLGd17Yk5sxPNeR+2XWk2uIHgdcwASDhdTKorLIcI/cQcXnnftsgfqF6HGnvGgEC
         UWBMzvm5l2CYJrExbh+Ym2nPJT+5Feqo99kygTYW8fUuD22JTiAy2oBAJW4djexY24qc
         1HdMnsdEo4YyCZcgTV77UCvCVgQwJ2PmvnlhBhE3Pml4WaXjqU9yW7UhmY6XhzvqFLAB
         6ca8slt4CRNsNzwZmejMsc4WWN6pMnSJyixfA4KhlLk+hwxT1qXdfvy4mqe2HcbmgB7O
         wmOBd8bytKrT7sY3KiUCgVy3bmbfMZoBNyMWXwBLC0Tq4L1zUu0lju4PLwVcH9hqRFLq
         5XPA==
X-Gm-Message-State: AOJu0YxkFPC/vMyIQEH4adMoUiuviVCTtbViGyENGuuNCzSy+inEvKqU
	5nNvct4CDuAH4UMSUqsFnOy0/GfiZYpp/k745wEz7F2qyzWOSb2t
X-Google-Smtp-Source: AGHT+IECHS/Q1s2GT5uX6QAsT6giook1s8zUG6WiMLTJS0ugML+6jElcEYiKcdXAdQ9bH6B20F6N1g==
X-Received: by 2002:a5d:5b8d:0:b0:349:fc93:1e2 with SMTP id df13-20020a5d5b8d000000b00349fc9301e2mr11526wrb.9.1714147561072;
        Fri, 26 Apr 2024 09:06:01 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id e4-20020adff344000000b0034349225fbcsm22655082wrp.114.2024.04.26.09.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 09:06:00 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: allwinner: h700: Add RG35XX-Plus DTS
Date: Fri, 26 Apr 2024 18:05:59 +0200
Message-ID: <2602381.Lt9SDvczpP@jernej-laptop>
In-Reply-To: <20240426095141.13602-5-ryan@testtoast.com>
References:
 <20240426095141.13602-2-ryan@testtoast.com>
 <20240426095141.13602-5-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 26. april 2024 ob 11:51:41 GMT +2 je Ryan Walklin napisal(a):
> The RG35XX-Plus adds a RTL8221CS SDIO Wifi/BT chip to the RG35XX (2024).
> 
> Enabled in this DTS:
> - WiFi
> - Bluetooth
> - Supporting power sequence and GPIOs
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Remove redundant &uart0 node and DTS version tag
> - Add GPIO bank comments
> - Use generic pwrseq name
> 
> Changelog v2..v3:
> - Add DTB to Makefile
> - Correct Wifi vqmmc-supply to ALDO4
> - Move changelog below fold-line
> 
> Changelog v3..v4:
> - Fix sdio_wifi node indent
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../sun50i-h700-anbernic-rg35xx-plus.dts      | 53 +++++++++++++++++++
>  2 files changed, 54 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 6f997157968e..4217328b1889 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -48,3 +48,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
> new file mode 100644
> index 000000000000..60a8e4922103
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
> +	vqmmc-supply = <&reg_aldo4>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg = <1>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <6 15 IRQ_TYPE_LEVEL_LOW>; /* PG15 */
> +		interrupt-names = "host-wake";
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
> 





