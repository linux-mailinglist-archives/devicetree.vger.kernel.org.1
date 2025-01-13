Return-Path: <devicetree+bounces-137904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D863A0B0D5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47F2C18873F1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3BE3231C8D;
	Mon, 13 Jan 2025 08:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="rA7lYVdN"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E633028377;
	Mon, 13 Jan 2025 08:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736756309; cv=none; b=K1CW4KnvnX1kPS+nNl1QbFA6Vkvf6YsAFQ1i2RValX7iJXmWiPDdAMEruLCEB26ssnxo82mKm/tCYCR35ADTdTHJsGt5AHqt25T/7wmv+XpZk7E9qflFVqqNCpGCA1+h0BJsAa1hID4KpanZYNH7Oh91YPRk4AIvVaMqsMu1bq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736756309; c=relaxed/simple;
	bh=keSfTFDZ4AFOeNYkutWTcS2xnlO16SIrBLbjEmcDM4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E33Ajdp17QjlXbAl3EyBduLoOpZD1Lihg7fDs1audWZ3Lz8dMy8Joey1txqRUfejPGNSu/uiaMItCqPhl7E82wBYuVpjXhIZTij/oSNOGHkXiU+tQtU2JhXNmDPHEdJ3Z1Cn85G7mI4KWnfg/0F/cFOAfIccgRHH+D9uTd1p4hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=rA7lYVdN; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 64ADF7817F;
	Mon, 13 Jan 2025 16:18:11 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 64ADF7817F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736756295;
	bh=V24IXTryrVGcjHqIUfjWLveVF6uP2q3j+D/mtRq378w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rA7lYVdN5Hh4AQKwBodrNJQFyoyXZDDh39M71ZklGOPkNl5vNeT8Q2z80o9bmR5JX
	 POPCVNKc6wHyZtidh/DeBLZ8pCxdF9Df2y1gHBZtNdJt004mxNZIicRHudtObTW9CQ
	 9pnnpwOHdf5LwHULUluFc30RgYlOd8QBZ8NsAfeg=
Message-ID: <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
Date: Mon, 13 Jan 2025 16:18:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Dragan Simic <dsimic@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
 <7b55c7469774c41d9896df3100df1630@manjaro.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <7b55c7469774c41d9896df3100df1630@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025/1/13 12:25, Dragan Simic wrote:
> Hello Junhao,
> 
> On 2025-01-12 23:16, Junhao Xie wrote:
>> On 2025/1/12 16:47, Dragan Simic wrote:
>>> On 2025-01-12 08:33, Junhao Xie wrote:
>>>> Add dts for Ariaboard Photonicat RK3568.
>>>>
>>>> Working IO:
>>>>     Debug UART
>>>>     SDIO QCA9377 WiFi and Bluetooth
>>>>     M.2 E-Key PCIe WiFi and Bluetooth
>>>>     M.2 B-Key USB Modem WWAN
>>>>     Ethernet WAN Port
>>>>     MicroSD Card slot
>>>>     eMMC
>>>>     HDMI Output
>>>>     Mali GPU
>>>>     USB Type-A
>>>>
>>>> Not working IO:
>>>>     Ethernet LAN Port (Lack of SGMII support)
>>>>     Power management MCU on UART4 (Driver pending)
>>>>
>>>> Not working IO in MCU:
>>>>     Battery voltage sensor
>>>>     Board temperature sensor
>>>>     Hardware Power-off
>>>>     Hardware Watchdog
>>>>     Network status LED
>>>>     Real-time clock
>>>>     USB Charger voltage sensor
>>>>
>>>> About onboard power management MCU:
>>>>     A heartbeat must be sent to the MCU within 60 seconds,
>>>>     otherwise the MCU will restart the system.
>>>>     When powering off, a shutdown command needs to be sent to the MCU.
>>>>     When the power button is long pressed, the MCU will send a shutdown
>>>>     command to the system. If system does not shutdown within 60 seconds,
>>>>     the power will be turned off directly.
>>>>     MCU only provides voltage for charger and battery.
>>>>     Manufacturer removed RK8xx PMIC.
>>>
>>> Unless the design of the board is proprietary, it would be good
>>> to provide a link to the board schematic, for those interested
>>> in verifying the board DT file.
>>>
>>> As a note, I already tried to find the board schematic with no
>>> success, so the design might be proprietary.
>>
>> Yes, this board is proprietary. I asked the manufacturer and
>> they don't provide schematics.
>>
>> But I found a partial schematic diagram of some of connectors
>> on the board here
>> https://dl.ariaboard.com/photonicat_rk3568/Photonicat%20rk3568%20EVB%20Board%20spec.pdf
> 
> Yes, I also found that PDF file.  It's somewhat similar to what
> Raspberry Pi provides with its reduced schematics -- helpful to
> an extent, but still leaving a lot to be desired.
> 
> Out of curiosity, what did you actually use as a reference to create
> the board dts file?  Perhaps some downstream dts file provided by
> the manufacturer or found in some operating system image?

I wrote this device tree based on other rk3568 devices in mainline, and downstream board dts:
https://github.com/photonicat/rockchip_rk3568_kernel/blob/novotech-5.10/arch/arm64/boot/dts/rockchip/rk3568-photonicat-base.dtsi

Best regards,
Junhao


