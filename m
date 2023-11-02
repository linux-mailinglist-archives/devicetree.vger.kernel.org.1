Return-Path: <devicetree+bounces-13617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8614D7DF50C
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39409281B68
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D7313AEE;
	Thu,  2 Nov 2023 14:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ajkelu3t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3A11BDEB
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 14:30:13 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82EA6D7F
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:29:40 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32faea0fa1fso368271f8f.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 07:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698935379; x=1699540179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+zTIXrfkswX74UPgsg79qK4Ca7pyfesNXn6v+dgCKc8=;
        b=Ajkelu3tJZ6qlpnLxibTPuXpJ7zDqzkHgethk5yy4oph04AhBlv27oDqcBSdRApLdn
         vIEx9prhaU8GL45jFczNjkZ2m0L1RTT/AxG1dEDLYaWlfHhlQbfI2WkAHeMErte9Lsf9
         euQvlB8bzv8fhQCVB1fON5f3awjTlbhLijH5yu/pVXjOQEtn0lEiaXqsLumGkiOhBo+l
         OiUDr4o4XQRSO5CM22DmGWh32FZvPsGjq1b9ry1BZy0grFITUZHhz75mqHJTKtHN6FVV
         apywaWaORAuag/ltC4cRoBRr97XJ0jtednvdaMVuovX0TEuWP45n3qU8neP/4WZ50pfl
         XXqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698935379; x=1699540179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+zTIXrfkswX74UPgsg79qK4Ca7pyfesNXn6v+dgCKc8=;
        b=b9QKSjLwY4iBMEBJIqqo//awiBPyNidxzO+eBVi0sdUg3gCPy1eOsB1kBeOyu0zu6X
         ptV+bz+dg6RfnaT1WrD6byXPZhU3h7iX4IXWxk1YWuEMnspCsN2LKfV79gBYaN6OARs6
         MW+nYI5VYeBKzYhjRRBTe53T0hRo3qSZjo6ajajiIPcQMo1TQHs3jo3y8aZJEOvZSoqd
         TTCfTMOttJT0sokL3pDbDS5myIMl7g6VsmBiD/Bk0RWNcwT2G2wgmO1nhPTiVFkiWslG
         pa5K8+rQBumCtht8EouGRUJdqtcPOhOCszRtbdahWBFce55w/EaRzsMieRV3M2BvLSzV
         HWxA==
X-Gm-Message-State: AOJu0YyFYwnZ6ujkJ8PAnePVio14SxAJGqLHCKaJpf5L8yVjOavt+onn
	SsNWTxrmOTTV+IybtGCY0PjuHw==
X-Google-Smtp-Source: AGHT+IGgX2MJYo2ApjloC6Zm/yknBo7VGdemxbW/96ZkWLnzIPO1lx+Et0ljnlBeTIuHOQiRVzEAWA==
X-Received: by 2002:a5d:4a0c:0:b0:32f:922a:fc49 with SMTP id m12-20020a5d4a0c000000b0032f922afc49mr7100033wrq.21.1698935378579;
        Thu, 02 Nov 2023 07:29:38 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:bd6b:8105:85a4:1102? ([2a05:6e02:1041:c10:bd6b:8105:85a4:1102])
        by smtp.googlemail.com with ESMTPSA id w11-20020adfcd0b000000b00326f0ca3566sm2594397wrm.50.2023.11.02.07.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 07:29:38 -0700 (PDT)
Message-ID: <a8f0011c-5689-4071-b5e0-90bd6b7c66bc@linaro.org>
Date: Thu, 2 Nov 2023 15:29:37 +0100
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
 <65c38717-3e0c-46d3-a124-29cae48f1a2e@linaro.org>
 <72ad5029-42b2-481a-887f-8f6079d8859b@starfivetech.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <72ad5029-42b2-481a-887f-8f6079d8859b@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Xingyu,

On 02/11/2023 14:15, Xingyu Wu wrote:

[ ... ]

>>>>>>> +struct jh7110_clkevt { +    struct clock_event_device
>>>>>>> evt; + struct clocksource cs; +    bool cs_is_valid; +
>>>>>>> struct clk *clk; +    struct reset_control *rst; +    u32
>>>>>>> rate; +    u32 reload_val; +    void __iomem *base; +
>>>>>>> char name[sizeof("jh7110-timer.chX")]; +}; + +struct 
>>>>>>> jh7110_timer_priv { +    struct clk *pclk; +    struct 
>>>>>>> reset_control *prst; +    struct jh7110_clkevt 
>>>>>>> clkevt[JH7110_TIMER_CH_MAX];
>>>>>> 
>>>>>> Why do you need several clock events and clock sources ?
>>>>> 
>>>>> This timer has four counters (channels) which run
>>>>> independently. So each counter can have its own clock event
>>>>> and clock source to configure different settings.
>>>> 
>>>> The kernel only needs one clocksource. Usually multiple
>>>> clockevents are per-cpu based system.
>>>> 
>>>> The driver does not seem to have a per cpu timer but just 
>>>> initializing multiple clockevents which will end up unused,
>>>> wasting energy.
>>>> 
>>>> 
>>> 
>>> The board of the StarFive JH7110 SoC has two types of timer : 
>>> riscv-timer and jh7110-timer. It boots by
>>> riscv-timer(clocksource) and the jh7110-timer is optional and
>>> additional. I think I should initialize the four channels of
>>> jh7110-timer as clockevents not clocksource pre-cpu.
>> 
>> If no clocksource is needed on this SoC because riscv timers are
>> used, then it is not useful to register a clocksource for this
>> timer and the corresponding code can go away.
>> 
>> If the clockevent is optional why do you need this driver at all?
>> 
>> 
>> 
> 
> Hi Daniel,
> 
> Sorry, maybe I didn't express it clearly enough. I use this
> jh7110-timer as a global timer on the SoC and riscv-timer as cpu
> local timer. So these are something different.
> 
> These four counters in this jh7110-timer are exactly the same and
> independent of each other. If this timer is used as a global timer,
> do I use only one or all of the counters to register clocksource and
> clockevent?

Yes.

The global timer is only there when the CPU is powered down at idle 
time, so the time framework will switch to the broadcast timer and there 
can be only one instance.

If you register all the counters, only one will be used by the kernel, 
so it pointless to add them all.

On the clocksource side, you may want to question if it is really 
useful. The riscv has a clocksource with a higher rate and flagged as 
continuous [1]. So if the JH7110 clocksource is registered, it won't be 
used too.

Hope that helps

   -- Daniel

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/tree/drivers/clocksource/timer-riscv.c#n68

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


