Return-Path: <devicetree+bounces-126667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A509E272E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:22:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48983164038
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D7C1F7591;
	Tue,  3 Dec 2024 16:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Ch6idT0J"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AE21AB6C9
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 16:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733242804; cv=none; b=JxG8lxGzYfLpIMz6jLLNGjwsz9oNh9gyw23dGyyY0HoSspjwjch33X9JBRMQenWw3mWXcSLCkuONCLP5kqbpYLPllbyvldXDGWsCTZ4dyRslcy3oOUO9+wL7JDgB0hKgpJ3tg58KlDnF+de36VFNYQJX5Lvd4sU9JMByAECmEjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733242804; c=relaxed/simple;
	bh=qq0oleacfybNJs/0iBzaPqtTnINYZQgyzi04iD3uan8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RyMcW9Q5NO0QjnU4Cl7cvaJwNL9ymHuWhusj7IpClu5WHCQqIeWWaug3dL5IEawYFDI0E+76Z3uh3WfZdC2+0S8Lc8fDJA7YR5oR2QcRNFOv5x6pZpRTq2pTodHOaBUAQwYqFYjEKXIDjsVi244eqi/xm0F6ABKPgIaldFaPeGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Ch6idT0J; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zr2fwaRM/tT8qiD2XWSBmLUeHIkf64MoUkSUJPRTs/Q=; b=Ch6idT0JkaBDTXZX27TctV+jBJ
	MtzADH9V1R84Xxv2c4fPxyRDwngDdgGP8Qdr0+6q7G2cT1Aq7L+mETQrsU1L1bT6Xtk24uiINi9uC
	kRxnidTh+x6nYELAlBw8HA1R8eHZZU4y0IyYcTg4zmCrnNGiPU+3OLffAdoDL5JR+s8K6v93E3bID
	1CHqsAT7rygK9DK2DNYcl3zhWJh0MCY2jKwpJB0GZM5Efgr7gxW+7KHZSWEGMxe6r+EoRQYvmD3nO
	Hf10Tz9c9KZMae9QTIErGKKh3qMJgSmxoF37E4FHx3fDKrXbgIh5WkPPrYlWtu7XPQc8WYgjltY2X
	BXzwWtGA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIVcy-0003Lo-BS; Tue, 03 Dec 2024 17:19:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
 inindev@gmail.com, cristian.ciocaltea@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for Radxa ROCK
 5B
Date: Tue, 03 Dec 2024 17:19:55 +0100
Message-ID: <2724169.KRxA6XjA2N@diego>
In-Reply-To: <20241130014043.12942-2-naoki@radxa.com>
References:
 <20241130014043.12942-1-naoki@radxa.com>
 <20241130014043.12942-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Samstag, 30. November 2024, 02:40:43 CET schrieb FUKAUMI Naoki:
> add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.

Make it work properly is not an ideal commit description.

I guess the lane assignment for the dp port should be discoverable
in the device schematics, so the commit description should explain
as much.


Heiko

> tested with ELECOM U3HC-A424P10BK[1]:
> 
> $ lsusb -t
> /:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
>         |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
>         |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
> /:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
> /:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
> /:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
> /:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> /:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/5p, 480M
>         |__ Port 005: Dev 003, If 0, Class=Billboard, Driver=[none], 480M
> /:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 5000M
>         |__ Port 004: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> /:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
> /:  Bus 009.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> 
> [1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c5776e3b4aab..43fc1f24dfc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -918,6 +918,7 @@ &usbdp_phy0 {
>  };
>  
>  &usbdp_phy1 {
> +	rockchip,dp-lane-mux = <2 3>;
>  	status = "okay";
>  };
>  
> 





