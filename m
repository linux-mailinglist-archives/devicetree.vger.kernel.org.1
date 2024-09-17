Return-Path: <devicetree+bounces-103568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3033C97B608
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 01:16:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0794B2866AF
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 23:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469CE192B82;
	Tue, 17 Sep 2024 23:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j/w2SWUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3081925B8
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 23:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726614976; cv=none; b=Pkj0A6lecBMp/dpSpqx6GFRXim4Y2UpDt4jHfQgPUdGYcRYaPEnS5Y6plX7Q/0CVYSNzrbxUOIC9etqRxFlNY8cbG2gtmyFil+pSpIZlDtOq668LzfuzznqMpyXEt+KE7sRRA6QitmgjRjR1IE2qwVZfiE8xYia0LJzU9d83B7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726614976; c=relaxed/simple;
	bh=O2nKzwygTa3O0ujU6EUzyVOTdYc/oV2JMp9e3e0a82M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NvpRPKSRju9ZtdaFWSWy3PJoDHAcWRWRGgA8iVodKDAA9Z5TLzHOVXG/FSOx8qbqcnV/+2GWHNia5kUScDjaXq8Jdrr1zgKePAbbx4P97j3qvoypCET1XcZV916GLTh9jLXxqOfZ6tYvPbZcoYW+lhMV2jR5JQfeJ4273wlhFT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j/w2SWUY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53653c23c3bso384826e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 16:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726614972; x=1727219772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RKxODlym6SuMbxPrXXhKb5t44fu09AYclvJQiXMO2Qc=;
        b=j/w2SWUYtN59emXmGzdReHVD9FTGQN4x6ZAYK/mPjZ0GRXWb1+ZZAo25iXNlDfHn/f
         wkVXVa556ND2vJiWJQZXJfeNc7GFd8XpOGnTJ4r/XUZ3hewhH6bF/TQdfLq1F05IB5Q/
         amaZ5i/tyZZ2TqHUIf9/DCg1+8X/aUuO5DJJoWIvc7ljh4DioncwIxAfVdC4GQztqSqA
         +XulWC+sfklttjq/KOlnowJmKrmWWC+tpDgnE7QHakW2i0hr3XuF0F9YgUoglVD0Wuuc
         vE4giFZLPcSMvKOp1m9B7iHsnVq0nyAHrxj16HDQa62BXIU2Nv7vMayqI9bs6dpQK+Vc
         i1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726614972; x=1727219772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RKxODlym6SuMbxPrXXhKb5t44fu09AYclvJQiXMO2Qc=;
        b=ZdXMTeBJkz9ku75cMCNw/XEBxO7q4JVMLJ54aVpYa2SOw5vIV5iYRALqsNbWiOXYM0
         nkE/3m9en6bTReTYw+/psY6Xs7LlULx79ANzjCLB7XPjClujMFCrSocFdaFvf2J1xKe+
         /aCMVjEGNbpG/lKmIJkEIDNihafWHBZv17lLJgH1e425t2rpM5LYOZJSj2skrBD7WUD4
         tiuBStnUDzzn9RW+4vMMjOeA2MEeydkksmzTt2otPikMPGajWCrO6k0+oslVg6FNaR/m
         FwOWmyS/7iQeqBiDV2ojrmPuPNCRtJaN5G+8uOsNmNhtiU4+xConHZm08m11MMS0YydE
         ptlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW3p5DmVGTbKHOPDOjgzSSpeW7ki1klVjO2Hq4gwKBZN2xE6iWUh7tX62DAbxyhj0Xf1nX76XPltsm@vger.kernel.org
X-Gm-Message-State: AOJu0YzTMoYjZRg1Jfi35iyVUbbfvbR10SCrmO2uT/n3SU8iC7aqOepn
	rozSSLTh2dcZ2UZgwr7qVpz/gBpzPUc1RoCfQ1QMzXjOZT3rCWHjhfK/I75AA74brH0BaGknna5
	n
X-Google-Smtp-Source: AGHT+IG/jzq/fUNoUCwXBsII971fW9QTLnWZ3Fd7/UXXWImrThIpkmoX/q9lDmGRtnuiye8v622d/w==
X-Received: by 2002:a05:651c:541:b0:2f7:5c23:98fb with SMTP id 38308e7fff4ca-2f787f58446mr32089671fa.10.1726614972134;
        Tue, 17 Sep 2024 16:16:12 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870b4302sm1349649e87.257.2024.09.17.16.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2024 16:16:10 -0700 (PDT)
Message-ID: <b779182f-a963-400a-8fc1-2468710082d2@linaro.org>
Date: Wed, 18 Sep 2024 02:16:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Depeng Shao <quic_depengs@quicinc.com>, krzk+dt@kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, todor.too@gmail.com, rfoss@kernel.org, conor+dt@kernel.org
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-8-quic_depengs@quicinc.com>
 <b1b4a866-fa64-4844-a49b-dfdcfca536df@linaro.org>
 <82dd61ab-83c0-4f9c-a2ee-e00473f4ff23@linaro.org>
 <da60cf71-13a4-465d-a0ee-ca2ad3775262@linaro.org>
 <97e4f888-1ed7-4d82-b972-3e0b95610198@linaro.org>
 <6eadc285-f413-4bf0-8795-59ff19c734da@linaro.org>
 <6562a958-47e9-4a49-b235-fe8deba3c051@linaro.org>
 <cab95caa-9ffb-446a-858b-342939e80811@mleia.com>
 <4e94106d-5ca9-485b-8c51-c18dcd4e64b0@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <4e94106d-5ca9-485b-8c51-c18dcd4e64b0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan,

On 9/18/24 01:40, Bryan O'Donoghue wrote:
> On 13/09/2024 06:06, Vladimir Zapolskiy wrote:
>> On 9/13/24 01:41, Bryan O'Donoghue wrote:
>>> On 12/09/2024 21:57, Vladimir Zapolskiy wrote:
>>>>> 3. Required not optional in the yaml
>>>>>
>>>>>        => You can't use the PHY without its regulators
>>>>
>>>> No, the supplies shall be optional, since it's absolutely possible to
>>>> have
>>>> such a board, where supplies are merely not connected to the SoC.
>>>
>>> For any _used_ PHY both supplies are certainly required.
>>>
>>> That's what the yaml/dts check for this should achieve.
>>
>> I believe it is technically possible by writing an enormously complex
>> scheme, when all possible "port" cases and combinations are listed.
>>
>> Do you see any simpler way? Do you insist that it is utterly needed?
> 
> I asked Krzysztof about this offline.
> 
> He said something like
> 
> Quote:
> This is possible, but I think not between child nodes.
> https://elixir.bootlin.com/linux/v6.11-rc7/source/Documentation/devicetree/bindings/example-schema.yaml#L194
> 
> You could require something in children, but not in parent node. For
> children something around:
> https://elixir.bootlin.com/linux/v6.4-rc7/source/Documentation/devicetree/bindings/net/qcom,ipa.yaml#L174
> 
> allOf:
>     - if:
>         required:
>           - something-in-parent
>       then:
>         properties:
>           child-node:
>             required:
>               - something-in-child
> 
> I will see if I can turn that into a workable proposal/patch.
> 

thank you for pushing my review request forward.

Overall I believe making supply properties as optional ones is sufficient,
technically straightforward and merely good enough, thus please let me
ask you to ponder on this particular variant one more time.

--
Best wishes,
Vladimir

