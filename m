Return-Path: <devicetree+bounces-130694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0CF9F0A7B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC1FB16A41F
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8F91CF5EA;
	Fri, 13 Dec 2024 11:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xt4zScni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991E31CEADF
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734088269; cv=none; b=RwEh+AIvLLrMruUAns9wLHLffXLOfO1wwLozyuW4n6ai6L/IP+V2Nh6YJToEHZiqKKort2by7KNGGzSRySIQoOGVCjlIp65usawdlq7ufCYUy0EoKRgcre6M8mgmwMhRHlXDZ8pqPqlRTuyR/LxO6wFJxYuH1d9gfgiZwSPQFnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734088269; c=relaxed/simple;
	bh=sEq/4/+mWVVsscdN35vcbTmE9ZR+8pw7out/EOz+SXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X9OwIcagn5DGVc5/STmYddu2Sd6aqanHVE/zbGNRyBB1x20fFHzKQi0Xn5aC1ntIXGLq0bRlOlYhRW5QoTPYCWV8LAFkFi3/gAZcin4iRpLOjDafCP/f5MGcrxaka4dgfYgchWWqvhp/hbPcWLsCYTmxPVHeUYq7xoWWYRaw9XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xt4zScni; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-436284cdbe0so1469315e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734088266; x=1734693066; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ftTcqME+5edDCL49fhDBbDNlmCUYxzXTj2YtEy7JWb4=;
        b=xt4zScniBo2vIKQUaDmiby257wD0gVsNd9hQxJOwMW3+oidLRxLVAajKi7V+xaguUq
         rKcxaUEFC8+BFibMyKY6hjJ3LXnJJ0e8URoaNDxsqxpundynMOt4Fufpys6dLdBnb+FW
         E85Z90hZ0Gh4vaeGfc6OfF2vmpACiFEl3q8O0tWUAlZAgUgCtqmIURQBj68nbwnESKOA
         +feETb0MxS07ipwXutVpLY0WwBlLWVi2s1EnQbFBztBNs7GRdPyWF7qqqnZ8C5DvB/tS
         2dTiIP8Tlbs1rnq+M2M+L7XaBcoK9/T04VIdyrqC8WXYscnJPf5byTxyTwbCW0DKWnm9
         19Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734088266; x=1734693066;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ftTcqME+5edDCL49fhDBbDNlmCUYxzXTj2YtEy7JWb4=;
        b=IvE2SjUOWFOUlULBpBbSa/ruxZpZiBM+A1GC0y+sEqZc03Ev8jHF3tw+FvPfystGa/
         kbZP3roYsD/bu9xFWEEzPt01If0I8Ap6yUm4glOltAyA06Oe/i2B841zZRqOK6F38dMk
         rpzZkzulx0719mn/4rKuP5WjNDKmzaNKEwH7FrRE3SMCUuKefdqP22O/FAl/RmDVdt4n
         kmL/S9jV3BUfP40WmJY2ahCuMPA6sW/jYvEKv0AdUM2ifxy9ToE67HGDJEqHSELM16kr
         OGiY4lkZ1iIS/0bzyLMM2VZj6aHXTxQulqn3mcmEZW2Y80mRse69Gtc87jisCfZ5Xsro
         ja1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0cdNFJP94hWzreKYK+eE1j9p9psRwsBsH7Oq3RyI+6O1DWd8l+6KiGtJadwA6xZe+u06mGUC+wA09@vger.kernel.org
X-Gm-Message-State: AOJu0YzthbbBKlFGPFEFotreUozc7ccazIuI6rvyNkAIdY9bmx1WLoOZ
	7hxalltJNUVkSfIRS30HVkmfCFzyOqycrn6u7LvhUcyWDI+Wd/Az/23zagS6G+w=
X-Gm-Gg: ASbGncsmN3+88TuxOD3NEvngXKy+I/nozR2xe+zm/zstEFpY9dxuxtUypZnr6nqpPHp
	mqHTI88pe9u3EMRXjxiGRgce9McA6o6YBxEhpRmDCq3HBaiFYneiC90TV/BqilWPyZmHjKPFyYE
	ZpBNugrtTCfw/OWj9f3EI1WTMYUlFKKe4DfWk+Ej0uteftJ8lhiHTXad5ZZ/ie3Rxn/EXNq0RTj
	wIJbewsE1XMXz96PbxUicOSTsYG0ZYtVWwaCwhlW/Cr7NDPfe/a/BiDH/uIknLQtdLKO++6iXaJ
X-Google-Smtp-Source: AGHT+IFyiF1YQIhU5o9ZNFX3dIdgreb6Nvi1ivk4mtUR1kDhA/SPpOCeTsPnnpL78Ymr3hgnBqWieA==
X-Received: by 2002:a05:600c:4fc5:b0:434:ff85:dd77 with SMTP id 5b1f17b1804b1-4362aa3a62dmr6402505e9.3.1734088266027;
        Fri, 13 Dec 2024 03:11:06 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625553208sm45488485e9.9.2024.12.13.03.11.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:11:05 -0800 (PST)
Message-ID: <827f4554-d6c6-49e8-a578-da7329a0f247@linaro.org>
Date: Fri, 13 Dec 2024 12:11:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: tegra: fix typo in Tegra234 dce-fabric
 compatible
To: Thierry Reding <thierry.reding@gmail.com>,
 Jon Hunter <jonathanh@nvidia.com>
Cc: Ivy Huang <yijuh@nvidia.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, Brad Griffis <bgriffis@nvidia.com>,
 Sumit Gupta <sumitg@nvidia.com>
References: <20241213000305.3533971-1-yijuh@nvidia.com>
 <20241213000305.3533971-2-yijuh@nvidia.com>
 <dd45836a-a4f4-4383-8ade-d81c1b11c660@nvidia.com>
 <jr6zj5znqckjg7hxgekn2vtculqu5lluf3tnsrxdgpgxgloqyn@epkjmqd2yqim>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <jr6zj5znqckjg7hxgekn2vtculqu5lluf3tnsrxdgpgxgloqyn@epkjmqd2yqim>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2024 11:22, Thierry Reding wrote:
>>>
>>> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> index 984c85eab41a..d08faf6bb505 100644
>>> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> @@ -3995,7 +3995,7 @@
>>>   		};
>>>   		dce-fabric@de00000 {
>>> -			compatible = "nvidia,tegra234-sce-fabric";
>>> +			compatible = "nvidia,tegra234-dce-fabric";
>>>   			reg = <0x0 0xde00000 0x0 0x40000>;
>>>   			interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH>;
>>>   			status = "okay";
>>
>>
>> LGTM! However, we are missing a 'Fixes' tag. We should add the following
>> above the 'signed-off-by'.
>>
>> Fixes: 302e154000ec ("arm64: tegra: Add node for CBB 2.0 on Tegra234")
>>
>> Thierry, do you want to apply the fixes tag when merging? Could also be a
>> candidate for stable.
> 
> Yeah, I can add the fixes tag, no need to resend. That should also take
> care of it getting picked up into stable automatically.

No, this changed some days ago. If this is a real fix which should go to
stable, then with proper explanation what is the bug and how it affects
users, you need cc-stable tag.

Best regards,
Krzysztof

