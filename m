Return-Path: <devicetree+bounces-50830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266687D494
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 20:46:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C93DD284C8F
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 19:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3794524BC;
	Fri, 15 Mar 2024 19:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ohMYRMt+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAB252F6A
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 19:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710531974; cv=none; b=n3SJHHbJ8qDv7vor8E2QB72WIF5WAcsJ18R4IKA0Xvi3OS4PtpVt8VYVPP/eXwq++7To04RzV3EOp7ETH8kqeIA+31lgxeq3teYWGA2JmA1b2WDfMmow6va/VMU+n/rXWm9hGj4UaS6uHjsosCx1q3Hbk8YYCSOpM/zuzoxAm6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710531974; c=relaxed/simple;
	bh=KkXnkDWOuXBQGBnCrh+wCKwkOiHLEpOvCTW8edq0G40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z47Ekp+bJZyIQjCI4mGepG0Mj9t1ByNpzU0q/cauoTXi6OHa6a3x+N3f7hVltFxDSoOunjfSws8n9RQjsX+4jrPIoav1mWlS5/89pMoUmQjMm/iS8NTzeesEiCJQTDJNq3LoJ4YXca5OdxBXD0oI0AyjOJSN0s52wStOO/xJH9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ohMYRMt+; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d228a132acso34785761fa.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 12:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710531969; x=1711136769; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gTJxBtHkZtURvLdpHxzK0SCDYWfhPlTpXkkRTYnUjoM=;
        b=ohMYRMt+7Z594SlM9oO0bHj0AhS3QC3r2wMxAMasM6N5vehLUaAaVcbNmeTD5ZDjKm
         /I65uwiUBydBx1vDS300qAKHSgnQHFTjUY5gmWfRGPQORvs7Hr4MXpJrHhj0uSnE7dII
         KhOTh6FchiwxhDT2gQFnZ+uFXvmZoU7tnpQ1Q7woGjfVg5dAqIWze7se7h0ZgzYpEJkO
         zOlqtK/tLmoudzEmHDLPeUEhPaxGSHEBxYLmcsM/uYJ5DSQ029DRzHvogzf8KUgbg1N9
         ZmOkr6Hxt2rRTlLcQtwg+jpJ/aGofeQa6XdP6+YEt14req973KhIYPzz7ZfE/hgd2PYg
         q1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710531969; x=1711136769;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gTJxBtHkZtURvLdpHxzK0SCDYWfhPlTpXkkRTYnUjoM=;
        b=r5qBBKf1wNT8Eaj/iQ3KoyQ6FvYr6IQucyqah2+f88HanSvPSwLCitJGy64VRBP308
         WEZysk5cAnGIiKz/l4nQhQn5Cqbr8idFf0UhALqgY4ZzUfsKotmxadRqquY2FH/pDD1b
         0tETii9iimUnIcsD3hGtn01XS3CtHJF8mjOnUNlmNbElodNcNXoGtWEWhaOf6yxcw1ng
         aY2crqDsuYTilel4MXrB7A24HbT9gx+H3cjVHhVtMvzDIM+dH361j4GC8Ba6uy6LcbVJ
         IgUWvGSXbqRVWVClTW4JPS1UbOtxY5TBR1KY0xPrcWX1hez18piShAhR4m5HbC+A/VRM
         74Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVluvYMLA/ZKeiqFh5HBar39iE+qD32g4SNsD4tJgD1F+1JoDRfkJpHcqIbTBT3ydVzQdLkMa4twzxDG9Af1TT8JUodsFYTH5MPYQ==
X-Gm-Message-State: AOJu0Yx3PvC5l4lUiiGZ8R3/pnegC9qIcdeDK1Trke0sUfEEZwICT9mT
	8aQGi3QhALcWray2lUERQLBE3rIjYrM8Tc04MYyi3lbZiQpKka9/BJFbDeJbXHg=
X-Google-Smtp-Source: AGHT+IHqwXdIz9DMexG/ouvIc4SRSvbSDb/ThMadVHcK5BFEYSCFZiOd17DrqsKxuCUWgdYU4g98mQ==
X-Received: by 2002:a2e:88d6:0:b0:2d4:529c:f490 with SMTP id a22-20020a2e88d6000000b002d4529cf490mr4067512ljk.35.1710531969169;
        Fri, 15 Mar 2024 12:46:09 -0700 (PDT)
Received: from [192.168.223.169] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id t3-20020a2e7803000000b002d4922737d5sm76587ljc.119.2024.03.15.12.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 12:46:08 -0700 (PDT)
Message-ID: <6af70342-0a87-46d6-8aaf-c44174017438@linaro.org>
Date: Fri, 15 Mar 2024 20:46:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8450: Add qfprom node
Content-Language: en-US
To: Mukesh Ojha <quic_mojha@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1709727995-19821-1-git-send-email-quic_mojha@quicinc.com>
 <1709727995-19821-2-git-send-email-quic_mojha@quicinc.com>
 <45fcf8fb-9d9b-4e6a-a7c5-9bfb96875e64@linaro.org>
 <69a8c14c-109a-103a-b8dc-d8e303c0f0d5@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <69a8c14c-109a-103a-b8dc-d8e303c0f0d5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14.03.2024 17:43, Mukesh Ojha wrote:
> Sorry for the late reply, was on vacation.
> 
> On 3/6/2024 9:24 PM, Konrad Dybcio wrote:
>>
>>
>> On 3/6/24 13:26, Mukesh Ojha wrote:
>>> Add the qfprom node for sm8450 SoC.
>>>
>>> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> index b86be34a912b..02089a388d03 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> @@ -4575,6 +4575,13 @@
>>>               };
>>>           };
>>> +        qfprom: efuse@221c8000 {
>>> +            compatible = "qcom,sm8450-qfprom", "qcom,qfprom";
>>> +            reg = <0 0x221c8000 0 0x1000>;
>>
>> Is is really only 0x1000-long? Also, is the base you put
>> here the ECC-corrected part (if that still exists)?
> 
> No, its not.
> 
> Entire fuse space is this.
> 0x221C0000-0x221Cbfff
> 
> ECC corrected range is this 0x221C2000-0x221C3fff and High level OS
> does have a access to ECC range however, they are not recommended for
> SW usage.

Are you sure? Bjorn always insisted to use the corrected bit.

The ancient APQ8016 TRM also mentions this:

QFPROM Corrected Region - [...] This region is intended for
functional use of the QFPROM stored data by software.

> 
> Above mentioned SW range(4) in the patch is  one and only accessible range available out of 0-7 SW ranges(0x221C4000-0x221Cbfff with each
> size 0x1000) and does not have ECC fuses.
> 
> All the downstream use cases are getting fulfilled with this.

Right, and I don't quite get why there's an corrected region if
it sits unused.

Konrad

