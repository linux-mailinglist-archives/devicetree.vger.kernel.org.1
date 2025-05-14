Return-Path: <devicetree+bounces-177122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F100AB67B4
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFDD516DA5F
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349E522CBD9;
	Wed, 14 May 2025 09:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gWzR7qk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063FA22AE6B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747215444; cv=none; b=IqrqemiFAx3E5oQpI46m2rUSP6eQnRucetYavAWYyYJMJwFMcarw42Nnwks00rdgbgAUBdf1x2C5J6jfOaqvMGfsNY4B71WQUc3RUF/vWB7QRj3O1gmfMz6Kld3lk0Hs6Kq7f3G48mjhNzmBUwCEQ2nqqk5/1j1XpSxSD2s/7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747215444; c=relaxed/simple;
	bh=FDUjn+NWpP7XGTtjpLyR9+XZTLtGQfrqPf3Qpzm70e8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dq0lO5pqFOFDm30jwJuazz0YOzaLxX20/Ot1brNfoVGNTqd4uJs4gj1IjwgHi6IZB4ZNrgQ32Litt54fBq4iUV6QqlD0QFbciXAIjKPJzfiNRBWsdfwND0u+xVIlm+pIW6+BhXtIqbtICl84PkIfKwKpkJglKTM46xHsQnwgk68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=gWzR7qk2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a1d8c09674so3742353f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747215440; x=1747820240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s4mPx04d8ciBVCzc7o5kQLaD0nCzpxnBqCMUyERgNAs=;
        b=gWzR7qk2obyYq689JHbJPH7b9lctY8xyp64FFoldegbQ/RlbHSpIOSumhFjp1jKT42
         aZm3hbceQvSSILXQWKOBcgxGgkG8XwTt2DTFlWrJyF1e2iOzWlQZ1XnGfKUrJ2gx1vzL
         OKAaBNWEbnrHx6skyesnhspWHGcKy2E2k6mBoglLlicRnjVGJp7ZGRJoBMbUUDSkUDKN
         xZrYDEsfmum5UoWWbfCyQzf9ip71xTA5gfCnJiuyfhndB5B5Lx83YN1KsNg6QfoKLH8U
         QMFTNK6feop2+m9xqjJtcjU/G83SF0gxtCX1U3C54T9tSmi7TqsUAnPsnWWZAlNfQO0D
         qBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747215440; x=1747820240;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s4mPx04d8ciBVCzc7o5kQLaD0nCzpxnBqCMUyERgNAs=;
        b=nINYzD2iFhTPbJZX/LF4T6r0vRJvTlwF693Bk2D2WLI0II4jyKVU7jCY/iml/qJqnS
         qyAtrDuUUCOJUmtaoBtbkAl09pZEisvzLu0QKbn6r00Q9EwI0O++EJkIRAxOwlJs6G2S
         7y9o5oZX2hKyMdIWrB2P2HR6EDXjud4Q8Kh+8uxRqH+4B5cuG0tLCsMWT1GKyv04tcKa
         Y5bVCTHmcCORAdPkhBhnmnLTmVR3hD3YW+suRJa6Cl3goofJYLIAZnb0VI5XBK8nurbA
         VWs4t0YxAidsODc5roMW7zGVFnMWKy/GFe5blJmMwuVPell2nD9s/2G6mCs+4Irdsert
         0JHw==
X-Forwarded-Encrypted: i=1; AJvYcCU8QAzCvdJIGR9KxOw1TgKjadJDgy4OBfQmE6aEXokVzCOD5ARNqfd16OIWLpOQLO/a1bheVoXQKmgv@vger.kernel.org
X-Gm-Message-State: AOJu0YxRMunmTzciOdxfiovywIByzTZoKdoP9fslX6Andal/UEW356V6
	LBIJVFiYPztWkYUkAaM5OzhxHVJWzlussjRc3cVhgI/Guswxuk/K7lH/bxmkjq0=
X-Gm-Gg: ASbGncvQ5p4Ij/zw79dHWNALHtOn3UvOG0NWaBlrwxclZ3PT/37rCPpuRbo9TRfdTzi
	K89JKYXbNcelTNiyM2FUKA0gbiqyAo4Ka7WehVDkwOkQRGjyFmqNbR1cvPT3Gy/zun1rDjjIziF
	SEIO6ICxTKWiIWEv3ZY4T3yxkNjpRmXflYC8cE2MaGvcIbvWTy+QivQPMmwbtbaFKrVAerkGJK5
	bW1DwJwZm6Fhsee5Hr6o4XvsgU/kdwxvrdtgn1wfUJE5AVeMdDZ84mjzPF5xZAaJe9YzIAvOkxX
	UR4sTDQXKIoOg2ou4d97Rep72MI/Ezm7750LF2qHSVF5x7apZFwe4aLoJzc=
X-Google-Smtp-Source: AGHT+IHnSc4wA94qOllSk7otA1xRX53jldMfyoziJ8FC+BVymjse5i0ZvJhyS6S2mppTOQu7gsAr1Q==
X-Received: by 2002:a05:6000:2586:b0:3a0:8291:20d0 with SMTP id ffacd0b85a97d-3a3496c20afmr2168258f8f.29.1747215440172;
        Wed, 14 May 2025 02:37:20 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ebec4sm19438238f8f.36.2025.05.14.02.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 02:37:19 -0700 (PDT)
Message-ID: <84b88ab7-65f6-4c9a-a28b-620cc4d8d453@tuxon.dev>
Date: Wed, 14 May 2025 12:37:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] PCI: rzg3s-host: Add Initial PCIe Host Driver for
 Renesas RZ/G3S SoC
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, saravanak@google.com,
 p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250512202550.GA1126561@bhelgaas>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250512202550.GA1126561@bhelgaas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Bjorn,

On 12.05.2025 23:25, Bjorn Helgaas wrote:
> On Mon, May 05, 2025 at 02:26:43PM +0300, Claudiu Beznea wrote:
>> On 01.05.2025 23:12, Bjorn Helgaas wrote:
>>> On Wed, Apr 30, 2025 at 01:32:33PM +0300, Claudiu wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>>>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>>>> only as a root complex, with a single-lane (x1) configuration. The
>>>> controller includes Type 1 configuration registers, as well as IP
>>>> specific registers (called AXI registers) required for various adjustments.
>>>>
>>>> Other Renesas RZ SoCs (e.g., RZ/G3E, RZ/V2H) share the same AXI registers
>>>> but have both Root Complex and Endpoint capabilities. As a result, the PCIe
>>>> host driver can be reused for these variants with minimal adjustments.
>> ...
> 
>>>> +static void rzg3s_pcie_irqs_init(struct rzg3s_pcie_host *host)
>>>
>>> This and many of the following functions have names that don't
>>> correspond to anything in other drivers, which makes it harder to
>>> transfer knowledge between the drivers.  If you can find a pattern
>>> somewhere to follow, it will make it easier for others to read the
>>> driver.
>>
>> OK, I'll think about it. Do you have a recomentation?
> 
> Not really.  Maybe pick a driver with recent activity.
> 
>>>> +static int rzg3s_pcie_probe(struct platform_device *pdev)
>>>> +{
>>>> +	struct device *dev = &pdev->dev;
>>>> +	void *devres_group_id;
>>>> +	int ret;
>>>> +
>>>> +	devres_group_id = devres_open_group(dev, NULL, GFP_KERNEL);
>>>> +	if (!devres_group_id)
>>>> +		return -ENOMEM;
>>>
>>> What's the benefit of using devres_open_group()?  No other PCI
>>> controller drivers use it.
>>
>> This driver uses devm_add_action_or_reset() to keep the error path simpler.
>> Some of the action or reset registered handlers access the controller
>> registers. Because the driver is attached to the platform bus and the
>> dev_pm_domain_detach() is called right after driver remove [1] having devm
>> action or reset handlers accessing controller register will later lead to
>> hangs when the device_unbind_cleanup() -> devres_release_all() will be
>> called on remove path. Other issue described in [2] may arries when doing
>> continuous unbind/bind if the driver has runtime PM API (not case for this
>> driver at the moment) that access directly controller registers.
>>
>> This is because the dev_pm_domain_detach() drops the clocks from PM domain
>> and any subsequent pm_runtime_resume() (or similar function) call will lead
>> to no runtime resume of the device.
>>
>> There is a solution proposed to this here [2] but it slowly progresses.
>> Until this will be solved I chosed the appraoch of having the devres group
>> opened here. If you agree with it, I had the intention to drop this call if
>> there will be an accepted solution for it. If you are OK with going forward
>> like this, for the moment, would to prefer me to add a comment about the
>> reason the devres_open_group() is used here?
>>
>> This is not PCIe specific but platform bus specific. There are other
>> affected drivers on this side (e.g. rzg2l-adc [3], rzg3s-thermal [4]).
>>
>> A similar solution as [2] is already used by the i2c subsystem.
> 
> OK.  Is there something unique about rzg3s that means it needs
> devres_open_group(), while other PCI controller drivers do not?  Or
> should the other drivers be using it too?  Maybe they have similar
> latent defects that should be fixed.

Nothing particular for RZ/G3S. The issue is there for every drivers
attached to platform bus (at least the ones that have their clocks as part
of their PM domain as RZ/G3S is having) which are accessing IP registers
though devres cleanup APIs or are accessing IP registers in the runtime PM
APIs. This is because these accesses ends up to be done when the clocks
cannot be enabled anymore though runtime resume calls (detailed explanation
in [1]). This is the reason for which I am trying to impose it in the
platform bus driver, but the discussion is slowly progressing and not all
involved parties agrees with having the fix in the platform bus driver [1].

[1]
https://lore.kernel.org/all/20250215130849.227812-1-claudiu.beznea.uj@bp.renesas.com/

> 
> If there's something unique about rzg3s, please add a brief comment
> about what it is so we know why it needs devres_open_group().

In the initial version I've added a comment in the documentation of struct
rzg3s_pcie_host::devres_group_id. I'll update the place where this is call,
too.

Thank you for your review,
Claudiu

