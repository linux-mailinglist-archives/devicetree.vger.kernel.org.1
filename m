Return-Path: <devicetree+bounces-7628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA487C4F5D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1F371C20C03
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B971D689;
	Wed, 11 Oct 2023 09:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nnomd8jw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29CC1A711
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:47:24 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037B1A7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:47:23 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4064876e8b8so65308165e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697017641; x=1697622441; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sc1bsCsMndBVEQyVE65fw2eOTk9RKkO6+cW9YeA+q3g=;
        b=nnomd8jwv0T017O6EuD8sk89sVIdhSfjwOoZmyKZfEIW8/9g6jzgjNKbAS516r0uXd
         U2E0YueZJAAvRnUnqO126d6fT7r4Rr1ZBcEKUbybAunFfF2Qz2t3tijwt8Ksk6NyaUT6
         PnlvuoLLZtId4rfs+SfV8cHdZVU7nSI1i5ofij1Gt4qTYgLaSuN9Mz9CW2TIn7gcvxEL
         mTxyEoH6vUvGnjsCb4gQopJvNX3/6uDRk663QirCX9aaWAgwOOdkwv/9V7KNRHjzof49
         0LaDzSpbwx1fL+ci4O0QdEdcUIzefqVSH5YI/2jN9ZdAS8NXTwHNnRVRoawfxo1ogygG
         j1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697017641; x=1697622441;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sc1bsCsMndBVEQyVE65fw2eOTk9RKkO6+cW9YeA+q3g=;
        b=GPFZLk+zrbs9AijYxr0pNnvSOnKWZcN6moHy5Ru6rOm9maNH417Gj6vYbEP0AhwDQ4
         6Lujf34PQ9PF41nqku9aA0gSSENSIlxGTnXypJ8m1yGUrH+4XdDSCYFJdvf6GexeEOUM
         miwUReDnOzoqVg3gWuVYMdAYAkMt4XTJmNPz58m1+W+RnfRLHvDnFdBsJgHQRhiSlpJB
         SOMA7ntWIwzJOjhHnufA0QrIViiIH+G/72SMgWqiouchwMT6e5DPFT+diOduoAtWiv/F
         9Yp8CYLR5QUQ/rOkLj19pS1JQkKJZwuVQvyA31N+ika90WwQYZlKBdWHQ5f3gw3V807e
         8CWw==
X-Gm-Message-State: AOJu0Yw3Z5uJSYVCIDG0HnvS9rER7E697ZAEaYoGOKSuFgSWmLqcg4jq
	P/LaSgkZ2WqJUCz5k9ZVEmdhnQ==
X-Google-Smtp-Source: AGHT+IFM2FraAzoU56spQghfNYaeDYO5BiRInvYc6Jk6kRkatMjtmm4CwL/V50tQK8/JUUnNzz2yJQ==
X-Received: by 2002:a05:600c:22d5:b0:406:52e4:cd23 with SMTP id 21-20020a05600c22d500b0040652e4cd23mr17700523wmg.0.1697017641287;
        Wed, 11 Oct 2023 02:47:21 -0700 (PDT)
Received: from [172.30.204.44] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id bw7-20020a0560001f8700b0032d2489a399sm4144121wrb.49.2023.10.11.02.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 02:47:20 -0700 (PDT)
Message-ID: <dba83334-3971-46e9-9342-1344c5858be8@linaro.org>
Date: Wed, 11 Oct 2023 11:47:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 dts file
Content-Language: en-US
To: Mukesh Ojha <quic_mojha@quicinc.com>,
 Komal Bajaj <quic_kbajaj@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, luca.weiss@fairphone.com
References: <20231003175456.14774-1-quic_kbajaj@quicinc.com>
 <20231003175456.14774-3-quic_kbajaj@quicinc.com>
 <5da2ba4f-5bf7-46ff-8204-0c169042dbfa@linaro.org>
 <3fd31aaa-f6bf-8440-6b08-fca2803171d9@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <3fd31aaa-f6bf-8440-6b08-fca2803171d9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 07:40, Mukesh Ojha wrote:
> 
> 
> On 10/7/2023 5:02 AM, Konrad Dybcio wrote:
>> On 3.10.2023 19:54, Komal Bajaj wrote:
>>> Add qcm6490 devicetree file for QCM6490 SoC and QCM6490 IDP
>>> platform. QCM6490 is derived from SC7280 meant for various
>>> form factor including IoT.
>>>
>>> Supported features are, as of now:
>>> * Debug UART
>>> * eMMC
>>> * USB
>>>
>>> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
>>> ---
>> [...]
>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490.dtsi 
>>> b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>> new file mode 100644
>>> index 000000000000..b93270cae9ae
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>> @@ -0,0 +1,94 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights 
>>> reserved.
>>> + */
>>> +
>>> +#include "sc7280.dtsi"
>>> +
>>> +/*
>>> + * Delete unused sc7280 memory nodes and define the memory regions
>>> + * required by qcm6490
>>> + */
>>> +/delete-node/ &rmtfs_mem;
>>> +/delete-node/ &wlan_ce_mem;
>>> +
>>> +/{
>>> +    reserved-memory {
>>> +        cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
>>> +            reg = <0x0 0x81800000 0x0 0x1e00000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        camera_mem: camera@84300000 {
>> Uhh.. this is totally not the same memory map that I have on a
>> random msm-5.4 source+devicetree drop (which does in turn align
>> with the one on QCM6490 Fairphone 5, as it should because it's
>> a rebadged reference device for the most part)..
>>
>> Did you guys *really* redo it between software releases?
> 
> QCM6490 fairphone is special case where same SOC is used for mobile
> product and it uses sc7280 memory map.
> 
> Current patch adds support for the same SOC marketed for IOT segment
> [1] and very active in the development and soon going to freeze its
> memory map, so we are deriving memory map from sc7280 and creating
> a new memory map for all IOT product with qcm6490.dtsi .
Stop reinventing the wheel. I'm not going to accept patches that are 
supposed to define ABI for products that are still in development.
Not unless Qualcomm changes their attitude towards unilaterally breaking 
things for no good reason.

> 
> [1]
> https://www.qualcomm.com/products/internet-of-things/industrial/building-enterprise/qcm6490
> 
>>
>> This SoC family has been on the market for quite some time,
>> breaking software expectations like that is not cool, especially
>> on a product with a promised lifespan of 10 years or whatever!
> 
> I agree, but we are not changing anything for product which are there
> in the market instead defining a new memory map what is going to come
> with qcm6490.dtsi for IOT.
Why would the OS care about the market segment you're targeting?
Why would the firmware you're building care about the market segment 
you're targeting? The LE vs LA vs LU vs WP vs whatever split is so 
unnecessary and arbitrary on the firmware/kernel side..

The firmware should either be fully relocatable (so that dynamic memory 
reservation can be used), unified so that there's no changes or better 
yet stored in separate memory so that q6 cores don't steal the RAM that 
the user paid for and you can do whatever ugly magic you please in there.

This arbitrary segmentation makes it impossible to have a common base, 
or to explain what device should go where to a newcomer.

Sorry, the other qcm6490 soc with
> fairphone(for mobile) can get confuse with qcm6490.dtsi but that
> is special case and i hope, that should be fine but, let me know if
> there is concern.
>>
>> With that, this really seems more of a change that would belong
>> in the IDP dts than the 6490-common one..
> 
> 
> We wanted to keep it in qcm6490.dtsi as there are some more product
> going to share this in future.
And then what if you decide that you need to re-release SC7280 for 
automotive and make changes again? Do we define qcm6490au.dtsi which 
will redefine everything again-again?

Konrad

