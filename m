Return-Path: <devicetree+bounces-159468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B3A6B03B
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:01:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88ED2189F2F7
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62661227E9B;
	Thu, 20 Mar 2025 22:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LnuqufDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5B5224B1F
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742508103; cv=none; b=CSO2+nCwAtCFztRhf1mWt7c8ucF/vxsnanbQfT3lfKN82HV0qa0SyBownZWkpA9YDgPylMWhITFDqlB3i5xjOUZrIsPZhAG29eqlmjPsErMm9MkKMJqE43nBVSTFwm49skPO5dFO8R0TD2EtD4CrN7tIXbYZyerOWEYVEA0t9do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742508103; c=relaxed/simple;
	bh=UBLaD4Nq5xNwf400rlM/sUNn9F560QUZ1XyT2uZZub8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nTedvI6Eb6I/KMN9TDw/Ft7peDj/ldURNMNdFAm9tRRkSGAYFRYOXxxzTCvIq/LEcQ9l7MCOiqB2ArqzNjh4bWn2dO+Q/uqsHBefTX8zo/dxkpIDa4H99yRVcSEZXMMldk+o8Udt1sgEClF42BTG+jBXRHD1eZZZgKby9wUFAZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LnuqufDd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so8328055e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742508100; x=1743112900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w8yT7bxx+POTQPmMty55njjk/M6SEwDhRgh0uxWleRk=;
        b=LnuqufDdNc0xgPOLrTPivBZCBviALYxIZERpaM9Wc3DDGtpUVHQDAh4XsT+IbtW3/e
         fHzLQJ3CXVL5RAg9OTwLtY0oAh5yCT80jgy4PUlJYlp0mZ4lKqCm2zuVIq7CcCkno3/r
         rbAO+yVYYQsRFRTumBiOiw/AYR8UVgj6Oz7F53O5I4SvD/EjB9iag3Xvvt3WAF/3wubF
         BDfA/BjEcAr1fsrknqDXoOoI3cKuMhnu3ipzglTJuxET2WWCgeQk6n6VMLjRG6TB/bYV
         8Uu+Z1tPleNrFM8Ev/Yrj3Usnr0vKb9qR0OKtx0mXIsht0DpmkRC2LvFchuetfihg8Vq
         OqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742508100; x=1743112900;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w8yT7bxx+POTQPmMty55njjk/M6SEwDhRgh0uxWleRk=;
        b=VLH9/gSx2aJ/Ibd686qxO02GT1GBvP5cuTGwFdtfWuOg5IWruS/Z7uLlSC1QUTo9XF
         QuEHE0Rxo3SKzQZmxBaFPeg9RWlhD8EaMfRWtnHAJstBqrrIZjuU5vRThQUaQzAAMlLR
         fWZjo8pbFXCuYirU/i76QNP/k+znqLIgPadGXgCJU2ikb7rJF1qFo24wmb8GC0PXp1tW
         GVlO6rGAScIBy0G8ZQC+notE1yZ/pH//9S0bfnIN52hiSkjDyvpHAXn42nIBe2a004t3
         1NT8C4g/xYR//d4NgrYGlcnzlJg5N7eXV8g8igDvZyVlviDxxEFNIVHCWK1eMnjuxy6c
         EHuA==
X-Forwarded-Encrypted: i=1; AJvYcCVJO9rEi7ja/W4Jaa8dTZKPLjEwl2bFYyx56P7kgiF3mq+uj2P1RdOtaBubD7J6AzfArXW+IHC/d0ug@vger.kernel.org
X-Gm-Message-State: AOJu0YzcCmnf8Q7EqLAIjv2G8x3cICr3p8wPqcZlwkL7tUXUbDem5i6Y
	nEMK57+MAreOPECWydUvzPClhzbvU5j3CEHoLO2MWzdxjlunFek4X1MU7rTdfFYQifmNWbtP28V
	1MosP5A==
X-Gm-Gg: ASbGncta1MAgz9nd+8xuMMmDXCduI4oh2HDIJCeC+wkdQ9DHAVJ9GiC9EViBZCVPG9D
	6J1QKoVNZJO9BDoKCWkehKYkzhHbd8xDMpSExY/nMzZkBu3g8FRuyDz7UbPR5y3PQcybNK3gXMe
	XsYT+3YqHbTunYeSoYQas/kX6Ojc61CLmWhbZoSGYG1xfpjaEtTLSbZvUo1PjxmJYR+imf9pCmU
	p+tACBYZwVfgzK0xZwBn0pLaRfUekNVQOB0RX5LdLXhU33hthDvKW26xmeLehQ7Gf7uc+sCjP8w
	ASiqkGmcY5cd8DmW4DirND0OYLqPHKsRwi2OOvWlG7g9L32mPuvBsrm9Jg+h93t9toAexbxqrRw
	l5LrzKKCcyw==
X-Google-Smtp-Source: AGHT+IGz8sDCfiUcMrh3ZaHqynp/YtvdJQNLTBk+X4KzsimZeV2pCXU70QJKuqlDD/aS804bEebyZA==
X-Received: by 2002:a05:600c:1e8f:b0:43b:c7f0:6173 with SMTP id 5b1f17b1804b1-43d502e4332mr11888305e9.4.1742508099644;
        Thu, 20 Mar 2025 15:01:39 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm8939025e9.40.2025.03.20.15.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 15:01:39 -0700 (PDT)
Message-ID: <fff943a6-4322-43d0-9821-08375bc5376c@linaro.org>
Date: Thu, 20 Mar 2025 22:01:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] arm64: defconfig: enable PCI Power Control for
 PCIe3
To: Wenbin Yao <quic_wenbyao@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org, quic_qianyu@quicinc.com,
 sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
References: <20250320055502.274849-1-quic_wenbyao@quicinc.com>
 <zqBb_94gbwLzHgbAiLqgbuGg9wmeV1jUxHOsMXDdZToeTtRrtUimm8ra7GB48DXWU-ZOvC5mO8EY0uvxz46ISg==@protonmail.internalid>
 <20250320055502.274849-2-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250320055502.274849-2-quic_wenbyao@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/03/2025 05:55, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Enable the pwrctrl driver, which is utilized to manage the power supplies
> of the devices connected to the PCI slots. This ensures that the voltage
> rails of the x8 PCI slots on the X1E80100 - QCP can be correctly turned
> on/off if they are described under PCIe port device tree node.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 85ec2fba1..de86d1121 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -245,6 +245,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
>   CONFIG_PCI_ENDPOINT=y
>   CONFIG_PCI_ENDPOINT_CONFIGFS=y
>   CONFIG_PCI_EPF_TEST=m
> +CONFIG_PCI_PWRCTL_SLOT=y
>   CONFIG_DEVTMPFS=y
>   CONFIG_DEVTMPFS_MOUNT=y
>   CONFIG_FW_LOADER_USER_HELPER=y
> --
> 2.34.1
> 
> 

PCI_PWRCTL_SLOT is a tristate symbol why be a "y" instead of an "m" i.e. 
compile this into the kernel instead of having it be a module ?

---
bod

