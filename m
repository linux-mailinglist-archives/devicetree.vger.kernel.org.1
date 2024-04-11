Return-Path: <devicetree+bounces-58283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 273DE8A13BF
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 13:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 405071F21233
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 11:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E4B14AD31;
	Thu, 11 Apr 2024 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z7a9IfoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8183814A4F9
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 11:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712836653; cv=none; b=Ayx90FzWEpDh31PbRiRlTOU5SWMPvQHIrKgPMKej7A+/dQjK6RhPiMVGIDku7uE7CbLz3FmbYd446kvVmtzhin5Pc02Hf4D1WysyVLy6288/sP+eDsBiIayl5n2aBCShbEuU4PJza6S+i3ucGUhLCb+EBOxCqOaWg6RoMYBOCYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712836653; c=relaxed/simple;
	bh=fwkmLCtVn7PLl+eMByhM/OBEgyxbveTIqOd5rgmSDsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eonjgOBLXZT8cbOP/m1MlTII+bdV6h0OqVN3T6DSyZTT5VhDd59AFK03geVs+14gPizlp52STUyxP4dL41ilLSdo1xPA9n6BKI/qc8hvsf2kBjHLDzrmYF4pAfeiGXi1c8IdLgW8ARcy8tFrFHq7Tjrkq0R3QfqZ8p9fZyU3FlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z7a9IfoV; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-416f04059beso11651215e9.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 04:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712836650; x=1713441450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9N7HN6d5VnTn6t6KF2vpbqswMBx+5OtsK/gYfdmD36Q=;
        b=Z7a9IfoVIUOdADybDTFS84d+j98nClvX/WRA0oVp67uuCTjqN8t364Eoyzq4m2dXnI
         zp0LPfAaIFvHbkgi/bSbuhsGGyupBLMC74Bwq1GPW1j8WpUsDtZ40SK4yAsK2zGxkPuk
         VyNHopeFLN0MDv2p+8+h2C1jftNf5npuReCs9O/T0R03MOF2mkJtfX5Qz1hDEoaSPGrq
         1sK/vfp1vutw7R7Tj+7JEqHSRbUfY4VQJha2FOLYNxFrA4DVImysUpDOgYrjcSgledpP
         7BM6bJfRB2s6NOqILPCcKO5iYKr0G6rAx+m7dGIVZj//P1owvCywaLbd9cn4lHdCFdAU
         mH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712836650; x=1713441450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9N7HN6d5VnTn6t6KF2vpbqswMBx+5OtsK/gYfdmD36Q=;
        b=upJ4ed4FB7N5qUqXxPbWIP1f+QaCvbCVuO5hcOUVWPhV5toGZx70JwxBOg3iiu+SvN
         DNt3sHGT3yHGU4DPSUJCwLKVMu/uBu88jyNLbgGi13HMNK3iFmGyR39yhG91scDXxSQf
         HpMbUXQArTbiW+xVP4L+apOAyRNasADv7/bWQPwOqlsY1GxfBHA2NGRkTpIG9bIk81GW
         FOuGvKy+oC9FR6zFMcKOhfcE1OPZlt9y70iPsZ6X912vosUJ54ERcADAoi54PqOMjMH6
         7p0Y0nilF0UEqQt6VdYtVo+mYAMRIWjrVpRvHc9G/UQ7BzUHHKx871xXXVEHkUQKcfj0
         FRUA==
X-Forwarded-Encrypted: i=1; AJvYcCV+u7MFrI/2rGf7xatcSDFokQswpb9Y51HDVM2MGefcsZPYSifmCgl/OF1ekD9/KpOarg6BajQeXmPeJPf7gMO52Cmgj5Ff+kq6HQ==
X-Gm-Message-State: AOJu0YwYdpTuGyPbxeghY6d7rbJQ2855nmtijwgpLKf69ECRG6GcwQh7
	vmj0l11wbhM4xGDYYCOoRnEKLr7nITPjtKvkzgfa6rRPqo5URONFApD8zTZ+aXI=
X-Google-Smtp-Source: AGHT+IFL1LQYlxct0T+wO0iIuGXMHme0Qr+METCK1sS0GnL3VDinsL2DOi8hjjOdcrKwEyWcUDVqew==
X-Received: by 2002:a05:600c:4446:b0:416:3383:227a with SMTP id v6-20020a05600c444600b004163383227amr3798145wmn.0.1712836649815;
        Thu, 11 Apr 2024 04:57:29 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id j24-20020a05600c1c1800b0041643c9cb0dsm5345044wms.42.2024.04.11.04.57.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 04:57:29 -0700 (PDT)
Message-ID: <acca5b79-6c53-4339-b5eb-5a81b7048139@linaro.org>
Date: Thu, 11 Apr 2024 12:57:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "Revert "dt-bindings: i2c: qcom-cci: Document
 sc8280xp compatible""
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Wolfram Sang <wsa@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240411085218.450237-1-vladimir.zapolskiy@linaro.org>
 <94779d2c-d159-4429-b0b2-6baa83461bbd@linaro.org>
 <1b4f745b-67d3-4044-9b89-de6c2c496af5@linaro.org>
 <b6d9702d-4736-44cf-9a52-b476af4bf94c@linaro.org>
 <7ef1c0e0-bd28-43f1-a46e-4fa551714e82@linaro.org>
 <d6a92b15-f68e-4e01-aad1-6483d53b9ad9@nexus-software.ie>
 <dee67a35-62bc-4ef0-b57a-d163c6679c6b@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <dee67a35-62bc-4ef0-b57a-d163c6679c6b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2024 11:28, Krzysztof Kozlowski wrote:
> On 11/04/2024 12:24, Bryan O'Donoghue wrote:
>> On 11/04/2024 11:18, Krzysztof Kozlowski wrote:
>>> On 11/04/2024 12:16, Krzysztof Kozlowski wrote:
>>>> On 11/04/2024 12:12, Bryan O'Donoghue wrote:
>>>>> On 11/04/2024 10:36, Krzysztof Kozlowski wrote:
>>>>>> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>>>>>>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>>>>>>
>>>>>>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document sc8280xp compatible")
>>>>>>> was correct apparently, it is required to describe the sc8280xp-cci
>>>>>>> controller properly, as well it eliminates dtbs_check warnings.
>>>>>>>
>>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>>
>>>>>> I am lost. Not on your patch, because it looks reasonable, but on entire
>>>>>> history.
>>>>>>
>>>>>> Can anyone explain me why original commit was reverted?
>>>>>>
>>>>>> https://lore.kernel.org/all/767bc246-a0a0-4dad-badc-81ed50573832@linaro.org/
>>>>>>
>>>>>> Best regards,
>>>>>> Krzysztof
>>>>>>
>>>>>
>>>>> https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195094
>>>>>
>>>>> We can you sm8250-cci instead, so dropped the additional compat.
>>>>
>>>> I am sorry, but that links point to cover letter and actually the same
>>>> thread as I linked. What does it prove?
>>>>
>>>
>>> And just to remind because you bring some discussions from driver: we
>>> talk here *only* about bindings patch. Not driver.
>>
>> https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195327
>>
>> Konrad pointed out we don't need a new compat because the sm8250 compat
>> string could be reused.
> 
> Where did he point that? I see only comment about driver, not bindings.
> Please point me to his comment (and again, not patchwork which gives you
> entire discussion and no one knows to which comment you refer, but lore
> link which leads to specific one email where Konrad said it).

Konrad made a comment about the compat string in the driver, I looked at 
the yaml and realised I could reuse the compat string.

Then asked for a reversion of the add.

I still think this is the right thing to do, no ?

---
bod

