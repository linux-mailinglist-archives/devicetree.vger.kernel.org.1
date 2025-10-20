Return-Path: <devicetree+bounces-228879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6DBF18EF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:37:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30A013A145E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F4F31AF10;
	Mon, 20 Oct 2025 13:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IbqcSJt/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788EB31A06F
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760967322; cv=none; b=P5aPMamzEz4yhvq0CixxoYQCJ+ngVvRR8+THR5V8owWSuBqIN9Fz5o6JSLd+3niobQ8HKlcRmlbByoVKdtGKf+N/shfsvQ4zfQU9vCZtblyoeyEQFRd709jPaSDWQncRa4kmCmC7/RmlhtqODo+9g9btXCFPd4TyNLEgYJ5oacc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760967322; c=relaxed/simple;
	bh=yFCAkB4FB/szNXHuo+qfIpsxub94n/l/Rq5RMCliHyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CeChIO2RfJeAOZ1I6T6rbjR//Fp7qDrKkIT2x312y7oPfBDmsB2fdQOslJ83ublS7H1yIgMq6sXpuhepE1OvrE54xPDbNEM4c6PAnxSk1mf7Ou3TsGCkHim7kHK9p8bZlYiu9nfP7ow2LaG93PBgX3akUJq4ZKfJmS2eSrW7fP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IbqcSJt/; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-591e6dea3e1so45175e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760967318; x=1761572118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTVK75Z+r3PeIEvAgwCwXV8zi1kuAXvJOmtFkcbSutM=;
        b=IbqcSJt/arMlK+CQRgURM01/b1wEZwbctCsp7AlNxM1ub0ulaYQaCvLolVH4pkLjeO
         xslc/PPtkPm6VM92SzPxYWbt847q+gDTv5qV6+hd7waNQwbf+IuT1UrVaY1M+QMrDcRW
         r3/XvhvcLKFy0ZgBEY+I/0JWRp+oR8huaWWxw4Qv6zQL64lXXdYqIWPsUWsXUlYd+Wb4
         p69VCQ0SzQY0yv0Trwp++y2/JiLVG4Keom3uPg3R7OChmyeeAuCDjUw6XL8JadKxin8e
         Ejf4UWrDn2t0bq1GKGuTmuCJnhvDexbLMkEjvI7WK1VcUWS2oNKLKCeN2AYHfKsLQBhD
         ttPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760967318; x=1761572118;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iTVK75Z+r3PeIEvAgwCwXV8zi1kuAXvJOmtFkcbSutM=;
        b=F7HqG3bdmtRPsBIWKc2Pk/A5gPl2KvJ3CI9kNmoXi76lqtunuZd40Rutw+ho9E4sVj
         w7FiGc5hl7et20i2Gpop5iOObO2ksGHzztrSq6ZdMHYDivVhtTvtricUsLlW5qI6lYhL
         GPpN6mYS8yiaXhR0aViJ8HHs5doaSDuwAwNk1f8r05bTAWpV+iwFnLhs/h3X6KqjBFj3
         J2fZaqxsSKL7d26caWaZLDQto2W9Arzeiq//ITWQK66f61ioOBnDo6DxQh7gz81uhWuJ
         1oF0eiMb4ZLFSqYaq6P/bkLoad7pvTHq6q1Wu/uilFqnNvBSm/rkDxsrWtjYH5vTguB9
         hK+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUom2ZYVI8g7EE+4RK1XJFzbMi+RGUpbmEbgKc22WwdOr2p5sOHOTViWOOla1ymtkjWQo+OpBxcHfUE@vger.kernel.org
X-Gm-Message-State: AOJu0YzHaYkuF+zMYovJahnkNXla2ek3VrltzFkHfFPtq7qw1eBSSHWf
	6UJCeJDoviXUW7lHcBCB5o+kwd71ddqQ1Ont3cZmLSEsH8fCbpUdgD8t0O87iHo0lAA=
X-Gm-Gg: ASbGncs6DDtWmoyx5JquKSJBfG5PSpRACVf/XC92sJQtZYztED3m4PEFqgvFU4nfzQm
	HfAZFJMu2d5gc2aL8FOkv10XQJ57RiL1GpRkhpyR7d8E4ORvmbWx1yeuql5Gvcw1+M1FsHw4tem
	JksPVo8pytfGa/kEGi8dm8Qf6/D9EJgdjVRveinOqZ94qWoDqvQtbbgubO+p+aMqv38vE4r7Knn
	LHILGoZdJHVY31430yIsWEsqQbTmO9epqwUjqWkxHliXPRYRjwCQGxbIHO86FQzPfl32AOHRRyu
	j2jeLLpjjPde88dlDtYCiKz5LONnt+qv5vYu9JkueooHubUmQzJ1EqWPr8yktUkX3I2Vqm0qijh
	7v+dbuBFwV/4bgxaPfS/DHQ8UrjxQIXJWjrpV/jvDIY7be5VU1JRorrCyaZGtuEJ1B4tHYpsdmV
	jjuHL0nvljzk7Hfm/I5xRJskxoZoga/WO87Mgaw1Ka09EIMLLubvMPauh23ubqahV3Cw==
X-Google-Smtp-Source: AGHT+IHxso0ndVx6nhne45HeaNnUTTO1Vb73T80rCMDSgu7AycOnXxALJ3Jl5Ih4atbNPxHYTXnnHw==
X-Received: by 2002:a05:6512:2303:b0:57a:d649:9702 with SMTP id 2adb3069b0e04-591d84f2d58mr2640895e87.1.1760967318390;
        Mon, 20 Oct 2025 06:35:18 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deeaf6e2sm2522385e87.32.2025.10.20.06.35.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 06:35:17 -0700 (PDT)
Message-ID: <48bede40-584a-409a-9bca-7ae3cc420667@linaro.org>
Date: Mon, 20 Oct 2025 16:35:16 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: qcom: camss: Enable setting the rate to
 camnoc_rt_axi clock
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Bryan O'Donoghue <bod@kernel.org>
References: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
 <9984bc23-05ef-4d46-aeb8-feb0a18e5762@kernel.org>
 <bc0caeb8-c99b-4bef-a69e-5ce433e6b890@oss.qualcomm.com>
 <c4fd6bfc-cc9a-4f37-99b3-f36466691a1e@linaro.org>
 <CAFEp6-2=GJL-gc+PSyAL4=prp_sXdZJS=Ewg5nP2kcp_Gu85Fw@mail.gmail.com>
 <33513b43-f6d1-4c76-887b-39611a75e1f4@kernel.org>
 <WnfCknsSyJK68PQZkE2q7COZHRpsLOFlr3dcbwiVR6SBWtF9iRQ4MGzp_9q31O0kyhZwoncQWfHjJQvpz7nyfw==@protonmail.internalid>
 <ab43c5c9-edc5-459e-8ef7-2aa8bec559c0@oss.qualcomm.com>
 <0e6e1b8a-d9ae-42d1-b1ad-4314e0d76ab7@kernel.org>
 <2c0011d3-a692-457c-9ac0-a445fc82df37@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <2c0011d3-a692-457c-9ac0-a445fc82df37@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Hangxiang.

On 10/20/25 06:23, Hangxiang Ma wrote:
> On 10/17/2025 7:41 PM, Bryan O'Donoghue wrote:
>> On 16/10/2025 21:53, Vijay Kumar Tumati wrote:
>>>
>>> On 10/16/2025 8:31 AM, Bryan O'Donoghue wrote:
>>>> On 16/10/2025 13:22, Loic Poulain wrote:
>>>>>> I'm - perhaps naively - assuming this clock really is required ... and
>>>>>> that both will be needed concurrently.
>>>>> AFAIU, the NRT clock is not in use for the capture part, and only
>>>>> required for the offline processing engine (IPE, OPE), which will
>>>>> likely be described as a separated node.
>>>>
>>>> Maybe yeah though we already have bindings.
>>>>
>>>> @Hangxiang I thought we had discussed this clock was required for your
>>>> setup.
>>>>
>>>> Can you confirm with a test and then
>>>>
>>>> 1. Repost with my RB - I assume you included this on purpose
>>>> 2. Respond that you can live without it.
>>>>
>>>> ---
>>>> bod
>>>>
>>> @Bryan and others, sorry, I am just trying to understand the exact ask
>>> here. Just to add a bit more detail here, On certain architectures,
>>> there is one CAMNOC module that connects all of the camera modules (RT
>>> and NRT) to MMNOC. In these, there is one 'camnoc_axi' clock that needs
>>> to be enabled for it's operation. However, on the newer architectures,
>>> this single CAMNOC is split into two, one for RT modules (TFEs and IFE
>>> Lites) and the other for NRT (IPE and OFE). So, on a given architecture,
>>> we either require 'camnoc_axi' or 'camnoc_rt_axi' for RT operation, not
>>> both. And yes, one of them is a must. As you know, adding the support
>>> for the newer clock in "vfe_match_clock_names" will only enable the
>>> newer chip sets to define this in it's resource information and set the
>>> rate to it based on the pixel clock. In kaanapali vfe resources, we do
>>> not give the 'camnoc_axi_clk'. Hopefully we are all on the same page
>>> now, is it the suggestion to use 'camnoc_axi_clk' name for
>>> CAM_CC_CAMNOC_RT_AXI_CLK ? We thought it would be clearer to use the
>>> name the matches the exact clock. Please advise and thank you.
>>
>> The ask is to make sure this clock is needed @ the same time as the
>> other camnoc clock.
>>
>> If so then update the commit log on v2 to address the concerns given
>> that it may not be necessary.
>>
>> If not then just pining back to this patch "we checked and its not
>> needed" will do.
>>
>> ---
>> bod
> 
> @Bryan, I test two scenarios individually that also consider @Vladimir's
> concern. I confirm this clock rate setting is necessary.
> 1. Remove 'camnoc_rt_axi' from the vfe clock matching function.
> 2. Remove 'camnoc_nrt_axi' from the vfe clock resources in camss.c.
> Both of them block the image buffer write operation. More clearly, we
> will stuck at the stage when all buffers acquired but CAMSS takes no action.
> 
> I agree with @Vijay to keep 'camnoc_rt_axi' to distinguish between the
> new one and 'camnoc_axi'. The disagreement concerns how to standardize
> the camnoc clock name or how to differentiate between RT and NRT clock
> names if a new RT clock name is introduced. Other chips like sm8550,
> sm8775p depend on 'camnoc_axi'. Meanwhile, 'camnoc_rt_axi' and
> 'camnoc_nrt_axi' are both necessary for QCM2290 and X1E80100. But chips
> like QCM2290 and X1E80100 may not need to set the clock rate but
> Kaanapali needs. @Vladimir

Thank you so much for performing the tests.

I would want to add that I've made right the same tests for SM8650 CAMSS,
which also has two 'camnoc_rt_axi' and 'camnoc_nrt_axi' clocks, and due
to my tests the latter one is not needed for the raw image producing, you
may notice that I've excluded it from the v3 series sent for review:

https://lore.kernel.org/linux-media/20251017031131.2232687-2-vladimir.zapolskiy@linaro.org

> We now prefer to add 'camnoc_rt_axi' (Right?). Maybe its better to add
> comment lines to remove the ambiguity whether 'camnoc_axi' denotes to RT
> or NRT. Please advise and correct me. Willing to receive feedback and
> suggestions. Thanks you for all.

-- 
Best wishes,
Vladimir

