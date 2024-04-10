Return-Path: <devicetree+bounces-57865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85689F108
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 13:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49628289038
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 11:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DB815990D;
	Wed, 10 Apr 2024 11:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JnXIpMMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A50B2837B
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 11:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712749355; cv=none; b=GzioW3Y4m1e4VH5RLTRnd2ffdzJIh+QZhpsFCEBN3B7qfblpG0Tv+g+zb1U/QBxzkEqcuVO53ScXDl7z70VPagRSo8bO+Fg0+tI/S4F+U4tBMvCP/9M/0P+wxnOyh3LGqavFms+M07nMYNIE7ijSQEqw9IQsB56k9TAZWmbhA4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712749355; c=relaxed/simple;
	bh=yaFQxvePqSzegCFFO4PoSuEJoGwSuxRd214Dl7AG+sQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rfbyz4ryFmshzW0AsePgdwaBMkTLcsA6YmsmlF+K6X01HKtlKuU+XpbOmrSRpI7m6dDu5WopF1jtyYDfIUq8M14ejm6fumwz600b5gLn3cyImQt4hOdYSsWEaRoWaExdUtjfDuwtF6S06W5180mbFaX5a97gus4QSRNIVUOCTUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JnXIpMMv; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-516d756eb74so5929159e87.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 04:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712749352; x=1713354152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KUA83gpzkWVU1iShuYOjIgJTVa9hCldc/8ck/dDALYc=;
        b=JnXIpMMvgKrv2RwXViwWyX+T38+uGBohIZzQasRMdlbRZndTyW1KcaY3U0YN1yS1Pc
         avSX3xjl71rRuYRQmgSH5+O/9hVw6pPG3c/a8Katqx8FHbFuf3h364TTv9Go4wf/AC4q
         MHU9LFgFCnQHpFUrXH/wRPzQ0bQbzoQ5g/io+RRbmDUUSjrttmbbzVBYdwwmIg4GDzn8
         gKeBcGKBOkDpBndUQSOBPkkZw44RycRy7d4jKLBvTQyRAVO6D4GiX7mZtKbHoPNpQuHx
         LB4zYQbbZ0r1SshQGWYyDv81xPO9USjB/nr/OP2H/eZw+6rvb842rgj31WEfkjfIfg/N
         8nSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712749352; x=1713354152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KUA83gpzkWVU1iShuYOjIgJTVa9hCldc/8ck/dDALYc=;
        b=SjxwHmH/jlDJA+FcN3eYjho9Ag+9wsElMUcst+wqq2ej4ifakn4vWVkIksWCHLT78G
         ZgX7rOeVH7ecrYCbvXw3Et1pA6XqTBV/8DFPjYzK3zzd6klNl/AztUzmpDo6P7PDKZ3l
         rtRCrB3H/SxUsRQjEvsgag8+xjbJSe1UrpdJ3lIjLG9HGbJYR2rf+ls4p735wBVusPhF
         GvUzNj22d0La4jh9xkCmyUVlR7JJKGPgWwne35P/KZjZ7890ahVarsVybEZxQvf8VKTo
         wdhE+0mYB1SCRu5T1xIfdIqEWcz6w6X1TQcXp9osUQkmhpsRXesOtd4J4sAqeay0He5a
         SRnw==
X-Forwarded-Encrypted: i=1; AJvYcCUg2om0KoaGYOZC1le2ADC8PVz9Dc1I8sogr2tNjk+vijO+F9ORyvfu6O6Hfi5d2AmZ4ZeSTdCEtiXKtnQsDcITBjTb54CavawCCQ==
X-Gm-Message-State: AOJu0YzEhGr0EzYh3lohLAzZQ8qlM3+pp7daOaXzxAdOZWJ5nWMSe2kq
	h7hUib3PNlKQWed4DYrwfP4+TvJzGW7J+KIWxrG2z1uDfAcAvomm3XOz1gV9jTg=
X-Google-Smtp-Source: AGHT+IH0+JJIgaOrT6Rtm4Iaj3kAzRyP1f2o2KvzIHaHdG7P6BeuIaEO3YdnIAP8OVrErSr8qWw4XQ==
X-Received: by 2002:a05:6512:e85:b0:516:ea55:324d with SMTP id bi5-20020a0565120e8500b00516ea55324dmr1833879lfb.31.1712749352436;
        Wed, 10 Apr 2024 04:42:32 -0700 (PDT)
Received: from [172.30.204.89] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s24-20020a197718000000b00516c600cfcasm1853162lfc.106.2024.04.10.04.42.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 04:42:32 -0700 (PDT)
Message-ID: <730d6b9e-d6b4-41fd-bef3-b1fa6e914a35@linaro.org>
Date: Wed, 10 Apr 2024 13:42:33 +0200
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <scvwfj44z3wpp7phvesfwjuv5awtlkwby2vvrpaq4i5fircrt3@i3ebya4iymf3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/6/24 05:23, Dmitry Baryshkov wrote:
> On Fri, Apr 05, 2024 at 10:41:32AM +0200, Konrad Dybcio wrote:
>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
>> abstracted through SMEM, instead of being directly available in a fuse.
>>
>> Add support for SMEM-based speed binning, which includes getting
>> "feature code" and "product code" from said source and parsing them
>> to form something that lets us match OPPs against.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>> -	return nvmem_cell_read_variable_le_u32(dev, "speed_bin", speedbin);
>> +	u32 fcode, pcode;
>> +	int ret;
>> +
>> +	/* Try reading the speedbin via a nvmem cell first */
>> +	ret = nvmem_cell_read_variable_le_u32(dev, "speed_bin", speedbin);
>> +	if (!ret && ret != -EINVAL)
> 
> This is always false.

Right, a better condition would be (!ret || ret != EINVAL)..


> 
>> +		return ret;
>> +
>> +	ret = qcom_smem_get_feature_code(&fcode);
>> +	if (ret) {
>> +		dev_err(dev, "Couldn't get feature code from SMEM!\n");
>> +		return ret;
> 
> This brings in QCOM_SMEM dependency (which is not mentioned in the
> Kconfig). Please keep iMX5 hardware in mind, so the dependency should be
> optional. Respective functions should be stubbed in the header.

OK, I had this in mind early on, but forgot to actually impl it.

> 
>> +	}
>> +
>> +	ret = qcom_smem_get_product_code(&pcode);
>> +	if (ret) {
>> +		dev_err(dev, "Couldn't get product code from SMEM!\n");
>> +		return ret;
>> +	}
>> +
>> +	/* Don't consider fcode for external feature codes */
>> +	if (fcode <= SOCINFO_FC_EXT_RESERVE)
>> +		fcode = SOCINFO_FC_UNKNOWN;
>> +
>> +	*speedbin = FIELD_PREP(ADRENO_SKU_ID_PCODE, pcode) |
>> +		    FIELD_PREP(ADRENO_SKU_ID_FCODE, fcode);
> 
> What about just asking the qcom_smem for the 'gpu_bin' and hiding gory
> details there? It almost feels that handling raw PCODE / FCODE here is
> too low-level and a subject to change depending on the socinfo format.

No, the FCODE & PCODE can be interpreted differently across consumers.

> 
>> +
>> +	return ret;
>>   }
>>   
>>   int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>> @@ -1098,9 +1129,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>>   			devm_pm_opp_set_clkname(dev, "core");
>>   	}
>>   
>> -	if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
>> +	if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
>>   		speedbin = 0xffff;
>> -	adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
> 
> the &= 0xffff should probably go to the adreno_read_speedbin / nvmem
> case. WDYT?

Ok, I can keep it, though realistically if this ever does anything
useful, it likely means the dt is wrong

Konrad

