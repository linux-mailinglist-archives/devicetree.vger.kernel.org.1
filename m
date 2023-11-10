Return-Path: <devicetree+bounces-15045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD837E7FFD
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 19:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AFCBB20B9B
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 18:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2AF338DDE;
	Fri, 10 Nov 2023 18:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="stdUCWcL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245001774A
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 18:03:27 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38D9F29508
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 10:02:53 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4084de32db5so18152255e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 10:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699639361; x=1700244161; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNLq0qmMJNvfKP5O63+BxM6jCmlb62b2gPfwV2vURLs=;
        b=stdUCWcL95tnIk/HH5/Xz8KJw1PM99Uyu1MTljwsEPdQu/7X5ccyPOG8JOahQNTWNC
         ECJmLyyVgKF7uVDE1FrTL/v8M49a3hzLPqZT/yWTnlB6Ac0CxBhGw6Pu1gxlLHKpXJAi
         KgTTBNKnM+dorGx1k+vs0G6QCd3aDITWEMgpP7JytHM6jlAsX3CDfaFvTXlAupuOMNAa
         upqSUDxlVCP5Na7WL/5JIiLGtou6jSa8HIGY2cyEx+Ghrp3ieKvQ2HsKJWdx42sbJr+w
         mzZQ3x80lQjbe0byI7ZHAQXY++T1AX3JNVHb5RTsUSEA/8dOxEGCNVrv9Uqf9B/0n/uw
         RkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699639361; x=1700244161;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNLq0qmMJNvfKP5O63+BxM6jCmlb62b2gPfwV2vURLs=;
        b=TAZzFBGrcL7TlRQjHUO0SFXY8ZOjbpm08E8TsxzFdb+WxxtS54H9v8L9G45flFF+Yx
         G7vHCndJ6GJmKegCICW7QynN4gG6hUr7fqKbs8cVSGiARYvKy0He6DXyOv2M8bwQvaAF
         fbrDkz/TCFVSa9ptunG5wRvMga0SgS17tIYqgFJl9FVC0GHFFuZwKKaUIeY8WTR6lfSg
         4dfclECdS3K8Qs4BRpGEvQkJAU3ddPEGC3FgaLdaGmnReMVVRjHKXbqaqu0DuqjUzQRt
         Cvy2/AMEtBBZHLu5ZvAnpcJwfv1iYWsiziwc7KxiRW7iq52ZIDQmHFofANk9hR3AoJUN
         qVsA==
X-Gm-Message-State: AOJu0Yzzh7ilHUqGqnlf/rurkDwETHbps1jpErihHBiP/lLm5W9tVbFq
	kprqkJ2EZy0qKHazUJL+dz7dcQ==
X-Google-Smtp-Source: AGHT+IFkgENQd+VCrNMqWIay+eSx1NNSFAAtgRFGrcbVElc6SAlYS3F/4RutTpyTNZbw0mULeuI4uw==
X-Received: by 2002:a5d:4d46:0:b0:32f:89e5:ef60 with SMTP id a6-20020a5d4d46000000b0032f89e5ef60mr37775wru.11.1699639361285;
        Fri, 10 Nov 2023 10:02:41 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id y9-20020adfee09000000b0031f82743e25sm2350227wrn.67.2023.11.10.10.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 10:02:40 -0800 (PST)
Message-ID: <bbd2ee8d-4349-4752-859a-02fb0252d496@linaro.org>
Date: Fri, 10 Nov 2023 19:02:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Samuel Holland <samuel.holland@sifive.com>,
 Xingyu Wu <xingyu.wu@starfivetech.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
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
 <a8f0011c-5689-4071-b5e0-90bd6b7c66bc@linaro.org>
 <b402eb4d-a770-4988-8274-8a2544362229@starfivetech.com>
 <1dd3d765-c583-4db9-a0aa-303bfcf871db@linaro.org>
 <7c2e9b70-201c-45f8-9871-a823cc2ded16@starfivetech.com>
 <a37be8f7-64a4-4cec-8692-28ad92a02b00@sifive.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <a37be8f7-64a4-4cec-8692-28ad92a02b00@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Samuel,

On 10/11/2023 18:40, Samuel Holland wrote:
> On 2023-11-08 11:51 PM, Xingyu Wu wrote:
>> On 2023/11/8 17:10, Daniel Lezcano wrote:
>>> On 08/11/2023 04:45, Xingyu Wu wrote:
>>>> On 2023/11/2 22:29, Daniel Lezcano wrote:
>>>
>>> [ ... ]
>>>
>>>> Thanks. The riscv-timer has a clocksource with a higher rating but a
>>>> clockevent with lower rating[1] than jh7110-timer. I tested the
>>>> jh7110-timer as clockevent and flagged as one shot, which could do some
>>>> of the works instead of riscv-timer. And the current_clockevent changed
>>>> to jh7110-timer.
>>>>
>>>> Because the jh7110-timer works as clocksource with lower rating and only
>>>> will be used as global timer at CPU idle time. Is it necessary to be
>>>> registered as clocksource? If not, should it just be registered as
>>>> clockevent?
>>>
>>> Yes, you can register the clockevent without the clocksource.
>>>
>>> You mentioned the JH7110 has a better rating than the CPU architected
>>> timers. The rating is there to "choose" the best timer, so it is up to the
>>> author of the driver check against which timers it compares on the
>>> platform.
>>>
>>> Usually, CPU timers are the best.
>>>
>>> It is surprising the timer-riscv has a so low rating. You may double check
>>> if jh7110 is really better. If it is the case, then implementing a
>>> clockevent per cpu would make more sense, otherwise one clockevent as a
>>> global timer is enough.
> 
> The timer-riscv clockevent has a low rating because it requires a call to
> firmware to set the timer, as well as a trap to firmware to handle the
> interrupt, which both add overhead. Implementations which support the Sstc
> extension[1] do not require firmware assistance to implement the clockevent, so
> in that case we register the clockevent with a higher rating.
> 
> [1]: https://github.com/riscv/riscv-time-compare

Thanks for the pointer and the clarification.

>>> Unused clocksource, clockevents should be stopped in case the firmware let
>>> them in a undetermined state.
>>
>> The interrupts of jh7110-timer each channel are global interrupts like
>> SPI(Shared Peripheral Interrupt) not PPI (Private Peripheral Interrupt). They
>> are up to PLIC to select which core to respond to. So it is hard to implement
>> a clockevent per cpu core. I tested this with request_percpu_irq() and it
>> failed.
> 
> You cannot use request_percpu_irq(), but the driver should be able to set the
> affinity of each IRQ to a separate CPU.

Absolutely. And given the bad rating of the local timers, it may be 
worth to implement this driver in a per CPU (affinity set) basis.

At the first glance, the arm_global_timer can be used as an example.

Note in this case, you may want to double check what does with an idle 
state with a local timer stop flag and this timer which is always on.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


