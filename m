Return-Path: <devicetree+bounces-58203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D660D8A0B91
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 635FB1F239FB
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 08:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F70D140E2F;
	Thu, 11 Apr 2024 08:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CbLyl16F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C28140366
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 08:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712825188; cv=none; b=CpLdDiTTvqcKht7KSYwQc/Tn6cB93dCh5ichCzrhp9GCxHobA5gImAqj/b7R8RY+7XwatbyumfwDyUa4VykoWl6gOQxXPQ7DlDRURPagLTPF7wMHQAPrXMLTRm5izzif39OOCoGCdczhaItnMQq/XLOLGh5XsyRcfCLHkcPNaOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712825188; c=relaxed/simple;
	bh=rfUPztmV1sW7nnymaJ/fWKapZnj8kCKQheQjISGyv/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q9weyX4wlqyeJxT24KKn61jWJbVS05Lldu1M6xvuQUHkfEPW4j88sUJPniHU++QagmXd70UB0JQK1OHsx4djhWQ/81+kgRuDUKgUC5teah87IDPQ1SsQkUYqCto09LEi7b61kQYU2z7+BWOiut9PN9sbYBQdRdLpnaQLvLx4rgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CbLyl16F; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-516d8764656so2028433e87.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 01:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712825184; x=1713429984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7QRDvta7GRv7uUUHZumRDzJ3COIZ4aNZQbAOXOQO3F4=;
        b=CbLyl16F6qBQjxlciRERiS5x4vm/2+SFhNQsLsSPNXNH2/S0inG0zS1HctRrGQtypX
         1AG7CK7TB+HznUuA5nXI8b8f0/Qb1O6Ucs07pDBAhlQsRDagsFbVQSXWgJqDeZrh5lIV
         cThcbHr34H+VGxlXe2EeYFFFsVZkZAxCFiR0wKDSU5AMRXcBxJ4Htq3j09OKNukovwMC
         Ky5Tn1QyIb9+9hLdYS9yz0PkapphOllvBZQo4sveTK07aoBVVT9vcwK1V93omdc/ucgb
         NwfG0RF5wbPfQMzzflPqhD1dgLIx9Lr1zv/QxTwZmvJEV3YPaHlSIuwouCXB6kqvgY9Q
         LYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712825184; x=1713429984;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7QRDvta7GRv7uUUHZumRDzJ3COIZ4aNZQbAOXOQO3F4=;
        b=ZClvAUC7qkmRayP1Rr02/repWv6zj2cmUi6Y2iRp8pfNi37dsIlHL1q0KfiGLeG0Eh
         oDyQAk53N15ZHNfU/amOYFIcngHO97ipRlYbv3LHkCf0f3Pmc41p/j4yixZ/wUNxf13x
         eBLLaWI3+Iz0iqKdzaYuspV3Ep7JAhV9Y94Ymv9JLFm+9VgmrJUDEkwN7lVGnXHk3lW4
         KR3V7+9o018e47mcKPF+1jEUQtWb4z50JXM0Fe7xZV4iAlyGbVkMfC+Qm0aUsAzKh8eq
         IRmc7IvSA2V0Gg9aGpPFbz5Ce5WTChXArPfFoLJJ9b9Tm38BPv+tMc9SuGXOVapra6i7
         tx9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMFIs6fzQyIue4iNmWC9i7iewE3n2kbwvic+/MoA4i1mGjhGrm6pLDi0v597E7f3hkjUjEKcSnsxRjBKRV6CmTiZh6GocriKGG0w==
X-Gm-Message-State: AOJu0Ywxo7m0iUow7ONBdIOz4GWtnbbkxoMtlfXVFihENI193EUTa2oM
	7PRJMBYozHavhaSKs6vODBIjwNzHkM7KMD6bvD1VyaYtLZl2KzzUmp9Ao87KB/cGYbgqtINJL+3
	6ArE=
X-Google-Smtp-Source: AGHT+IEqgb+bjAo4SCiLZ8f6Nr1VvZuHMt9mR4wWtdIbf0TkTkLGEXD5YOk7o1opx6dbKIl2tOQ2Pw==
X-Received: by 2002:a05:6512:3c96:b0:517:8a22:e32e with SMTP id h22-20020a0565123c9600b005178a22e32emr1359068lfv.1.1712825184117;
        Thu, 11 Apr 2024 01:46:24 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id h6-20020a19ca46000000b00515ce9f4a2bsm151934lfj.35.2024.04.11.01.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 01:46:23 -0700 (PDT)
Message-ID: <0fab9fb5-7d20-483b-9d40-c015bb8e2577@linaro.org>
Date: Thu, 11 Apr 2024 11:46:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add description of CCI
 controllers
Content-Language: en-US
To: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
 <72816a9f-3c25-44d3-8386-9b561a8ae996@linaro.org>
 <b5f81ed2-d2d9-4c48-8feb-d78bfd714a40@linaro.org>
 <4162174b-df35-4282-859e-84b0579ff91b@linaro.org>
 <f5611116-df8e-4118-8aad-16561f65c79f@linaro.org>
 <93bf3b2e-bf42-42d2-b10a-5586ee9efc6b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <93bf3b2e-bf42-42d2-b10a-5586ee9efc6b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/10/24 18:26, neil.armstrong@linaro.org wrote:
> On 10/04/2024 17:19, Vladimir Zapolskiy wrote:
>> Hi Neil,
>>
>> On 4/10/24 16:50, neil.armstrong@linaro.org wrote:
>>> On 10/04/2024 15:11, Vladimir Zapolskiy wrote:
>>>> On 4/10/24 10:52, Neil Armstrong wrote:
>>>>> Hi,
>>>>>
>>>>> On 10/04/2024 09:49, Vladimir Zapolskiy wrote:
>>>>>> Qualcomm SM8650 SoC has three CCI controllers with two I2C busses
>>>>>> connected to each of them.
>>>>>>
>>>>>> The CCI controllers on SM8650 are compatible with the ones found on
>>>>>> many other older generations of Qualcomm SoCs.
>>>>>>
>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>> ---
>>>>>> The change is based and depends on a patch series from Jagadeesh Kona:
>>>>>>
>>>>>>       https://lore.kernel.org/linux-arm-msm/20240321092529.13362-1-quic_jkona@quicinc.com/
>>>>>>
>>>>>> It might be an option to add this change right to the series,
>>>>>> since it anyway requires a respin.
>>>>>>
>>>>>> A new compatible value "qcom,sm8650-cci" is NOT added to
>>>>>> Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml , because
>>>>>> the controller IP description and selection is covered by a generic
>>>>>> compatible value "qcom,msm8996-cci".
>>>>>
>>>>> You'll still need to add qcom,sm8650-cci to the "CCI v2" list in qcom,i2c-cci.yaml,
>>>>> otherwise the DTBS check fail, even if the fallback is already present.
>>>>
>>>> I do recognize the problem related to a build time warning, my motivation was
>>>> to follow the rationale described in commit 3e383dce513f
>>>> ("Revert "dt-bindings: i2c: qcom-cci: Document sc8280xp compatible"").
>>>>
>>>> For a similar sc8280xp-cci case it was asked by Konrad to drop a new
>>>> compatible, I kindly ask the reviewers and maintainers to stick to one
>>>> of the two contradicting asks.
>>>
>>> This is totally different, this commit added a new compatible that is used in the driver,
>>> while here, you use a per-soc compatible that is (for now), only used in DT and uses
>>
>> I'm confused, please elaborate what do you mean above by "this commit" and "here".
>> Could you please be more specific to avoid any possible disambiguation?
> 
> "this" refer to "dt-bindings: i2c: qcom-cci: Document sc8280xp compatible".
> 
>> If you refer to the driver drivers/i2c/busses/i2c-qcom-cci.c, then there is no
>> difference between sc8280xp-cci and sm8650-cci. What is the total difference,
>> which you found?
> 
> If there's no difference between sc8280xp-cci and sm8650-cci, then the policy says
> you need to _not_ add a new compatible in the driver, which is what you did here.
> 
>>
>>> the generic "qcom,msm8996-cci" as a fallback because it is considered as beeing 99%
>>> compatible and no software change is needed.
>>>
>>
>> I have no objections to revert a "Revert "dt-bindings: i2c: qcom-cci: Document sc8280xp compatible""
>> commit and to update the change for sm8650-cci accordingly, but as I've
>> already said it would be good to have and follow one common approach for both
>> cases, since I based my change on the maintainer's decision from the past.
> 
> The "new" policy is to use a fallback of an already defined compatible if no driver change
> is needed, this is the case for the last year so far.
> And updating the yaml bindings for the new per-soc compatible is also a year-old
> policy, upstreaming of SM8550, SM8650 and X1E80100 have been done following this policy

I'm sorry, I'm still failing to understand it, it's trivial to check that there is no
"sc8280xp-cci" in Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml description.

Despite my multiple asks I did not get an answer from anybody, if commit 3e383dce513f
("Revert "dt-bindings: i2c: qcom-cci: Document sc8280xp compatible"") is wrong and
shall be reverted or not.

Since my point of discussion is all about the commit 3e383dce513f, because sm8650-cci
change is based on it, I hope that my original understanding that commit 3e383dce513f
shall be reverted, I'll send the change shorty.

> in order to :
> 1) reduce useless driver changes
> 2) have a fully verifiable DT against bindings, so we can ensure the DT is 100% valid against the bindings
> 

-- 
Best wishes,
Vladimir

