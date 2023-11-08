Return-Path: <devicetree+bounces-14534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5087E54B2
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E6F32812A5
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E00154A9;
	Wed,  8 Nov 2023 11:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=monstr-eu.20230601.gappssmtp.com header.i=@monstr-eu.20230601.gappssmtp.com header.b="jOo0E2NW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488E315487
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 11:05:18 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE5E199
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 03:05:17 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so11226609a12.3
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 03:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20230601.gappssmtp.com; s=20230601; t=1699441516; x=1700046316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YDWKrsEOVNBl36ebast7qCeEeT9qsCKUvHa1WF5S8jU=;
        b=jOo0E2NWlq4E7pLImSdZ+phT3eAgruxX2mH/DfweRbhXfwHs/BfFk3TMjIo/sPJrm/
         40118RCfMG3ldhitM6LN9zJ2E7M8mJP/De+BeiWWCJCSQ1AUddT40D7h3JoeEeBYctzu
         vVUdZFudx1/8qaykXJ+8KGS/ZxhvowrNkEh9uIxx4ExokOXNAkwZb63xumC83HRtmJYy
         NVwQsWHjfVrpoMAhC3URcqUvUeIMkaMVj/tALW6/qyHmGN/nQVP7bZuThSA9K10zbWB3
         TsuYcsjTlEGbdQud5TIgN5wOXpGlM0cDdU/gull1SonES1rlmqmcDxqw9KHRa5z0OZQa
         +dCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699441516; x=1700046316;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YDWKrsEOVNBl36ebast7qCeEeT9qsCKUvHa1WF5S8jU=;
        b=DtInkatWosj8llbj5UXNRVQAoYJSWHN1LBKWFDz7e72c0ddeKvN/p8aWJyCjviA593
         Mzr6PEsdEK4e+RNUpl9QSSWQblxn880vGvB6P5PL+GP6KtESOjVoY6vU3esx9yYU1i2Z
         yFtOKfsozTY56VQiDeCPnETM3bYmYSu59Mm/Am4mwUF1SxTKxT+8Kt7udpsWNm+fyTtc
         RXEvzgD7+Sm77S98/HkfzT6chUrhMQrqtefRF3Se2T2s/xMQYz6ND4QfB+Kj8yDE1VVY
         g/PUjqEpsDog7IFLNGAyNmJ/a/FQSnF4J4Kt0qwQNfVzgUl2UsWtf4P+phLB9n0dwZpL
         fpmQ==
X-Gm-Message-State: AOJu0YzbEgQ47bVp5pooOjY/y7+5AN9fsueuvHHbnoELOeS9VGPfTtnX
	Na3eIILovqJZT9N1xE16DgNXLA==
X-Google-Smtp-Source: AGHT+IHWubsmimxzts9ao87s4NJNMwOGNzaOMwqRcVKeA5Go94AWUVJwbFVpsVuzlIrM5I0/JPNX6w==
X-Received: by 2002:a17:907:9807:b0:9bf:388e:8e97 with SMTP id ji7-20020a170907980700b009bf388e8e97mr1067734ejc.67.1699441515803;
        Wed, 08 Nov 2023 03:05:15 -0800 (PST)
Received: from [10.254.183.223] ([149.199.62.131])
        by smtp.gmail.com with ESMTPSA id dc17-20020a170906c7d100b009b9aa8fffdasm856373ejb.131.2023.11.08.03.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 03:05:15 -0800 (PST)
Message-ID: <f7d5c3ea-4f72-4b50-93c9-e27977f8cf75@monstr.eu>
Date: Wed, 8 Nov 2023 12:05:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: soc: Add new board description for
 MicroBlaze V
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, michal.simek@xilinx.com, git@xilinx.com,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <50c277c92c41a582ef171fb75efc6a6a4f860be2.1699271616.git.michal.simek@amd.com>
 <20231106-hangnail-prankster-a04e713bed35@spud>
 <4223470c-5596-4168-9c89-e701559fbbed@amd.com>
 <20231107-expensive-jitters-92e454f77ea8@spud>
 <8b17622b-de1a-4075-9527-8755f5e4dc14@amd.com>
 <20231108-five-womankind-6ee2462c93b9@spud>
 <5a26431a-22bd-43f7-a9bc-d167fb8fc32c@amd.com>
 <20231108-copper-scoff-b4de5febb954@spud>
From: Michal Simek <monstr@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
In-Reply-To: <20231108-copper-scoff-b4de5febb954@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/8/23 11:28, Conor Dooley wrote:
> On Wed, Nov 08, 2023 at 11:24:20AM +0100, Michal Simek wrote:
>>
>>
>> On 11/8/23 11:12, Conor Dooley wrote:
>>> On Wed, Nov 08, 2023 at 11:06:53AM +0100, Michal Simek wrote:
>>>>
>>>>
>>>> On 11/7/23 22:18, Conor Dooley wrote:
>>>>> On Tue, Nov 07, 2023 at 12:09:58PM +0100, Michal Simek wrote:
>>>>>>
>>>>>>
>>>>>> On 11/6/23 18:07, Conor Dooley wrote:
>>>>>>> On Mon, Nov 06, 2023 at 12:53:40PM +0100, Michal Simek wrote:
>>>>>>>> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
>>>>>>>> It is hardware compatible with classic MicroBlaze processor. Processor can
>>>>>>>> be used with standard AMD/Xilinx IPs including interrupt controller and
>>>>>>>> timer.
>>>>>>>>
>>>>>>>> Signed-off-by: Michal Simek <michal.simek@amd.com>
>>>>>>>> ---
>>>>>>>>
>>>>>>>>      .../devicetree/bindings/soc/amd/amd.yaml      | 26 +++++++++++++++++++
>>>>>>>
>>>>>>> Bindings for SoCs (and by extension boards with them) usually go to in
>>>>>>> $arch/$vendor.yaml not into soc/$vendor/$vendor.yaml. Why is this any
>>>>>>> different?
>>>>>>
>>>>>> I actually found it based on tracking renesas.yaml which describes one of
>>>>>> risc-v board. No problem to move it under bindings/riscv/
>>>>>
>>>>> That one is kinda a special case, as it contains arm/arm64/riscv.
>>>>
>>>> If they are kinda a special case then what are we?
>>>> All AMD/Xilinx platforms(ZynqMP/Versal/Versal NET) can have
>>>> arm/arm64/riscv/microblaze cpus(riscv/microblaze as soft cores) in the same
>>>> board (IIRC I have also seen xtensa soft core on our chips too).
>>>
>>> That would be an argument iff you had all of those in a single file, not
>>> when you only have a single compatible for a riscv "soc" in it.
>>
>> But DT (compare to System DT) is all the time describing system from cpu
>> point of view. Or are they describing all that 3 different cpus via the same
>> DT?
> 
> Please look at the contents of renesas.yaml & the commit that moved it
> to its current location. I'm only talking about the binding, not any
> users.

Thanks for pointer.

"   renesas.yaml lists out all the Renesas SoC's and the platforms/EVK's which
     is either ARM32/ARM64. It would rather make sense if we move renesas.yaml
     to the soc/renesas folder instead. This is in preparation for adding a new
     SoC (RZ/Five) from Renesas which is based on RISC-V."

It sounds like boards with arm32 or arm64 or risc-v.

It means I should actually move 
Documentation/devicetree/bindings/arm/xilinx.yaml to new location.

In our case we have even systems where you have arm32 (r5 or r52) with arm64 
(a53 or a72 or a78) with soft cores (MicroBlaze and later MB-V) on the same board.

Every board which is listed in xilinx.yaml can have MicroBlazes in it.

Thanks,
Michal


-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs

