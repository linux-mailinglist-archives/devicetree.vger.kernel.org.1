Return-Path: <devicetree+bounces-49463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCB78768B6
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 17:45:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAF051F232C5
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 16:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6012CFBEA;
	Fri,  8 Mar 2024 16:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfnoxOqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8850F1C2BC
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 16:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709916308; cv=none; b=Sf1b3yyZ24LxkvZz05wSg/GmRjjbbE6O0w7crnXP0svnKF9qMuQKhduf8ldURItIz8SjZwCfZqK9NbhVBnhw2TgRwZ4poPbrqo0IU288cTfaghVr/UnCt7yXdyj70+1ns678Z00hEmbZUPaCWShNn+rHnP3IB2FMwyw9yqUOol8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709916308; c=relaxed/simple;
	bh=fi3ky6CakyRATJgwalhj+CRfdC0TixsmDr1F1MYsyaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ufwk13QKiQRSRVRI6lLIqHGC4QNnHmLG7JVUwiDkemOegOFCs9ngGuBs9Y6Nf6BAIT5E/9biRxGgV7enR002wF2nx/myYyM7i2323s4HgPpZSDgk+N+W2gBr0bDACdYxFShLKzb0WX2STxON27PoE8X35OLmEa/P289fxqhLKIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfnoxOqN; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5683576ea18so464898a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 08:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709916305; x=1710521105; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=moh66olstaqC8k5HVpIpRheeNiWvToG+jcGIMhhKvEQ=;
        b=kfnoxOqNoQH3fwp3bYUWX/91KveiPB9vwf3/uuTQ2sFu3kyN268zVlB/rjp8+MKqvj
         e5K+P56aLJEqMZee8pvyQm2CFhWTrqSjUAVroMwIl6+S+q16PLmJYFPuqftFY0eID24c
         cfad34xKWWSXL40A7KmQk978MVhaD+Ne7014SOLzO0pzIzJaVGvW74mFdABneJJ4KqfT
         NrV0hCmSKVXLfBEx/IZGbX3dsUYlbV+Lq2O1WpYRb6wD7h2C9srujz9bTwJM+UnbY5hB
         2Ecwl3jKHkEBbm8TB34Dgdaw8psfiWXhI5GQuFRFNI4xzkH2LUKnqFhn5BokjnK6yXwx
         ohJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709916305; x=1710521105;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=moh66olstaqC8k5HVpIpRheeNiWvToG+jcGIMhhKvEQ=;
        b=HGBW1qum0MrH2f0eRepcRyAlLT5GvlymZRe4euI0tt3ZYyTVB1n/eKJ9zn4NdBlQN0
         LhBSeF8pKM/mw4YxEJ/cxc7Gt8FdnF4idYkTc6orsrVDTjT3GgJNC8awg87oSI8bOhf5
         Y4xEEqPgmZ5kwlbei86+jxSQJ6CQtyLSaXZGw2AQMg79xDPFoRctyG7VolgYTRGkwYEy
         0/e8dDQK0aqIW6NjyEduB0CxAQOwGWmkgFyeCJMXHYDYwQX1bqOCD3IlMNghz6HKhF3I
         SbwJenwdeR1iZVZMNZeLvtdfYe2fUEvMYoRl1MbdQx6Eky/3gFy9NQAtWEyfXt9o1sC8
         7mEA==
X-Forwarded-Encrypted: i=1; AJvYcCWji5HQgvID018TkKsKqqLpqZPRK3LlHTN5XKJPhc/GjFr9TahCAaNns6bZxBrZYUwqLq3toI+LKdSupFFnlR72uTRYnlfxfULYgA==
X-Gm-Message-State: AOJu0YyFsJUppdMOZcABxBg6sY/9EPoinY0aU6bA78+HikSvDroOlJAI
	ATE6AwZTYEVdTnB1SbNGF/x0RBqGEzaxlKaoIx1nHqFVAKrbRZXJSVk3pWxnPio=
X-Google-Smtp-Source: AGHT+IGgOJa5fGQAYguh/4UFR66rws120+N7SzDoxZcxxrmB2tQoaSRdoEbnXKojUbpsWK7Cb159UA==
X-Received: by 2002:a50:d704:0:b0:568:1b9f:d6b3 with SMTP id t4-20020a50d704000000b005681b9fd6b3mr2074156edi.40.1709916304658;
        Fri, 08 Mar 2024 08:45:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id j29-20020a508a9d000000b0056636a98652sm9702141edj.82.2024.03.08.08.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 08:45:04 -0800 (PST)
Message-ID: <073e5ef5-2a2e-4300-93d6-e25552276e13@linaro.org>
Date: Fri, 8 Mar 2024 17:45:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: exynos: gs101: define all PERIC USI nodes
Content-Language: en-US
To: Tudor Ambarus <tudor.ambarus@linaro.org>, peter.griffin@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, andre.draszik@linaro.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20240307135912.163996-1-tudor.ambarus@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240307135912.163996-1-tudor.ambarus@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/03/2024 14:59, Tudor Ambarus wrote:
> Universal Serial Interface (USI) supports three types of serial
> interface such as UART, SPI and I2C. Each protocol works independently.
> USI can be configured to work as one of these protocols. Define all the
> USI nodes from the PERIC blocks (USI0-14), in all their possible
> configurations. These blocks have the TX/RX FIFO depth of 64 bytes.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> Please note that:
> - google,gs101-spi compatible was queued through the SPI tree:
>   https://lore.kernel.org/linux-arm-kernel/170742731537.2266792.3851016361229293846.b4-ty@kernel.org/
> - SPI dma properties were marked as not requiered. Queued through the
>   SPI tree:
>   https://lore.kernel.org/linux-spi/170967132774.228925.1759895846287455970.b4-ty@kernel.org/
> 
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 782 +++++++++++++++++++
>  1 file changed, 782 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index ee65ed9d2cfc..d7ecfbc7e440 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -373,6 +373,398 @@ pinctrl_peric0: pinctrl@10840000 {
>  			interrupts = <GIC_SPI 625 IRQ_TYPE_LEVEL_HIGH 0>;
>  		};
>  
> +		usi1: usi@109000c0 {
> +			compatible = "google,gs101-usi",
> +				     "samsung,exynos850-usi";

This should fit within 81 characters, which is pretty close to 80, so if
there is going to be any resend/new version, please join the lines.

> +			reg = <0x109000c0 0x20>;
> +			ranges;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_0>,
> +				 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_0>;
> +			clock-names = "pclk", "ipclk";
> +			samsung,sysreg = <&sysreg_peric0 0x1000>;
> +			status = "disabled";
> +
> +			hsi2c_1: i2c@10900000 {
> +				compatible = "google,gs101-hsi2c",
> +					     "samsung,exynosautov9-hsi2c";
> +				reg = <0x10900000 0xc0>;
> +				interrupts = <GIC_SPI 635 IRQ_TYPE_LEVEL_HIGH 0>;

I wonder why we use four cells in GIC...

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&hsi2c1_bus>;

Please reverse two lines, first pinctrl-0 then pinctrl-names. I know we
did not follow this convention till now, but at least new code can be
correct. Also clocks should be before pinctrl, so we keep some sort of
alphabetical order.

It is anyway too late in the cycle for me to pick it up, so no need to
hurry with resend.

Best regards,
Krzysztof


