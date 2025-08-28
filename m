Return-Path: <devicetree+bounces-210021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD49B39E84
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:18:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB2887A713E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B68311951;
	Thu, 28 Aug 2025 13:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K4KMzgX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C819031062E
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387101; cv=none; b=cUzldWUFOQIIw3TrJfO4gpWVPqtgqAFDwsr2MnvRWkkCZeG955GLr8WcBdMohlMOScnq4brp67Pb80ldVvSZ/v9LJ3uA+erN2FU8sBhRw3jD04G9N7XADw2VUq00UenaymU7tYvfWOBrkyv6/YkMCscMknUruQW97hohaLIwKXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387101; c=relaxed/simple;
	bh=u/bP4tvPoy/0KUYiAoVQNrKJ8OYvub5fbY8ufALoEuY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PXgKkToqoT9ke2tqNCrgWnugnZXII7hzV0G6ufWyp0dKXYEeQG/lhuNc5ds4gUvC0VKGFyajhmPRssm9FarJvSdAIib38quf4yKaXHxRBqOmAvL8Gm2GZh2qwBcnt0mt7Hf5+czqiT16frWyOY/IGnQjN2ilF8MJFZm959LmFGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K4KMzgX1; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afe8cefd7d1so9456066b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756387098; x=1756991898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ND6UgQ0zYG7BjHOnoMGFlrHy9Xk924w+fHThkmCoXvU=;
        b=K4KMzgX1SjhoIhmAxyXr51nsa3qflLbClnpYyWTogZUXuHIImtauiRmT0x5BJNOzov
         hsIbL137PVE7quzLTc2omUS92wEzM0Syz4WPbYMN5yD/fNLAhKO9i1uNeIa7XC/yXKHi
         4Ba73AMdVhol4nh7ofbUiLvsKYR+X0zZIPUBEmjYTnaXTJ4zyTf2FVqVPu27hsAmgcRr
         IL94sXdFh/qK4F/uPz+1IunqiN7unAvU7WEtK/lszi80ONWYa4mguZSxMpwGUCvveFYp
         Vf/BSzcgOkU2BArpx9GWUGcfPQ3ol/qaRECGtkKy4mrTVNo2xaXu3zsK1NW4874QdXGG
         Oy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387098; x=1756991898;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ND6UgQ0zYG7BjHOnoMGFlrHy9Xk924w+fHThkmCoXvU=;
        b=pp9kCeqqAMCvKftnj8aaetrn67AQ0NZvykQf4tHjSrrJYAJOLoIYWDBNN+fw94VkfE
         br2gnfbmWF7+UXqtweTzR3WNupWkt4Jb26BMdNTpMmrdI/7yZ6WCkRXJq554fmVBmnxI
         nRnXtQ6uGUWQiwsu+1LqLSjt1R4y5dfV59pHGYAHcTzCuZfgZwonlPaENsbwj3Ss8GjA
         w/HSRJZapAzjJOB+H26ysHuEiACSEknGAbhoAXueposwo0mOP5xDfivgq5/YaoZIVt9C
         sWblxOrZSseO64ZG9MUPI3klKmkUFDU/+mPQONqYcgmjz2doKgRu/lRBC3s+NsrvGdHP
         lHIA==
X-Forwarded-Encrypted: i=1; AJvYcCWJl3Q/txKv+T4CXAFgUPo2crO+2Jx5HKVlGcPDCoRdHa6NiSFyhW/zNy9MKT7xzenb+JROnTgigKj3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywitp8AhYCVCOUySrcnMW49kaMExc/XUgY9m78ljQ62XQHMQ9xQ
	a/lF+y9GubXASS3xoaPTPfX+AoCxP1E+w7wkEB4vws/FmgXwwluiU3t4WhHXnT2yrpI=
X-Gm-Gg: ASbGncu0ckGzxdd1Fg9UIF6Mr7fm/t2/H70T14SE+norllFU8XCshnDcRvkjUqtwZPr
	x59LBiM6K8fuleqYyfzTSAPsa+A4mFD8vQHFg/Rz5fJ7sd221fM0ICVtIpp36RkWjZXvOoD3jh6
	tSGIwpAk8gtDCUIv7v4eqrK00Cx/8JKji4sYDWTV/XymiCsoUQE5bG1xRWIRHNSh6XNZlb4jISb
	jRDVvIJFOkCzkqvPCftrXAvjx3UIA2Oe+ZXTyT6hT5tK0owkCfqX68e/8+w92LTWcmGNSVnEl0j
	kMVG+t69+mlYOWYH0Sr+LooesFpx0SYWjgnARsrwkm54l/IFchpOpWmn+ksnBWUkR4b21coldiT
	VBO5ioXCslwFoBd5C1W2G8TJk3QPzx1EtUkznZbIWG/9DoVFuiGncWQ==
X-Google-Smtp-Source: AGHT+IF5E2M6Ee19M9gGMPoxFz4LLAUKeU9C63N84862Qi0sinffPxyW0u4cRjCCBiOXEiDCKHWZKg==
X-Received: by 2002:a17:907:3dac:b0:afe:db34:d76f with SMTP id a640c23a62f3a-afedb34dc5bmr145802766b.8.1756387098008;
        Thu, 28 Aug 2025 06:18:18 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe9b5f56c3sm648036666b.24.2025.08.28.06.18.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 06:18:17 -0700 (PDT)
Message-ID: <5b34ebed-b993-4f0d-bb30-0dfab1cff95d@linaro.org>
Date: Thu, 28 Aug 2025 15:18:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] media: iris: Add support for SM8750 (VPU v3.5)
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250804-sm8750-iris-v2-0-6d78407f8078@linaro.org>
 <20250804-sm8750-iris-v2-3-6d78407f8078@linaro.org>
 <83205cad-14f5-65a1-1818-677335a1ab91@quicinc.com>
 <db11085e-bca3-4d54-b435-c8f8d8672acd@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <db11085e-bca3-4d54-b435-c8f8d8672acd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/08/2025 10:16, Krzysztof Kozlowski wrote:
>>> +	ret = readl_poll_timeout(core->reg_base + WRAPPER_IRIS_CPU_NOC_LPI_STATUS,
>>> +				 val, val & BIT(0), 200, 2000);
>>> +	if (ret)
>>> +		goto disable_power;
>>> +
>>> +	writel(0x0, core->reg_base + WRAPPER_IRIS_CPU_NOC_LPI_CONTROL);
>>> +
>>> +	writel(REQ_POWER_DOWN_PREP, core->reg_base + AON_WRAPPER_MVP_VIDEO_CTL_NOC_LPI_CONTROL);
>>
>>
>> Read initial status of AON_WRAPPER_MVP_VIDEO_CTL_NOC_LPI_STATUS
>>
>> based on value, run the retry loop.
>> This loop runs till the desired LPI state is reached i.e. BIT(0) is set,
>> and hardware is idle i.e. BIT(1) or BIT(2) are unset. This suggests a
>> situation where the hardware might be stuck or slow to transition.
>>
>> This sequence was not needed for SM8650 since it doesn't have
>> AON_WRAPPER_MVP_VIDEO_CTL_NOC_LPI_CONTROL/STATUS registers.
>> But required for SM8750, so please add.
> 
> 
> Sure

I am implementing the changes you asked and this one I will skip,
because the loop is already there:

> 
>>
>>
>>> +	ret = readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_VIDEO_CTL_NOC_LPI_STATUS,
>>> +				 val, val & (BIT(0) | BIT(1) | BIT(2)), 15, 1000);



Best regards,
Krzysztof

