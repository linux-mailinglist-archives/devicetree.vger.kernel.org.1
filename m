Return-Path: <devicetree+bounces-14499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7F87E5269
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DEB31C20403
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 09:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A30DDD1;
	Wed,  8 Nov 2023 09:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TIojes5u"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA387323D
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 09:10:40 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B569F
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 01:10:39 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507973f3b65so8990349e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 01:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699434638; x=1700039438; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jcINFlc5Bxzgrbc4MTS9NCkyZbTVVfqU+tkYks0UGuM=;
        b=TIojes5uZi5ODO1/HeGKpmgUoiZFB2chcG1klfGC25xIEYLnafb1JzIXLSn6TUT9Pj
         2ivMtpKXsCczZNURs7hhGOJZOjmV8YVRHae9UOmkwL2M3A6Rglu93QN/+6avliklGFGI
         RFpMqwX1Xb2Cc7Dh8NAVWIoll/n3kHO+IlSxN1luzTTvTy8NHoeEM9x/o72u/Dys9ebD
         aUPmlOMPgLCmjMFGTImAkfVPjXjwG4toL7ZqdjyKyRm7zxeSmbH4hWf7UvclEm5ANe1F
         kfMVAGQWGLaEexjpBRrvGXonueIc4R6P6eC6eZ2t4N7TJCddGYDbTVlq8VKVIJY3FN/p
         unnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699434638; x=1700039438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jcINFlc5Bxzgrbc4MTS9NCkyZbTVVfqU+tkYks0UGuM=;
        b=IZ7DacdiiOhpzPYkwxQpsfcXxqq5pmXwgg/kof/cVq+13K3+i3SJooEk6nQNhukeIo
         lr2LzYa6yJXZmJUjuuMBwEP/mfUCGObEGDpjBZuhmIhllSTBTcjefAOFGwyWM5Gp3NOh
         AJgDOn+1089VENd8VNw3KV4IRv9kr/8oj2zcrbbvEznM9YhTsZTTKtiyCao8+aavw60K
         bVDo7uBdgrnMCihJattA2PWcEZ/gJ6T0M5mV8m9rGzghKUq/nQRtTn+ki4Dbn0mUe17Y
         iD+VeG1PA9d4TYJjGbO3W8I8M3VY6BB616sc/XnNooB5gvvc1LJUMc4jSkQSAhjrdeI/
         hsSQ==
X-Gm-Message-State: AOJu0YzxQIDw3VqIrb2K9UMoXmKJE/Zy+tsEMa8pUtNPeqLdZhL+rDek
	nPfQnhnN0P/LKHsMsxi9Azmv2A==
X-Google-Smtp-Source: AGHT+IFWrJhq0yyPZFGkfsmVVYe9rpitNrcZX/tgpoj4oWjopGFCXaydqgPa9BfS1sjHZGerGEiZTg==
X-Received: by 2002:a19:4351:0:b0:504:2d54:b4d0 with SMTP id m17-20020a194351000000b005042d54b4d0mr788039lfj.19.1699434637594;
        Wed, 08 Nov 2023 01:10:37 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:55a2:c282:5ca3:a855? ([2a05:6e02:1041:c10:55a2:c282:5ca3:a855])
        by smtp.googlemail.com with ESMTPSA id y11-20020adff6cb000000b0032fc609c118sm4397265wrp.66.2023.11.08.01.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 01:10:37 -0800 (PST)
Message-ID: <1dd3d765-c583-4db9-a0aa-303bfcf871db@linaro.org>
Date: Wed, 8 Nov 2023 10:10:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Xingyu Wu <xingyu.wu@starfivetech.com>
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
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <b402eb4d-a770-4988-8274-8a2544362229@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/11/2023 04:45, Xingyu Wu wrote:
> On 2023/11/2 22:29, Daniel Lezcano wrote:

[ ... ]

> Thanks. The riscv-timer has a clocksource with a higher rating but a
> clockevent with lower rating[1] than jh7110-timer. I tested the
> jh7110-timer as clockevent and flagged as one shot, which could do
> some of the works instead of riscv-timer. And the current_clockevent
> changed to jh7110-timer.
> 
> Because the jh7110-timer works as clocksource with lower rating and
> only will be used as global timer at CPU idle time. Is it necessary
> to be registered as clocksource? If not, should it just be registered
> as clockevent?

Yes, you can register the clockevent without the clocksource.

You mentioned the JH7110 has a better rating than the CPU architected 
timers. The rating is there to "choose" the best timer, so it is up to 
the author of the driver check against which timers it compares on the 
platform.

Usually, CPU timers are the best.

It is surprising the timer-riscv has a so low rating. You may double 
check if jh7110 is really better. If it is the case, then implementing a 
clockevent per cpu would make more sense, otherwise one clockevent as a 
global timer is enough.

Unused clocksource, clockevents should be stopped in case the firmware 
let them in a undetermined state.


> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/tree/drivers/clocksource/timer-riscv.c#n45
>
>  Thanks, Xingyu Wu

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


