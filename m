Return-Path: <devicetree+bounces-36430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2329C84114A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C43628422C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 430603F9CB;
	Mon, 29 Jan 2024 17:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PvF516rY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8121576C88
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550668; cv=none; b=qUYzRVPS/2CpMk09DOslxumqKiiUljGSvjqXhdHTgEKCwJPyIVTQMoZGKOcyWBJ0YoWgNZQAWcnb32nJYq3MAv6heFiJ959/0vqVJKDJ9biIUWGOEXwOjJmRagEMgg+WpcWzrTEiVJe+hCYgF3uzF3IQGurlZ/86mY/Wpz6pYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550668; c=relaxed/simple;
	bh=WVcPxlPoFZbcDre4Mz58FOn74ovoHGfqo6wpm82JGa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I9YKndnbh+IjQdGtOawlA0D1KSa1fcxpiZDP+j2Cd1LzYYzx5x6x1kEFv/ZHwZdCmwUoe2wDzLrLfMXbBle54n7I/69jqB+bA1FWMCBdU9OgP6E00wggzwfKUSWMElGFtVfTCLo6U+TLgzqkv1GZoqeuftSzTECWW9R7WGtr+iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PvF516rY; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a35e65df2d8so103188366b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550665; x=1707155465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S8toqIrvYZfogfXp6ps9M0ZWOkca7q4FBajUFTEMNOg=;
        b=PvF516rYvG8hEsceo69hKYqnt0nWVJffLiaZC1LB9GJrIOf9jruAPeIYNA+YeNNLbF
         FHf2tmkenmpA7ZjrrP92rgMQDqsUsy3UZxSBR85wkqi+R0FoCJ9eKkUQ0ntEywboZucl
         dcoJciqgYJ3gvyVX8MCuEuP7wU8Fh3Z92ZiTk0Pn8vwIdxBfHdsStJ5VwicU2wpruSOm
         uYgDr4Mcdff6SlgqVPPfsj9DQXSler4cKeW4u6z8q34sQtY6YEWMASyQUCisXJ7cu9/D
         wKbfnHELYHmHm2dQ7c/GoM/INo1dqrmlTuLVgmKC0Ii+Fqc20pI0191X28GDgpWWR2Ft
         +rsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550665; x=1707155465;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S8toqIrvYZfogfXp6ps9M0ZWOkca7q4FBajUFTEMNOg=;
        b=IqV/ajFILYE0k/YzYrypyZmxCcM8A+AxdNKIwltBhnKPiNm467GSTN6m28ZVRX9on1
         My0bcIPdxMaM3lq8qAWUM8x7ka9WpSs0J50193jIPsJHaSM6tPIWB82mWQzZhCo6vVyd
         W/Yrg8xJmNHcnCGOmj29cus5VymVhG4esAxtGjy++trfj1ldqNU1QC7Pj9negH1TrynK
         JW+wDVDQmyrviO3DSIgOZTm90WJStC13hE2X5QneUAGg1WQdt4u3kN7iYcffhlDJ2jRl
         DCLYzjClFVsNjG6YzPqFAqdBb63M2qZOJaMCv2CTor5n8v0548YdjUHTwAHfYvy4WnrD
         YsVg==
X-Gm-Message-State: AOJu0YwjZOSK3mtmYRsPKf4YH9ZTf1HvIW/1XeXZCuW2LYsAZxZCsrBI
	1EekdInLO64GkOp3qpZr4KaPkBOBU+f20rYiTW/fK2oqqkimQ3D8pDqAhFI4lX4=
X-Google-Smtp-Source: AGHT+IFN5WBqjuCZ0LLHJN0gA/j+3nth/Q8T+OUkfqR3MYT3a8tAWCiirKOA/twxv2J6LBgopZdYNw==
X-Received: by 2002:a17:906:81d0:b0:a28:d1f9:976 with SMTP id e16-20020a17090681d000b00a28d1f90976mr5009746ejx.65.1706550664785;
        Mon, 29 Jan 2024 09:51:04 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id pk27-20020a170906d7bb00b00a35242f5976sm3371315ejb.164.2024.01.29.09.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 09:51:04 -0800 (PST)
Message-ID: <1b27fa0d-5dc8-497f-ab17-76d82c2aaf40@linaro.org>
Date: Mon, 29 Jan 2024 17:51:02 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: exynos: Add SPI nodes for Exynos850
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
 <20240125013858.3986-4-semen.protsenko@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240125013858.3986-4-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/25/24 01:38, Sam Protsenko wrote:
> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> index 618bc674896e..ca257da74b50 100644
> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> @@ -738,6 +738,24 @@ usi_spi_0: usi@139400c0 {
>  				 <&cmu_peri CLK_GOUT_SPI0_IPCLK>;
>  			clock-names = "pclk", "ipclk";
>  			status = "disabled";
> +
> +			spi_0: spi@13940000 {
> +				compatible = "samsung,exynos850-spi";
> +				reg = <0x13940000 0x30>;
> +				interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
> +				pinctrl-0 = <&spi0_pins>;
> +				pinctrl-names = "default";
> +				clocks = <&cmu_peri CLK_GOUT_SPI0_IPCLK>,
> +					 <&cmu_peri CLK_GOUT_SPI0_PCLK>;
> +				clock-names = "spi_busclk0", "spi";
> +				samsung,spi-src-clk = <0>;

this optional property

> +				dmas = <&pdma0 5>, <&pdma0 4>;
> +				dma-names = "tx", "rx";
> +				num-cs = <1>;

and this one, are already defaults in the driver. Shall you remove them?

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				status = "disabled";
> +			};
>  		};

