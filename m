Return-Path: <devicetree+bounces-50141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE22879D01
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 21:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3F37284A51
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 20:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D17142907;
	Tue, 12 Mar 2024 20:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ils7ZC30"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B18213B2BF
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 20:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710275876; cv=none; b=CA6FBfvfrK3u/PyvLMfdfCUfZa0XAoTN93S/J6TiaW3HuW/BrCXPYNCB72O6wc+/PnOJb5DzXN5I05iKW3/3It2Ycb+anQ2H1nLDVR0Yav7R0+z4D5E4+m2FeGzendabq4mMcljD+xoHDrzMmTp1UJ2M01p0tlzmaZjTk5nCcSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710275876; c=relaxed/simple;
	bh=3PoZtqZfv/6PU1uW7l4UoCclsEmR/Cq0T8eKpXLxOAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pq0jEfGcJcgVSA+8C85YnUCA1EdZDO77bf4Xfexm0U5GlvxAj+D7XGOs7ikabrkSMl9H7EaxsqaSPbirmVy37+b4YpCYJL6ibO5ZMI3vaHU9dcVr8mgadA1Vf16e70iJKOJppWw3jh/6s48kXz4peUbUfc2KlJzoZ8uyBIuRHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ils7ZC30; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-513b39eea3dso319431e87.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 13:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710275872; x=1710880672; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5qkAM+iQxn7GBJaPt3CHhQXDne7eiNHja+zN5jC9ZRg=;
        b=ils7ZC30QZ0HT6qFeVMyhqhW5guOI2ZT1Cve4kRZHl/qAEfl17KscPFSW5yDhs+vYh
         zTEltdk9DkpozprtWgnDse0UNQqVVeEsKcA88cCzCmRUQlFSEz0g04KQpjd0UacolGO7
         R5FXafPek1T1lLDvHshntecc/ifTindJKOrKiEjNwqoaFRV3n2mSkqwZTZTQxImzE2uy
         yeDXcjkM8xxYupNgQVFfxc3let3QPdfGvoltOrO7859mjVgMaIoArzBD+iC9TuIASq3F
         5bnEEQeIbulQ8ckIuJvekaCXWXZqPd2Zw4lEDFmEmscEutEPIjVarvC+TcNRVWPYlWzK
         /Xeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710275872; x=1710880672;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5qkAM+iQxn7GBJaPt3CHhQXDne7eiNHja+zN5jC9ZRg=;
        b=Lxoiyw3Drj2q/gDC9UemIROcvog+MJia7iTkrhJyqi2QVjROfD7GA6/qdHyZM9h8go
         6C5r8H4mzol/5oxXwL9FhiX/WOwg5biKyEMK36MnwFUrv/qyPMk5qxW2nvfY+7u4ii+s
         fArkHN6W2EOA3uy2ul6r2907e0iwYdH9feaFSYdKo6F3gZj3iuxAP1qV+jpPGcPP3g1u
         kahYgrFj4NG8iOtUh8WjuyQk27zNOiDkPN1L5fdKL9q7RZwXfWrmDU7n4KKt2FwdMWFw
         u9H74iCegsaTEIEbwa2eZu4JTOvkzEnKH3D2/TZw8fyqIr4xeqTXiu/wVGpmQ2INCnV7
         WFdA==
X-Forwarded-Encrypted: i=1; AJvYcCVzsVsaHnjd1ZFJIitexedXNlj9J6dCMdp5VNjRAQKTGqEJ5LC9fiWMcUU8tueTBKHifYpMfVTjIuRMWTXEMTxchwAUhhDOWsMlfg==
X-Gm-Message-State: AOJu0Yxc2hLuR5G3mOXcr0QzVilnF0ZMxhK4s44mHx/uCLHmcFNEsH8d
	UjzGhIFPcGAs2IYo2Hsnhm6VlbWa7tMGeeCslASKRKyBjWAhIewNLllAEn4zTJ4=
X-Google-Smtp-Source: AGHT+IEwbT5mrbnBCcSEv/VsxGJBXrJlJ2+9LKa0GMPBpgwIJWgGFYSTZs9yyW5Wt+mdSIbJ6kkwSg==
X-Received: by 2002:ac2:4834:0:b0:513:ba0e:a2e9 with SMTP id 20-20020ac24834000000b00513ba0ea2e9mr2443479lft.24.1710275872233;
        Tue, 12 Mar 2024 13:37:52 -0700 (PDT)
Received: from [172.30.204.193] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u14-20020a05651220ce00b00513a238039csm1426317lfr.287.2024.03.12.13.37.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 13:37:51 -0700 (PDT)
Message-ID: <6cbc2741-db0f-4acb-a9e1-45b3df1292d5@linaro.org>
Date: Tue, 12 Mar 2024 21:37:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: add TP-Link Archer AX55 v1
Content-Language: en-US
To: Gabor Juhos <j4g8y7@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240226-archer-ax55-v1-v2-0-3776eb61f432@gmail.com>
 <20240226-archer-ax55-v1-v2-2-3776eb61f432@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240226-archer-ax55-v1-v2-2-3776eb61f432@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/26/24 18:12, Gabor Juhos wrote:
> Add device tree source for the TP-Link Archer AX55 v1 [1]
> which is a dual-band WiFi router based on the IPQ5018 SoC.
> 
> At the moment, only the UART, the GPIO LEDs and buttons
> are usable, but it makes it possible to boot an initramfs
> image on the device.
> 
> The device tree can be extended in the future, once support
> for other periherals will be available for the platform.
> 
> 1. https://www.tp-link.com/en/home-networking/wifi-router/archer-ax55/v1/
> 
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---

[...]

> +
> +&uart1_pins {
> +	/*
> +	 * Remove "gpio31" from the default pins in order to be able
> +	 * to use that for the WPS button.
> +	 */
> +	pins = "gpio32", "gpio33", "gpio34";

I believe you can even shorten it down to gpio32/33, 4pin uart
screams flow control, and I'm not sure if it's there only one-way

Konrad

