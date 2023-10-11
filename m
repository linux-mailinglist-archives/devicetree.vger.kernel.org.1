Return-Path: <devicetree+bounces-7906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3047C60A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:56:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40715281258
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD781D546;
	Wed, 11 Oct 2023 22:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EbXDuDwn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7747D2E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:55:57 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62D3EAF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:55:54 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5041d6d8b10so503654e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697064952; x=1697669752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ijktYp/nC46J+ODjUsZ6HxJVtpF7dTRIW8vGjhqz+nI=;
        b=EbXDuDwnoZt8992tPcZ/rV8RBzHxseQfKvlQ28G5/Gfbn4hhqtlfho6pyQpYygEV9S
         +Ip/J6idAY1yYwkNORlkDmi0tA6JzualVsKqBhY/eBZ+4cVAJTufYd8a93HQG9NlGMOW
         NtuX2HNy0wm94eONRHf5X5Gbz4UmND+WK4N6B3weMmWREmn32DuiPsrXlqmkz9WFWzPy
         blJ3MrHHsSJ8x9K1qlS7Z4pL3MDJQEIm5IPsp+n+e7tilzmjJ1jcjgAIUV4ARbHYV+l7
         SicfOc+PWC5BdY570YogvrKMlK4HY+OTVUHI635fZxi/4bfgYcxdfrQzBSRh/wvWQftJ
         tGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697064952; x=1697669752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ijktYp/nC46J+ODjUsZ6HxJVtpF7dTRIW8vGjhqz+nI=;
        b=Q1fPv7ffQS64D7k88kstvW0+3t4r3x4TrhYHQWbvL962BiBE8u+ib2Dzf4p9yhsnLc
         F3Vzr9OeAfAWxWjz8GiPmU0c2pr5/e/Hare6oZG4giI8b8sJW85hxGTbI482Ob33fxu3
         tLfPs8uTdkvBbSIvtgaJcsALFyfEBavid0sqaopRKzjgzBz8XXqycpmUpehThf7P3oUC
         RcZ4IBhxSEewSvZVnGdLwMtIhVCsKGRacxYD+ki1YahDs1OGehVWIPyoM8PMIaG8n8kk
         H7CSD8vu6t0gTMNOsriytAv1bn83/h28ArtIoJLe/x2jTEIqNH+KqQ2mYvoJ1MAffxkD
         p/5A==
X-Gm-Message-State: AOJu0YxsNGRu34G98X7kYv3dIqfc/DFPaQ+d5U5MMjd27amKqwYvsJVj
	aa8lG1un9bV+xOzaue2PLNuCRA==
X-Google-Smtp-Source: AGHT+IE8QG9gNYHxFuZpnI7fjbHdUn6PGHJKfTpVe7Ctj62vJjepX/kK4X1+z2eQk2pxUisSS70AYw==
X-Received: by 2002:a05:6512:3d93:b0:502:d743:8a6c with SMTP id k19-20020a0565123d9300b00502d7438a6cmr20706181lfv.9.1697064952374;
        Wed, 11 Oct 2023 15:55:52 -0700 (PDT)
Received: from [172.30.204.102] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w6-20020a19c506000000b0050333b7b29asm2471249lfe.240.2023.10.11.15.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 15:55:51 -0700 (PDT)
Message-ID: <8ee2f72b-fcf4-4278-97b4-906046b40c6b@linaro.org>
Date: Thu, 12 Oct 2023 00:55:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 dts file
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
 <dba83334-3971-46e9-9342-1344c5858be8@linaro.org>
 <442ac3d6-adcd-dbb7-96bb-de46023ec18e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <442ac3d6-adcd-dbb7-96bb-de46023ec18e@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 15:40, Mukesh Ojha wrote:
> 
> 
> On 10/11/2023 3:17 PM, Konrad Dybcio wrote:
>>
>>
>> On 10/11/23 07:40, Mukesh Ojha wrote:
>>>
>>>
>>> On 10/7/2023 5:02 AM, Konrad Dybcio wrote:
>>>> On 3.10.2023 19:54, Komal Bajaj wrote:
>>>>> Add qcm6490 devicetree file for QCM6490 SoC and QCM6490 IDP
>>>>> platform. QCM6490 is derived from SC7280 meant for various
>>>>> form factor including IoT.
>>>>>
>>>>> Supported features are, as of now:
>>>>> * Debug UART
>>>>> * eMMC
>>>>> * USB
>>>>>
>>>>> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
>>>>> ---
>>>> [...]
>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490.dtsi 
>>>>> b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>>>> new file mode 100644
>>>>> index 000000000000..b93270cae9ae
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>>>> @@ -0,0 +1,94 @@
>>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>>> +/*
>>>>> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights 
>>>>> reserved.
>>>>> + */
>>>>> +
>>>>> +#include "sc7280.dtsi"
>>>>> +
>>>>> +/*
>>>>> + * Delete unused sc7280 memory nodes and define the memory regions
>>>>> + * required by qcm6490
>>>>> + */
>>>>> +/delete-node/ &rmtfs_mem;
>>>>> +/delete-node/ &wlan_ce_mem;
>>>>> +
>>>>> +/{
>>>>> +    reserved-memory {
>>>>> +        cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
>>>>> +            reg = <0x0 0x81800000 0x0 0x1e00000>;
>>>>> +            no-map;
>>>>> +        };
>>>>> +
>>>>> +        camera_mem: camera@84300000 {
>>>> Uhh.. this is totally not the same memory map that I have on a
>>>> random msm-5.4 source+devicetree drop (which does in turn align
>>>> with the one on QCM6490 Fairphone 5, as it should because it's
>>>> a rebadged reference device for the most part)..
>>>>
>>>> Did you guys *really* redo it between software releases?
>>>
>>> QCM6490 fairphone is special case where same SOC is used for mobile
>>> product and it uses sc7280 memory map.
>>>
>>> Current patch adds support for the same SOC marketed for IOT segment
>>> [1] and very active in the development and soon going to freeze its
>>> memory map, so we are deriving memory map from sc7280 and creating
>>> a new memory map for all IOT product with qcm6490.dtsi .
>> Stop reinventing the wheel. I'm not going to accept patches that are 
>> supposed to define ABI for products that are still in development.
>> Not unless Qualcomm changes their attitude towards unilaterally 
>> breaking things for no good reason.
>>
>>>
>>> [1]
>>> https://www.qualcomm.com/products/internet-of-things/industrial/building-enterprise/qcm6490
>>>
>>>>
>>>> This SoC family has been on the market for quite some time,
>>>> breaking software expectations like that is not cool, especially
>>>> on a product with a promised lifespan of 10 years or whatever!
>>>
>>> I agree, but we are not changing anything for product which are there
>>> in the market instead defining a new memory map what is going to come
>>> with qcm6490.dtsi for IOT.
>> Why would the OS care about the market segment you're targeting?
>> Why would the firmware you're building care about the market segment 
>> you're targeting? The LE vs LA vs LU vs WP vs whatever split is so 
>> unnecessary and arbitrary on the firmware/kernel side..
First of all, I vented off on you very heavily in response to seeing 
something I don't like, even though you didn't have anything to do with 
it. Please accept my apology.

There are some difficulties with integrating certain things upstream to 
work out on a broader scale, but me screaming at engineers in public 
won't help much with that.

> Forgive me, if i ask some very basic question, just trying to put my
> thought,
> 
> I agree, OS should not worry about the market segment, but through the
> DT firmware, we can better optimize memory to either give more memory to
> user or give more memory to certain DSP's to enable certain feature 
> through the firmware like some logging infra etc., and due to which
> certain gaps can get created where certain memory region need to be
> move up or down due to increase in the carve-out.
This is totally fine from a generic standpoint, however Qualcomm has a 
history (and you can see that in most SoC DTSIs) of having a common (or 
almost common) memory map on the vast majority of devices based on a 
given family of SoCs. We've been steadily taking advantage of that for 
quite some time.

Here, we have an established compute SoC (7280-Chrome) with a memory 
setup that roughly matches its mobile counterpart (6490-LA or 778G or 
whatever different derivatives).

IIUC you're tweaking the software for the "new IoT BSP" and resizing 
some regions resulted in many differences (as PIL regions tend to be 
contiguous one-to-another). The real issue here is that if we express 
this changed memory map in qcm6490.dtsi, all devices that have already 
shipped with the older-than-"new IoT BSP" software will differ rather 
significantly.

You mentioned that there are going to be multiple users of *this new* 
configuration, perhaps qcm6490-iot-common.dtsi (similar to 
sc7280-chrome-common.dtsi) could facilitate the new bsp changes instead, 
making it less ambiguous.
> 
> Let's say X Soc released with some memory map, any derivative SoC Y
> should follow X's memory map if it is including X dtsi ? and the reason 
> why Y want to include X is solely the work done for X and most of 
> peripheral memory addresses is matching.
> 
> But 'Y' could be different product, right? and it could have different
> firmware and it is not like 'X' firmware will run on 'Y' ?
Right, historically that hasn't happened very often but it could be like 
that.

> Now a days, most of our firmware are relocatable.
And we should totally take advantage of that. Stephan Gerhold has 
submitted some improvements that made it possible to dynamically 
allocate memory regions on 8916, this should probably be reused and 
expanded for other SoCs.  Would it be possible for you to try out 
dynamic PIL region allocation on this board? See [1] for example.


And the last thing is, I would like for you to give us some sort of a 
stability promise for this. You mentioned this SoC spin is "very active 
in the development", which makes me worried for DT compatibility with 
future METAs. We have unfortunately historically had to deal with 
different firmware packages behaving in divergent ways, and not always 
consistently between devices (but the last point may be just vendor 
modifications).

We are supposed to be able to boot any future version of Linux with this 
initial devicetree, unless there's some fatal flaw that needs 
retroactive fixing (like when we tried to express LLCC as a contiguous 
region instead of a set of slices up until 8550 release or so). Please 
have that in mind, we've tried so hard to keep this ABI-like.

And the last-last (I promise..) question, is this the final SoC silicon 
revision? And is it any different from the QCM6490 that has landed in 
some Android devices physically? Or does it simply ship with a different 
sw stack?

Konrad

[1] 
https://lore.kernel.org/linux-arm-msm/20230911-msm8916-rmem-v1-4-b7089ec3e3a1@gerhold.net/#t

