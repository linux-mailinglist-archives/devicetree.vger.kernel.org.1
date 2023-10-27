Return-Path: <devicetree+bounces-12463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B45907D99FD
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3AD51C20FDA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA4E1EB57;
	Fri, 27 Oct 2023 13:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zdBw1+6d"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E31EB4A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:34:27 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1088C18A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:34:25 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so1430666f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698413663; x=1699018463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rWXlEVm7BmX7wHuL11qkF7f8G0gaxC3EbzsfoFC6RTo=;
        b=zdBw1+6dqq6zp8OOVFFDqgNOKJW3PaHVqyfyzvlKfQh5xnZXbSua0J0DoJHog6QSD5
         bZRk86KXO9dCNAEd7IP94xof1mKUVqtqN8fjiDr6sNDJDvpz2VCCaTGxz/8QyNNe2JOx
         6V2P7efoRGn/W5KaEnw6wysMngh/Efwwc7T/gwh9pAJqoufwvXhYiX17sPpMNADSVy77
         admWsjqJdrlML3THIUIjMb9+4h9Q2ah9sztlQpZ78DTb+t9A3N1eHJGzaEHcZirMMmYf
         VrntfQfauWn5P+D9Bve9kjXNqj0BEF8aimfuo5GbjPenpvYYwQfnlfSb1Vd1X7++ejZD
         INdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698413663; x=1699018463;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rWXlEVm7BmX7wHuL11qkF7f8G0gaxC3EbzsfoFC6RTo=;
        b=DaxMosAMQAxzawJ6rCAebBx/GJwHMe6TS3BIU7aGEMGkKp7tnVfoEOfA0PvNuMMpBL
         7mI3mTybBROWMlaydHSqafSXMIQOiJrGwxd735Fsz4yIhuZ236PQLvzn7TULEUw5s8D3
         2SxSd1qUdmr75ucj64rYY3bY4Fu8PXGo1NCLusjqSzTCXkZ2ra+Y3m6wojmXSRx9+YtB
         ugM4pYpd0v0DOMJXI3Pfvfhalxo0mT8E6YHl00eJHZXe3lNYmbCcnFnOIVkme1Eo/sLs
         B0eOVrZuhz+x6oBKyxIt07rXQbE8Er42HJCkN1xTkok+Dc4sf9ig2CWlzcHOopsfurMr
         5F0A==
X-Gm-Message-State: AOJu0YxyFOaE8C9vQJAFTiEi0fq1TR9MxdKBYqFKTNfW74DYd98Nnp1Z
	ftkTmUwgCOTqtnBTvxJNdRTwWA==
X-Google-Smtp-Source: AGHT+IGTKYlxeMGbKvMng7oyFVLH2Eb21STPmNCCi/GdxnbZ7lfAeaYDBGoqDKjebhVx/rZdlHAI7Q==
X-Received: by 2002:adf:f6c7:0:b0:32d:c0c9:f661 with SMTP id y7-20020adff6c7000000b0032dc0c9f661mr2335821wrp.51.1698413663368;
        Fri, 27 Oct 2023 06:34:23 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:7207:bbe0:91fb:ad90? ([2a05:6e02:1041:c10:7207:bbe0:91fb:ad90])
        by smtp.googlemail.com with ESMTPSA id d5-20020a5d6445000000b0032da4f70756sm1796089wrw.5.2023.10.27.06.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 06:34:22 -0700 (PDT)
Message-ID: <65c38717-3e0c-46d3-a124-29cae48f1a2e@linaro.org>
Date: Fri, 27 Oct 2023 15:34:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
 <d0e70434-e273-4799-c5ec-bbee1b3f5cc7@linaro.org>
 <540136d4-6f8f-49a6-80ff-cc621f2f462b@starfivetech.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <540136d4-6f8f-49a6-80ff-cc621f2f462b@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 27/10/2023 11:17, Xingyu Wu wrote:
> On 2023/10/25 22:39, Daniel Lezcano wrote:
>> 
>> Hi Xingyu,
>> 
>> 
>> On 25/10/2023 11:04, Xingyu Wu wrote:
>>> On 2023/10/24 22:56, Daniel Lezcano wrote:
>>>> 
>>>> Hi Xingyu,
>>>> 
>>>> 
>>>> On 19/10/2023 07:35, Xingyu Wu wrote:
>>>>> Add timer driver for the StarFive JH7110 SoC.
>>>> 
>>>> As it is a new timer, please add a proper nice description
>>>> explaining the timer hardware, thanks.
>>> 
>>> OK. Will add the description in next version.
>>> 
>>>> 
>>>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com> --- 
>>>>> MAINTAINERS                        |   7 + 
>>>>> drivers/clocksource/Kconfig        |  11 + 
>>>>> drivers/clocksource/Makefile       |   1 + 
>>>>> drivers/clocksource/timer-jh7110.c | 380
>>>>> +++++++++++++++++++++++++++++ 4 files changed, 399
>>>>> insertions(+) create mode 100644
>>>>> drivers/clocksource/timer-jh7110.c
>>>>> 
>>>>> diff --git a/MAINTAINERS b/MAINTAINERS index
>>>>> 7a7bd8bd80e9..91c09b399131 100644 --- a/MAINTAINERS +++
>>>>> b/MAINTAINERS @@ -20473,6 +20473,13 @@ S:    Maintained F:
>>>>> Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>>>>>
>>>>> 
F:    sound/soc/starfive/jh7110_tdm.c
>>>>> +STARFIVE JH7110 TIMER DRIVER +M:    Samin Guo
>>>>> <samin.guo@starfivetech.com> +M:    Xingyu Wu
>>>>> <xingyu.wu@starfivetech.com> +S:    Supported +F:
>>>>> Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
>>>>>
>>>>> 
+F:    drivers/clocksource/timer-jh7110.c
>>>>> + STARFIVE JH71X0 CLOCK DRIVERS M:    Emil Renner Berthing
>>>>> <kernel@esmil.dk> M:    Hal Feng <hal.feng@starfivetech.com> 
>>>>> diff --git a/drivers/clocksource/Kconfig
>>>>> b/drivers/clocksource/Kconfig index
>>>>> 0ba0dc4ecf06..821abcc1e517 100644 ---
>>>>> a/drivers/clocksource/Kconfig +++
>>>>> b/drivers/clocksource/Kconfig @@ -641,6 +641,17 @@ config
>>>>> RISCV_TIMER is accessed via both the SBI and the rdcycle
>>>>> instruction.  This is required for all RISC-V systems. 
>>>>> +config STARFIVE_JH7110_TIMER +    bool "Timer for the
>>>>> STARFIVE JH7110 SoC" +    depends on ARCH_STARFIVE ||
>>>>> COMPILE_TEST
>>>> 
>>>> You may want to use ARCH_STARFIVE only if the platform can make
>>>> this timer optional. Otherwise, set the option from the
>>>> platform Kconfig and put the bool "bla bla" if COMPILE_TEST
>>> 
>>> Yes, this timer only be used on the StarFive SoC. So I intend to
>>> modify to this:
>>> 
>>> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST depends
>>> on ARCH_STARFIVE
>> 
>> In this case, you should change the platform config and select the
>> timer from there. Remove the depends on ARCH_STARFIVE so it is
>> possible enable cross test compilation. Otherwise COMPILE_TEST will
>> not work on other platforms.
>> 
>> [ ... ]
>> 
> 
> It is not a kernel timer or clocksource. It will not work on other
> platforms and is just used on the JH7110 SoC. I think I needn't
> remove it. Maybe I modify to this:
> 
> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST depends on
> ARCH_STARFIVE || COMPILE_TEST

I think there is a misunderstanding.

If we want to compile on x86 drivers for other platforms, we select 
COMPILE_TEST so we can enable the timer and do compilation testing.

In this case, we may want to compile the STARFIVE JH7110 on x86 just to 
double check it is correctly compiling (eg. we do changes impacting all 
the drivers). If the ARCH_STARFIVE dependency is set, then that won't be 
possible.

So it should be:

bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
...

And in arch/riscv/Kconfig.socs

config SOC_STARFIVE
     ...
     select STARFIVE_JH7110_TIMER
     ...

>>>>> +struct jh7110_clkevt { +    struct clock_event_device evt; +
>>>>> struct clocksource cs; +    bool cs_is_valid; +    struct clk
>>>>> *clk; +    struct reset_control *rst; +    u32 rate; +    u32
>>>>> reload_val; +    void __iomem *base; +    char
>>>>> name[sizeof("jh7110-timer.chX")]; +}; + +struct
>>>>> jh7110_timer_priv { +    struct clk *pclk; +    struct
>>>>> reset_control *prst; +    struct jh7110_clkevt
>>>>> clkevt[JH7110_TIMER_CH_MAX];
>>>> 
>>>> Why do you need several clock events and clock sources ?
>>> 
>>> This timer has four counters (channels) which run independently.
>>> So each counter can have its own clock event and clock source to
>>> configure different settings.
>> 
>> The kernel only needs one clocksource. Usually multiple clockevents
>> are per-cpu based system.
>> 
>> The driver does not seem to have a per cpu timer but just
>> initializing multiple clockevents which will end up unused, wasting
>> energy.
>> 
>> 
> 
> The board of the StarFive JH7110 SoC has two types of timer :
> riscv-timer and jh7110-timer. It boots by riscv-timer(clocksource)
> and the jh7110-timer is optional and additional. I think I should
> initialize the four channels of jh7110-timer as clockevents not
> clocksource pre-cpu.

If no clocksource is needed on this SoC because riscv timers are used, 
then it is not useful to register a clocksource for this timer and the 
corresponding code can go away.

If the clockevent is optional why do you need this driver at all?



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


