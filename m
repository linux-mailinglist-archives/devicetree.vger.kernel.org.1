Return-Path: <devicetree+bounces-137730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EB5A0A7CC
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6BF77A1968
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6006A17B506;
	Sun, 12 Jan 2025 08:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="t4mIgqp1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90C1BA3F;
	Sun, 12 Jan 2025 08:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736671640; cv=none; b=j6NEnZKOVgJKXdYVvKqb5wZKwz2k2QAC63m3OUrPDfU2URTDQIkkE2oKhROPpCueLahAG7Q7ZZU+vKtWH/tR0AXcL/7+sg4V2LoYNWddNmuW66pzw/FY95Js1PZJwH0VrdQ0w/fqDO2ZRGQkCBfVY6z0KzysP7fIe8xep6GvLMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736671640; c=relaxed/simple;
	bh=Bu5o7kJB0Eh30JVsKbPX7qWHSOzCQ+wZ6emGWUdg204=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lV1G+PLBzO2j85Ps78GTx3HeAYOtoofD4FHL9mKxMzqc7CqtBb37p/JkHAZ6cX0Y1kHamKEkDESUD+mB1EX1eAoMaGLXP7LNjrMULH/zxORj24uekx387b91mziQxgMmn8yK4n+vg5DwM0NNzUAhw5WLexqDsn9pfWCLU7cLuLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=t4mIgqp1; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736671629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rrBZMX3isiKut8IdPpzmOqVncQJFg6Ju0J78pmuQScM=;
	b=t4mIgqp1KbrRwBjEHiQep2+1HN9DuwuuoZou78uVv25jvPOgyher+SCTS9YSdxvxKCeNyS
	1emd0DhoHgm73m70TR9pm8uuhSCFvfyp7ohVKlacoQjedQwKE6lR4OGZH6NlUxGecfkEc3
	yXqCRn2Yio6zRt174sDL1cxk0zBDaQBaZIp0j/4JVyhrv9V5RiqezUXPYbSOqZNAfL+sAh
	xtnvWYOSNT4JvOrXA2MXRik+nDw3bwwcBujywrI3SMYQGUFuZTTcQuJhHA4pzrZ/8FJM0r
	mBGeaHXkuEkaF7bTeFMGVchCl9Y//okNmreQKTZnZjRGdp549vFcxvDdlNsBWQ==
Date: Sun, 12 Jan 2025 09:47:08 +0100
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
In-Reply-To: <20250112073344.1976411-4-bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
Message-ID: <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Junhao,

On 2025-01-12 08:33, Junhao Xie wrote:
> Add dts for Ariaboard Photonicat RK3568.
> 
> Working IO:
>     Debug UART
>     SDIO QCA9377 WiFi and Bluetooth
>     M.2 E-Key PCIe WiFi and Bluetooth
>     M.2 B-Key USB Modem WWAN
>     Ethernet WAN Port
>     MicroSD Card slot
>     eMMC
>     HDMI Output
>     Mali GPU
>     USB Type-A
> 
> Not working IO:
>     Ethernet LAN Port (Lack of SGMII support)
>     Power management MCU on UART4 (Driver pending)
> 
> Not working IO in MCU:
>     Battery voltage sensor
>     Board temperature sensor
>     Hardware Power-off
>     Hardware Watchdog
>     Network status LED
>     Real-time clock
>     USB Charger voltage sensor
> 
> About onboard power management MCU:
>     A heartbeat must be sent to the MCU within 60 seconds,
>     otherwise the MCU will restart the system.
>     When powering off, a shutdown command needs to be sent to the MCU.
>     When the power button is long pressed, the MCU will send a shutdown
>     command to the system. If system does not shutdown within 60 
> seconds,
>     the power will be turned off directly.
>     MCU only provides voltage for charger and battery.
>     Manufacturer removed RK8xx PMIC.

Unless the design of the board is proprietary, it would be good
to provide a link to the board schematic, for those interested
in verifying the board DT file.

As a note, I already tried to find the board schematic with no
success, so the design might be proprietary.

