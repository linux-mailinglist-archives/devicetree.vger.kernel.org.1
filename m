Return-Path: <devicetree+bounces-125169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4989DB02A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 01:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52AADB21680
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 00:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D0A182;
	Thu, 28 Nov 2024 00:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="hxbO7Tb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7CD38B
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 00:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732752489; cv=none; b=k1veZ2uoVKIn4M5dtZzVNCEWO9Sc9STKX56F6YGZQCfMT+V+6aWlIoOQakHsFfoBFzjb0sL/mdqP+whokaDPxLEIWvCxUFzkFNbgH6OVvUAWhz7Rbn04ppVEoXhyT4y8VYBSBc8lPkI9celSz03e+vgfvM5kT6kHlte0iszM7tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732752489; c=relaxed/simple;
	bh=g3xfJ+HRPUHYQ+ANxCnp0z4sIQrccQ6Gu6dzfFtB2DA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=HJ2ORz/27Npg11b2yMwAaYBz550qK9K9EmazzbA6nSPecEFhKeihNnYb5Y4BuDswqTHtA7hsnaIdI+52JkyXRHOfzzPKe1SjQWNfjo/n6eq32OL6QPw/nPGp0dpbrE1QJg4/++RQ9kJE2Pv2qkYmVhFt8ZJZZOid/HmX21tU6yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=hxbO7Tb9; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732751993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kyUqZ7syZZtzckT7kS1pPjjZtcXo9K51BG3n+RoSxpA=;
	b=hxbO7Tb9yGeXhxxtJCVgK+xwton8Fdvla8FXDG2SDb6AVAm6PSATVdb2LQwfx4BuJgIUL5
	k0rucLNtRnKiBkrwPv9hPS/TBPcTxxgM3/QOacATkCGrBecB/dGI+MXR4P7fFRxiMgsIFd
	Rh2SHhOA/R4Hdnz1Nqvtxxjkcb/jqxKRnCgf2tOsLWpUHi2xHeIEBVBWhhEHoSnQgBNMZ/
	vPOdwIdo+FACnhNGgoEM/Kg7t0FceN2pq0rvY7sbAVF7gP1PIUSRbCT1G6YXlkjJ5nGHfb
	Mb15VQLtbMlsPaFhFKTxCvD3PxqUtDHW7WQ3nPObdfv+ssylpbyeam/i9+uz3w==
Date: Thu, 28 Nov 2024 00:59:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 inindev@gmail.com, geert+renesas@glider.be, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, jbx6244@gmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK
 5B
In-Reply-To: <20241127015224.2361-1-naoki@radxa.com>
References: <20241127015224.2361-1-naoki@radxa.com>
Message-ID: <e15a72e60db211d450e3aa7a7245d21a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-11-27 02:52, FUKAUMI Naoki wrote:
> on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> devices.
> 
> rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> matches with rfkill-bt.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Thanks for this patch, renaming the rfkill label this way makes
sense to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c44d001da169..d597112f1d5b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -72,7 +72,7 @@ fan: pwm-fan {
> 
>  	rfkill {
>  		compatible = "rfkill-gpio";
> -		label = "rfkill-pcie-wlan";
> +		label = "rfkill-m2-wlan";
>  		radio-type = "wlan";
>  		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>  	};

