Return-Path: <devicetree+bounces-11398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A007D5A31
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1FC0B20BC0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C5C13B788;
	Tue, 24 Oct 2023 18:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="dl0Z3I2o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63E8374ED
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:11:05 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 804D0111
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:11:03 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-408363c2918so5629265e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1698171062; x=1698775862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dKxR0O8nMebNGWqyGQ9J2L+zEiSIfrsVmyfDrAKwhR8=;
        b=dl0Z3I2oLFlC18j2c/Kq7mwVvuHOK/vmrQpO0xeY+dLNbyhyQUrPkA1B3wOElJJNxS
         zXKXVeAwL83tPLOh14ddkeLx7kHTVA+Ak9R03UL2B+/3BWlAtlNcPA+x5IeCcOpvMC9T
         3mCh4aXi2UJaMYWkUBybnmW8wnOp3J4vuLuNvEC/jTuTg0slllVZffG4P4fKvEJr7VIr
         SzgcQDldgZYeLA0fM08KcB5pbCF6BnrAXyh7abAS077+oLGk7/GpvbBo09Qj6ZZQ6G+F
         ihrNE9Sv21gG5yFJBV7tmVahJPOEWHP0OaxxZeBHMkFEnruisafHAzilUECA/sYVpu7i
         cgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698171062; x=1698775862;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKxR0O8nMebNGWqyGQ9J2L+zEiSIfrsVmyfDrAKwhR8=;
        b=srdg3OQ2HwzNH6GK6SBX3O8pj4RAU584KJkNRB/+j/E3lsO4noPlkKWLuyNA1vB4+W
         v4q7X7CGO+B9O/Lc18d/mpDH/p+tTihJferik7qa5gTYITQjP65hazgLhZw1syA8Os5f
         g5mXecJNh+V7rqDPAt22ZCPOAgcVOYaelQoSDicWG5OMV0OGNVxH7dMKHNbXuw1lZnDa
         /vEk3pp7KFiz6LdbYxsJb9pKwpoFvq3OzOfJYMt6tzqdndLwYYuBi83MqU6MES8WQpnH
         D9rAntHwWQTRN52dTza6+xrlEgtLqYD5N+G484nVgnGUM3bo6mx8cl5iM+IDThi1gnCG
         6t6A==
X-Gm-Message-State: AOJu0Yyi88/kM4SRXqx5XOznw73433mM658cegmok5JuyWJCFLTAddbS
	MWC0gMdTPYOLnA4F0KzgZWGN3A==
X-Google-Smtp-Source: AGHT+IEzTUYZHBwMWOmDylM23+SpgZ4YldKTRCyQKmiDghga3Ul4JN8Saqse9bLNdqzRU8gTtkmr7w==
X-Received: by 2002:adf:b649:0:b0:32f:51c6:cd6c with SMTP id i9-20020adfb649000000b0032f51c6cd6cmr1688373wre.2.1698171061901;
        Tue, 24 Oct 2023 11:11:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:9f43:3ca4:162c:d540? ([2a01:e0a:999:a3a0:9f43:3ca4:162c:d540])
        by smtp.gmail.com with ESMTPSA id a10-20020adfe5ca000000b0032415213a6fsm10361744wrn.87.2023.10.24.11.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 11:11:01 -0700 (PDT)
Message-ID: <3a5462f6-62d4-49e3-ae78-374fb5cbad5a@rivosinc.com>
Date: Tue, 24 Oct 2023 20:11:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/19] riscv: add ISA extension parsing for scalar
 crypto
Content-Language: en-US
To: Evan Green <evan@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Conor Dooley <conor@kernel.org>,
 Samuel Ortiz <sameo@rivosinc.com>, Conor Dooley <conor.dooley@microchip.com>
References: <20231017131456.2053396-1-cleger@rivosinc.com>
 <20231017131456.2053396-3-cleger@rivosinc.com>
 <CALs-HssmufWCKzaGy7BwWz4n4hfwV9NjjRD-O_JeupM-p=Ov+w@mail.gmail.com>
 <d0ea4996-5c48-47b4-99b0-f4211276e0b2@rivosinc.com>
 <56f6af04-bdf4-4b85-99dc-9eb4f391d7ad@rivosinc.com>
 <CALs-Hsvy411MnHQXHLK8u4JmM+LO5R2tuCxY6zQco7BKJONqPA@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <CALs-Hsvy411MnHQXHLK8u4JmM+LO5R2tuCxY6zQco7BKJONqPA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 24/10/2023 18:37, Evan Green wrote:
> On Tue, Oct 24, 2023 at 2:30 AM Clément Léger <cleger@rivosinc.com> wrote:
>>
>>
>>
>> On 24/10/2023 09:18, Clément Léger wrote:
>>>
>>>
>>> On 23/10/2023 18:21, Evan Green wrote:
>>>> On Tue, Oct 17, 2023 at 6:15 AM Clément Léger <cleger@rivosinc.com> wrote:
>>>>>
>>>>> From: Evan Green <evan@rivosinc.com>
>>>>>
>>>>> The Scalar Crypto specification defines Zk as a shorthand for the
>>>>> Zkn, Zkr and Zkt extensions. The same follows for both Zkn, Zks and Zbk,
>>>>> which are all shorthands for various other extensions. The detailed
>>>>> breakdown can be found in their dt-binding entries.
>>>>>
>>>>> Since Zkn also implies the Zbkb, Zbkc and Zbkx extensions, simply passing
>>>>> "zk" through a DT should enable all of Zbkb, Zbkc, Zbkx, Zkn, Zkr and Zkt.
>>>>> For example, setting the "riscv,isa" DT property to "rv64imafdc_zk"
>>>>> should generate the following cpuinfo output:
>>>>> "rv64imafdc_zicntr_zicsr_zifencei_zihpm_zbkb_zbkc_zbkx_zknd_zkne_zknh_zkr_zkt"
>>>>>
>>>>> riscv_isa_ext_data grows a pair of new members, to permit setting the
>>>>> relevant bits for "bundled" extensions, both while parsing the ISA string
>>>>> and the new dedicated extension properties
>>>>>
>>>>> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
>>>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>>>> Signed-off-by: Evan Green <evan@rivosinc.com>
>>>>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>>>>
>>>> My tree might be out of sync, but in my search for riscv_isa_ext, I
>>>> also found a use in print_isa() (cpu.c) where we're reaching into
>>>> riscv_isa_ext[].id and assuming it's always valid. If that's still in
>>>> there we'll want to fix up that spot too, since now with bundles .id
>>>> may or may not be valid.
>>>
>>> Oh indeed, the array is visible outside of this compilation unit :/.
>>> I'll check that before sending V3.
>>
>> After looking a bit more at that, it actually seems that id is used in
>> cpuinfo to determine which extensions are present which means you are
>> right, bundle_size needs to be accounted for.
>>
>> Looking at it also raises the question (again) of exposing the "bundles"
>> extensions themselves or not in cpuinfo output. With the current setup,
>> the bundles extensions won't be visible in cpuinfo output. For instance
>> if Zk was in the isa string, then it will not be visible in the cpuinfo
>> output, only the child extensions. One solution would be to always have
>> a valid id for each extension. So we would have one for Zk for instance.
>>
>> We would then have a similar setup for all "bundles" or "subset"
>> extensions, they would have a id for all of them. For instance, Zk would
>> become:
>>
>> __RISCV_ISA_EXT_DATA_BUNDLE(zk, RISCV_ISA_EXT_ZK, riscv_zk_bundled_exts)
>>
>> Same would go for zvbb (riscv_zvbb_subset_exts would only contain Zvkb):
>>
>> __RISCV_ISA_EXT_DATA_BUNDLE(zk, RISCV_ISA_EXT_ZVBB, riscv_zvbb_subset_exts)
>>
>> For the sake of completeness, I feel like it would be good to have all
>> the extensions (bundles or not) visible in the riscv_isa_ext.
>>
>> Any objection ?
> 
> I could be persuaded that it's a good idea, but there are arguments to
> be made for not defining them as separate bits:
> 
> 1. Having two (sets of) bits that mean the same thing means usermode
> now has to decide which one to query, or query both. Multiple values
> that mean the same thing is always something that makes me nervous.

That is indeed an acceptable cons.

> 2. To avoid these two sets having different answers, we'd have to
> solve the reverse problem too: If all of the bundled extensions that
> make up Zk are on, we'd need to detect that and turn Zk on as well.

Oh yes, sorry, already forgot that point :/ Well, I guess things sorted
out by themselves. Let's do what you proposed:

- Pure lasso extensions (Zk) will simply result in all the sub
extensions being enable, there won't be any .id specified for these
ones, simply a bundle of extensions.

- "Superset" extensions (Zvbb for instance) will have their own .id as
well as a bundle made of subsets extensions.

Clément

> That code would also need to know the difference between a pure lasso
> like Zk, where you should flip it on if its components are on, and the
> loose change variant we were discussing on the other thread (Zvkb?),
> where you cannot.
> 
> Pretending pure lasso extensions didn't exist on their own was a way
> to sidestep the problem.
> -Evan

