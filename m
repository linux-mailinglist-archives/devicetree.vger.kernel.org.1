Return-Path: <devicetree+bounces-255611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AF3D24B93
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FAD0302C136
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0AB39526D;
	Thu, 15 Jan 2026 13:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jlAon3Pp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AD1393DE6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768483267; cv=none; b=bn4BssjHaOWi8gpWVO3hcCD3uquwnntFxZO7rOfzV4ZaYheOUCICdaImzNazqBYbXIh4uSHEp8gOVQfy0hc1N/1nkrB0ChVh4NZOU9eqrqmBmXWjU6joaIIkXNnN3tmFax20buu3CFfX8806a0rTAbf+SFBTbDDZsBM0hvOY7CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768483267; c=relaxed/simple;
	bh=abcUDzMsgI0NC3SXlFQOTmLmr7KJcSauM8GeBtGxewE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MlbQQ8AJJRfN+30l+vOTxLMSVWML6kPDyUeNunKcRfNxdPYLG6TYRZoDd26Bn2arEDgEVbq4YjUObBCckC9rr5yU3GFKtLedtHXDbtrS2vld7Ye8xnIcudNG/bwAEZDdzDE5rBNntroyXx0XUQx8PPYiuthHptNc8QuWBDMMJlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jlAon3Pp; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8010b8f078so154874966b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768483263; x=1769088063; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=po4SDkFceK6L+A0r9CoW5e+XAeuKVFUf0lqkYgvkprY=;
        b=jlAon3PpurmiNxWJFMaLDcAYNMKICmkJqYtl9t8bvsbkTI8e2QStLKRG0ix0u4K+Xf
         FBT0a6gsS02xlw9J3T2s8hOvnUqxmYldl+HR07gQZ8syA9WxINMNlg2I7+46eHx95N4Q
         LzxwsVNdqW28NDIhereW4XkwFVDmmLBCd2en05MpuevG9pYEQ0nS/AGeiahTOclholuP
         4yaVkClhSr7kTI/5eyV782R8c5LteKYjKeNkGxayIFTrgY7FBixIj3B5KPdpEIMWXwah
         fJ7qqfSHUFEP5zEHILOd4i446EEYZ9HFzFgWPMFhNw5opMHvTIwvXZmg0Gnorv+5R2J9
         HArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768483263; x=1769088063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=po4SDkFceK6L+A0r9CoW5e+XAeuKVFUf0lqkYgvkprY=;
        b=JtLa25rEMiBYfs3fxjPzNKvI62Owv/4UQpz5hHj7MCXoPIX6KMXAUaq5stTUFB2Haf
         lxv1NNZG0ZH3jqlI92dlZN0GEnv7BX+JQ3dzyiLsvw0JnN23SK/aULuvUwUbET8g6t0l
         6yv7ann+lJ6NOTtEfPXH+lbrnZkq/aobAQj82Hu1mGGJZU31S4zs5afgRRQEWZMKKYJ8
         fPkP5rWNW51WiThbUqOH1larA8oP6Y8pF8dkzvVr+ctyraryNLy0TygmhsClByhYm8Jm
         mNpew+Kc09bQXNOMpj+kZ7RNk3yP7DCQx/3d52atrBe3cio2s7L/u9O+zNH2q5/K4ueC
         9FxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWO1vHChXX6fhnYwS0YZZyWzOuGUENf/F/lSjW/7dFS8T2JN5+nZlqilApgLtKZhjha4zFSuZhKVkET@vger.kernel.org
X-Gm-Message-State: AOJu0YxaMjHY8Qn2w+kPINZIz+RULkxqLmBG3vX0aZwpdJlAJhc6o9lA
	nYII34Sid/UOfEQtVl5dZLxb5XPPVA5orOG0JL7ufEIztwxRCUJ8EVcFT5QOTTJ2JII=
X-Gm-Gg: AY/fxX5VJniFECzgoZmXOwj8e++NWKwoE3f/kdfkOO2EsV/kPMQQvzm22KT7+bnnonx
	fNBVGjGEWOaVrGpW8V7W0tP5yvL7z7vY2sI+bJrJYkH3YgQZXM00rt+w/PZzTN6vMYigGYlYCrC
	4rXw41/wFCd4eFeq5Fww1La2Pc9lgIkTPnu6x6kD/9/t0hNGyd2AnOhrP8mhmHEy14+iYaLXvTD
	4We0Cu7a9/x2K0u/ynquXCzzUE2lL5avdm9pTvXFVNGaXiFg508EEyQt9ObNfbGrejOHEqMsfbe
	zSvl9mD+d4MW0ShmSCY5+qWnUm6wkoltLumkygDCQC9EvnGBT4OUnP2pfzb+g0XNGGdvm0D572J
	A1wof9p1WdNJUVUPnBII7NMvvQWVkIUJBhBuP1iJjd+bJjyrgYIfh9jgKqX6fTNAZx1hDPCEabf
	WWrzwJN2Fu1pTZCGritQ==
X-Received: by 2002:a17:906:f58a:b0:b7a:39a2:7f50 with SMTP id a640c23a62f3a-b876113a364mr534982066b.39.1768483262801;
        Thu, 15 Jan 2026 05:21:02 -0800 (PST)
Received: from [10.11.12.107] ([86.127.43.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8767042186sm467121766b.0.2026.01.15.05.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:21:02 -0800 (PST)
Message-ID: <f7d75089-732b-42c8-a5f6-2e42e6e82c26@linaro.org>
Date: Thu, 15 Jan 2026 15:21:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: defconfig: enable Exynos ACPM thermal support
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
 <20260114-acpm-tmu-v1-8-cfe56d93e90f@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-8-cfe56d93e90f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/14/26 4:16 PM, Tudor Ambarus wrote:
> Enable the Exynos ACPM thermal driver (CONFIG_EXYNOS_ACPM_THERMAL)
> to allow temperature monitoring and thermal management on Samsung
> Exynos SoCs that use the Alive Clock and Power Manager (ACPM)
> protocol.
> 
> This ensures that thermal zones are properly exposed and handled on
> platforms such as the GS101.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 45288ec9eaf7365427d98195c48e2f8065a8bb1b..1bfe37857f51663c9d745cd575f107fef183008f 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -752,6 +752,7 @@ CONFIG_BCM2711_THERMAL=m
>  CONFIG_BCM2835_THERMAL=m
>  CONFIG_BRCMSTB_THERMAL=m
>  CONFIG_EXYNOS_THERMAL=y
> +CONFIG_EXYNOS_ACPM_THERMAL=y

I should have made this a module. Will update after I get some feedback
on the rest of the patches.

>  CONFIG_TEGRA_SOCTHERM=m
>  CONFIG_TEGRA_BPMP_THERMAL=m
>  CONFIG_GENERIC_ADC_THERMAL=m
> 


