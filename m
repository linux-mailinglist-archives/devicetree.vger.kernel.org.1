Return-Path: <devicetree+bounces-19505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D317FB2EC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AB25B20DB4
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 07:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C63313AEC;
	Tue, 28 Nov 2023 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AEYOx9Y1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6286E183
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 23:39:00 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a00cbb83c80so700796266b.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 23:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701157139; x=1701761939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1xpWhdI1Pe1089vUOdBI66mS/Wx9VBdLigp8n4bIcBQ=;
        b=AEYOx9Y1B4izkhe1aprHMC/v2Yo8vG382LQTycXH5a8jA5i373y42W7QQ/XAQb9vYw
         bHpiISo+jxsLK1Y+3fE7SWFEpcLeOpdnfxbgyP9mbsxHm3tbTAIdHkwsFOdGymnV2oHf
         DNFvv/scnTOGsTHB/WTKZJxLq47VrZR/Vt92P/JxkucC7FbaP5UfkhOr4q2BngBMqEWr
         UXfto6aVMmecmyHLpzQZ3tinLgp/UURxNB1OiHORAkRkraAC8/i0hrjJHZ3lCT9dUMi8
         QQ/VmP3Hr8frOEFQiOEODk2ww9B8NCiDGC0xUH2HokVkb2cJAJFCyQw/tl/x3i9SkMT9
         NIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701157139; x=1701761939;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1xpWhdI1Pe1089vUOdBI66mS/Wx9VBdLigp8n4bIcBQ=;
        b=jcd6ih+/OqX9oBQlh/E0ezrDpBpD52EPmCqpOQL4bOEpEhw7yYKuoEHnk3SuB+C82b
         mcIKRL0/MK3LSJNikTF7HZAQEo3m8tbO1bStLTUCAgEo88m44aoJfJPK0PuEcpFvY3S6
         ke+VzEN47WbDMacadDNV78YlYIzJfPQkHgjBIm0tWQEFeMO5q3eGi2g84WpY/vHRbSks
         9+tPJ+xQkZFkX4y5YF9OHBTxu5Xo7pcQmdqTqrbsD5in+jqE8VAvi1ZlK+4x8v/lKQkz
         +18q6E4KGOHbRtDFWsmG+IyEPIWScBL/iYaJnKMRwlSWzlo9PqdOxuNYvB6vykVMlys4
         2bTw==
X-Gm-Message-State: AOJu0Yz7GQloAlTKQKJIlS0+5/Hr8YvdaxQZn6Ed98Oag1u4RHX9vkAI
	xVVI8ZV5CuleeYzLUBgch7Y9FA==
X-Google-Smtp-Source: AGHT+IEwCF3lvSZOgwGHlaziA4rCYoZBAn4V2HpUvlGg0w80wo/sXoP1wZ9X/0DJ/QkOxdcCvkCvJQ==
X-Received: by 2002:a17:906:7c4d:b0:9fa:ca0c:ac42 with SMTP id g13-20020a1709067c4d00b009faca0cac42mr10896090ejp.64.1701157138796;
        Mon, 27 Nov 2023 23:38:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id q23-20020a17090676d700b00a017da998bdsm6473249ejn.32.2023.11.27.23.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 23:38:58 -0800 (PST)
Message-ID: <c9f8c072-de00-4f4a-b675-b42a5cbd4922@linaro.org>
Date: Tue, 28 Nov 2023 08:38:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
Content-Language: en-US
To: Renze Nicolai <renze@rnplus.nl>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, arnd@arndb.de, olof@lixom.net,
 soc@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 joel@jms.id.au, andrew@aj.id.au
References: <20231128013136.2699317-1-renze@rnplus.nl>
 <20231128013136.2699317-3-renze@rnplus.nl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231128013136.2699317-3-renze@rnplus.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/11/2023 02:30, Renze Nicolai wrote:
> This is a relatively low-cost AST2500-based Amd Ryzen 5000 Series
> micro-ATX board that we hope can provide a decent platform for OpenBMC
> development.
> 
> This initial device-tree provides the necessary configuration for
> basic BMC functionality such as serial console, KVM support
> and POST code snooping.
> 
> Signed-off-by: Renze Nicolai <renze@rnplus.nl>
> ---
>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>  .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 344 ++++++++++++++++++
>  2 files changed, 345 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
> 
> diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
> index d3ac20e316d0..2205bd079d0c 100644
> --- a/arch/arm/boot/dts/aspeed/Makefile
> +++ b/arch/arm/boot/dts/aspeed/Makefile
> @@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>  	aspeed-bmc-asrock-e3c246d4i.dtb \
>  	aspeed-bmc-asrock-romed8hm3.dtb \
> +	aspeed-bmc-asrock-x570d4u.dtb \
>  	aspeed-bmc-bytedance-g220a.dtb \
>  	aspeed-bmc-delta-ahe50dc.dtb \
>  	aspeed-bmc-facebook-bletchley.dtb \
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
> new file mode 100644
> index 000000000000..9fb1d76abacb
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
> @@ -0,0 +1,344 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/dts-v1/;
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +
> +/ {
> +	model = "Asrock Rack X570D4U BMC";
> +	compatible = "asrock,x570d4u-bmc";
> +
> +	chosen {
> +			stdout-path = &uart5;
> +			bootargs = "console=ttyS4,115200 earlycon";

Drop console. stdout-path defines the console and earlycon is for debugging.

> +	};
> +
> +	memory@80000000 {
> +			reg = <0x80000000 0x20000000>;

You have messed up indentation everywhere.

> +	};
> +
> +	reserved-memory {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			pci_memory: region@9A000000 {
> +				no-map;
> +				reg = <0x9A000000 0x00010000>; /* 64K */
> +			};
> +
> +			video_engine_memory: jpegbuffer {
> +				size = <0x02800000>;	/* 40M */
> +				alignment = <0x01000000>;
> +				compatible = "shared-dma-pool";
> +				reusable;
> +			};
> +
> +			gfx_memory: framebuffer {
> +				size = <0x01000000>;
> +				alignment = <0x01000000>;
> +				compatible = "shared-dma-pool";
> +				reusable;
> +			};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		heartbeat {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof


