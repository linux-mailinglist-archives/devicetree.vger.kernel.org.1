Return-Path: <devicetree+bounces-137851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 45795A0AE27
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 05:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0FA97A2ED5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 04:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17141187553;
	Mon, 13 Jan 2025 04:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="LNbCiOsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C57170826;
	Mon, 13 Jan 2025 04:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736742350; cv=none; b=p+uJi61f6HAxs6eubZ3CcV+vMDEh3IjR3boijgmGum53woEICZpybGFXzreCdDigzUNQHpt/TyL2uerp4+jv9GU4ZF4CSQTq6c8tyuW+8CieNN/rCC8PxD1mwqmUjvgKJlnpU7x18duHf4z4JaEdtuiMHvNN56Q13xPNnXmHcw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736742350; c=relaxed/simple;
	bh=tItQfXcfn4H2R1URTtbXDQFDvW7NXBZ1ci8UKNoZSUQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=YQaepuiRnn+dUeFW6wFy5PWvETtgG8naP4J2mayvHOxYa1dx0mzivsp5iNqmcjRvaO44QyKsoC++JaSNgXTqLZjoUBQPcO7V7qM5hF9jHjg23bFu8rsEcCUWI5R5LD/Fin5ZxWifGWK8le8XrHPU10R39PVBJZAjx3Cadu8tK2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=LNbCiOsq; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736742345;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0i/rYtONain48RRX0u5I3QgFdCO9Q8AGBJWpvj/+2GM=;
	b=LNbCiOsqcKhBuhmC+ka4eaFtsvRGNV9N9yDGYt065LSqN2h6wpjt8HqKqdgfh5AK9pL53e
	Gu4PRBhlJXoyPCukxwzdmhXC4kKch/mepdvJfwC4vVgRclFaCTEYAhV2wZRdPc+sqXYHuW
	W95mRt5Ep8+aiqxsll2kRwseXuUxzD82QBikOLPbtjuivLN94k77gZUtW/1qRWidCaLx2n
	hJLFjQwL1sg7RTR7Kb5D7lXePybHDfKjzPwgLV9I3gqLCw2pttN6QJK2J4JTnyIgxfKjs1
	i6YIFqWzCuzDpZHZqOszZ7zLPHd5+v71P14vuHEdNTg8ipZPw3oASDRVh4UBRQ==
Date: Mon, 13 Jan 2025 05:25:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
In-Reply-To: <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
Message-ID: <7b55c7469774c41d9896df3100df1630@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Junhao,

On 2025-01-12 23:16, Junhao Xie wrote:
> On 2025/1/12 16:47, Dragan Simic wrote:
>> On 2025-01-12 08:33, Junhao Xie wrote:
>>> Add dts for Ariaboard Photonicat RK3568.
>>> 
>>> Working IO:
>>>     Debug UART
>>>     SDIO QCA9377 WiFi and Bluetooth
>>>     M.2 E-Key PCIe WiFi and Bluetooth
>>>     M.2 B-Key USB Modem WWAN
>>>     Ethernet WAN Port
>>>     MicroSD Card slot
>>>     eMMC
>>>     HDMI Output
>>>     Mali GPU
>>>     USB Type-A
>>> 
>>> Not working IO:
>>>     Ethernet LAN Port (Lack of SGMII support)
>>>     Power management MCU on UART4 (Driver pending)
>>> 
>>> Not working IO in MCU:
>>>     Battery voltage sensor
>>>     Board temperature sensor
>>>     Hardware Power-off
>>>     Hardware Watchdog
>>>     Network status LED
>>>     Real-time clock
>>>     USB Charger voltage sensor
>>> 
>>> About onboard power management MCU:
>>>     A heartbeat must be sent to the MCU within 60 seconds,
>>>     otherwise the MCU will restart the system.
>>>     When powering off, a shutdown command needs to be sent to the 
>>> MCU.
>>>     When the power button is long pressed, the MCU will send a 
>>> shutdown
>>>     command to the system. If system does not shutdown within 60 
>>> seconds,
>>>     the power will be turned off directly.
>>>     MCU only provides voltage for charger and battery.
>>>     Manufacturer removed RK8xx PMIC.
>> 
>> Unless the design of the board is proprietary, it would be good
>> to provide a link to the board schematic, for those interested
>> in verifying the board DT file.
>> 
>> As a note, I already tried to find the board schematic with no
>> success, so the design might be proprietary.
> 
> Yes, this board is proprietary. I asked the manufacturer and
> they don't provide schematics.
> 
> But I found a partial schematic diagram of some of connectors
> on the board here
> https://dl.ariaboard.com/photonicat_rk3568/Photonicat%20rk3568%20EVB%20Board%20spec.pdf

Yes, I also found that PDF file.  It's somewhat similar to what
Raspberry Pi provides with its reduced schematics -- helpful to
an extent, but still leaving a lot to be desired.

Out of curiosity, what did you actually use as a reference to create
the board dts file?  Perhaps some downstream dts file provided by
the manufacturer or found in some operating system image?

