Return-Path: <devicetree+bounces-22441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADB58076A9
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 065D21F210DA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C42697B8;
	Wed,  6 Dec 2023 17:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lTuXn0Zt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD23122
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 09:33:57 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40b2ddab817so312165e9.3
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701884036; x=1702488836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r5kmQ0svcDs85kacFzSY2HfHtu574WUvMMh1hv/48Ms=;
        b=lTuXn0Zto6grWCezCpyKUpFyiDTDHPCSAw/Ywo5BQ1gvusv12oNtNCiafN8mFNAuiI
         Nwqoo2M10BFUvsNkJaIKeZJMf3EKX2pcUGekLkchkuSIGXBPLfFk7S0xKKrVAjFZQtYP
         S8qj3dTwYGyTmQx60+/Z7MQHXlXbUUyQHnj+b6HHIQQGVEEZMS7Ss2w7Le64/7nziuhY
         79eu+Hd1O7wLkJ9JzIX2TSXZgmAgDECXMmAMCPrebkKbOOMtQqvdRIp/oVGylj3K0gf2
         1DHkeMRpt8KPsPulyQIwDkhUa9CpE5STSohGLQ2W/Bp3eZt091n2tkkNt2mQ4elBn8B5
         dPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701884036; x=1702488836;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r5kmQ0svcDs85kacFzSY2HfHtu574WUvMMh1hv/48Ms=;
        b=JymMgWqBDRIezytzd0SiAHmnFcp7hzpIoPjBKuX+qwgqMXffxG0bBa4LUgXf8oxaJZ
         irOpCXZ9ymaAMQIYjd8GIlhQVZ+cM1njDXVyQ6LMYY0OI2nPxoVJxdVJBJwb/P4ykMXS
         2gmvkwhYczVMBe1dhzP5K5INP4qEqh4dfP7VtwYHBDAxrlEuynQfhcHarY9OHDVWBgzh
         cZIiBJiXQ9gcF4No1XUkN3ZupvhsRgPCGqRx8H3Jaqnxol2DLGvNrmyiidhdj8VaVj2a
         IRYri/zrE5fMvVAe0sEg662dcQU1wVW//TFUOT/l8aUa5iiLRHPcXWe7kxuXWSCKyHMf
         60Jw==
X-Gm-Message-State: AOJu0YxqyVg08RnB0y4gL9eqQWrY2otwSDn8Xwo+HR6UgKqBPvig8wfW
	MntEU5D1IPj8mAImwNJFIViXkQ==
X-Google-Smtp-Source: AGHT+IF50AUMyrHT4YEt9gLoJnSQfVIDxMn6Vizx7xXcjY8ScWOXMtpZl141mKyejfQgE7WENoKDYg==
X-Received: by 2002:a7b:c8c4:0:b0:40c:1834:507e with SMTP id f4-20020a7bc8c4000000b0040c1834507emr860539wml.102.1701884035582;
        Wed, 06 Dec 2023 09:33:55 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c444900b0040b3632e993sm313928wmn.46.2023.12.06.09.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 09:33:55 -0800 (PST)
Message-ID: <7d30acd6-1f00-47d1-b7ed-05e7bdab119c@linaro.org>
Date: Wed, 6 Dec 2023 18:33:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] memory: brcmstb_dpfe: introduce version-specific
 compatible strings
Content-Language: en-US
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 Markus Mayer <mmayer@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-3-mmayer@broadcom.com>
 <7844ca22-df53-458d-9e3b-7b0758a80455@linaro.org>
 <cb1d5118-b4f6-46b3-814b-2edf16372d01@broadcom.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <cb1d5118-b4f6-46b3-814b-2edf16372d01@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/12/2023 17:19, Florian Fainelli wrote:
> 
> 
> On 12/6/2023 3:09 AM, Krzysztof Kozlowski wrote:
>> On 05/12/2023 19:47, Markus Mayer wrote:
>>> Introduce compatible strings brcm,dpfe-cpu-v1 through brcm,dpfe-cpu-v3
>>> to the Broadcom DPFE driver.
>>
>> No, why?
>>
>>>
>>> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
>>> ---
>>>   drivers/memory/brcmstb_dpfe.c | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
>>> index a7ab3d377206..66876b409e59 100644
>>> --- a/drivers/memory/brcmstb_dpfe.c
>>> +++ b/drivers/memory/brcmstb_dpfe.c
>>> @@ -924,6 +924,12 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
>>>   	{ .compatible = "brcm,bcm7271-dpfe-cpu", .data = &dpfe_api_old_v2 },
>>>   	{ .compatible = "brcm,bcm7278-dpfe-cpu", .data = &dpfe_api_old_v2 },
>>>   	{ .compatible = "brcm,bcm7211-dpfe-cpu", .data = &dpfe_api_new_v2 },
>>> +
>>> +	/* Match specific DCPU versions */
>>> +	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
>>> +	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
>>> +	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
>>
>> Pointless change.
> 
> Is it possible to ask you as a maintainer to stop having those knee jerk 
> reactions and try to understand things a bit better, or simply request a 
> better explanation from the submitter?

I asked: "Why?". None of the commits explain the rationale behind the
change. None of them say why such change is needed. They all repeat what
the patch is doing, which is pretty easy to see from the diff. The
commit must answer the trickiest question: why are we doing this?

Best regards,
Krzysztof


