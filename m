Return-Path: <devicetree+bounces-58240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B874A8A0F88
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:24:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7452C286A17
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF322146A71;
	Thu, 11 Apr 2024 10:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="Rs8UpAMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39041140E3D
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712831081; cv=none; b=rcrrv1SXXOxIUrO2c9MURqjTLlVkA+OmF3k0VRDIiK/+YfrhHn+36XoRNvAreTde3xd2eOCkpTMYESfl28UX7351zzsUaQxorc0ZidMMeuhYNVPmUM3x8B5PUhVEA2E+lBv5ElSEod64oSf7qghccciHur2DAtE0Q5pVs995N0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712831081; c=relaxed/simple;
	bh=iqiwMFZey1zu7BOnPb7YXg1m7ga53hLoWg/okQovF+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gJY9kciKzROH8eW56GJQLoXLI/tIOmyY5V0EAgKjZUTxarypddQJy8rd4qCV+CWDkhmgNDWVZg76O1yS6TEqjuPuP0Z9WL7eK/1qBffieUaWTQGlxyIxIbT81k41WmdXyNNlxcjyedJGqom8+IEUkHJ5kfXMs/XEPd2iCSroFlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=Rs8UpAMn; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3462178fbf9so1429947f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 03:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1712831076; x=1713435876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yuPoEiGswJ/4R9lwCRkvQgoPgByz+6ioVAmEgmY8KaY=;
        b=Rs8UpAMnB/mzIB3CzW4sI3Yt7Pkx+N4EF7FlmOBbfIiDNx7tmCg3K05TCbqBMOEAS3
         xeSZRvO0qkMrezOFizHt4Yq/39jpr8C/ZtzDkVAXGmxr7BTjxYbzXJO9bNE1e/pbSfvm
         K9tVufrN3YSd3W1gSfchhyJ47S+VMOBoszj4Nj8WZnpmdchrdxtX2SvjDFu5hY6MbdbB
         PKGPM7iUrwZsSokLXQtwOYf5P/cc5U4CD8l7pv9HiY/Lrp5LTuyHuqPbUi5wkGmXQkhp
         9tbCVZzPfJmo+oR2+qefcJ+hsweLoAMGhm/G2UtcXi2BQEHJ4f6HIoQ8Sxtuxvlnj/4j
         AQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712831076; x=1713435876;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yuPoEiGswJ/4R9lwCRkvQgoPgByz+6ioVAmEgmY8KaY=;
        b=vo2CYgpbqziUMpmJg8MUlKiFWC5A2N9pDPfMg7z9l2u1GdZiM7WSVHQ/HrBBLKJ/AN
         sod+tl7lENEsw8PDCXCN87YwZ0k1UJboMOFQeHb4ZkRyKjN8rvNWl9TfbdOmyjgQwIkl
         GYs1gCPmcQwrn0eR+rErTPgCSM6I5bzqD7B3HZAsNaEqQpUh9q3bFu1j6ERfzyrgFKzR
         VG0NrqUX7D2jZh66VMjl/f7ngau1drTT2vPKGqaX20rQzjWRnigJSxt0LRtNnbfwbCV0
         ImQlr7xPqTY7Yj0pepsRQCn5WyMvaLfmO91ghyIVLA7Ivb2nuJLLpmHVniX5yYumnBvk
         sW0A==
X-Forwarded-Encrypted: i=1; AJvYcCWLRUGjTsk8mF9ineEuZ2TmDMjIrt1TpGYwhfd8JlZdqlEwOimzqXHwE23HMKSu7ej4AztEbcXzjTorqlkq7Gi6fj4xRTGcv9unYQ==
X-Gm-Message-State: AOJu0YzITdmTicROMCMNlKr6pjQ0RsLZnsL/MMRlX0qvfftV2eJmMkfi
	/Ps8wF3o+QOJWr/dDYrVpDFqccpwSFYKxk0oPduj5VZrnu/TMOWpZHf5Swyp/Sw=
X-Google-Smtp-Source: AGHT+IGj+clKB0Y5d/2T6iCtU70DRQcW128YIXK0aBYRaPu77qzq1n+xbdvYDwVDfj6vk/fNWdFwAw==
X-Received: by 2002:a5d:64a5:0:b0:341:be17:2554 with SMTP id m5-20020a5d64a5000000b00341be172554mr5600560wrp.36.1712831076336;
        Thu, 11 Apr 2024 03:24:36 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id s1-20020a5d4241000000b00343ac425497sm1430587wrr.46.2024.04.11.03.24.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 03:24:35 -0700 (PDT)
Message-ID: <d6a92b15-f68e-4e01-aad1-6483d53b9ad9@nexus-software.ie>
Date: Thu, 11 Apr 2024 11:24:34 +0100
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
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <7ef1c0e0-bd28-43f1-a46e-4fa551714e82@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2024 11:18, Krzysztof Kozlowski wrote:
> On 11/04/2024 12:16, Krzysztof Kozlowski wrote:
>> On 11/04/2024 12:12, Bryan O'Donoghue wrote:
>>> On 11/04/2024 10:36, Krzysztof Kozlowski wrote:
>>>> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>>>>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>>>>
>>>>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document sc8280xp compatible")
>>>>> was correct apparently, it is required to describe the sc8280xp-cci
>>>>> controller properly, as well it eliminates dtbs_check warnings.
>>>>>
>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>
>>>> I am lost. Not on your patch, because it looks reasonable, but on entire
>>>> history.
>>>>
>>>> Can anyone explain me why original commit was reverted?
>>>>
>>>> https://lore.kernel.org/all/767bc246-a0a0-4dad-badc-81ed50573832@linaro.org/
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195094
>>>
>>> We can you sm8250-cci instead, so dropped the additional compat.
>>
>> I am sorry, but that links point to cover letter and actually the same
>> thread as I linked. What does it prove?
>>
> 
> And just to remind because you bring some discussions from driver: we
> talk here *only* about bindings patch. Not driver.

https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195327

Konrad pointed out we don't need a new compat because the sm8250 compat 
string could be reused.

So, I don't believe this revert should be reverted and I do believe Vlad 
needs his own compat string because his clock list isn't supported.

---
bod

