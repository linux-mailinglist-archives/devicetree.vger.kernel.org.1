Return-Path: <devicetree+bounces-11911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 212097D6EDD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9F80281CD9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF42C8EA;
	Wed, 25 Oct 2023 14:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rqInz86u"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9106B2AB34
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:39:23 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D23A9DC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:39:20 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4081ccf69dcso5854905e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698244759; x=1698849559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CB2fosNyHpnLw68d0tSWZGOJRnHryfe3IEs9QTF/RYI=;
        b=rqInz86ufeeDKaBhGjYlLXxAz+tTNal+VF/vrivCM2NlZtXNoD0FZEFV/+aqV8A5p6
         wTLtVGlfve6UuxGhZ3map5eO72WOt+5O+ufVcSaab7d9anvxI1hC/F/fuPQUx0TP5RBm
         sw3exhZJvwCmgOgDHtKDOGGjRML7WRMxwYCnmvHOY5MBjhi1bd72eh1dv8qBZYlUhBiF
         KNnHYhiTmWLc51bU1CyMbpg5Nn8j2qXXt3wnZnguHgtvnvmTgLdYM8EnI319riGStdPz
         JaTePrfLFU+/BjgAJ+6J7MSg53jxTLOlOgnxa5OCYDXZVWOwwE/vHv0KddhU2ahuQiOK
         i5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244759; x=1698849559;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CB2fosNyHpnLw68d0tSWZGOJRnHryfe3IEs9QTF/RYI=;
        b=Q1784HzbpKp1Q9sspSXtbzqudBzfURrrXKmggfNUUiiljmhZizsOU9bIhs1+Wychnm
         qk7gumMld6J6Q0RODLUH42j4WZ4NLTrJQCGjuiErv6z58Mtz7XF2s5iEIAUevsL18p78
         hixw092ZTNMv778Ow4gVy1+kRiK6tN2+6xCVaVX+edeTwC6pdPYCMxwewKswWD+ftajd
         ahPH6/sWH1Drh4hVqMQEUKirUtW9TK7W2GAIa/IpNDAsJvAaC3evL0GZ00/lDM+E5rmo
         DnUv1bg0UH/28zEyT08pr3rS2s5ilNveZtiVUyKnCAgfJi2HCSuTeI0n7qmWpa0xh6OU
         cnHA==
X-Gm-Message-State: AOJu0YxjiHORjlUMmpetrau2w1J5KYaeb7dkots43C84mbPtDOTWjZop
	S4IZ9VuXUD0JzAVRkzm52ArYUwBFiwMPUcEoxuu6ew==
X-Google-Smtp-Source: AGHT+IGqXcpRVWBXo+8Ix92wajAH3UIGgltE405zdSv3Pgfz1FUcUSG0CISD+Q5m0T1OIr23+ANGxQ==
X-Received: by 2002:a05:600c:4fc6:b0:405:19dd:ad82 with SMTP id o6-20020a05600c4fc600b0040519ddad82mr15707940wmq.16.1698244758561;
        Wed, 25 Oct 2023 07:39:18 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id o12-20020a05600c4fcc00b0040775501256sm14774508wmq.16.2023.10.25.07.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 07:39:18 -0700 (PDT)
Message-ID: <d0e70434-e273-4799-c5ec-bbee1b3f5cc7@linaro.org>
Date: Wed, 25 Oct 2023 16:39:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Xingyu Wu <xingyu.wu@starfivetech.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Walker Chen <walker.chen@starfivetech.com>,
 Samin Guo <samin.guo@starfivetech.com>, linux-kernel@vger.kernel.org,
 Conor Dooley <conor@kernel.org>
References: <20231019053501.46899-1-xingyu.wu@starfivetech.com>
 <20231019053501.46899-3-xingyu.wu@starfivetech.com>
 <3f76f965-7c7b-109e-2ee0-3033e332e84b@linaro.org>
 <bb819333-52d3-49fc-9bb9-1a227bd5ca8f@starfivetech.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <bb819333-52d3-49fc-9bb9-1a227bd5ca8f@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Xingyu,


On 25/10/2023 11:04, Xingyu Wu wrote:
> On 2023/10/24 22:56, Daniel Lezcano wrote:
>>
>> Hi Xingyu,
>>
>>
>> On 19/10/2023 07:35, Xingyu Wu wrote:
>>> Add timer driver for the StarFive JH7110 SoC.
>>
>> As it is a new timer, please add a proper nice description explaining the timer hardware, thanks.
> 
> OK. Will add the description in next version.
> 
>>
>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>>> ---
>>>    MAINTAINERS                        |   7 +
>>>    drivers/clocksource/Kconfig        |  11 +
>>>    drivers/clocksource/Makefile       |   1 +
>>>    drivers/clocksource/timer-jh7110.c | 380 +++++++++++++++++++++++++++++
>>>    4 files changed, 399 insertions(+)
>>>    create mode 100644 drivers/clocksource/timer-jh7110.c
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 7a7bd8bd80e9..91c09b399131 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -20473,6 +20473,13 @@ S:    Maintained
>>>    F:    Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>>>    F:    sound/soc/starfive/jh7110_tdm.c
>>>    +STARFIVE JH7110 TIMER DRIVER
>>> +M:    Samin Guo <samin.guo@starfivetech.com>
>>> +M:    Xingyu Wu <xingyu.wu@starfivetech.com>
>>> +S:    Supported
>>> +F:    Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
>>> +F:    drivers/clocksource/timer-jh7110.c
>>> +
>>>    STARFIVE JH71X0 CLOCK DRIVERS
>>>    M:    Emil Renner Berthing <kernel@esmil.dk>
>>>    M:    Hal Feng <hal.feng@starfivetech.com>
>>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
>>> index 0ba0dc4ecf06..821abcc1e517 100644
>>> --- a/drivers/clocksource/Kconfig
>>> +++ b/drivers/clocksource/Kconfig
>>> @@ -641,6 +641,17 @@ config RISCV_TIMER
>>>          is accessed via both the SBI and the rdcycle instruction.  This is
>>>          required for all RISC-V systems.
>>>    +config STARFIVE_JH7110_TIMER
>>> +    bool "Timer for the STARFIVE JH7110 SoC"
>>> +    depends on ARCH_STARFIVE || COMPILE_TEST
>>
>> You may want to use ARCH_STARFIVE only if the platform can make this timer optional. Otherwise, set the option from the platform Kconfig and put the bool "bla bla" if COMPILE_TEST
> 
> Yes, this timer only be used on the StarFive SoC. So I intend to modify to this:
> 
> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
> depends on ARCH_STARFIVE

In this case, you should change the platform config and select the timer 
from there. Remove the depends on ARCH_STARFIVE so it is possible enable 
cross test compilation. Otherwise COMPILE_TEST will not work on other 
platforms.

[ ... ]

>>> +struct jh7110_clkevt {
>>> +    struct clock_event_device evt;
>>> +    struct clocksource cs;
>>> +    bool cs_is_valid;
>>> +    struct clk *clk;
>>> +    struct reset_control *rst;
>>> +    u32 rate;
>>> +    u32 reload_val;
>>> +    void __iomem *base;
>>> +    char name[sizeof("jh7110-timer.chX")];
>>> +};
>>> +
>>> +struct jh7110_timer_priv {
>>> +    struct clk *pclk;
>>> +    struct reset_control *prst;
>>> +    struct jh7110_clkevt clkevt[JH7110_TIMER_CH_MAX];
>>
>> Why do you need several clock events and clock sources ?
> 
> This timer has four counters (channels) which run independently. So each counter can have its own clock event and clock source to configure different settings.

The kernel only needs one clocksource. Usually multiple clockevents are 
per-cpu based system.

The driver does not seem to have a per cpu timer but just initializing 
multiple clockevents which will end up unused, wasting energy.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


