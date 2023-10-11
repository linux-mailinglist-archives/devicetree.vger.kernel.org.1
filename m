Return-Path: <devicetree+bounces-7908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1587C60B1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A2341C2098F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95E11DDC3;
	Wed, 11 Oct 2023 22:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cx5FoHWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2571D546
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:58:04 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A40AF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:58:02 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50435ad51bbso500942e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697065080; x=1697669880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rl55h7C3SyZnNy+O71KrsWqYJTZ+/tLu3QsiXHqMENQ=;
        b=cx5FoHWQwoDmo4aoVgZ/r24lAERsFtFrXStHows8HA1tBpDGOBrlkfQQ6l9EMhGLIy
         q5fMnvA4NQRiaM/hhqJNRFs/3KfeBDhRpt3TLoEmINlvx58X0aBaVxiE56RI1GKpdJzH
         /fek0ihMXYYmIX1o7gHFmV5k0mqwOZj9MbyuB+m1Ix7zQdOZBFgNde7aMNzLiI+TV/Qe
         d7fjXypwSSekoBlMc9qUG01mExBy1R6CfP64XkYZ0mbaIwDmhXJegZD2QTWR7eO5Hxk6
         i6TSas42r/6uXMjI+jd2Fs8oU9rFUtX3o/Im7xak/wIjEGYTajTHLMaV6Rmgu7GlW9Yn
         8Ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065080; x=1697669880;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rl55h7C3SyZnNy+O71KrsWqYJTZ+/tLu3QsiXHqMENQ=;
        b=gR4HVmiAju24FM7AC9VJeua76rU3b3jTaBnikOg+SfKJwVuzwvMg4gf/SRDnzo3NsH
         XRFRUYOXcETFLSflqPeGK9azGdseFa1i/W8V9lvLTcX6LWhHgq3m6OXKUb9XUOpNlD3h
         WNAglSBwIGrtv6CKhsMUH88pJvlJll4MPcGqTlZtShudVUgiVjS7yORj22QxRIpmI6+l
         McXNERdDR/PVlobMPxPOf9Ecsu27JkbHUcF+aDznp+uEWRdTSEBXXE+szUHR/edYULyF
         ZD12No9kKtLIcBIEM7aS+ZrOedjmrdv5kT8oHsWfDoY1c4d1bupVVbQa0+zD4DDAPE1q
         AYTw==
X-Gm-Message-State: AOJu0YwqkI84hVyiiLoi3WaDuVQYkugu3xOzCDFm+OHlbg92RshGZm3c
	TheGphW4pzLEWRWAa2gi2zFf2A==
X-Google-Smtp-Source: AGHT+IHHqCfRObisz/7qoLWP+tfTpeZpdEFKBHfRQVj/YsZMwVwnRuy2ankQ+Gac264p415ytkSyCA==
X-Received: by 2002:ac2:4431:0:b0:503:258d:643c with SMTP id w17-20020ac24431000000b00503258d643cmr17413387lfl.21.1697065079860;
        Wed, 11 Oct 2023 15:57:59 -0700 (PDT)
Received: from [172.30.204.102] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w5-20020ac25985000000b0050579c4d0d5sm2464180lfn.133.2023.10.11.15.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 15:57:59 -0700 (PDT)
Message-ID: <5c4f1bb0-eaa0-4ed9-81aa-9755c033c832@linaro.org>
Date: Thu, 12 Oct 2023 00:57:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 dts file
Content-Language: en-US
To: Trilok Soni <quic_tsoni@quicinc.com>, Mukesh Ojha
 <quic_mojha@quicinc.com>, Komal Bajaj <quic_kbajaj@quicinc.com>,
 agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, luca.weiss@fairphone.com
References: <20231003175456.14774-1-quic_kbajaj@quicinc.com>
 <20231003175456.14774-3-quic_kbajaj@quicinc.com>
 <5da2ba4f-5bf7-46ff-8204-0c169042dbfa@linaro.org>
 <3fd31aaa-f6bf-8440-6b08-fca2803171d9@quicinc.com>
 <dba83334-3971-46e9-9342-1344c5858be8@linaro.org>
 <01c7a346-1e8b-1767-7594-c8adcd4823c3@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <01c7a346-1e8b-1767-7594-c8adcd4823c3@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 19:35, Trilok Soni wrote:
> On 10/11/2023 2:47 AM, Konrad Dybcio wrote:
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
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490.dtsi b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>>>> new file mode 100644
>>>>> index 000000000000..b93270cae9ae
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>>>>> @@ -0,0 +1,94 @@
>>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>>> +/*
>>>>> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
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
>> Stop reinventing the wheel. I'm not going to accept patches that are supposed to define ABI for products that are still in development.
>> Not unless Qualcomm changes their attitude towards unilaterally breaking things for no good reason.
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
>> Why would the firmware you're building care about the market segment you're targeting? The LE vs LA vs LU vs WP vs whatever split is so unnecessary and arbitrary on the firmware/kernel side..
>>
>> The firmware should either be fully relocatable (so that dynamic memory reservation can be used), unified so that there's no changes or better yet stored in separate memory so that q6 cores don't steal the RAM that the user paid for and you can do whatever ugly magic you please in there.
>>
>> This arbitrary segmentation makes it impossible to have a common base, or to explain what device should go where to a newcomer.
> 
> Konrad it is possible to use the same SOC with the multiple segments w/ the different memory maps.
> 
> Memory map here is how you organize the DDR and give it to various S/W and DSP regions etc;
> 
> Also these SOCs are around for sometime and it is possible that new segments may use it. We can't solve
> or know all the new segments need when the SOCs come out. Memory maps does provide that flexibility
> and they don't change often. OEMs has also some flexibility to change the memory map if needed to optimize.
> 
> This SOC is around for quite sometime new usecases are expected to emerge. I don't see it as
> way to stop us from taking these contributions into the linux-arm-msm.
Yes I was way too harsh *and* didn't even clearly say what made me 
upset, please see my reply at:

https://lore.kernel.org/linux-arm-msm/01c7a346-1e8b-1767-7594-c8adcd4823c3@quicinc.com/T/#m717a0f6f6759606870a1f8c1383bc65408d8de07

Konrad

