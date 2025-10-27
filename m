Return-Path: <devicetree+bounces-231342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 54304C0C7FA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 932FF1882A19
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 08:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E888A31A81C;
	Mon, 27 Oct 2025 08:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uz85H81w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345CD31A7E2
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761554879; cv=none; b=Ez44xydpSPa/Xo5mfcAcYrg0w+6qu6uoZWb/weSnZHMKd0UKx8XXIScSAH191fQE6VUGILjpfSQOmek5KorsYwrPgenmYd5n8rWPPB9VXMVGpz1F+2HBVzKkrS1tXrWdRq81pOzdcWJt4GU1nFOxGHgDvRMfTMJKxOAd00FZ5uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761554879; c=relaxed/simple;
	bh=6R3g76kmH8nUka8kU56TR1o+wy0tyxyUH/+Au5/EThU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jrLgUuL8DSYKpa0Tk8dIXIDEfod14vAEmlPX7HcwHOij2KF2py/5/ugvo9+R9ik4Z7/4Eh6cgUdz7IqU5UQZzYm8lB+On/1Nzul2LB2pUaK52cN0ysu57cBF5rAkpVdzRyt2Fm1hXKxf+FuMMyVjver24iJ5ubWnrMNlZHTVAA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uz85H81w; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-63c523864caso10034405a12.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761554875; x=1762159675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BGZz4VWs/JC+aNmL95YeIOEFAldikWyWA5RKgIlO5FE=;
        b=Uz85H81wumJB8Hd6n9M5JSCgZjYC6vBd0/Lb4nlW9hBQ02N8YiIpke7ICPUKK3V1Y4
         WDUnK3L7sB2Bd98JUzB6UforuM4E6bywmBdNPKnVjPuhdiYTRLr15Px5IaEqul6meVQT
         5d39rbtuud08i/bDbKOq5rhbzdIoOCLr6nik7vkXDa5yzFCJfx6ywIBrfTQMYUDGRjCX
         i5gQWhTAkJTaD4N6Tc7HqQaY0MWCZ3SsCBw0atU9X9GaD/lhfeNuL4Gh0rOoriSUWFyF
         uHp3zhzHUWgUSGl8ubbEVxRppB3tNt3sebSCt8TyGzjuffcl57EfV3dtuyj8ZczO2ici
         Qufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761554875; x=1762159675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BGZz4VWs/JC+aNmL95YeIOEFAldikWyWA5RKgIlO5FE=;
        b=l8dNVQjkuKLUcTRrsmfE/xraeGBDjC4gr7IMab3zPNW++Ah1kXYF87lgAYA9wy8ZXm
         vjMKwZ2ocBo6JMpT22PbyfuINvqtbX839qr1xxtBz60z7I/78XJsZfuT7V3TKb/+J95w
         Jx35UkOG/cr3pap/Pt9E8Lc7roP2tDT/HqpryNEqq+v1pnsJRiBjhF7+Zw74OnZTzaXT
         tFuQtERo47IBkJa5NOehk4jzsZF35cu2iPCWIYN0EhFpiOX7HR728vNnlGIaN8JS6RJT
         WOHSyCCURB4FMIa3HsFEESWTE7Z2KBYu90L4OeHoKhJJeQQ7fHEQFHTpGYA6G/GKWQBJ
         lEdw==
X-Forwarded-Encrypted: i=1; AJvYcCUEhcuhQ7xnjb88ourX2hNtFZDJfKRFCjFvxL7CdpHBuJPg72v45wv+6sHNlSnx9x+AU7XiR1nGawRL@vger.kernel.org
X-Gm-Message-State: AOJu0YxKGWgdeciVVsfJVUXSZRgyDfLmOZLdVb9D4pajr/pZK/8XMCwK
	upkzLvkl9UKZQ9r2JfUBrRrpVDHZ06S0tzgPVjtqbvDSRV0mD1vBLpR7
X-Gm-Gg: ASbGncs67EjbAMCffq7zX3ROqM+2JDMZWJI8v3jG7h8Owq4L70i3iM4oblYa0a3Wc65
	y78vBi/71id/ect7Kjf3ZF+H/qmf/z7XwL99XplbIcuitHlbLCJD/SEBEmLcR3S7JX56BhZWrSy
	WKUugcxVrCBamSR8gp2+MvvJXOz/H7DYglsXvlmU7M0ZaHjy3gkcsiNfG5V6gdhVfuuWEss2awN
	Hp+d0f2c2uLaktC1zqd0FSy55oyhNifFhvD31MjdFU1Vekm6cCXBjc+wJxu7mqsrfPlGfvC+POc
	8NES6sv/mBS5vl/NvzY299u/38o2E4mxoJHkI6+zIQ82eOeessyVkoMPT9PooP6HmIscruuCn+m
	R96Qw6r448FJKPhmoUySA8wf/iMaOmteJ8X3hCevhEgHSmRnq8n80vjxekhkDIdeuIwH9Ija+8t
	vYnlPUKQVYWBbOlNRo4LZowybnJuZeEX7f8RdtuaulCKFnSs5a3vEtl/0xnD3fH7fTlCOfG7Djb
	9+f+lw=
X-Google-Smtp-Source: AGHT+IHI/dPLHOEXbAgh9incjnpJfjqNEb+KRQ5szvPQKR2/DbuucHSelag9VvNOHA5WUfOKDq1CeA==
X-Received: by 2002:a05:6402:430d:b0:63e:142e:4b18 with SMTP id 4fb4d7f45d1cf-63e600843bamr9053952a12.7.1761554875180;
        Mon, 27 Oct 2025 01:47:55 -0700 (PDT)
Received: from [10.0.1.60] (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef8288asm5688230a12.10.2025.10.27.01.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:47:54 -0700 (PDT)
Message-ID: <341f56de-9dde-4c44-9542-b523e1917dcb@gmail.com>
Date: Mon, 27 Oct 2025 09:47:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Russell King <rmk+kernel@armlinux.org.uk>, devicetree@vger.kernel.org,
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
Content-Language: en-US
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
In-Reply-To: <20251027072749.GA7811@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 27/10/2025 08:27, Laurent Pinchart wrote:
> Hi Andrew,
> 
> Thank you for your quick reply.
> 
> On Mon, Oct 27, 2025 at 04:08:42AM +0100, Andrew Lunn wrote:
>> Adding Russell King
>>
>> On Sun, Oct 26, 2025 at 02:29:04PM +0200, Laurent Pinchart wrote:
>>> Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
>>> (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
>>> devices produces an interrupts storm. Disable EEE support to fix it.
>>>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> ---
>>> The exact reason for the interrupt storm is unknown, and my attempts to
>>> diagnose it was hindered by my lack of expertise with DWMAC. As far as I
>>> understand, the DWMAC implements EEE support, and so does the RTL8211E
>>> PHY according to its datasheet.
>>
>> I believe for DWMAC it is a synthesis option. However, there is a bit
>> indicating if the hardware supports it.
>>
>> The PHY should not be able to trigger an interrupt storm in the
>> MAC. So this is likely to be an DWMAC issue.
>>
>> Which interrupt bit is causing the storm?
> 
> That's where I hit my first wall :-)
> 
> I've tried to diagnose the issue by adding interrupt counters to
> dwmac4_irq_status(), counting interrupts for each bit of GMAC_INT_STATUS
> (0x00b0). Bit RGSMIIIS (0) is the only one that seems linked to the
> interrupts storm, increasing at around 10k per second. However, the
> corresponding bit in GMAC_INT_EN (0x00b4) is *not* set.
> 
> The ENET_EQOS interrupt on the i.MX8MP is an OR'ed signal that combines
> four interrupt sources:
> 
> - ENET QOS TSN LPI RX exit Interrupt
> - ENET QOS TSN Host System Interrupt
> - ENET QOS TSN Host System RX Channel Interrupts
> - ENET QOS TSN Host System TX Channel Interrupts
> 
> The last two interrupt sources are themselves local OR of channels[4:0].
> 
> I ould suspect that the LPI RX exit interrupt is the one that fires
> constantly given its name, but I'm not sure how to test that.
> 
>>> What each side does exactly is unknown
>>> to me. One theory I've heard to explain the issue is that the two
>>> implementations conflict. There is no register in the RTL8211E PHY to
>>> disable EEE on the PHY side while still advertising its support to the
>>> peer and relying on the implementation in the DWMAC (if this even makes
>>> sense)
>>
>> It does not make sense. EEE is split into two major parts. The two
>> PHYs communicate with each other to negotiate the feature, if both
>> ends support it and both ends want to use it. The result of this
>> negotiation is then passed to the MACs.
>>
>> It is then the MAC who decides when to send a Low Power Indication to
>> the PHY to tell the PHY to enter low power mode. The MAC also wakes
>> the PHY when it has packets to send.
>>
>> A quick look at the data sheet for the RTL8211E suggests this is what
>> is supports.
>>
>> There are a few PHYs which implement SmartEEE, or some other similar
>> name. They operate differently, the PHY does it all, and the MAC is
>> not even aware EEE is happening. Such PHYs should really only be
>> paired with MACs which do not support EEE. An EEE capable MAC paired
>> with a SmartEEE PHY could have problems, but hopefully the EEE
>> abilities and negotiation registers in the PHY would be sufficient to
>> dissuade the MAC from doing EEE. But i would not expect a setup like
>> this to trigger an interrupt storm.
> 
> Thanks for the explanation, I read documents to try and figure out how
> it worked and didn't find such a clear and concise high-level summary.
> 
> I'm not very experienced with ethernet, but I can easily test patches or
> even rough ideas on hardware.
> 

Hi Laurent,
I had the same problem, interrupt storm plus link instability with dwmac.

I found out that 2c81f3357136 ("net: stmmac: convert to phylink PCS support")
commit is the one causing the problem to me.

But the phy used by our board clearly do not support EEE, so I disabled
directly in the driver.

I’m very interested in your investigation, as I’d like to understand why that
commit causes a regression, given that it supposedly just switches to using
phylink for EEE management.

See https://lore.kernel.org/all/20251023144857.529566-1-ghidoliemanuele@gmail.com/

Thanks and regards,
Emanuele

