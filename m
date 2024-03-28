Return-Path: <devicetree+bounces-54390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A6710890CE3
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 23:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15C01B228CE
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 22:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538AC13A411;
	Thu, 28 Mar 2024 22:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B3tNMQ0p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697643BBCA
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 22:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711663470; cv=none; b=u7rh443TbRmFweduJ1gPohp7IM798B9hS846fg1CCMOgH2ib0B8AR+0vtT6lSqpHeIlubFstzbmTaa4rOi7y/aDBBPdjLE/4661h1QuaYtj0pm5o9+tjB6GbtXswwaOBzrLX4D5pE1jswodftSP8P+AVGcWaHQD7gur1oL4yCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711663470; c=relaxed/simple;
	bh=VCwJTtiiY7WEuYXWzicU9Cc87Qe/77hc+Jz/hGhHhGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dJ9eEfj0resnovPXGtXUsdSWXvrGWWHQ9czHEhIPApefw7BFc7PEhn+QDY9T5L2hpbS+Rm0GRarK1d7h1bdvb2ZaMcbKd61v7+LtlixQdcbVpw9evcTlMzcYR+dmx77yd6tb/ZE8gBn8wP4uU/3J3L49Dfct0qBIJv8Ltu4KS9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B3tNMQ0p; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4148d1b4a26so9981835e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 15:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711663467; x=1712268267; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ypfd+bmo6jMb2EEsebi5TR/ZD591w/8g8DGjFqDFAoc=;
        b=B3tNMQ0p9fndoC5FrE8RI2iBKM4KBvS/3jgMZoaHE8WgMbRyC97PDetZS8UZq2h2J8
         ZiDkeQJuiP3oXJNdCp97IAd9jJfgP60uyAIA2Q75L8rHVVef791gPIlXBxH/+pohn7bJ
         qdjI6hFekuXom9gHo1Z0KpUsVjaa4E9otagkH+/yF4oa1XqiPk4DyA9PGWVCjKf374cK
         trxy5fkmnbbwCeXKbHIWO6i0l9yqdgDKg781ISHGVfe7LdmHys6bUviAXD5iWW2aI2Tm
         cL/1+z2eNWxhhXkuqi7y9YZpVSKw6cGElDtwEgXOox6wDLrGDbrz5gi93uFOEajHsuwo
         c8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711663467; x=1712268267;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ypfd+bmo6jMb2EEsebi5TR/ZD591w/8g8DGjFqDFAoc=;
        b=tyajgyjI8/tLFnXKUzDl4bTJ17TIxavI1qEFnXYKZVyY868EwXtYM5FNMKcHvn/1LR
         zmfLGx5TnVUYa4s3K3S+1gOZCTHcAR+sWUcPwsvDkahGKCdsGSLonRtxsUEiv5IvFA6W
         ocMMID7Brq7ZAYW7yeRWfdEvxiwhVXAlpswwfJfnvxlMDaOjLUYoDj8CMJLXm5mVrHlZ
         ELMtfxrVDmRDYrtoZN1heIFNw2q7O55NyKhgJLSANHs5d5TLtX2IQJaoD12A4jegecIR
         s52r88EzZbS6vAKxxnhLaj+7DobEW7AKe8ojvqXS4LQZbuDMsZS3GpSl2xLxJyJIpadi
         pkiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtojWhAB0MC7WLARpXE8Zvj1QhRH7coOF9+DZBTRFKYYpSVdCbi7Ckcl4noKdG8dpmwbdHWucFI9re0xKm0ezht86WmxsMc22tEg==
X-Gm-Message-State: AOJu0YyjWaM6aKMq0330e+xv6R45rOPbhiEjNooiXxWglecVE0UfK35+
	fqoPTW/537UixSmIl6t7QmjIZO/QbSnElSWSvp+yzMccEOvVhIbqWfucI60DAOg=
X-Google-Smtp-Source: AGHT+IG0vBp8WUYFNFGTPcds9EdIpizj6Y82sZXySRfMYcQjj+qxHjoMrKd+Y5fllMeuuD9V7RrzQA==
X-Received: by 2002:a05:600c:214f:b0:415:4824:3686 with SMTP id v15-20020a05600c214f00b0041548243686mr384164wml.25.1711663466748;
        Thu, 28 Mar 2024 15:04:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.50])
        by smtp.gmail.com with ESMTPSA id g16-20020a05600c311000b004148670f9ecsm3558278wmo.23.2024.03.28.15.04.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 15:04:26 -0700 (PDT)
Message-ID: <a6728917-b756-430a-905c-f458fe41b998@linaro.org>
Date: Thu, 28 Mar 2024 23:04:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Gilles Talis <gilles.talis@gmail.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 shawnguo@kernel.org, festevam@gmail.com, alex@voxelbotics.com
References: <20240328202320.187596-1-gilles.talis@gmail.com>
 <20240328202320.187596-4-gilles.talis@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240328202320.187596-4-gilles.talis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/03/2024 21:23, Gilles Talis wrote:
> The Emcraft Systems NavQ+ kit is a mobile robotics platform
> based on NXP i.MX8 MPlus SoC.
> 
> The following interfaces and devices are enabled:
> - eMMC
> - Gigabit Ethernet
> - RTC
> - SD-Card
> - UART console
> 
> Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../arm64/boot/dts/freescale/imx8mp-navqp.dts | 435 ++++++++++++++++++
>  2 files changed, 436 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 045250d0a040..bf99864c0bc4 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -166,6 +166,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-navqp.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-hdmi.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts b/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
> new file mode 100644
> index 000000000000..8182e71008f8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
> @@ -0,0 +1,435 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2021 Emcraft Systems
> + * Copyright 2024 Gilles Talis <gilles.talis@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include "imx8mp.dtsi"
> +
> +/ {
> +	model = "Emcraft Systems i.MX8MPlus NavQ+ Kit";
> +	compatible = "emcraft,imx8mp-navqp", "fsl,imx8mp";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_led>;
> +
> +		status {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +			label = "status";

Please provide color and function properties, if reasonable, and then
remove label property.

> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +		};
> +	};
> +

...

> +	pinctrl_i2c6: i2c6grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART4_RXD__I2C6_SCL				0x400001c3
> +			MX8MP_IOMUXC_UART4_TXD__I2C6_SDA				0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirq {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03				0x41
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x41
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX				0x49
> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX				0x49
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT				0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {

Hm, you upstreamed something based on downstream source. Please avoid
that. Instead take upstream, clean DTS and customize it to your needs.
Otherwise you send patch with the same issues we fixed.

Standard form letter:
It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

Nodes end on 'grp' I believe.


Best regards,
Krzysztof


