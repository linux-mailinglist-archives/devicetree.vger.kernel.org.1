Return-Path: <devicetree+bounces-98298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D220965A26
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C301F20FE8
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8106916CD08;
	Fri, 30 Aug 2024 08:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PdX55yCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1F51667F1
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725006168; cv=none; b=oo8LlXTbZ7bVZ+NfXjhaO/cBQaI6SW8znxpQAzeyYBalpcvWQMLkZkoUmPJpcf51qEjQvP3IrQ9GbRa84w+5+ZQNG0/+xQvOYhOPkljRitdjAZ2aiYvVnfqSOdZ4cpDbAJ8wf3ArdoxuzR/1IBHQOK+BMgTCacYCusijy2i+4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725006168; c=relaxed/simple;
	bh=lg2a5Or0gfd5Bku8PfxGPt1GgB3ed0TVDFLBpQJIMg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fuxGaQI00Fv5ixUi6Ag9wqBsfK4FVEeWd4OHfny2eZhe6sqo51z9XYzRn6RbmxObSluKizymxzuDrC3gmGnVMkMBG49ppNz4zbYAGdIrtHwQvJqR6oavQWHvzXTWbjB7MDJsMU5bCTj3lINiJIRLtjZKKDFyoGhau28R4T/RsWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=PdX55yCj; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-429da8b5feaso17043915e9.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725006164; x=1725610964; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zchK+tZfRdJr/B0VNKRrEBtLoJmeJfsr2YpFzQ08IdE=;
        b=PdX55yCjayxLU3a0HuryCmcojZbcsP1de6j68M6ebp45drf94iA8NvQ3vsQjHDYp5n
         P8yVFUuidLKGgIn94toZdJ8Hez/KX4ijJvG3obykwA8N6EFCXEfuV0jL5hfAVLH9n2FT
         JDgtvtEv2wNPr5PRcw7s1+jaMBUU/ydxJV/5vXjkSb4A6Hx/WLesh7ismzSRiwg1c8oU
         hs4k49jr+zfamjjjl1mOB2Jsvq2B1n/itmC73c4rO1JTg7oZOIHiq05+A5mpJ6OPVLqD
         zUantHtRV6mHWHqKBVgjPqry3UzYkH1R5EeiZOey60NAit5f9lGIWVAf7MkpNyPle08y
         M+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006164; x=1725610964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zchK+tZfRdJr/B0VNKRrEBtLoJmeJfsr2YpFzQ08IdE=;
        b=CVaqfzLjZpa0yLrBtB4Wnewscs2cw321U2QEuJGIDJHidwyYq5nufXo1UH1hVBzHQO
         7UsVpAy6sYx7tFDkP8Fo5Hq3PgXrqoiGrcRXwO2L64dmgQ4sTKqprAuztql+1H61YYOg
         7kVFe02K8GUvl3AwdScRl80wANec/cUK10URFd4RTk7bCAxV4yuVjTaVJR+oTyTWczJM
         +2f3y+tlZGyFi4iEqo1GdeywhnATjXJfdRsQzrEaM/KRQ80U9sxegB6u/WO4mvdRTygx
         TdKZfvI1jDE8lbs+f8uv4mZNZtnkM1h7r4dGVMylS5JTzdgSuFiKbJJMyNltU8dwwarb
         OShg==
X-Forwarded-Encrypted: i=1; AJvYcCWNB62FpM6OnzLxXddG2xEKyHmAYYU85dQ8jXk2KW963FA4JMda/xJ6ma6vsEjsJvGmvFlAdcfj4NSc@vger.kernel.org
X-Gm-Message-State: AOJu0YwvjcjwNGQ/9iSo4XErl3UqCtwMZJ0qDO8nJZLUbZlNWj8dVt6q
	X5oy9+6KCZXvRHVdMrriQPRL/mXzpJKLuLl3ZZFpFCJ6toT/JBubxjhzICyBYWQ=
X-Google-Smtp-Source: AGHT+IF8ZkJGKUmuglZKyShKgzTB0GuKfWBu6xay0mGYscvHuYinOaW5h5J83vGVNlCFB6KS0zIxvQ==
X-Received: by 2002:a05:600c:3ca2:b0:426:5520:b835 with SMTP id 5b1f17b1804b1-42bb01ae206mr53646705e9.5.1725006164296;
        Fri, 30 Aug 2024 01:22:44 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb87f7fccsm31864805e9.46.2024.08.30.01.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:22:43 -0700 (PDT)
Message-ID: <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
Date: Fri, 30 Aug 2024 11:22:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ulf,

On 29.08.2024 18:26, Ulf Hansson wrote:
> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Hi,
>>
>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>
>> Series is split as follows:
>>
>> - patch 01/16           - add clock reset and power domain support for USB
>> - patch 02-04/16        - add reset control support for a USB signal
>>                           that need to be controlled before/after
>>                           the power to USB area is turned on/off.
>>
>>                           Philipp, Ulf, Geert, all,
>>
>>                           I detailed my approach for this in patch
>>                           04/16, please have a look and let me know
>>                           your input.
> 
> I have looked briefly. Your suggested approach may work, but I have a
> few thoughts, see below.
> 
> If I understand correctly, it is the consumer driver for the device
> that is attached to the USB power domain that becomes responsible for
> asserting/de-asserting this new signal. Right?

Right!

> 
> In this regard, please note that the consumer driver doesn't really
> know when the power domain really gets powered-on/off. Calling
> pm_runtime_get|put*() is dealing with the reference counting. For
> example, a call to pm_runtime_get*() just makes sure that the PM
> domain gets-or-remains powered-on. Could this be a problem from the
> reset-signal point of view?

It should be safe. From the HW manual I understand the hardware block is
something like the following:


                  USB area
         +-------------------------+
         |                         |
         | PHY --->USB controller  |
SYSC --> |  ^                      |
         |  |                      |
         | PHY reset               |
         +-------------------------+

Where:
- SYSC is the system controller that controls the new signal for which
  I'm requesting opinions in this series
- PHY reset: is the block controlling the PHYs
- PHY: is the block controlling the USB PHYs
- USB controller: is the USB controller

Currently, I passed the SYSC signal handling to the PHY reset driver; w/o
PHY reset the rest of the USB logic cannot work (neither PHY block nor USB
controller).

Currently, the PHY reset driver call pm_runtime_resume_and_get() in probe
and pm_runtime_put() in remove. The struct reset_control_ops::{assert,
deassert} only set specific bits in registers (no pm_runtime* calls).

The PHY driver is taking its PHY reset in probe and release it in remove().
With this approach the newly introduced SYSC signal will be
de-asserted/asserted only in the PHY reset probe/remove (either if it is
handled though PM domain or reset control signal).

If the SYSC signal would be passed to all the blocks in the USB area (and
it would be handled though PM domains) it should be no problem either,
AFAICT, because of reference counting the pm_runtime_get|put*() is taking
care of. As the PHY reset is the root node the in the devices node tree for
USB the reference counting should work, too (I may miss something though,
please correct me if I'm wrong).

If the SYSC signal would be handled though a reset control driver (as
proposed in this series) and we want to pass this reference to all the
blocks in the USB area then we can request the reset signal as shared and,
AFAIK, this is also reference counted. The devices node tree should help
with the order, too, if I'm not wrong.

Thank you for looking at this,
Claudiu Beznea

> 
> [...]
> 
> Kind regards
> Uffe

