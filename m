Return-Path: <devicetree+bounces-227647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8457BE32CD
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1F575870F1
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF3B31CA47;
	Thu, 16 Oct 2025 11:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A/M7Hfdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6C93164C5
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 11:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760615415; cv=none; b=Fijn+as7k8hmSe+MqTVuI0w+gldEqWTRyfHf2eVK/2sM7rtTfuOXtHiSmds4dKYJYOweXeIvnDHudy8I7lyBdoZObxO/o4Trb0JpUHoBXm4GvQhwrl0sHAHr8BVKlLsMuETrNgivfvkbougiZmB4+VOZHjVXddJgoeJDzAtfOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760615415; c=relaxed/simple;
	bh=N2WgTs/5T5fCBqZ4ODa1es3MMlQZNO1srOLrkvYjBhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5rEvYFgKRKo8EalPCrMf8Q7SAkiTRQlAgooLwbMpjq0uqujaG73AfnqVguM9AHTD4n4lVYTFsBYfyFErEZPspUpK6lkdfGAouhQ5wiQgAiTDYHbUhfCJAWwx46oQFS6wU3wrZqRT+b72499qgwuBgALvjXNjDuf5LbmRdXHE1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A/M7Hfdp; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b50206773adso348256066b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 04:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760615411; x=1761220211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eEbqZZLSc+qwF2fltsWM8Kb5Qy0LiCcBgh/Rt+CAz50=;
        b=A/M7HfdpMMCcgHIQsnEoPSfDOLdfL2GtalxzoU4elXCRSNPtciJDaOchf3uzyYuXcJ
         9Q4RSi1JFIorxdpZeYjTRVsdT0tcX05KZw+qyCLCv+nilTnDS/hT3FRP82qBY3mBDRKh
         Td8JdQ1ZybSR/jLzCJ8SL2SI2rDEIb8sfmEXQ4IdtTBVH9uGJZ8douDR68l1XUiNX3aV
         KZmfuDi+SieOsm4rcmakS9CXSF9sCjmkVvKPAkUTMmnqHZRKDC/U34MQbZqI96kAVwLI
         Xai91kaKVbgD0qcn97ay/54xnuYEaNUrAagD5uCt67eOQBADkZjAlZoy50gWhq5IteWl
         2JYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760615411; x=1761220211;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eEbqZZLSc+qwF2fltsWM8Kb5Qy0LiCcBgh/Rt+CAz50=;
        b=dvmI+mXbtXRumv+6HDvaUd3G+z+/U0Qxwlta04xSBmeZaiVAX41FKo2MkqtZzoZ64V
         koWc+5gJKMcgtNXuUSgifSXAdGd73PTKv7gR33jw/AcVuU48j3fLQKHjKnQ/HEayaySd
         GPEJ+O1TqkGZF97dGYRHSzlfUhqoyhkkg6iyNWxn4pWPono1SQh26cKL3JDjGurT1LoW
         vw0xNaGctptaUtDI/Dg1BmQFuD8hjomBB2mWkahmSUDKc4J5iPYZvJuIcC0V5OQ3Mej0
         6SukypHsNo1ounR2rOnsTp5QGnmF4EyWcb/2Ln/xV6MAT4vkZypVWW9Ibhk5SqnLisj6
         cyVw==
X-Forwarded-Encrypted: i=1; AJvYcCVyLujAICzDuzMFzsO/McEzaGj2fgYkcJtxgOvlm+o8TKIYZ8yiwGRmt7V+CReo6F2p7GwlRUvHCJdA@vger.kernel.org
X-Gm-Message-State: AOJu0YxGQh2kkbFzJ3588S9apbWJdHnZFPye4nPWOoFfwSsKAXOPEz8D
	801B0DXXTmiRbKu+vieNT2fypSd2CL7ES+FPxI20AFQhkZYELJRVMvih/fds4PUtdAk=
X-Gm-Gg: ASbGncvBsMCPQFG6VIl6PFkWKR9Y6RWycECpKJO8K3RV3wBxcXZEPGaoVqvfF0yhIQU
	rOwKtaAIHv4yK8uCTDjHF3Jd6hsopvl3vesvs+WVtR1lUBHDZBETGxjN/Pba5u5Q5b++NPIpjzI
	rQSjoKpoZWXMrfMg0fpUHmfC/vthaN/hPWCtZ03BcM699N+OIzwdag0t4bPfbqm7TJVaFXvoFfc
	eW/NJCARG3pHO96noMhboGpfDkEYnj1hlpjdd6wR0Lb8yWVBXbZleOJhgCC2IPfMmpY43mABn0Y
	1i1htF5kX+2e6ap/s5+u+6P3MZg5fQ3gJXVqCpnBZYdxqt2+VYJUSKYvNaf4eUiguIRg3ya5AYE
	JmcL+DoFEu26pJT4CGm02vhOIt+YKRtjs064U0dz1MSOSRo4Fmh235OXcoS7ZipQxZrNTC277HE
	M1jczK4TRJ7Vtd4/RaiQyXYYM9Yw9SH7NNYrt06pqd35EK+A==
X-Google-Smtp-Source: AGHT+IEW+wnaN71oLRojt+JZzgYMxYoG0XidbWJwYAOsWETEDggOgPEoiox0/+MITAms2gR7IjA89A==
X-Received: by 2002:a17:907:96a7:b0:b2f:4970:8720 with SMTP id a640c23a62f3a-b6052a71b33mr472940466b.8.1760615411486;
        Thu, 16 Oct 2025 04:50:11 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb965c35csm489533266b.8.2025.10.16.04.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 04:50:11 -0700 (PDT)
Message-ID: <c4fd6bfc-cc9a-4f37-99b3-f36466691a1e@linaro.org>
Date: Thu, 16 Oct 2025 12:50:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: qcom: camss: Enable setting the rate to
 camnoc_rt_axi clock
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
 <9984bc23-05ef-4d46-aeb8-feb0a18e5762@kernel.org>
 <bc0caeb8-c99b-4bef-a69e-5ce433e6b890@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <bc0caeb8-c99b-4bef-a69e-5ce433e6b890@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/10/2025 12:30, Konrad Dybcio wrote:
> On 10/16/25 7:54 AM, Krzysztof Kozlowski wrote:
>> On 15/10/2025 04:43, Hangxiang Ma wrote:
>>> On hardware architectures where a single CAMNOC module is split into
>>> two, one for each of the real time (RT) and non real time (NRT) modules
>>> within camera sub system, processing VFE output over the AXI bus
>>> requires enabling and setting the appropriate clock rate for the RT
>>> CAMNOC. This change lays the groundwork for supporting such
>>> configurations.
>>>
>>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>>> ---
>>> This change lays the groundwork for supporting configurations for
>>> hardware architectures that split a single CAMNOC module into real time
>>> (RT) and non real time (NRT).
>>> ---
>>>   drivers/media/platform/qcom/camss/camss-vfe.c | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
>>> index ee08dbbddf88..09b29ba383f1 100644
>>> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
>>> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
>>> @@ -914,7 +914,8 @@ static int vfe_match_clock_names(struct vfe_device *vfe,
>>>   	return (!strcmp(clock->name, vfe_name) ||
>>>   		!strcmp(clock->name, vfe_lite_name) ||
>>>   		!strcmp(clock->name, "vfe_lite") ||
>>> -		!strcmp(clock->name, "camnoc_axi"));
>>> +		!strcmp(clock->name, "camnoc_axi") ||
>>> +		!strcmp(clock->name, "camnoc_rt_axi"));
>>
>> Just use camnoc_axi for both. Look at your bindings - why do you keep
>> different names for same signal?
> 
> I think the correct question to ask is:
> 
> Is camnoc_axi going to represent the other (NRT) clock in this
> setting?
> 
> Konrad

I'm - perhaps naively - assuming this clock really is required ... and 
that both will be needed concurrently.

---
bod

