Return-Path: <devicetree+bounces-137833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 170C8A0AC1F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 23:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9519A160A5A
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 22:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7C31741D2;
	Sun, 12 Jan 2025 22:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="egF7VdNC"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9C0424B254;
	Sun, 12 Jan 2025 22:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736720218; cv=none; b=k+RIgTb7TfrwG7Sz66K+utlHxtnX3uR+6PmUL64bKXE/cjRXOr/jHQshUCCPJmKFAmrPgKMh4mqfvBjauQ5gtdXuxLFYbJOQ9YtKaodrmCf8EQQHJarDd23faB0vY/QcZx853RF4hZZT2HFRN0WG3I4J247jv141MDDNaBvp/QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736720218; c=relaxed/simple;
	bh=u9A9YYzMNxhXpi09i3V3NNijpJf96pGztRCCitqCVGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a/gkIumkGUu071/c2YxeXt/0VKcoFT+w6Fr+y77hEgPMub+orPsCCGnlBowBygd7jDItea+TG7AgGaH8R/Vqm5YkHxXQBx9Wr7r1CqvaYeJwmsto0X87AofqElEi2jUSLokmBRxZ5Z0z4VYhT/h79aU9LLEdqOUqwz4/DcgswQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=egF7VdNC; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 72611788FD;
	Mon, 13 Jan 2025 06:16:45 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 72611788FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736720208;
	bh=RoHFwPnzubAPJIkPrQOyLxopMCG5P6p0JRNj3ERZDMA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=egF7VdNCF+Vq49RsjR995uWsuj2WZbNuEm1a/ulEsnxoSVAZEghcxrggbEcWEA8rc
	 B62Ud5gfna9J4CCLEh45TfesFRemK+5OdAq6jrpMx9xQpkpR8JHn5fj7E3KBNmdL9o
	 xP3q+MbIIjfUqReU+g1oFrj2S1jKqZ7TLpj4KAHA=
Message-ID: <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
Date: Mon, 13 Jan 2025 06:16:42 +0800
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
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025/1/12 16:47, Dragan Simic wrote:
> Hello Junhao,
> 
> On 2025-01-12 08:33, Junhao Xie wrote:
>> Add dts for Ariaboard Photonicat RK3568.
>>
>> Working IO:
>>     Debug UART
>>     SDIO QCA9377 WiFi and Bluetooth
>>     M.2 E-Key PCIe WiFi and Bluetooth
>>     M.2 B-Key USB Modem WWAN
>>     Ethernet WAN Port
>>     MicroSD Card slot
>>     eMMC
>>     HDMI Output
>>     Mali GPU
>>     USB Type-A
>>
>> Not working IO:
>>     Ethernet LAN Port (Lack of SGMII support)
>>     Power management MCU on UART4 (Driver pending)
>>
>> Not working IO in MCU:
>>     Battery voltage sensor
>>     Board temperature sensor
>>     Hardware Power-off
>>     Hardware Watchdog
>>     Network status LED
>>     Real-time clock
>>     USB Charger voltage sensor
>>
>> About onboard power management MCU:
>>     A heartbeat must be sent to the MCU within 60 seconds,
>>     otherwise the MCU will restart the system.
>>     When powering off, a shutdown command needs to be sent to the MCU.
>>     When the power button is long pressed, the MCU will send a shutdown
>>     command to the system. If system does not shutdown within 60 seconds,
>>     the power will be turned off directly.
>>     MCU only provides voltage for charger and battery.
>>     Manufacturer removed RK8xx PMIC.
> 
> Unless the design of the board is proprietary, it would be good
> to provide a link to the board schematic, for those interested
> in verifying the board DT file.
> 
> As a note, I already tried to find the board schematic with no
> success, so the design might be proprietary.

Yes, this board is proprietary. I asked the manufacturer and
they don't provide schematics.

But I found a partial schematic diagram of some of connectors on the board here
https://dl.ariaboard.com/photonicat_rk3568/Photonicat%20rk3568%20EVB%20Board%20spec.pdf

Best regards,
Junhao


