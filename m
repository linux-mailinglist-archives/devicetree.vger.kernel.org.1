Return-Path: <devicetree+bounces-151193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84FCA44B6A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6E263AB67C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CAF1EBFE6;
	Tue, 25 Feb 2025 19:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="v3VlOe4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4574B1A5B92
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 19:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740512139; cv=none; b=IFnBQ7vpc/E1mfi71XgQt74Y/9mHjA4GGJ1v4EvgPqe1flmz1Oy/cUQGxcENKIR+6xoFCrQN87Lm+upRCjZMjGP1iP1/6nA8G/rsYrjNRcFAINWBM1L7UVpKYm8HDhtE0bwJDckuyMporerzUHXStrp2lih0on68qbXKjSlGqj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740512139; c=relaxed/simple;
	bh=5DeJCDEtbg9BJva0/ylpZz5hj1u0qhJTXwu3+1Mre4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iWf/eb5287/mB6DTiwoqGLTK3zyuxkgiMbGMAra4S33Lrqxm8KScP6DCuoM4b7ISAxKUCRJ/tY4ROxkyx+w2IWCFCjgAI3eAU2N43RwPEkM4T19K5co2cBpm3N9Arv07bIWLUu6RrfX1QNaqikSmH81RQxHiMSV1zXJalV2T65k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=v3VlOe4S; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3d2b3811513so516305ab.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1740512135; x=1741116935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ToEbtus/iJOTfxy7tU+64kgfqFx9afUpym/Ef8LmTws=;
        b=v3VlOe4SbHWvx5ZtpvMuqkp2sfG1opCijBkoGEzk9d4XnlRy7cEZATA0FdGGy+Z3Tb
         8s6MMb6Dx2ZEbKUThzz6rmOxx4dLU1rpToBQzgTayeV4g/U5IxMh/j2vJllV9M2fc84z
         s+LUTQLQFAQehbiR8Q9t4GAXijxVuyyYLaCbWt9A1gA2qyXIRnbYe/o0/1blcrj/Z5v5
         c+/pN/xnKYqF7mlYqnlQPSnWg8/GyDMxz2RFCDWv23DW2diAq3XRPjo/3BIog8is/6sa
         x/UA+EoQXLLcA7gc0FkpKtD7uPB57vUSG9820jREVXcjVMBjERJ6QdiItLTxvreDhC6h
         mJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740512135; x=1741116935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ToEbtus/iJOTfxy7tU+64kgfqFx9afUpym/Ef8LmTws=;
        b=qk1/hBwjxY5C/3MuK144i0p2X9Pt9fr+GgifSgqHgDyIRBZ+jJ1xv+rXs9LNXgkD3l
         XIQUleXy0b2Utu1mjBgmwdwRHMBzUaMwvyj9ofWCswBKPZyHuT4uN6hMU5NahH5MXmEu
         hk1O0AE4wNF+9sGVJ2SBpijqgwF9w6lDzBt5gQR2kl8GBf+zNvQsH/Hn/PVdKvwxnc0F
         9XVin5kNvkbZiCLo9fObUkt0eAeH88Q6aO5Aw4KR52alchkR9rgbgDKVbMZ3dvCN/IGQ
         DyZITXi8l4ki9lIegv1NNakwGBRIfmqV0aOB6uky3YAOzddpJpQfLRa3GxVQ++xkPvQA
         qXxw==
X-Forwarded-Encrypted: i=1; AJvYcCXhjj2LctnSC6TlmCwhJ4AzHSVe2vnJ/wuA77xRlhKTVcLMjuTarE1Z91FW+lwSI5eJGa60woQNjet9@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ6cHlZW9W4ZugkgZw/+GMQwqQ0h+uSrEAJr1q+DL83dVsCx6k
	rklhZrCdu3yBoRMGlfR5FjVpU8x0mreJzuaMhnacZFBuOwymblgQdXcCT/hNQyA=
X-Gm-Gg: ASbGncvDUF8luqrQ8jLAkUosTC6voQxtbMNPDIdnj0v3F9z1fpadSlJyL2V6tmb1MVL
	kEl7P/0FKey/+D3GkPCNMzPiax8/GJyNq6qv13VckbJY/jT+sT+LglelUqKmpGXNIXAynxSYprS
	HZuVsiW3KjOfnwDeSRiFScoN2yH/0ajXpi1/OXjre7plvMjLXb+l6Og/monD9s6FSsWcdEAdqie
	6JPUuxzoW8mJVpIhDXuEMyBPPFhuz80hY0+BjUhiRc1ELqm5I3eo7itOjvXbuh+m5txfclycC1s
	c8GgBhiNNwqiMXhdIHbH9PtgR1OQvpIzYUTAjG7nCrJP48Qpk3J3IlIoIwyLT6u2kw==
X-Google-Smtp-Source: AGHT+IEkla7X6dWRv9l8T3e3vypqQihTr4qZg1ZHRLz+NLAnsF4WLnVQs2lNVtI7qthPZ2LVWOYVJQ==
X-Received: by 2002:a92:dd0a:0:b0:3d2:8bbc:8514 with SMTP id e9e14a558f8ab-3d2c0239917mr187309935ab.9.1740512135207;
        Tue, 25 Feb 2025 11:35:35 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f0474992ecsm539538173.63.2025.02.25.11.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 11:35:34 -0800 (PST)
Message-ID: <568634dc-9b4c-4ba1-84fb-0433a34262e0@riscstar.com>
Date: Tue, 25 Feb 2025 13:35:33 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/5] clk: bcm281xx: implement prerequisite clocks
To: Artur Weber <aweber.kernel@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, Stanislav Jakubek
 <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20250216-kona-bus-clock-v1-0-e8779d77a6f2@gmail.com>
 <20250216-kona-bus-clock-v1-3-e8779d77a6f2@gmail.com>
 <d4aa25fb-2cc0-4b1a-a376-936e7e83233a@riscstar.com>
 <238b8798-1c6f-4f60-b30e-766142a09306@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <238b8798-1c6f-4f60-b30e-766142a09306@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/25/25 12:48 PM, Artur Weber wrote:
> On 24.02.2025 17:20, Alex Elder wrote:
>> On 2/16/25 10:12 AM, Artur Weber wrote:
>>> From: Alex Elder <elder@kernel.org>
>>>
>>> Allow a clock to specify a "prerequisite" clock, identified by its
>>> name.  The prerequisite clock must be prepared and enabled before a
>>> clock that depends on it is used.  In order to simplify locking, we
>>> require a clock and its prerequisite to be associated with the same
>>> CCU.  (We'll just trust--but not verify--that nobody defines a cycle
>>> of prerequisite clocks.)
>>>
>>> Rework the KONA_CLK() macro, and define a new KONA_CLK_PREREQ()
>>> variant that allows a prerequisite clock to be specified.
>>>
>>> Signed-off-by: Alex Elder <elder@linaro.org>
>>> --- Artur: rebase on v6.13, move prereq prepare/unprepare to main
>>>      prepare/unprepare functions, use locking versions of clk_prepare
>>>      and clk_enable since the non-locking versions are no longer
>>>      public ---
>>> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
>>
>> I'm surprised there is no prepare function for the peripheral
>> clocks.
> 
> Not sure I follow - there is a prepare function for peri clocks, the

I meant *before* your patch, there is no prepare function.

> same one as for all Kona clocks - kona_clk_prepare. Though it only
> enables the prereq clock... I assume you mean "prepare function specific
> to peripheral clocks", in which case - what should a prepare function
> specifically for peripheral clocks do?

It's just that the prepare function can block, but the
enable function cannot.  I see __ccu_wait_bit() just
loops until the register indicates an update completed,
so I guess there's no blocking.

> As I mentioned in the cover letter, clock initialization has to be done
> explicitly at clock init time, since it's required for later operations
> like setting the clock rate/parent that are done *before* the first call
> to the prepare function happens; otherwise we get errors like this:
> 
> [    4.740000] [   T39] kona_peri_clk_set_parent: trigger failed for sdio1
> [    4.760000] [   T39] kona_peri_clk_set_rate: gating failure for sdio1
> [    5.650000] [   T36] kona_peri_clk_set_parent: trigger failed for sdio3
> [    5.670000] [   T36] kona_peri_clk_set_rate: gating failure for sdio3
> 
> (I did consider moving the relevant clock initialization to a
> "clk_ops.init" function, but left it out of this patchset for brevity.
> Might consider actually doing that...)
> 
>> The prequisite clock should separate the prepare and the
>> enable functionality.  Right now you have kona_clk_prepare()
>> doing both.  Instead, a clock's prepare function should
>> prepare its prerequisite (if any).  Then its enable function
>> should enable its parent.
> 
> I copied this behavior from the original patch; there the
> prereq_prepare function both prepared and enabled the relevant
> prerequisite clock. Indeed doing each step (prepare/enable/disable/
> unprepare) in the relevant functions would probably make more sense.

I hadn't worked on a clock driver before then, and I think I
got pulled off that project before this series could be accepted
(or even reviewed?).  Maybe I just proposed what the vendor
kernel did.  In any case, *today* I'd say they should be separated.

>> Should all the users of peripheral clocks just also be required
>> to specify the bus clocks as well?  I suppose that doesn't
>> encode the prerequisite property (bus comes before peripheral);
>> is that truly a requirement?
> 
> I see a few problems with that:
> 
> - Most drivers only take one clock - that clock is pretty much always
>    the peripheral clock (with the only exception being usb_otg_ahb which
>    is used for the USB OTG controller).
> - Even if they supported both clocks, they would likely just switch them
>    on/off at the same time as the equivalent peri clock.
> 
> I mostly figured a clock dependency mechanism would work here since it's
> what the vendor kernel does - it allows for specifying a dependent clock
> and enables/disables it whenever the clock with the dependency is
> enabled/disabled.

I don't really expect that the bus clock *must* be enabled
before the peripheral clock.  The requirement is probably
just that both must be (prepared and) enabled before using
the peripheral, and order doesn't matter.  And in that case
there's no need to enforce the ordering.

> An alternative option would be to handle the dependency in the device
> tree, using "simple-pm-bus" nodes, either:
> 
> - Wrapping around each node for a subdevice that uses a peripheral
>    clock. This is rather unwieldy since it means a lot of subnodes for
>    the most basic of peripherals (sdio1-4, uartb(2,3), etc.). (Also,
>    managing the "ranges" properties for all of these sub-busses would
>    get annoying unless we specify empty ranges, which according to the
>    bindings "is only appropriate if the child node is another 'simple-
>    bus' or similar."[1].)

The above sounds wrong to me.

> - Using the simple-bus nodes that the BCM2166x DTSI already uses, and
>    connecting the relevant bus clock for all the components to them,
>    and switching the compatible to "simple-pm-bus". It's less granular,
>    but is probably the most sensible option if we go the DT route.
> 
> As for whether enabling a bus clock before a peripheral clock is
> required... I went ahead and tested it, and the results seem to hint
> that it's not.
> 
> - I seem to remember that not having the bus clock initialized caused
>    some failures on peri clocks, but I can't reproduce this anymore.
>    Most likely I'm mistaking it for policy bit setup, which is required
>    for gating to work (I have another commit ready to add policy bits
>    to all BCM21664 clocks, which I'm planning to send after this
>    patchset). And besides, just initializing bus clocks after peri
>    clocks seems to work given that's how it's set up right now.
> 
> - Also, it seems that all clocks defined with HW_SW_GATE are gated
>    on by default, and this state is never cleared afterwards, so all the
>    bus clocks I added in the BCM21664 bus clock commit are already
>    enabled at startup... after the peri clocks. And given that everything
>    works fine, it's probably OK.
> 
> Now that I think about it - maybe it would be easier to just keep things
> the way they are; drop the prerequisite clock mechanism, let the
> driver enable bus clocks by default, then if we wanted to explicitly
> control the bus clocks, use the second DT approach I mentioned. If we
> ever want to squeeze every last bit of power savings or for any other
> potential benefit of keeping bus clocks off, we can revisit this
> mechanism later.

I'm far out of the loop on the Broadcom drivers.  If the hardware
requires no actual hierarchy/ordering of these clocks, then none
should be implied (by DT, or by the code).  And if that's the case,
having the peripherals depend on both the bus and peripheral clocks
probably makes sense.

					-Alex

> 
> Best regards
> Artur
> 
> [1] https://github.com/devicetree-org/dt-schema/blob/ 
> ed9190d20f146d13e262cc9138506326f7d4da91/dtschema/schemas/simple- 
> bus.yaml#L60-L69


