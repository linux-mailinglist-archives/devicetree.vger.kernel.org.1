Return-Path: <devicetree+bounces-15774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F11977EBB26
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 03:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8F0C280F3C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 02:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D92A64C;
	Wed, 15 Nov 2023 02:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hf3MiDAI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3C6642
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 02:15:23 +0000 (UTC)
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A3FC7
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 18:15:21 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-6779f5e9410so31102006d6.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 18:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1700014520; x=1700619320; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1MSmTa/SaXp0ffMwVKsyznCoe5iJDVnuE9ssYFwaKy0=;
        b=hf3MiDAIF4P0DlKuygCBjELJ6YSBqR9BI6Xu1e4PLD8P1elgFX7/zQ0HcU2H+sn8rP
         c9tkUYCUj8nPxcQ4p9Kv2cC4L7cuBbwh0hmVqrYUTALQhIhWaeo/ky5+dgdZgu7aIOS2
         qdddam4T9JV23oAzWv7DyG71iVMydzsCbKXaeuOMKf7OBMJUARjJmdkQTf2LWQm8pLfK
         NM5jyScPCG16i5e4UPYvfQuux8I4cGS/jxCR+OqORugww3GDPcBwFpecTKgD3ybaOJ/i
         WVtZE072U1Y4knbVVEXN5km6vqiIMJeCBhEutQZtlmZ4xyZMWt2xm1a3mXDufE41Zde3
         vrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700014520; x=1700619320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1MSmTa/SaXp0ffMwVKsyznCoe5iJDVnuE9ssYFwaKy0=;
        b=wdzVMsVzFrfYuYfK7AGQjOzD9Etu5SZ2yMquBI1LvRais/r5VxAUJqRoffJqZAeYyH
         xwBQ/zAk+cRM8hRtMA9gStL9QbGMytkueZRjSGbi1vZ65GEwjKrFqPcy3xTl2MRYPI+R
         PzikZcKIKjqI9Zmgq+//Dq1EAE3jhqVc2tfzO6tfSeqjh47sfr8NhaX0FINkAmkwJYFA
         R2BuMI63MT0X23j1smcJ1Lm6GLRJMkMoewl/oLkgx3H0ib4Q9b4pcwsTq8wpK+PIjc1k
         z8fHR6x6HiJiHha+4HMEOl6mmMVJDhnNuFWMIHQnwttRWwRyIPJZh3Kt/yj+rY/o8dva
         fm6g==
X-Gm-Message-State: AOJu0Yz3Pw/bRLQGYbj/6HEw1ZZkXlXXsqliKiZHdiwR4xGNBg5wfdCs
	aS1xcwKOHcqJZp6GosU9V/70ew==
X-Google-Smtp-Source: AGHT+IEFSDLxFpKfNFc8ycvrsyoEzsbrXROUde3bhQvq7qYNrIR46TUGX+gKo8UDgoBxVdyI0rfrtA==
X-Received: by 2002:ad4:4689:0:b0:66f:b009:fc3b with SMTP id pl9-20020ad44689000000b0066fb009fc3bmr4296026qvb.5.1700014520268;
        Tue, 14 Nov 2023 18:15:20 -0800 (PST)
Received: from [192.168.142.156] ([50.235.11.61])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cf0cb000000b0065d1380dd17sm148577qvl.61.2023.11.14.18.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 18:15:19 -0800 (PST)
Message-ID: <68220eb6-8a20-42d4-83e5-d0d45b2f1404@sifive.com>
Date: Tue, 14 Nov 2023 21:15:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] riscv: dts: add clock generator for Sophgo SG2042 SoC
Content-Language: en-US
To: Chen Wang <unicorn_wang@outlook.com>, Conor Dooley <conor@kernel.org>,
 Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, richardcochran@gmail.com,
 robh+dt@kernel.org, sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, haijiao.liu@sophgo.com,
 xiaoguang.xing@sophgo.com
References: <cover.1699879741.git.unicorn_wang@outlook.com>
 <25fcbab4c04bcbbdc4577dc58822540829f91dc9.1699879741.git.unicorn_wang@outlook.com>
 <20231114-grumble-capably-d8f7a8eb6a8d@squawk>
 <PN3P287MB032447BC501261D47E8E3124FEB1A@PN3P287MB0324.INDP287.PROD.OUTLOOK.COM>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <PN3P287MB032447BC501261D47E8E3124FEB1A@PN3P287MB0324.INDP287.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2023-11-14 7:34 PM, Chen Wang wrote:
> On 2023/11/15 1:31, Conor Dooley wrote:
>> On Mon, Nov 13, 2023 at 09:20:11PM +0800, Chen Wang wrote:
>>> From: Chen Wang <unicorn_wang@outlook.com>
>>>
>>> Add clock generator node to device tree for SG2042, and enable clock for
>>> uart0.
>>>
>>> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
>>> ---
>>>   arch/riscv/boot/dts/sophgo/sg2042-clock.dtsi | 76 ++++++++++++++++++++
>> There's no need to create an entirely new file for this.
> Agree, I will merge this into sg2042.dtsi in next revision.
>>
>>>   arch/riscv/boot/dts/sophgo/sg2042.dtsi       | 10 +++
>>>   2 files changed, 86 insertions(+)
>>>   create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-clock.dtsi
>>>
>>> diff --git a/arch/riscv/boot/dts/sophgo/sg2042-clock.dtsi
>>> b/arch/riscv/boot/dts/sophgo/sg2042-clock.dtsi
>>> new file mode 100644
>>> index 000000000000..66d2723fab35
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/sophgo/sg2042-clock.dtsi
>>> @@ -0,0 +1,76 @@
>>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>>> +/*
>>> + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
>>> + */
>>> +
>>> +/ {
>>> +    cgi: oscillator {
>>> +        compatible = "fixed-clock";
>>> +        clock-frequency = <25000000>;
>>> +        clock-output-names = "cgi";
>>> +        #clock-cells = <0>;
>>> +    };
>> What actually is this oscillator?
>> Is it provided by another clock controller on the SoC, or is it provided
>> by an oscillator on the board?
> 
> This oscillator is an individual ic chip outside the SoC on the board, that's
> why I list it outside soc node.
> 
> Actually the "cgi" is abbrevation for "Clock Generation IC chip".

Since the oscillator is outside the SoC, this node (or at least its
clock-frequency property) belongs in the board devicetree, not the SoC .dtsi.
See [1].

Regards,
Samuel

[1]:
https://lore.kernel.org/linux-riscv/b5401052-e803-9788-64d6-82b2737533ce@linaro.org/

