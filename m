Return-Path: <devicetree+bounces-108988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2284199475E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:39:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A2CA1F23B0B
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E0D1D1303;
	Tue,  8 Oct 2024 11:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FeXrsJGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC4A1CFEA5
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 11:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387476; cv=none; b=YdSEGySpxfT2R8LO+nMBFGDSohXMDWMzPPqhyrOE3apoe7gz4Pu59PdrLuDpiIvhNkBuRhcgjtNOGdlU8E1KVsaG1roj3gcVoaMIL+wN47PjgSmSx6AqIafgQqgLGlpqmL+pO7Nvwoh2gJMWgKJXmyE/MJxgAdv5XmUPJQKFweE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387476; c=relaxed/simple;
	bh=FR2taoYdNh6APucBP6uh45baOLttMV+R2lVZvZQMxrU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPWzWQn0hC84BPnsmvK0gGNs/wqzjol8HpqpJ4/HWlg3cLsJrSjrvKCP7NiZpcCtacM+ayk9RNoee90eQptxevz9ajmGp/ga2UMppYidSoCAlkiXu2GdMAqpszrFwSFc+G+K9DvpBk1DiVHnZpR9qx8BdM8MnWP2mVGwnDqYp1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FeXrsJGM; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fac4aab70eso1790681fa.3
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 04:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728387472; x=1728992272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R8uLMb91DkzW43odhG5R0KAnBmoBDxrnzRhBJzgNaWI=;
        b=FeXrsJGMmiYoYjVmRF6BAUGg9pVZs2WHkvbbwVGk3uSe+9avUc8QWesR8UD533omth
         jFAqdDpRKqxAwafgLHi9dqVQK6/XPjqquzlqeJxjn6kp855NdaocHzvGpoySK1rbFTW6
         P9OCIYKOv5/dLUK6+vxvyLp/JnWlBbsZR5m0j+SyjCThGZhw9XOOYuP4h4EJv+jRhyKy
         rb0NNzwivq0Dd88/8MYWeusK+PqMqUZkx3JKvt/DeVKsqtf5pZMLmQ/VYcM/u1b4F8im
         SVogd1Fnh0aKZ78ElTgTtmBAw674DEPLfCv3R/pyQHZryZkUVoM9JNREWjmbPo3iOhLg
         4C/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728387472; x=1728992272;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8uLMb91DkzW43odhG5R0KAnBmoBDxrnzRhBJzgNaWI=;
        b=wnXJ6DB/sqcuJMpgcboKpkiVri1pezHu7tF4DbpY3Pt5JVWDvMf7dL6yoe6jU4GoHU
         HboQizyTGZQc6+mhXCNzw8vllnBdSQ9oqLIFlu990+vlk6w5DTMMZ327rjXGr5IZazNW
         ahAGiXFJk1aw1PTPXsF+zrEVpGD+ghBxOTL9VVagdqTIGJTgNpRPt+Y1LizpgRd6Zwy/
         2Ez35GJV2mrJ1FBKQnxDwJ0wQMs03mxGBujFzJQmGkMLzhXDupCtmsC8DCuRtJCEC5l3
         DENDzh1kKbOMJzdkMjEsYo5/tbrGsIqFO9+UKSn3nYaGcbLhMs0jNfQksmgPmap1HIlu
         vK2g==
X-Forwarded-Encrypted: i=1; AJvYcCWK6GRxOdBde3n1Lt89z+1hRbEQ8XxpKZdbHOq8NR1BfpuFiurqlTbwv+jH/hFVzezugj5gJmxIYrIQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy59H+UqB9FS5wSgQIJ8V//6jPNfRFRgZJex1MVKFNOGuqghjPk
	QkEtJqqot6OjnJPAS29Q2LF7FF36VVavI1h9CBGK5w6H0KvD9g0qIBisKElrhcU=
X-Google-Smtp-Source: AGHT+IG7oaEnlMHbMwR/uHJTMvjZOz7dxsEEyzIbBVpNsVmWfCQirwrKYeDwT+CEe1LQgq96/XV9Nw==
X-Received: by 2002:a05:651c:1549:b0:2fa:ddb5:77fd with SMTP id 38308e7fff4ca-2faf3c13936mr21946091fa.6.1728387472047;
        Tue, 08 Oct 2024 04:37:52 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9ac452dsm11373461fa.48.2024.10.08.04.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 04:37:50 -0700 (PDT)
Message-ID: <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
Date: Tue, 8 Oct 2024 14:37:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof.

On 10/8/24 14:15, Krzysztof Kozlowski wrote:
> On 08/10/2024 12:02, Vladimir Zapolskiy wrote:
>> Hi Bjorn,
>>
>> On 10/6/24 05:36, Bjorn Andersson wrote:
>>> On Mon, Sep 23, 2024 at 10:28:22AM GMT, Vladimir Zapolskiy wrote:
>>>> The expected type of all CAMSS interrupts is edge rising, fix it in
>>>> the documented example from CAMSS device tree bindings for sc8280xp.
>>>>
>>>
>>> Who/what expects them to be RISING?
>>
>> I've checked CAMSS device tree bindings in a number of downstream kernels,
>> all of them describe interrupt types as edge rising.
>>
>> $ grep -Hn IRQF_TRIGGER drivers/media/platform/qcom/camss/*
>> drivers/media/platform/qcom/camss/camss-csid.c:619:			       IRQF_TRIGGER_RISING | IRQF_NO_AUTOEN,
>> drivers/media/platform/qcom/camss/camss-csiphy.c:605:			       IRQF_TRIGGER_RISING | IRQF_NO_AUTOEN,
>> drivers/media/platform/qcom/camss/camss-ispif.c:1164:			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
>> drivers/media/platform/qcom/camss/camss-ispif.c:1168:			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
>> drivers/media/platform/qcom/camss/camss-vfe.c:1327:			       IRQF_TRIGGER_RISING, vfe->irq_name, vfe);
> 
> Downstream has a lot of bad code, so I am not sure how good argument
> this is.
> 
> I acked the patch because I assumed you *checked in hardware*.
> 
>>
>>   From runtime point of view it's more important to get re-probed camss
>> driver, see an absolutely similar and previously discussed case (in the
>> cover letter):
>>
>> https://lore.kernel.org/lkml/20220530080842.37024-4-manivannan.sadhasivam@linaro.org/
>>
>> Now in runtime I get this error, it's easy to check by unbinding/binding any
>> camss device:
>>
>> irq: type mismatch, failed to map hwirq-509 for interrupt-controller@17a00000!
>>
>> Basically camss devices can not be bound on the second time on the
>> number of platforms touched by this changeset.
> 
> This is solveable different way and I do not understand this rationale.
> The driver should not request trigger type but use what DTS is
> providing, unless of course only one valid trigger is possible.

Right at the moment the driver uses rising edge type of interrupts, and
it works properly.

> But so
> far you did not provide any arguments for this. Downstream crappy code?

Downstream code works, that's the argument to support the change.

> Nope. Existing driver? Same.

The existing driver works, that's the argument to support the change.

> Was anything here actually checked with datasheets/hardware?

The initially open question is unanswered, why sc8280xp CAMSS does
specify interrupts as level high type, was it actually checked with
datasheets/hardware, as you say it? It has never been tested by anyone
and anywhere, downstream or upstream wise, only rising edge interrupts
were tested, and they do work.

I don't have access to datasheets or hardware of sc8280xp powered board,
someone may either verify, if CAMSS level high type interrupts are
supported/working at all or not (obviously its current presence in dts is
insufficient), or check the SoC datasheet.

To sum up, the intention of this change:
1) fix the unpleasant runtime issue with no regressions (it's been tested),
2) align CAMSS device description in firmware with known to work well
IP hardware configuration.

--
Best wishes,
Vladimir

