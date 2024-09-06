Return-Path: <devicetree+bounces-100937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF4596F8AF
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 17:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B84011F24195
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 15:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7741D31A4;
	Fri,  6 Sep 2024 15:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="J0LUlj8M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEEA1D221D
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 15:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725638014; cv=none; b=ZKRrto9SiR8LWDO4xDUqHZJZ/nwCwb0SWQNfc/miin9dwS/RnWRDQxkjDFtCZ7aoRSmUwl88JwLdRyBb0hDCMXtiLV9+MrRKTNMfSfpiga8mKydkJYIdfsgkGxla44tRiuikfqJ4AyFAPsnZrpjjBuJG6U+Zpi4RkpmjntXgWak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725638014; c=relaxed/simple;
	bh=WAWEBcr+J5ycmnAjjxWFN7gCy3KcxkcCtECCiUEjoO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oTaQdI9mgdXxTCOfiUV6C2wvqDFLgwGk1CqftVJTzF0g1AEQypxcZlkvwh/uOGtMqlwWVPAd1rmS7pMPgvnkrUtANrIJj2d3fyxkzrIl5Hl1OqTLAptakujVzTYfMX93eP26lW1FK8YlFoqBuTaKw53jnDrNZwYhW0PJ46Orudg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=J0LUlj8M; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3787ddbd5a2so1165479f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 08:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1725638011; x=1726242811; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DI8o5gu7OR5hgYkJNn+/W5hw7ApVbZjOLKlmqFfKJmE=;
        b=J0LUlj8MRZ2xs3qG5qhN3gvR9qTfdg7FypWGQc6BmQwi1gpKusoSk986pxG1Pfrp3l
         NbCPM0E9HRYI4FJBZQs8QhsxFiw5SFK+NhjhfDhJp8uP5LYBG+ROumurruxkD3xMMLDY
         ILE7mdl+fp+d5wvsUj7O7Ni9EIQR1mAMbex5TB/1M87TEna2lWYHzY4bufZeBg8fmLgw
         eP9xZLbeAhVSEFKMUEmnmwIt2pJ1EaJoE+o7lFjgz+a4907RM7jkaDEHDJIV66ilbIK9
         nDW9wXiGtDdDWQfCxfWe5O3590NbUofSyy5NNF/ZLGwdAK7dX7y94dChDRrkRZ382yq0
         KYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725638011; x=1726242811;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DI8o5gu7OR5hgYkJNn+/W5hw7ApVbZjOLKlmqFfKJmE=;
        b=Fjd6DYYLljHSWLJHkjtS+wlQ/NAY9WcSS3nRuerik2DzctNeL4cca0fiiYX5HOt+7n
         oMWXVkrDkjMHCqMDByiCPyA/BiGDpU6VEZCFQkWW4m0Zbj2roZroNC6oTYwa62J3+uKP
         a4VN9MVFwaMVgOzEu/hvgYCvoS+HWFc5eeSl+Q+kb+e1JPZCXBZZtvqYYVgQgBZGbkAs
         iboYojdTgjoaf1W9ebH14WI1pBDx98vaVbmh73wxoTgHtEnAsFKzNY2QVaXt2whHKVbT
         8aKkMh61/47V93T46AF6kk0DgHqku9ivPD07Teqf2NEqXCKpzRkzX/yhsFOGXxdJdmOX
         k/4A==
X-Forwarded-Encrypted: i=1; AJvYcCUjlIWG9TUemZv7ded8F+hwgbogPyvhuspUkhsvOhPXmofdqBnnSgXiVeYQX/JKjoCUg7VxiufJ5sZX@vger.kernel.org
X-Gm-Message-State: AOJu0Yydi1mR7c5TroLkqW3T/zVU/NSp9qNSBDNRkZqs7RUar5yZnL92
	/yRA01orK6M1l0XMbuc/SdRSmRAX9zKOZePW6U2/UdG/OSol7FgJTK6peobF9e8=
X-Google-Smtp-Source: AGHT+IFhlE6ZrY41rmkc+9XGmW+fZeuwq4JG6dHsE1M5Fq87WTjwrS/Nh6wLsDQBUZUkcgmyZ7UGWg==
X-Received: by 2002:a5d:5192:0:b0:374:c9f0:752d with SMTP id ffacd0b85a97d-378896a5ca3mr1851961f8f.47.1725638010354;
        Fri, 06 Sep 2024 08:53:30 -0700 (PDT)
Received: from [192.168.0.20] ([148.56.230.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ca05cfb47sm24222555e9.22.2024.09.06.08.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 08:53:30 -0700 (PDT)
Message-ID: <276a7f04-6761-40c2-8f37-799175f9b11b@suse.com>
Date: Fri, 6 Sep 2024 17:53:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: s32g: Add S32G2/S32G3 uSDHC pinmux
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>,
 Chester Lin <chester62515@gmail.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP S32 Linux Team <s32@nxp.com>, Radu Pirea <radu-nicolae.pirea@nxp.com>
References: <20240830113347.4048370-1-ciprianmarian.costea@oss.nxp.com>
 <20240830113347.4048370-2-ciprianmarian.costea@oss.nxp.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20240830113347.4048370-2-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 30/08/2024 13:33, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Adding 100mhz & 200mhz pinmux support for uSDHC helps to enable
> higher speed modes for SD (SDR50, DDR50, SDR104) and
> eMMC (such as HS200, HS400/HS400ES).
> 
> Signed-off-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   arch/arm64/boot/dts/freescale/s32g2.dtsi      | 153 ++++++++++++++++++
>   .../arm64/boot/dts/freescale/s32g274a-evb.dts |   4 +
>   .../boot/dts/freescale/s32g274a-rdb2.dts      |   4 +
>   arch/arm64/boot/dts/freescale/s32g3.dtsi      | 153 ++++++++++++++++++
>   .../boot/dts/freescale/s32g399a-rdb3.dts      |   4 +
>   5 files changed, 318 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> index fa054bfe7d5c..7be430b78c83 100644
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> @@ -162,6 +162,159 @@ jtag-grp4 {
>   					slew-rate = <166>;
>   				};
>   			};
> +
> +			pinctrl_usdhc0: usdhc0grp-pins {
> +				usdhc0-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
> +
> +			pinctrl_usdhc0_100mhz: usdhc0-100mhzgrp-pins {
> +				usdhc0-100mhz-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
> +
> +			pinctrl_usdhc0_200mhz: usdhc0-200mhzgrp-pins {
> +				usdhc0-200mhz-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
>   		};
>   
>   		uart0: serial@401c8000 {
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> index dbe498798bd9..7ab917f547ef 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> @@ -34,6 +34,10 @@ &uart0 {
>   };
>   
>   &usdhc0 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc0>;
> +	pinctrl-1 = <&pinctrl_usdhc0_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc0_200mhz>;
>   	disable-wp;
>   	status = "okay";
>   };
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> index ab1e5caaeae7..8739f63771bc 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> @@ -40,6 +40,10 @@ &uart1 {
>   };
>   
>   &usdhc0 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc0>;
> +	pinctrl-1 = <&pinctrl_usdhc0_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc0_200mhz>;
>   	disable-wp;
>   	status = "okay";
>   };
> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
> index b4226a9143c8..6c572ffe37ca 100644
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
> @@ -219,6 +219,159 @@ jtag-grp4 {
>   					slew-rate = <166>;
>   				};
>   			};
> +
> +			pinctrl_usdhc0: usdhc0grp-pins {
> +				usdhc0-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
> +
> +			pinctrl_usdhc0_100mhz: usdhc0-100mhzgrp-pins {
> +				usdhc0-100mhz-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <150>;
> +				};
> +
> +				usdhc0-100mhz-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
> +
> +			pinctrl_usdhc0_200mhz: usdhc0-200mhzgrp-pins {
> +				usdhc0-200mhz-grp0 {
> +					pinmux = <0x2e1>,
> +						 <0x381>;
> +					output-enable;
> +					bias-pull-down;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp1 {
> +					pinmux = <0x2f1>,
> +						 <0x301>,
> +						 <0x311>,
> +						 <0x321>,
> +						 <0x331>,
> +						 <0x341>,
> +						 <0x351>,
> +						 <0x361>,
> +						 <0x371>;
> +					output-enable;
> +					input-enable;
> +					bias-pull-up;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp2 {
> +					pinmux = <0x391>;
> +					output-enable;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp3 {
> +					pinmux = <0x3a0>;
> +					input-enable;
> +					slew-rate = <208>;
> +				};
> +
> +				usdhc0-200mhz-grp4 {
> +					pinmux = <0x2032>,
> +						 <0x2042>,
> +						 <0x2052>,
> +						 <0x2062>,
> +						 <0x2072>,
> +						 <0x2082>,
> +						 <0x2092>,
> +						 <0x20a2>,
> +						 <0x20b2>,
> +						 <0x20c2>;
> +				};
> +			};
>   		};
>   
>   		uart0: serial@401c8000 {
> diff --git a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> index 176e5af191c8..828e353455b5 100644
> --- a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
> @@ -40,6 +40,10 @@ &uart1 {
>   };
>   
>   &usdhc0 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc0>;
> +	pinctrl-1 = <&pinctrl_usdhc0_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc0_200mhz>;
>   	bus-width = <8>;
>   	disable-wp;
>   	status = "okay";

