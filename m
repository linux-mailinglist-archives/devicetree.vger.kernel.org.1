Return-Path: <devicetree+bounces-272140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFQJFaLfqmlqXwEAu9opvQ
	(envelope-from <devicetree+bounces-272140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:07:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2C2224DC
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 783C6306D8FD
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83586221FB1;
	Fri,  6 Mar 2026 14:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k2wmXZHr"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134D72FD696;
	Fri,  6 Mar 2026 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805986; cv=none; b=nhUm6B33xhqjZ/dJE4Pqm5/Zu970SOBr2brsFg5k7KSUB6bQXhdyax+HMHuapUGY7t+s/U/XqEWZPmeeDMnKX4H8hIcQJMiZRpQSwhH1Xhfeh2UfABqRhPtBNvtIGG7yG9XRuCAS5XqzJXK+uZLTi6ZKflwDDm8e50loHHaVBss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805986; c=relaxed/simple;
	bh=KxkuNcTNtwFFBbBEE6JntkXBu0J6pcUOGJNm9O+XtBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qZseMQcs3CyL029zVsP/PaGttC2eQlbcpd+xUxHN1HdNTJR1nwq+Elb5oplAlGVbJK2wNo23lYySyzaEky20tEMCP83htA4IARtQkZzqIJKLBkrSfLtogPW2CYW62upKhoUikbEEBQkJkubJ9CnlKCkU93YqHLdkIuJwZ7pKcR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=k2wmXZHr; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772805977;
	bh=KxkuNcTNtwFFBbBEE6JntkXBu0J6pcUOGJNm9O+XtBA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k2wmXZHrG7GI1x85gXFhg1mHU8cPh3cbwtIljogJFm52FsUHN5wydW1/I/EnSv3q7
	 Wrm3YRy+2PcAbOnNji8+zj3ZtM9P7nlrCsJboj8P5fEvf90+4vnKr3/ntgvH+7xWbM
	 QLFbXseWnKkLCH+qaOczOYHw0kY6frGriPMP6VcgG8ujGNpnELKvuvMCW116Zm9g2f
	 OJI7TywGKiYKXhdXNIeh0B1X5/h6WM1FTef4fys14Ra0H7Z1uHzUhm2Jn6hhouou2a
	 sBEJ1s0lUTx+C1MCT8m0zYPK8DRHigTtZgCHUL2qIA9+flZpqDCj6l5+xhYjZtc5AK
	 SkROGa9hKvtLQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A014217E05B5;
	Fri,  6 Mar 2026 15:06:16 +0100 (CET)
Message-ID: <0994fef0-88f2-4277-aa46-0b6a33c53bfa@collabora.com>
Date: Fri, 6 Mar 2026 15:06:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: Akari Tsuyukusa <akkun11.open@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, sean.wang@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-3-akkun11.open@gmail.com>
 <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
 <CAKr_iV5cmE-GBp679Q-=bZi+186BvMvD41ctxnxNC3mTKEzuRw@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAKr_iV5cmE-GBp679Q-=bZi+186BvMvD41ctxnxNC3mTKEzuRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DCD2C2224DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272140-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Il 05/03/26 16:49, Akari Tsuyukusa ha scritto:
> Hi Angelo, thanks for the feedback.
> 
> On Thu, Mar 5, 2026 at 6:46 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>> Okay, but this is just a simple framebuffer and a UART; while it may be in some
>> way useful, there's already one device based on MT6589 that was upstreamed with
>> just a framebuffer and a serial port, but then didn't receive any more support.
>>
>> Could you please extend your efforts a little and push at least some support for
>> clock controllers and power domains for the MT6589 SoC to make it at least barely
>> useful?
> 
> Your point is valid. I saw similar minimal Device Trees in
> "arch/arm/boot/dts/mediatek/" . Currently, I am actively working on
> MT6589 kernel mainlining and Lenovo YOGA Tablet support, so I submitted
> this patch as initial support for this device.
> 
> I will send patches to add the following features in the near future
> (preferably within this month):
> 
> - Clock
> I wrote drivers and they seem to be working.
> However, some parent clocks are unknown.

Ouch. Well, it's mostly done then, hopefully sooner than later :-)

> 
> - Pinctrl
> I refactored it to common-v2, paris and it's working.
> A little more work is needed to add support for R0, TDSEL, RDSEL, and
> device tree binding.

Okay, almost done there too, then.

> 
> - PWRAP and MT6320 PMIC RTC
> PWRAP is working fine. This seems to be almost the same as MT8135.
> MT6320 PMIC has confirmed RTC operation, but it will take a little more
> time as I haven't written the regulator driver yet.
> 

Start upstreaming the RTC (and MFD parts) right now maybe?
That all depends on the actual state of things, of course.

Remember that you can upstream whatever is clean and works fine, that doesn't
have hard dependencies on other components.

> Additional time is required to add the following features:
> 
> - Power Domains (scpsys)
> I've written a driver, but I haven't checked that it works yet.
> And, some features are missing for full support.
> 

The power domains should be handled by mtk-pm-domains.c - not sure what you wrote
but if you did it on mtk-scpsys.c that's wrong.

> - eMMC/SD (MSDC)
> Likely compatible with "mtk-sd.c". I have written in Device Tree, but
> it is not working on the device. It needs debug mode.
> 

I can confirm that the MSDC controller in MT6589 will work with mtk-sd, there may
be some very small modifications to be done.... if any.
The mtk-sd driver does support "very old" SoCs already :-)

> - USB
> Almost certainly compatible with "mediatek,mtk-musb" and
> "mediatek,generic-tphy-v1". The device is not recognized by the PC,
> and there are logs saying "couldn't find an available UDC".
> It may take more time.
> 

I can suggest to try host mode. Usually that's the one that easily wants to work.
That may help you to validate that the PHY is actually working.

> - UART DMA
> Boots without any errors, but I can't confirm its operation because
> I haven't soldered UART.
> 

UART DMA on smartphones and tablets is usually used by Bluetooth, but if your
device does not have any UART DMA device, you will be unable to validate.

Soldering a UART for the console won't help you to validate UART DMA, as the
one you select for that excludes DMA.

> - I2C
> I don't know the details, but the clock is supplied from the PMIC,
> but PMIC clock driver does not exist. Fortunately, MediaTek engineers
> implemented MT6589 compatibility in the I2C driver (but it is not added
> in the MT6589 Device Tree).
> 
> - I2C devices (only in mainline)
> Touchscreen: syna,rmi4-i2c
> Accelerometer: bosch,bma255
> Magnetometer: bosch,bmm150
> Fuel Gauge: ti,bq27541
> Battery Charger: ti,bq24196
> 
> - SPI
> Like I2C, there is a driver (it seems that the PMIC clock is not
> required for SPI), but  I don't know what devices are connected.
> 

For SPI and I2C, the IPs didn't really change all that much from the old era
to MT6795/MT8173, so I'm confident that you won't have any problem with the
IP driver itself (be it SPI or I2C).

> I am committed to making MT6589 and the Lenovo YOGA Tablet fully
> functional in the mainline kernel. I will send these additional patches
> as soon as they are ready for review.
> 

I really appreciate seeing those old devices getting new life with upstream,
as much as seeing new ones upstreamed. That's really nice.

Keep up the good work!

Cheers,
Angelo

