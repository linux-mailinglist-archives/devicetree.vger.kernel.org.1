Return-Path: <devicetree+bounces-58445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5DA8A21AA
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 00:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2636B21B8B
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 22:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2A840876;
	Thu, 11 Apr 2024 22:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ckbil8hb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E851E4085E
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 22:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712873659; cv=none; b=KDDz1x+FSV7/34R2fOT679dVD5wz7kbYKEV/x0SOhjJZzgDcnPzjLR3CxnbwDayI5gdocRZn7MNJHe/33N0YcrWOuvEM4ID/WOGHx/woIOhgAwA4AtcFgPh5FKyYeWHza2fyklMFhLDXgCMnIOJIyddpX90fKj6yYeEQlU3DZAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712873659; c=relaxed/simple;
	bh=HVCavc1GpotaYlxiMGPnWktJonqaa7wE0EPOxTg77ok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UJv/HF3GLmCwlu0raY9EAaGJPEVs/YoBY3nnPiPgecQOdJL78whNg255RGJ8xG8Qj7XHLzvlMwwnCwLLzTsQuQcTuV0P6nG1/vIKpSrI6lciXqk7vsXipWE3D7vrGafSUOSgHvB+eC1Smg5vlv4/DqWWi2qoK/zwDEL06h8d590=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ckbil8hb; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-516d487659bso392784e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 15:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712873656; x=1713478456; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=khe35T3rndQtWq+CLonCh0dK535CORV1sgkkF2YQ4N0=;
        b=ckbil8hbtZSzLE+M4l1UhRb4GYmh8r/gwjkqeXQpAedW76ldp2CngNSUxetuy/zA8l
         m63GlV2dONt53ug7t6B53RT4Lxi9MHeKl/Kv8mGtKYeUB5FCp6akcK3cgFJSqk0HNPYj
         gqcuZyCuScp0LnvgbG9uSUcpn5p2hs7xoToR7JbtE+6C0QYfiSLxMXz2C/QtLS0zFkDQ
         Vn42p5AlXUs8uQxrVmXzFftMktlBZKJRL1rRQiUb4HSZP2tqojWjYThWE/aFvIqpzX45
         6AXFoGwRRfFwapeqw3s4WIIvvRoSIti7cRWPZ50WJ4K5wQ8prU4daqAu/JQPtYbw2hOV
         B7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712873656; x=1713478456;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=khe35T3rndQtWq+CLonCh0dK535CORV1sgkkF2YQ4N0=;
        b=P78IP44kpA2O6osDaevV2wXuwC/dyHJx+B3zMii5OCRn1RJ6htCRTgljug/EHGqRK3
         dNTM6KD7B+0FndcsCJfrLfknWRzCDwuhfsFV8CovGmPWsrp7S84PpYOei3nmKQy0iDau
         zUxY9wYm7KYMGQWhLvHvxhaOvzB3fXi9xXjMvlGuo5OunphEB8NpDnINC06GjhO/y4YR
         kJ2I1qOlziU8MaaSdqR0LYko0kZpEC9G2gC2fKxDc5UvJlxSvHkeCpBltyzxkxsQSK3s
         pTmU73ZzyO4kpy33D9UwqaEpHml/IIQFIu7AtwpU6AQZi9h0duZ8ptjb5tb/RQlWR+W1
         /U2g==
X-Forwarded-Encrypted: i=1; AJvYcCUqwNFGYVsobzyDpmJJwulg5uqF/lF9YxeZyylNanTc1hRM11hZ4o30vkscNw4M4BOVjgpTHMCpr7R6tt/XL2cp+ZWWS/lfEdAopw==
X-Gm-Message-State: AOJu0YzZjF0laZFTTBP1no4ArepVx4la5u1+a5nDpNI6MoOr29GLmp35
	bbu7aAkSHMb16q4jz/H1iyJfnSAWtR11CYzOYaQfyPGJWmpNnPmNRL3CJbxlCmw=
X-Google-Smtp-Source: AGHT+IHx0P+eB1kIYT0Tv83YHPKRC5dpyqK+7bi0JOpLYMlHiy8wC8MbHq/bVI7kd2Fur1HzCSF7Eg==
X-Received: by 2002:a05:6512:3a90:b0:516:d0c0:3c5 with SMTP id q16-20020a0565123a9000b00516d0c003c5mr640206lfu.24.1712873655777;
        Thu, 11 Apr 2024 15:14:15 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q12-20020a05651232ac00b00513c253696csm323775lfe.187.2024.04.11.15.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 15:14:15 -0700 (PDT)
Message-ID: <4c13573e-1398-492a-b2cd-3c5ffee348ff@linaro.org>
Date: Fri, 12 Apr 2024 00:14:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] drm/msm/adreno: Implement SMEM-based speed bin
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-4-ce2b864251b1@linaro.org>
 <scvwfj44z3wpp7phvesfwjuv5awtlkwby2vvrpaq4i5fircrt3@i3ebya4iymf3>
 <730d6b9e-d6b4-41fd-bef3-b1fa6e914a35@linaro.org>
 <33qyr6cfruczllvavvwtbkyuqxmtao4bya4j32zhjx6ni27c6d@rxjehsw54l32>
 <321aa524-ab64-458a-b4c0-70294cc5467d@linaro.org>
 <CAA8EJprvss4RTXQWMQpcE6afpc0Q22zzeGxJBxh4s04E=8rGBA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJprvss4RTXQWMQpcE6afpc0Q22zzeGxJBxh4s04E=8rGBA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/11/24 23:46, Dmitry Baryshkov wrote:
> On Fri, 12 Apr 2024 at 00:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 4/10/24 21:26, Dmitry Baryshkov wrote:
>>> On Wed, Apr 10, 2024 at 01:42:33PM +0200, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 4/6/24 05:23, Dmitry Baryshkov wrote:
>>>>> On Fri, Apr 05, 2024 at 10:41:32AM +0200, Konrad Dybcio wrote:
>>>>>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
>>>>>> abstracted through SMEM, instead of being directly available in a fuse.
>>>>>>
>>>>>> Add support for SMEM-based speed binning, which includes getting
>>>>>> "feature code" and "product code" from said source and parsing them
>>>>>> to form something that lets us match OPPs against.
>>>>>>
>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>>
>>>>>> +  }
>>>>>> +
>>>>>> +  ret = qcom_smem_get_product_code(&pcode);
>>>>>> +  if (ret) {
>>>>>> +          dev_err(dev, "Couldn't get product code from SMEM!\n");
>>>>>> +          return ret;
>>>>>> +  }
>>>>>> +
>>>>>> +  /* Don't consider fcode for external feature codes */
>>>>>> +  if (fcode <= SOCINFO_FC_EXT_RESERVE)
>>>>>> +          fcode = SOCINFO_FC_UNKNOWN;
>>>>>> +
>>>>>> +  *speedbin = FIELD_PREP(ADRENO_SKU_ID_PCODE, pcode) |
>>>>>> +              FIELD_PREP(ADRENO_SKU_ID_FCODE, fcode);
>>>>>
>>>>> What about just asking the qcom_smem for the 'gpu_bin' and hiding gory
>>>>> details there? It almost feels that handling raw PCODE / FCODE here is
>>>>> too low-level and a subject to change depending on the socinfo format.
>>>>
>>>> No, the FCODE & PCODE can be interpreted differently across consumers.
>>>
>>> That's why I wrote about asking for 'gpu_bin'.
>>
>> I'd rather keep the magic GPU LUTs inside the adreno driver, especially
>> since not all Snapdragons feature Adreno, but all Adrenos are on
>> Snapdragons (modulo a2xx but I refuse to make design decisions treating
>> these equally to e.g. a6xx)
> 
> LUTs - yes. I wanted to push (FC << a) | (PC << b) and all the RESERVE
> / UNKNOWN magic there.

Ohh this specifically.. yeah I considered pushing that there as well,
but I realized this is specific to the GPU. The socinfo APIs should
only return a valid/unknown code for both P and F and let the consumer
figure out how to interpret these.

> 
>>
>>>
>>>>
>>>>>
>>>>>> +
>>>>>> +  return ret;
>>>>>>     }
>>>>>>     int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>>>>>> @@ -1098,9 +1129,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>>>>>>                             devm_pm_opp_set_clkname(dev, "core");
>>>>>>             }
>>>>>> -  if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
>>>>>> +  if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
>>>>>>                     speedbin = 0xffff;
>>>>>> -  adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
>>>>>
>>>>> the &= 0xffff should probably go to the adreno_read_speedbin / nvmem
>>>>> case. WDYT?
>>>>
>>>> Ok, I can keep it, though realistically if this ever does anything
>>>> useful, it likely means the dt is wrong
>>>
>>> Yes, but if DT is wrong, we should probably fail in a sensible way. I
>>> just wanted to point out that previously we had this &0xffff, while your
>>> patch silently removes it.
>>
>> Right, but I don't believe it actually matters.. If that AND ever did
>> anything, this was a silent failure with garbage data passed in anyway.
>>
>> If you really insist, I can remove it separately.
> 
> I'd say, up to Rob or up to your consideration.

Konrad

