Return-Path: <devicetree+bounces-231361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB03C0CA35
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DEE64020E0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E362E92D6;
	Mon, 27 Oct 2025 09:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lKBtpHeS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCC72E0925
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761556726; cv=none; b=chVqxGBibgH5m3BZ8RTwApJb8Fvx8xV5JUmbiSrrHJS4P2RIt8sA3OYzAKbSNxc3NUkt2kvOAvJ20PnCMjeFXJwlOp/bElogs3w5JqrvSwr0n9113IV8UK5KoL8pfn496wdVhu968YHYW/IRiNMpoO86iX9WM9Mn3YqLwQmMAK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761556726; c=relaxed/simple;
	bh=972xpLQZ1Idvecugjld0H2BGGw0dX/CAAm84925bfh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nFXrm02cAdb9rKg4AFUJfrnkoksjGZ92lz5vrzJjOXzxIbxyBJB+jbVelwVVmhYpwFiqVFOq4RwxXOsNOxF291vwFNdcWI0BcQEPzTqXsCVxzP2YgdDAwsSTrdpzwfBwoADd7ivkqaHdNaUgXOgeGLiW3WsJEsH8AdJLiOwkBP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lKBtpHeS; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-63c4b5a1b70so8358277a12.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761556722; x=1762161522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ehs8czoQPjVKOHqW4ZFLgwuoXf6oH7SJucxSNVSnhpo=;
        b=lKBtpHeSd4afG0+2ZVWJoXWqMzG90jMpjLmDlAhy+T5m897si62S2zDEtjk/zFqiIW
         kHV4xL8RUT2nomLx4OQu3RofiQQM2Jc7Hby8tUbC5el4jTxlP4Quh/jm8RPv4kuWgiTc
         pk/U7f9t52gxRBLu2WouM3yyU0cO3qjVKrbw236akXyRsUGFAM5Ec/Vp/Bckh0lBDPpL
         JRH/+ZaPS6smYDO3iq5TvwBLTmClE2OVyBj8hfQj7k/Z8wa3cu6y9jQCXLXcfZo2pgZD
         L4FvUQP80yhfOOF36KiBE/6TOP5cS+fres7LTMw8FnM74+03YlcwMnNVQO38smQ+SBKA
         D9uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556722; x=1762161522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ehs8czoQPjVKOHqW4ZFLgwuoXf6oH7SJucxSNVSnhpo=;
        b=GV1qquoJwPXikIV+tgb67JLByP6eLgp2onJV3BZIS7BwxaJlP6xtysrfCzbI0Gg6NA
         JWNhXpiEp+J5UWUo1FjkiZ6xGy+NN2FeGJXTVJjuAkROPq2ClaDQ8c5KfXCdBdfqmR9b
         oiUaHXpmXthvGgd7gGZNUPsbWC6u8/1qi1f0r0cZkXwhdQoLSwEo+jyZ0miqcS9a4w+D
         83hWyiHA2ZGcunBjmfjRUlgDk+EUB1HSSWB6cepkiX/pg1J710d5FfE2yYJdGaJ+8Vzv
         /sU7Uz2Fxv6X4pLQNtN4XdjwJtMf30CxGR3C2FsuAhXzkP2Nagfe2eB8z7NuwAHNe1af
         cu6A==
X-Forwarded-Encrypted: i=1; AJvYcCWiUKWubXXYW2xfeN4P6nRkOBUkQqXpZYVVSdgo0/MX3bACpcZfarB/LRW7lVsB00CTDtdGEDKBP6Zr@vger.kernel.org
X-Gm-Message-State: AOJu0YxHMtH6TaPV38wan9sUlS3RUJFxZCkHOgFKfWMPXp+9Xx3D+8Z0
	Kpemg17Sbl/AN1I9CGbDfTOJ86YqIAAY4StFz51TcQ6UF4nBreH0Qpd6
X-Gm-Gg: ASbGncs6FFuO9OIqWUMMXORh6c5bixRbziYryc2S1hTJRBja0YUgow0LFI7dRJ95j2a
	8RYO8bXdvHKfdbf5yUFNW36898fKhBAedRPB+qBBqQTYmXIeaTiW/+TsB1SpJuk86XiJcmdOulh
	0L829US3F7SjmfdihXwqxRTimnz0kLT4abSUF04GcNOp2Jt2liw1vMwPty/6lHCClk/KnVZeJpL
	iqQTIIkcVyd5lIHKRcumUPCoOLmjc9/JcFrOsTEVchjnThALiWRjiyAkuCoXosEG23hbV3lMlg7
	Sfsm5SZsQnHuE4PciYj4x/098HvYlPCkpKyBh6/oOLhEtRnhwCuMKSlE2QMri2pvUfD8zCMnlRY
	23qiwf5oAnTbs0ONegg9PqAbFkvpyxvPxgwfLdeNuKZ4GKgdDfoOkw8jq5D/Myhw0xWMyOABZBQ
	ZPjAssDlulU57SCEAWpylA0sIxD9H7gX9JJu5KeHLiChtu32y1vtASs8CiHbR7FOxS7Ld5
X-Google-Smtp-Source: AGHT+IESiBzo8z/tHlQ7I5VEkOfigXvoHYj6wHPdrwNr6qgyel91D2wbArQpcNK3kTl+H1frH3DoZA==
X-Received: by 2002:a05:6402:34c5:b0:63c:1e15:b9fb with SMTP id 4fb4d7f45d1cf-63c1f6b4d28mr36374925a12.22.1761556721921;
        Mon, 27 Oct 2025 02:18:41 -0700 (PDT)
Received: from [10.0.1.60] (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef95e81sm5781449a12.21.2025.10.27.02.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 02:18:41 -0700 (PDT)
Message-ID: <e60ec752-df05-4ad8-bc18-2ad68a6d745e@gmail.com>
Date: Mon, 27 Oct 2025 10:18:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Stefan Klug <stefan.klug@ideasonboard.com>,
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <20251027072749.GA7811@pendragon.ideasonboard.com>
 <341f56de-9dde-4c44-9542-b523e1917dcb@gmail.com>
 <aP80y6hQmCnxDoeC@shell.armlinux.org.uk>
Content-Language: en-US
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
In-Reply-To: <aP80y6hQmCnxDoeC@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 27/10/2025 10:00, Russell King (Oracle) wrote:
> On Mon, Oct 27, 2025 at 09:47:53AM +0100, Emanuele Ghidoli wrote:
>> On 27/10/2025 08:27, Laurent Pinchart wrote:
>>> Hi Andrew,
>>>
>>> Thank you for your quick reply.
>>>
>>> On Mon, Oct 27, 2025 at 04:08:42AM +0100, Andrew Lunn wrote:
>>>> Adding Russell King
>>>>
>>>> On Sun, Oct 26, 2025 at 02:29:04PM +0200, Laurent Pinchart wrote:
>>>>> Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
>>>>> (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
>>>>> devices produces an interrupts storm. Disable EEE support to fix it.
>>>>>
>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>> ---
>>>>> The exact reason for the interrupt storm is unknown, and my attempts to
>>>>> diagnose it was hindered by my lack of expertise with DWMAC. As far as I
>>>>> understand, the DWMAC implements EEE support, and so does the RTL8211E
>>>>> PHY according to its datasheet.
>>>>
>>>> I believe for DWMAC it is a synthesis option. However, there is a bit
>>>> indicating if the hardware supports it.
>>>>
>>>> The PHY should not be able to trigger an interrupt storm in the
>>>> MAC. So this is likely to be an DWMAC issue.
>>>>
>>>> Which interrupt bit is causing the storm?
>>>
>>> That's where I hit my first wall :-)
>>>
>>> I've tried to diagnose the issue by adding interrupt counters to
>>> dwmac4_irq_status(), counting interrupts for each bit of GMAC_INT_STATUS
>>> (0x00b0). Bit RGSMIIIS (0) is the only one that seems linked to the
>>> interrupts storm, increasing at around 10k per second. However, the
>>> corresponding bit in GMAC_INT_EN (0x00b4) is *not* set.
>>>
>>> The ENET_EQOS interrupt on the i.MX8MP is an OR'ed signal that combines
>>> four interrupt sources:
>>>
>>> - ENET QOS TSN LPI RX exit Interrupt
>>> - ENET QOS TSN Host System Interrupt
>>> - ENET QOS TSN Host System RX Channel Interrupts
>>> - ENET QOS TSN Host System TX Channel Interrupts
>>>
>>> The last two interrupt sources are themselves local OR of channels[4:0].
>>>
>>> I ould suspect that the LPI RX exit interrupt is the one that fires
>>> constantly given its name, but I'm not sure how to test that.
>>>
>>>>> What each side does exactly is unknown
>>>>> to me. One theory I've heard to explain the issue is that the two
>>>>> implementations conflict. There is no register in the RTL8211E PHY to
>>>>> disable EEE on the PHY side while still advertising its support to the
>>>>> peer and relying on the implementation in the DWMAC (if this even makes
>>>>> sense)
>>>>
>>>> It does not make sense. EEE is split into two major parts. The two
>>>> PHYs communicate with each other to negotiate the feature, if both
>>>> ends support it and both ends want to use it. The result of this
>>>> negotiation is then passed to the MACs.
>>>>
>>>> It is then the MAC who decides when to send a Low Power Indication to
>>>> the PHY to tell the PHY to enter low power mode. The MAC also wakes
>>>> the PHY when it has packets to send.
>>>>
>>>> A quick look at the data sheet for the RTL8211E suggests this is what
>>>> is supports.
>>>>
>>>> There are a few PHYs which implement SmartEEE, or some other similar
>>>> name. They operate differently, the PHY does it all, and the MAC is
>>>> not even aware EEE is happening. Such PHYs should really only be
>>>> paired with MACs which do not support EEE. An EEE capable MAC paired
>>>> with a SmartEEE PHY could have problems, but hopefully the EEE
>>>> abilities and negotiation registers in the PHY would be sufficient to
>>>> dissuade the MAC from doing EEE. But i would not expect a setup like
>>>> this to trigger an interrupt storm.
>>>
>>> Thanks for the explanation, I read documents to try and figure out how
>>> it worked and didn't find such a clear and concise high-level summary.
>>>
>>> I'm not very experienced with ethernet, but I can easily test patches or
>>> even rough ideas on hardware.
>>>
>>
>> Hi Laurent,
>> I had the same problem, interrupt storm plus link instability with dwmac.
> 
> You never said that in your patch description. You said "it causes
> link instability and communication failures." Have you investigated
> what the cause of the interrupt storm is?
> 
>> I found out that 2c81f3357136 ("net: stmmac: convert to phylink PCS support")
>> commit is the one causing the problem to me.
The correct commit is 4218647d4556 (“net: stmmac: convert to phylink managed
EEE support”).>
> You claim this commit enables EEE by default. It does. However, stmmac
> _before_ this commit enables EEE by default as I've already explained,
> quoting the old code which effects this. I've asked you to test
> further. So far, I've heard nothing back.
> 
> What has changed is that we no longer do anything with the RGSMIIS
> status, and in theory keep the mask/enable for this disabled. Howeer,
> that is a subsequent commit.
> 
Hi Russell,

Sorry, I made a copy-and-paste mistake earlier.


I identified it through a bisect, and reverting this commit (or disabling EEE)
resolves the issue I’m seeing.

I’m continuing to investigate further to understand the root cause.

