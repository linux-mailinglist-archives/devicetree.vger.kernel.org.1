Return-Path: <devicetree+bounces-46944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 299F586B59F
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 18:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A23FF1F21790
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373FF3FBA5;
	Wed, 28 Feb 2024 17:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="abhOIH31"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44683208D2
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 17:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709140290; cv=none; b=ADVnK0GwDjwzfFvsHePhY4tmLeityhpePWGMozND+YMerU6oHS0fcypR3sfMjGx+0rPAp2wPk0hlOR1oPFLwmsOKM951qlLMcKZHwQBlLwXmOfRFukDUdFb7o+brGo/DBLZVb8PrHcF2eZSJyXDUuF+EPENXPvD281ZGGGVVlcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709140290; c=relaxed/simple;
	bh=uGPHNFes84I6rilfHmCdcTUvaBD3wetQ+Od5jPruLPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gJSvooXxDfw/09DrYvBbHDCfe8NyUhW4fj9UyaIEN8DMZXumpJMdVqLXvH2NMacecGm/N2ooir/ADZ+kvyiKoeYFV3jj3H0H/Nct8FSb7ItJxdGQ/KZ+p8hnLZyRpQfNJG/9WcbXBJrf6Rtv17ycEbNRjwoE8FTwhA/N+Kve1iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=abhOIH31; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d28464c554so56497561fa.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 09:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709140286; x=1709745086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FEJQZi9yBUjQVznYOI29pT82/AlYsIhjyFus1XbOpxE=;
        b=abhOIH31+dpFc2TfneHBA7g94e6o++sO6v4n28Ds07mdIiraaOim+dMgz2yaZGvEC5
         LLi5qg9Pa51yGQe/NSw8XqUzix/c0V/NGmVJyzOdZ2yrQEADwz/I3fMrenStmaU0ZeGv
         cylm90hFimiC6RUSy7aNoYNHFFausdC3wHhv2+2ZvU63I/RbABfjccah/6ZMilsXJqCA
         iR4fYCBkdVNNDYdveqi0RW9aS4cSEZFCZXc2Wquu+THZOFwQIsXoknZJo10y25S4mM/p
         4tW7RiaeM3SrG09Wt9Wk4hDAITmZnfuQ8LLwHUIM1Xos6DJpNbsTW10sbT+H1wuh4UNO
         i7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709140286; x=1709745086;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FEJQZi9yBUjQVznYOI29pT82/AlYsIhjyFus1XbOpxE=;
        b=JGVIhjsl0EKhanf0q//0imSOwxH096oHJ5SCstowK8pcW5nuYi2Zc1XZQn6Z7pyxDR
         W0ydzVoyIX0n5x8GiDoADB6ZXp6h2EYd9YuyK42u5Gm8vhHF1DWUWdDCFL8ScxOEvArG
         BtC14ozy8a5VU0Nqh1pxLSNkTVtfwWAo2DIc7hdhg2CA4K/aFO23CEvyT7ghE9GU4I2y
         BlwLLLumKTxJJwIAy4b0DDVYiCwKBoAjunJ5natLpSSXmXSDygT0V9Tm4l/Xzt1VPSZl
         NhvhdYQ2LVqPQUJhehnEnd9IKZgSIEFsPq0hS6B26HeQ1tBFdcvlbus+0XHNWD0xjGwH
         eFpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFrDS/fQoz9+j7oSP2NzI7feP/Cxk3HLAMjngB3gsvDSElzDl9E4E3b6JY8HE451H990I6EKaWwf35NdnFb5M0bPbR62cPgTTM1g==
X-Gm-Message-State: AOJu0Yy6a68rPJAlaLZKb8E0mNns6lnb2fX01QmdSxJ6A8loEsa0SXXY
	u9mVw6KbxkLQM0dba6VV24B0yUvv2ZEo6T1byaVFjZFS1Ac+7X7s3PS6PyOV5w0=
X-Google-Smtp-Source: AGHT+IGADA7GlFs+zJhlpsCun8ErQpihiqtWqZ17Z/HfRztJXkG+WFOOdudugLhEefV8z6lqXLcVyQ==
X-Received: by 2002:a05:651c:210a:b0:2d2:b146:d42b with SMTP id a10-20020a05651c210a00b002d2b146d42bmr2955288ljq.52.1709140286258;
        Wed, 28 Feb 2024 09:11:26 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id n16-20020a05600c3b9000b00411e3cc0e0asm2699807wms.44.2024.02.28.09.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 09:11:25 -0800 (PST)
Message-ID: <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
Date: Wed, 28 Feb 2024 17:11:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nikunj Kela <quic_nkela@quicinc.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus> <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 28/02/2024 16:22, Ulf Hansson wrote:
> On Wed, 28 Feb 2024 at 17:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
>>
>> On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
>>> On 28/02/2024 15:02, Sudeep Holla wrote:
>>>> On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
>>>>> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>>>>>>
>>>>>> Hi Sudeep,
>>>>>>
>>>>>> I would like to conclude on this thread. I was discussing this with Ulf.
>>>>>> He thinks that using the domain names to identify if platform is
>>>>>> abstracting clocks etc. are not scalable and sufficient. Instead he
>>>>>> thinks that the change in the interface to OS(and FW) is a good
>>>>>> candidate for a new compatible(even though HW is same).  Even for SCMI,
>>>>>> we do change phandle in DT to SCMI protocol phandle so that is like a
>>>>>> different platform altogether. Could you please let me know if you still
>>>>>> think that using a different compatible in this case is not warranted.
>>>>>
>>>>> My apologies for joining this discussion at this late state. Yet, I
>>>>> just wanted to confirm what Nikunj said above.
>>>>>
>>>>> In the end we are indeed talking about adding a new platform, as
>>>>> changing the FW interface from a QCOM proprietary one into SCMI,
>>>>> simply requires updates to a DTS file(s) that is platform specific.
>>>>>
>>>>
>>>> The way I read this sounds like all this are platform specific and need
>>>> new compatible.
>>>>
>>>>> That said, it also seems reasonable to me to use a compatible string,
>>>>> to allow us to describe the update of HW for various affected devices.
>>>>>
>>>>
>>>> While I agree with the above statement, it depends on what you refer as
>>>> update of HW above. It is all Qcom specific and there is so much turn
>>>> between SoCs that this shouldn't matter but I would like to take example
>>>> and describe what I initially mentioned/argued against.
>>>>
>>>> Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
>>>> new and migrated to use SCMI. Now let us assume both A and B SoCs have
>>>> exact same version/revision of an IP: X. Now just because B uses SCMI,
>>>> should X have one compatible to be used in A and another in B. That
>>>> doesn't sound right IMO.
>>>
>>> That's trivial to answer, because these are different SoCs. Compatibles
>>> are SoC specific and every SoC-IP-block needs its compatible. Rob was
>>> repeating this many times that versioned compatibles are discouraged.
>>
>> OK I may have confused or derailed the discussion with the mention of
>> "exact same version/revision" of X. This is not related versioned compatibles.
>> Let me try to explain it with some real example. If you look at all the
>> users of "arm,coresight-tpiu", they all have same compatible on all the
>> platforms irrespective of the clock/reset/voltage/power domain providers
>> on these platforms.
>>
>> E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
>> hi3660/hi6220 it is platform specific clock/power domain providers.
>> However all these platform have the same compatible "arm,coresight-tpiu".
>> That was the point I was trying to make and not related to versioned
>> compatible for different versions on an IP.
> 
> That's perfectly fine, if that is sufficient. It would also be
> perfectly fine to extend it with a platform/soc specific compatible,
> when needed.
> 
> An example could be:
> compatible = "qcom,sm8450-coresight-tpiu", "arm,coresight-tpiu";

The issue is not the same as the above example.

We already have a soc specific compatible in this case
ex: "qcom,sc8280xp-ufshc"

making another compatible like "qcom,sc8280xp-ufshc-scmi" or 
"qcom,sc8280xp-ufshc-xyz" based on how some of the resources (clks, 
regulators) are provided in bindings does not really make sense.

Fact is that we are representing the same IP block.

AFAIU, we should go with same compatible irrespective of how the 
resourcing needs are satisfied.

thanks,
Srini

> 
> Krzysztof, please correct me if I am wrong.
> 
> Kind regards
> Uffe

