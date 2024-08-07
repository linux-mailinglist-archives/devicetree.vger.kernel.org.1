Return-Path: <devicetree+bounces-91814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E24C94AAE0
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9A4E1C21968
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFAB81720;
	Wed,  7 Aug 2024 14:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y7VfTSgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479C012BF24
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723042697; cv=none; b=VWo/BXA0Mm9S7cyoG0HCI4oXAgrjeH9+dVq7BwR3YjuUwxAe19yhKvi+1tp21fWnJkXEs0Qt55kye+Ef5+JuzwWjUZ1zkVcSN+Bww4hTYhdDn29q29x6V4BJGYwtiEhoXozAgzvtxi402jTM0iTXqxwYCYs4aOLNgCX4PtEUeX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723042697; c=relaxed/simple;
	bh=2A9olRXkkurPhWoduGEq4sLP8Qa2x8nAbpkI9q6xYLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aC4u86IKs9csqrVGqkgptWaLRL+4qyxv5YZp+tu86yyAKJ9vI4xUvpQ3PmvdVatbLzTB9bouAczlcJHBmCywCT/Af/8EsNkMyiB3xc8Q58fuNF3p5oAOWe6gynB+qrABex/mtaAW8SPSCEHBnGO8/0DXtm7LYRiqwv0zrSzGSSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y7VfTSgQ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52efc60a6e6so2916699e87.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723042693; x=1723647493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ty6wu6NnvFiktV4jQYFBzkKafWYbgDqtBdyrFjL9W0I=;
        b=y7VfTSgQxyNECRCUtqnqeN9TSSvdBMStgcaktBRfzCSWk3ef9p8Y7bubarYRoZenab
         R/gOHHGoUn+sFuOh3iHFCLNRoe6sSDlUUXAyKZw14GPCgwA2Xw4Ay+0s4MTHdYW4+Z4m
         4nDrx0dp20Bq5qSJjym7yrypx0IrH2Nf+tkswOirN3S5bewKzV6nyg6DjSx9Lv0Igw7Z
         200+RF83A2UTwbhkWcN8di1e09LmXbFdLf9cPy7mceK88BabRNnB47j5M8ZCpSpkVAQP
         qiC5BMFPZ6c7lLO9XkJEEEtV57UlIBDFJa0yQLMkMbUiYqM7NT2eg/EVS1GozLJmjWK1
         ULsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723042693; x=1723647493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ty6wu6NnvFiktV4jQYFBzkKafWYbgDqtBdyrFjL9W0I=;
        b=qzf8Siawcoeoi600ZjETHkLxYe50it1wj1KWHZ5QWRAACyc5ebjHuZZ53jO0Zzgwtn
         gzFXnxpf2JfwahRYzrB7e83r6x4xBmaIo9+r49Cw+1OuQW5n4+NxpYk4vvMXekxMCr/Q
         7Uc1wohgT1MCboTHktBrENBnvrU9+1QNw0sytN+x4L5qdXBxmkyNAc83oeBsjuzmffYR
         +ztr9Ly8xpJxHcUAFNoTC6O22hFwv5lmcxr4W6hcXvQIeX80j0MCH9/a5WHUYlwnFEJu
         wclxSMUD/0MT4Oy/arelMWR0N9896HJ8bT5Nx72tqSr3Bx6jl3NTFEnfXNmPK0vX4FDf
         uJjg==
X-Forwarded-Encrypted: i=1; AJvYcCVogAkgvJm9+8350j2YFuBtW1t3CFoYqDteKW/bsoQqm4ZEk7UX9IIOVv5J0RKMlZlNGcXp97ezmK4weG3cTfOFN9LuHwHt9oP6KQ==
X-Gm-Message-State: AOJu0Yzgtt189DU2Ephmh1Fiu1RlUo4lTYD/WbCmio17ZZLwFSOPVSgp
	ivLDS7MW4jO2GZZjRY5ga6JFbNV1FxfHl6hbI1uQ1yu0dpR2o15xo11/KBGCqso=
X-Google-Smtp-Source: AGHT+IGXCHlz9/+c8YzxTWD7YCnzLHWWooLICTpK3cTNMLvpZfCquxkonb/+WZc2obkni9AL+ddSPg==
X-Received: by 2002:a05:6512:ad1:b0:52d:8356:f6b9 with SMTP id 2adb3069b0e04-530bb39d25bmr14044602e87.38.1723042693166;
        Wed, 07 Aug 2024 07:58:13 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429058026b0sm33690255e9.35.2024.08.07.07.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2024 07:58:12 -0700 (PDT)
Message-ID: <c3ed2b0a-3f59-4cd1-98e1-96494d15d172@linaro.org>
Date: Wed, 7 Aug 2024 15:58:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: camss: Add CAMSS block
 definition
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Depeng Shao <quic_depengs@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20240807123333.2056518-1-quic_depengs@quicinc.com>
 <1c0ff0fa-73d3-400f-a58d-15fb9b0574d1@kernel.org>
 <c2a3e578-b098-450f-96f6-a3ae321f2b4c@kernel.org>
 <85cc52aa-4593-49f5-9438-1ee3f09d2d71@quicinc.com>
 <336e5679-f04e-47aa-9655-df88fde9de21@linaro.org>
 <0fb55319-0bae-4bb0-bce6-ebdbdd68f765@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <0fb55319-0bae-4bb0-bce6-ebdbdd68f765@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/08/2024 15:51, Krzysztof Kozlowski wrote:
> On 07/08/2024 16:17, Bryan O'Donoghue wrote:
>> On 07/08/2024 13:53, Depeng Shao wrote:
>>> Hi Krzysztof,
>>>
>>> On 8/7/2024 8:43 PM, Krzysztof Kozlowski wrote:
>>>> On 07/08/2024 14:39, Krzysztof Kozlowski wrote:
>>>>> On 07/08/2024 14:33, Depeng Shao wrote:
>>>>>> Add CAMSS block definition for sm8550.
>>>>>>
>>>>>> This drop contains definitions for the following components on sm8550:
>>>>>
>>>>> 1. Subject: there is no prefix camss. There is no such file, directory
>>>>> or module.
>>>>>
>>>
>>> Thanks for the comment, will remove this.
>>>
>>>>> 2. You already sent this, so this should be v2 or v3 or vX. Provide
>>>>> changelog under ---.
>>>>>
>>>>> If there is going to be resend, please fix above.
>>>>>
>>>
>>> Sure, I thought it might be a new series, so I didn't add v*, will add
>>> v1, and v2 change log in new version series.
>>>
>>>>> 3. If this was tested on aim300, I am surprised this being not enabled
>>>>> on aim300.
>>>>
>>>
>>> It was tested long times ago, but the patches wasn't sent out for
>>> reviewing early due to the team's internal schedule.
>>>
>>>> One more thing, bindings were not accepted, thus this patch should not
>>>> go in. There were no new bindings, so I assume patchset is using
>>>> rejected ones.
>>>>
>>>> It's fine to send it to get some comments, although would be nice to
>>>> mention to maintainer that this cannot be picked up as is. :(
>>>>
>>>
>>> Sure, I will resend the dtsi patch until the bindings are accepted, send
>>> this patches because you posted the comments in other series.
>>>
>>> https://lore.kernel.org/all/0324e8e8-2ad4-4ce6-9616-3038b8e02ff9@quicinc.com/
>>>
>>> Thanks,
>>> Depeng
>>>
>>>
>>
>> Recommend
>>
>> 1. Send out your yaml and dts in one series
>>
>> 2. Driver series can be posted in parallel
> 
> The binding should go with the driver. Also usually discussion about
> driver brings comments, thus changes, to the bindings.
> 
> Sorry, DTSI and DTS should wait till bindings got accepted to media
> subsystem.

Yes you're right

1. Yaml - bindings
2. dts + driver
3. dtsi

In this case @Depeng remember to

1. Link back to the older series in your cover letters
2. Suggested by recommended - publish a complete tree somewhere and
    link to that tree in your cover letters

Its fine IMO to restart the version number of your series when breaking 
up into smaller series, so long as you remember to link to the previous 
series and explain in the cover letter whats going on.

---
bod

