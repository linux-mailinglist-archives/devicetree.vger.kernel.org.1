Return-Path: <devicetree+bounces-149902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C019A40C17
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 00:12:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA8A3174412
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 23:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F5E202F8C;
	Sat, 22 Feb 2025 23:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="fpZwpnql"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC351FBC9F
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 23:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740265919; cv=none; b=M6DcBzj65jUifKrxKbRASLAYxuRzQYY/3/HvRTXlanO4ZYWAP6zvoDjbliTMH6qPWPrSLBmLfvp8VZ5EnfveYWE0eclyJtPW3/q6f9QY+ZZInjYu82Yo4wjEXIa8COn2fvwh6aEVXGgT8eywUJ76U1hnpcI0QW/vUWSxwlcK3qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740265919; c=relaxed/simple;
	bh=OZouOO51EICx4w8rb5bdB6PN13gI5s5A1XkyqT8j+P8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WDlBNbj0gmFkOWSymcar+4ofK4ZWZp8uHczNdb+ddks6J5rXsJwg/Cogn5PIgrkqS84ApnWl6iCUcDLWSQR+gTo1ubsQs9xmFSPJYo6O7G9yoQoNKrxxrNJIMF0iZI+u1yIw6FUSdKBxngKzFdOPwmTjR9xHLGAhQgwNoQrkrso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=fpZwpnql; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id ED05B8A312A;
	Sat, 22 Feb 2025 15:06:55 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id D5830160036F; Sat, 22 Feb 2025 15:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740265615;
	bh=fdtZsIQbki6CBziVds4ivODGYCt8szGPIe5uhWOCfd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fpZwpnql7MvraVaruTi8w2KRmKAjmS/zkX8MQ7czWS1G34FNqMfYWvOyG845B+dgu
	 IioVEay6viRQ25upCdj5s/PnTvd7MTJVjCT7lq/XhnEM/dOd9aVcIemvbus4r7H8Xi
	 mYzvnILn8DwsvqR08SJ1nCwgFF2oH5n9k7WlrQX4=
Date: Sat, 22 Feb 2025 15:06:55 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Message-ID: <20250222230655.GZ16911@sventech.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
 <20250222193332.1761-4-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250222193332.1761-4-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> The RK3588 Single Board Computer includes
> - eMMC
> - microSD
> - UART
> - 2 PWM LEDs
> - RTC
> - RTL8125 network controller on PCIe 2.0x1.
> - M.2 M-key connector routed to PCIe 3.0x4
> - PWM controlled heat sink fan.
> - 2 USB2 ports
> - lower USB3 port
> - upper USB3 port with OTG capability
> - Mali GPU
> - SPI NOR flash
> - Mask Rom button
> - Analog audio using es8388 codec via the headset jack and onboard mic
> - HDMI1
> - HDMI IN
> 
> the vcc5v0_usb30 regulator shares the same enable gpio pin as the
> vcc5v0_usb20 regulator.
> 
> The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
> RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
> for HDMI IN.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 34 +++++++++++++++++++

Tested-By: Johannes Erdfelt <johannes@erdfelt.com>

JE


