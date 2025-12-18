Return-Path: <devicetree+bounces-247926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3268DCCCCDC
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 857553068CDC
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FAB35FF63;
	Thu, 18 Dec 2025 16:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eqGXJ3aw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7410C35F8C8
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766075195; cv=none; b=ENs+XsTKaUQG/31AtTAf6eBG9rkJNfrAtSAj9uL4yNYnVCqQfVK3h7Nlr6KTqX2Jo/swvtbQ3dE522YYlQhiOdQLZAbKGbk8586qze0z0naQZhsRIfksP2uCjt51TVGaqUOfJWjLT/pod7MSuFLr9z0Vl1zS1V+7bDUWmpkc55Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766075195; c=relaxed/simple;
	bh=PajlIvKA+qiiCxxbkeQoomgkXm+Xqzq2c9FCKYw1Apg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mOlmgHcbY1YqeOepT71dFR5VSQHj3aK+eEg+rtit9y6loODl5iljYuj5PJStsuT2PeeTiPRUgSaptvB6H6vHCpx4vd1/xyb/OhFIE1XrDFQLQvVupH5g13H/S8Nh0yJWBBuI2kU69s1u5Tmcqnx8ySyrWnAb257wYS+kv36lWy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eqGXJ3aw; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b728a43e410so141134866b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766075192; x=1766679992; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qJpFHTDEzB05X66xrFgKLfHjWEJGjQ85HofDR0VslZY=;
        b=eqGXJ3awRUCimyHgzYyoF6TX+EfDSEtgW+vggGSJP/2fH/i/WKBGvvLr2S4y78GEbD
         JswScrbmzPEpgkWa9OZR/nEX/GBwIxsqcO6rMO8RjkZ4Gg6xUcNNZ5trt4XfmKEzIAa+
         oSfYbLNNg3IMUZtAnr+M5zoYNupn5DdoCPkdS6VLLdgi89A5oAhHtyPha0pw9lFvWf6J
         G5DEyGM39HzPRBZT0DRW2B/EqG01XvVLbq5ZCLzPFT3EI2mWKI7QrEy4CHDuftWbR0Oz
         aqmcp+61MmAGjxqbWRvADangFSoYbQVdEE4/ionHoTkCRhWJA4vqh0lsaf8P0fjtP4iT
         8/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766075192; x=1766679992;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJpFHTDEzB05X66xrFgKLfHjWEJGjQ85HofDR0VslZY=;
        b=ZNX1xqffFt5GjNtw2puag3W5ZuT1PHfsrMKZHwHbGhLA5a9aBqCll33EziPSLBUiDR
         xZeWQ30jXJMj5qnXGPaUtbYa1IQCfN1tJcPiUWQjgf+/CgHCIOoWehi7b1m0FT5oTfDD
         erL/6qTHOLcGSIHoQ3dXfmLzdGGao4eOHfLy8ZnNT3wNBHgfKfqsR8BF7Tj3C8SCcwfp
         TWpj5Z+fK0+BrJfqpu0DBJwNWv+LEu7vIiFLyi+Udw1n/hvT05VTsPA0h8Pf77nsFBZy
         8zAbDn5zl/FcO5hz5ENNrV6XmERfdnIE7EfPem7E/urdL14P6dcreKKCTUSiP8ZSOvZI
         AAMw==
X-Gm-Message-State: AOJu0YyRYRZX/6nU1wH2I2b505L4120tuANpK141FyqtWuNVN3Z7ol7B
	TuWOLSNqrmwUUDf3gCTfq0ViUuZ82XUyujzRYgW1c1YEwHiNlV7KgjzA
X-Gm-Gg: AY/fxX6F34S7DtllM5PNYuqqxrh1e2qIcV4pwwT+YroQA0QeFNH5FdMMg2b8eB63lsL
	M6VSD/yVAiuPERDhTxMVtNQwQJrMJlLe8NCEsykpB8zLupg9JlQS1a8Fu09BEKyY+RpkD8d8dCe
	rIxAIL/qYywCyAyYrSfV+CJQaRI9P1M+idMiRP1/c3YWHa075at5X8UQG4YPmRsx+VUJD2ENFVa
	IUxuYv8suf0fxCOC9gK3MbI1EzHZwTsx8RlJvLsWq6NPEK66bWa2X02XYWaS1H29MYDkAs/dKHO
	sfr810EyalmJ3Dx+rMQBCv6xPkghhuRkfq49L8nRykeWsk6Zhxgi/eC35+QxmTpxRdu9rwgW+Bp
	dCQ5XXXw7DohwI0+r1uZbzpvCqc9bHx7k+l6O6HQL+6w9vaIi5TGEffq8jQxS+muq9f25pxnbzd
	WqsG03aHRFdeRfWd06dYCaSPIJjnnyWBFqnufGhvQ7Gw==
X-Google-Smtp-Source: AGHT+IEiLlrNwayE/OEejVPPibTN9DbqbxeQkY7CK+E1iqQkD32NejUfdbwg4BUX3IiK49c125TzrA==
X-Received: by 2002:a17:907:3fa7:b0:b72:5d08:486c with SMTP id a640c23a62f3a-b7d23a9d458mr2400079666b.27.1766075191457;
        Thu, 18 Dec 2025 08:26:31 -0800 (PST)
Received: from [10.25.219.74] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b802350dac6sm270774666b.65.2025.12.18.08.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 08:26:31 -0800 (PST)
Message-ID: <3e449b21-5ffb-4a6a-b0c4-e9f381334883@gmail.com>
Date: Thu, 18 Dec 2025 08:26:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: imx95: Add support for
 i.MX95 15x15 FRDM board
To: Lei Xu <lei.xu@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 justin.jiang@nxp.com, qijian.guo@nxp.com
References: <20251217-127-v2-0-67cb12e56242@nxp.com>
 <20251217-127-v2-2-67cb12e56242@nxp.com>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <20251217-127-v2-2-67cb12e56242@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 12/17/2025 9:56 PM, Lei Xu wrote:
> The i.MX95 15x15 FRDM board is a compact and cost-effective development
> platform based on the i.MX95 applications processor.
>
> Add device tree support for this board, including:
>  - LPUART1 and LPUART5
>  - NETC
>  - USB
>  - PCIe
>  - uSDHC1, uSDHC2 and uSDHC3
>  - FlexCAN2 and FlexCAN5
>  - LPI2C2, LPI2C3, LPI2C4 and their child nodes
>  - Watchdog3
>
> Signed-off-by: Lei Xu <lei.xu@nxp.com>
> ---
> Changes in v2:
> - Switched from 'xceiver-supply' to CAN PHY nodes using 'phys'.
> - Added CAN PHY nodes for flexcan2/5 with shared silent-gpio, removed reg_can_stby.
> - Updated MSI/IOMMU mapping comment to match the i.MX95 15x15 FRDM board.
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts | 963 +++++++++++++++++++++
>  2 files changed, 964 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index f30d3fd724d0..71308d19d35e 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -400,6 +400,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx943-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-frdm.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk-sof.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx95-toradex-smarc-dev.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> new file mode 100644
> index 000000000000..414ebdacc3cb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> @@ -0,0 +1,963 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2025 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/usb/pd.h>
> +#include "imx95.dtsi"
> +
> +#define BRD_SM_CTRL_SD3_WAKE		0x8000	/*!< PCAL6408A-0 */
> +#define BRD_SM_CTRL_PCIE1_WAKE		0x8001	/*!< PCAL6408A-4 */
> +#define BRD_SM_CTRL_BT_WAKE		0x8002	/*!< PCAL6408A-5 */
> +#define BRD_SM_CTRL_PCIE2_WAKE		0x8003	/*!< PCAL6408A-6 */
> +#define BRD_SM_CTRL_BUTTON		0x8004	/*!< PCAL6408A-7 */
> +
> +/ {
> +	compatible = "fsl,imx95-15x15-frdm", "fsl,imx95";
> +	model = "NXP i.MX95 15X15 FRDM board";
> +
> +	aliases {
> +		ethernet0 = &enetc_port0;
> +		ethernet1 = &enetc_port1;
> +		gpio0 = &gpio1;
> +		gpio1 = &gpio2;
> +		gpio2 = &gpio3;
> +		gpio3 = &gpio4;
> +		gpio4 = &gpio5;
> +		i2c0 = &lpi2c1;
> +		i2c1 = &lpi2c2;
> +		i2c2 = &lpi2c3;
> +		i2c3 = &lpi2c4;
> +		i2c4 = &lpi2c5;
> +		i2c5 = &lpi2c6;
> +		i2c6 = &lpi2c7;
> +		i2c7 = &lpi2c8;
> +		mmc0 = &usdhc1;
> +		mmc1 = &usdhc2;
> +		mmc2 = &usdhc3;
> +		serial0 = &lpuart1;
> +		serial4 = &lpuart5;
> +	};
> +
> +	


(snip)


> +
> +	sound-micfil {
> +		compatible = "fsl,imx-audio-card";
> +		model = "micfil-audio";
> +
> +		pri-dai-link {
> +			link-name = "micfil hifi";
> +			format = "i2s";
> +
> +			cpu {
> +				sound-dai = <&micfil>;
> +			};


please add a space in between the definitions of the cpu and codec nodes. With that:


Reviewed-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>


> +			codec {
> +				sound-dai = <&dmic>;
> +			};
> +		};
> +	};
> +
> +	usdhc3_pwrseq: usdhc3-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&pcal6524 8 GPIO_ACTIVE_LOW>;
> +	};

