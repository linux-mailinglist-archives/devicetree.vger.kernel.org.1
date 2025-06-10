Return-Path: <devicetree+bounces-184222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9BAD34B0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9238F3A4606
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E2728DF4D;
	Tue, 10 Jun 2025 11:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fg6WGMlc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B0628DF26
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749554092; cv=none; b=WW/vRHbDPxH/3zHPJDash6ifkGeXY6zaxsETTRD7UaVSI3yGYP2S656tzwu/SEDcL3QLpsnsmRv0uN0HpJ0HxcDAe1v5i7F/oZrx1Uzn8+OFCfAgZe1GpXTWPnN+rrxHx0rmQXwYOKQjpERNsgNK7mAppzrC4kQAMHeIWRoRLSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749554092; c=relaxed/simple;
	bh=qerf7R7x3MmKFRml/liVP9QCkPFqOO3yGP2nvsx19hQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JjiGVBvkxJhNyb+pW5IVA1kbHJqcDhmpSu9t9hHymxTe2bjgsBDI8hzxyVnOohbnVoL8wwEw4PkYChl+98ZcYrugBgHuVsVfP0w588XUnUFt5mNEeVOPagvDM9NqxywdHKSIR07SkO106d59u5mJuw3aSqYEakGrQlt+Ib3DNU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fg6WGMlc; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4531e146a24so4105245e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749554089; x=1750158889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u9YfwqU8RsJJfZWtSE6GdaClk0k0kVRiBuWkos8aGMg=;
        b=fg6WGMlcM0m+5c6G1Kv6zmSR+TpdcR4Ym1giOsALt1H6IwKzouI+nbkCF6xccqPj0r
         KrC/tUMlA7cR+neOg7no3ByFhdEBI2NVwesFaov10Lqf+W6hDT0v95RqlrdfXbD2KijQ
         DSaiUU3jr3/5aJ6C/rDVCrCVWFwnQy5n3JKnsaQo57BvGM4L323efnOvmG6jB0M9LtR9
         FDYNTNYAyNzvx/Trfz1XkdSeitonMXwfsgqHm2FxoG3A4FdQ7YbUiQ5nqFmmK9eZlvp8
         k4QEUHG1MY+aiezb/WxIsfewLUSIPTMtORrskbBioNzlrR1bD0VCxDeWHxhrYXJfm/g3
         NhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749554089; x=1750158889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u9YfwqU8RsJJfZWtSE6GdaClk0k0kVRiBuWkos8aGMg=;
        b=XjizlQNK1Q7WEe466nPIJVP5Sw3k66fnxEIQtHuJlu5lv7YKfltYbQRrNE5yBbz6Ss
         7p5MCvxYmMVj1szWVziQdytfe16yS0Liv7WyNK9D0/xugt/KdGFCCd4612ScGBADMoMN
         Nnd2Qamw5IvwoX6zRP0ELFUBqQSQw+CkwrWcrXir92ETApNI5x5x+G+WgKgWY4yZ7vEl
         htryiAYUO6Z3DkwB2ZgMicILUd53X178tzU7r35En5FYiTEJfVV8Lh7+4JTpfOuSCDQD
         UfL8iiIeJGhD8ho7eE3ZY/Ggqpso+ZEEIOFiEyniIXh415kgOQX1htuluf41zF7sVMHM
         49wg==
X-Forwarded-Encrypted: i=1; AJvYcCVlF9ePZHZZabaMxufg91j0sjUg6VH37b45hDNUVORdv+1bBgKv8h/saxovPcE3sLXESh0ZiLeGJTg+@vger.kernel.org
X-Gm-Message-State: AOJu0YxYkA/5ufLJFAiZVLSsdGDb4R29yyqkSJfkMY+kMcykG9WCuEvQ
	R3xLQCPnawRkGVrG2KcUAtizg8cIN76zvE6KAFUynkku0YxMZK7dy6css5un6PR5aaI=
X-Gm-Gg: ASbGncvegMv2ppPLXDPsDr9oaEaApP/aRS3vuIM/H7WDdkf1rNlAzVM3dKjsB2U5Rx1
	RDJT5C9SuV/uaV8v/mp4mb57HAN0Y5gD88Ftv2Dp7B1tHyyhf5KS2eM6z8/aAfFpqkx2Msvepn6
	/TGjrRHrM6yfnnsiU36m2lof2ExmvLfR28v3MPpN50QFnejZfrRcv+L9/YEnC8QR8V3DPlgItYB
	tXOEPqRTN7nf+2EcPBckzeVZqaqxm8a+zOaRxCfEhXtDJ+8BqL1z9g/138KPcryOYfLrVd1jBw7
	c3MEkilnzTyAfbvXpiF8lsp/ZBrGwg0Jb51gVGTDVyo/pr095DlKDG+dyjYgNHI574zCvSoP6gb
	d3AvKl5ugvDbjLF2e2KtaXwwtMH8=
X-Google-Smtp-Source: AGHT+IG64JuaWmpv5wfb7cvgoK83Q0NILojodK9xatw1h8mZUrS3UNG5bUBkgBBPrquvsC5B84JHZA==
X-Received: by 2002:a05:600c:1f94:b0:450:6b55:cf91 with SMTP id 5b1f17b1804b1-4531dde6b67mr22418225e9.6.1749554088664;
        Tue, 10 Jun 2025 04:14:48 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45311490f44sm61809845e9.30.2025.06.10.04.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 04:14:48 -0700 (PDT)
Message-ID: <a072d00e-df91-420b-9363-424bcdf1ed8e@linaro.org>
Date: Tue, 10 Jun 2025 12:14:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/06/2025 09:33, Vladimir Zapolskiy wrote:
> Sort the entries of interconnect and interconnect-names lists in
> alphabetical order.
> 
> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
> 
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index c101e42f22ac..7d4e6ef57bf8 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -100,8 +100,8 @@ properties:
>       items:
>         - const: ahb
>         - const: hf_mnoc
> -      - const: sf_mnoc
>         - const: sf_icp_mnoc
> +      - const: sf_mnoc
>   
>     iommus:
>       maxItems: 8
> @@ -321,15 +321,15 @@ examples:
>                                &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
>                               <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
>                                &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> -                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
> -                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>                               <&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
>                                &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>   
>               interconnect-names = "ahb",
>                                    "hf_mnoc",
> -                                 "sf_mnoc",
> -                                 "sf_icp_mnoc";
> +                                 "sf_icp_mnoc",
> +                                 "sf_mnoc";
>   
>               iommus = <&apps_smmu 0x800 0x60>,
>                        <&apps_smmu 0x860 0x60>,

How is this a Fixes: ?

---
bod

