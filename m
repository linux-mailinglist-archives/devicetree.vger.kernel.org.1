Return-Path: <devicetree+bounces-143056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BA7A27DF5
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 23:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1CD8167786
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 22:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA57921ADC3;
	Tue,  4 Feb 2025 22:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="LCOlhykm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA6921ADB5
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 22:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738706499; cv=none; b=H0VTXIQBuBgFRmNtVb9wWz1DU4bH5wAqlUh3w94y+KUQzb5NBCAL0AXK39IZ2cg0OQ4Woiwww6vcWyoIenpPZLa7F53U1duKxG595I4O0dZn/q0i+usOU9aCln9+Ep9wv7lXBEYxhxR7Eov5fTTYEvdK+sSKJyeg3+2XhwTy5dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738706499; c=relaxed/simple;
	bh=VumaS6+u6M0OolCzB2cqtdillivtTE2G3U+YmDamoM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TjePG1DrWp/i5E8e5mCkynFHFU+xOzsZ8y4MARqrODldKVMkYnHHGC+nbn+lQxQgX8Ww0OguV3p1eyIDUP7Mg98qCPrGolqt6ZzAL+kIXuB6dPfjHuH5VMBoXhZxlpy33HBQAHHWjxRAxz4b/eETDbzMHVYhIim8s6GMFKsDiDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=LCOlhykm; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38da84c9e4bso852373f8f.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 14:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738706494; x=1739311294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HdJX5Dk0u5IkMDKkGsrySXzYQnEq2R9WPeDo1sH8yAI=;
        b=LCOlhykm0nEyrIKjBCdBgjT4qlT7uwcWS7wTHhRTKniJZOdvF7T685KdeoTB7pHaY3
         6EgxUMCPTt98gAjqLZ7VtAVkyCDQt49Hm6nUEQXBrhYXCKfhQ0ssOxf+qHe3AY0lII7M
         JrO3rYYr9a1dmRSMqjtTfqCUvI8K9OU7lLoZAWnVIOIrCO9XpRPauv62lp1nIdtjdPfo
         JgEk2kxmwkesVYfdkwIoj0zBmARFLrcPPFNY2pCd4fc2ev+PwWFEeox/iqGnVQFOTfz2
         LrX3uNY0nb4IJSUFBJJdtocHI+IpXadBcEVuZko8r8+LM6xbs0lKsulYkarR+3YWTHNz
         DyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738706494; x=1739311294;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HdJX5Dk0u5IkMDKkGsrySXzYQnEq2R9WPeDo1sH8yAI=;
        b=ZRrfN3/jRXDWZ85pEXUpUXoRDJ5abDmBFmTk2O750vD8Lxn0my4+rjB1knz9ZpWUR2
         Va2B4Ejp8saYqh2pJJqAKMhlKVJro+ylZNnU0mc2UKq0f02+WtRwBgIvXfs0rO/bz2wI
         InDYzGURPHcYJ1A5l6qgXZ30Ssr1/vCkv6jcK3muYOcilVddfmv1F+30TatUcjXT7NOK
         h/dpWP50CJ39No3g5KyVNwWqIq2wUSdk9oOwr2/mxo3GSg5TWsZWbRY7CX01mw537t5G
         HXZiyF57p3WypFgGHxWYBwzjL9rh0fcQ2Iim4hGJfSUeYYb94ta6GZU7n09c+V4UmJhi
         0MDw==
X-Forwarded-Encrypted: i=1; AJvYcCXvxEMnBJEbG2gBy+9XLp63m9b+ZPHJcuzeXRIGUv1YWFqN3inMek3hVSPdPPbsaU3/PsrgiJCMoEDD@vger.kernel.org
X-Gm-Message-State: AOJu0YzPkvecuchXCh/dlMgFTva5ZLvFGzYpvf11/CKsaJnu+uCZ7Zrv
	q8rj9dLdDDPY4GaJ8/HUeNCkyNN0Zaqrly9r2WlVP73yS+qd8qfFfz6SDuak4Zg=
X-Gm-Gg: ASbGnctZq5Ms6xFs2g7vtSGSZGi20BM74bCY6XINf1OP8IJsQ8nmxIwvZJjpH3ufrOH
	TQDsuwAOagxSdOrE86J1PL5hG9xDrGVGNOM92uvYNP28AIWoGtDtTgDBjQBJJbuTG5TxLb2k0pM
	xi3L2mC492HzKXTmvz3UlkOOxuoVQdmQ1MsRyZ5iGlfKcTHt5jcCI5np8qeHVoc7HBASKkcvWm2
	bDbc6YAE1GU9zVpIawgtU3GpGnuq/9VBaGdeRa7eshDM4pnVsnlaQxsgYBpCX4TjAhhBAHbRdNb
	aNYu/9MAYGlC
X-Google-Smtp-Source: AGHT+IHaBfj4OnhLVJLYcuReHXCtY1ha8owiTGbmB8NervJbzXxCEzSgEeeBBm4w/U4CkOCA0/9Alw==
X-Received: by 2002:a05:6000:10c1:b0:38a:88b8:99af with SMTP id ffacd0b85a97d-38db48808ffmr242039f8f.22.1738706494491;
        Tue, 04 Feb 2025 14:01:34 -0800 (PST)
Received: from [192.168.2.177] ([81.0.8.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d94db6asm1048485e9.15.2025.02.04.14.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2025 14:01:34 -0800 (PST)
Message-ID: <68d642bf-89e1-4cee-b0bc-86314ea10bbc@suse.com>
Date: Tue, 4 Feb 2025 23:01:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: s32g: add common 'S32G-EVB' and
 'S32G-RDB' board support
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>,
 Chester Lin <chester62515@gmail.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP S32 Linux <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>,
 Alberto Ruiz <aruizrui@redhat.com>, Enric Balletbo <eballetb@redhat.com>
References: <20250113110512.506007-1-ciprianmarian.costea@oss.nxp.com>
 <20250113110512.506007-3-ciprianmarian.costea@oss.nxp.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20250113110512.506007-3-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/01/2025 12:05, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Create common part, s32gxxa-evb.dtsi and s32gxxa-rdb.dtsi, for S32G2/S32G3
> RDB2\3 and EVB G2/G3 boards to avoid copy duplicate part in boards dts
> file. Prepare to add other modules such as FlexCAN, DSPI easily in the
> future.
> 
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   .../arm64/boot/dts/freescale/s32g274a-evb.dts |   1 +
>   .../boot/dts/freescale/s32g274a-rdb2.dts      |   1 +
>   .../boot/dts/freescale/s32g399a-rdb3.dts      |   1 +
>   .../boot/dts/freescale/s32gxxxa-evb.dtsi      | 150 ++++++++++++++++++
>   .../boot/dts/freescale/s32gxxxa-rdb.dtsi      | 122 ++++++++++++++
>   5 files changed, 275 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
>   create mode 100644 arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> index b9a119eea2b7..c4a195dd67bf 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> @@ -7,6 +7,7 @@
>   /dts-v1/;
>   
>   #include "s32g2.dtsi"
> +#include "s32gxxxa-evb.dtsi"
>   
>   / {
>   	model = "NXP S32G2 Evaluation Board (S32G-VNP-EVB)";
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> index aaa61a8ad0da..b5ba51696f43 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> @@ -7,6 +7,7 @@
>   /dts-v1/;
>   
>   #include "s32g2.dtsi"
> +#include "s32gxxxa-rdb.dtsi"
>   
>   / {
>   	model = "NXP S32G2 Reference Design Board 2 (S32G-VNP-RDB2)";
> diff --git a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> index 828e353455b5..94f531be4017 100644
> --- a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> @@ -8,6 +8,7 @@
>   /dts-v1/;
>   
>   #include "s32g3.dtsi"
> +#include "s32gxxxa-rdb.dtsi"
>   
>   / {
>   	model = "NXP S32G3 Reference Design Board 3 (S32G-VNP-RDB3)";
> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
> new file mode 100644
> index 000000000000..a44eff28073a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright 2024 NXP
> + *
> + * Authors: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> + *          Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
> + *          Larisa Grigore <larisa.grigore@nxp.com>
> + */
> +
> +&pinctrl {
> +	i2c0_pins: i2c0-pins {
> +		i2c0-grp0 {
> +			pinmux = <0x101>, <0x111>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c0-grp1 {
> +			pinmux = <0x2352>, <0x2362>;
> +		};
> +	};
> +
> +	i2c0_gpio_pins: i2c0-gpio-pins {
> +		i2c0-gpio-grp0 {
> +			pinmux = <0x100>, <0x110>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c0-gpio-grp1 {
> +			pinmux = <0x2350>, <0x2360>;
> +		};
> +	};
> +
> +	i2c1_pins: i2c1-pins {
> +		i2c1-grp0 {
> +			pinmux = <0x131>, <0x141>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c1-grp1 {
> +			pinmux = <0x2cd2>, <0x2ce2>;
> +		};
> +	};
> +
> +	i2c1_gpio_pins: i2c1-gpio-pins {
> +		i2c1-gpio-grp0 {
> +			pinmux = <0x130>, <0x140>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c1-gpio-grp1 {
> +			pinmux = <0x2cd0>, <0x2ce0>;
> +		};
> +	};
> +
> +	i2c2_pins: i2c2-pins {
> +		i2c2-grp0 {
> +			pinmux = <0x151>, <0x161>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c2-grp1 {
> +			pinmux = <0x2cf2>, <0x2d02>;
> +		};
> +	};
> +
> +	i2c2_gpio_pins: i2c2-gpio-pins {
> +		i2c2-gpio-grp0 {
> +			pinmux = <0x150>, <0x160>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c2-gpio-grp1 {
> +			pinmux = <0x2cf0>, <0x2d00>;
> +		};
> +	};
> +
> +	i2c4_pins: i2c4-pins {
> +		i2c4-grp0 {
> +			pinmux = <0x211>, <0x222>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c4-grp1 {
> +			pinmux = <0x2d43>, <0x2d33>;
> +		};
> +	};
> +
> +	i2c4_gpio_pins: i2c4-gpio-pins {
> +		i2c4-gpio-grp0 {
> +			pinmux = <0x210>, <0x220>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c4-gpio-grp1 {
> +			pinmux = <0x2d40>, <0x2d30>;
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c0_pins>;
> +	pinctrl-1 = <&i2c0_gpio_pins>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c1_pins>;
> +	pinctrl-1 = <&i2c1_gpio_pins>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c2_pins>;
> +	pinctrl-1 = <&i2c2_gpio_pins>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c4_pins>;
> +	pinctrl-1 = <&i2c4_gpio_pins>;
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> new file mode 100644
> index 000000000000..91fd8dbf2224
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> @@ -0,0 +1,122 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright 2024 NXP
> + *
> + * Authors: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> + *          Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
> + *          Larisa Grigore <larisa.grigore@nxp.com>
> + */
> +
> +&pinctrl {
> +	i2c0_pins: i2c0-pins {
> +		i2c0-grp0 {
> +			pinmux = <0x1f2>, <0x201>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c0-grp1 {
> +			pinmux = <0x2353>, <0x2363>;
> +		};
> +	};
> +
> +	i2c0_gpio_pins: i2c0-gpio-pins {
> +		i2c0-gpio-grp0 {
> +			pinmux = <0x1f0>, <0x200>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c0-gpio-grp1 {
> +			pinmux = <0x2350>, <0x2360>;
> +		};
> +	};
> +
> +	i2c2_pins: i2c2-pins {
> +		i2c2-grp0 {
> +			pinmux = <0x151>, <0x161>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c2-grp1 {
> +			pinmux = <0x2cf2>, <0x2d02>;
> +		};
> +	};
> +
> +	i2c2_gpio_pins: i2c2-gpio-pins {
> +		i2c2-gpio-grp0 {
> +			pinmux = <0x2cf0>, <0x2d00>;
> +		};
> +
> +		i2c2-gpio-grp1 {
> +			pinmux = <0x150>, <0x160>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +	};
> +
> +	i2c4_pins: i2c4-pins {
> +		i2c4-grp0 {
> +			pinmux = <0x211>, <0x222>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c4-grp1 {
> +			pinmux = <0x2d43>, <0x2d33>;
> +		};
> +	};
> +
> +	i2c4_gpio_pins: i2c4-gpio-pins {
> +		i2c4-gpio-grp0 {
> +			pinmux = <0x210>, <0x220>;
> +			drive-open-drain;
> +			output-enable;
> +			input-enable;
> +			slew-rate = <133>;
> +		};
> +
> +		i2c4-gpio-grp1 {
> +			pinmux = <0x2d40>, <0x2d30>;
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c0_pins>;
> +	pinctrl-1 = <&i2c0_gpio_pins>;
> +	status = "okay";
> +
> +	pcal6524: gpio-expander@22 {
> +		compatible = "nxp,pcal6524";
> +		reg = <0x22>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c2_pins>;
> +	pinctrl-1 = <&i2c2_gpio_pins>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&i2c4_pins>;
> +	pinctrl-1 = <&i2c4_gpio_pins>;
> +	status = "okay";
> +};


