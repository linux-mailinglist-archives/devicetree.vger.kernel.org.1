Return-Path: <devicetree+bounces-133253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B72F69FA0B6
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 13:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 799E27A108C
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 12:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041891F2C5B;
	Sat, 21 Dec 2024 12:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="xZ6bak7B"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC9D1EC4C2;
	Sat, 21 Dec 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734785725; cv=none; b=O1WdDjbeQNGNyHO2gkO/Iwl+TiRTTvBTO+Bey6GsNs7dMqJ15fPGNq02mgaNavj8EzwwdruBF1gHG6xjxMylpNuB3OsD7vMKTm5DCRoWZMDCbX/jIZkT5B6SJNIPgTEGjotgdz9cGIigy/2+9NzPL9pghD26/UHYolKKMto3Kik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734785725; c=relaxed/simple;
	bh=6Te3vUnViwWIdqfOWK1BOrJ3D3wbtmw3I/MWxW67BCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Arw0SaOrQQmmdIjoPQltmi6GWI/yAPaGgoz3XO/LpwX+QqDVGxbQRPAqdW4gG2GubMTajwZhHu+yRKx9RxC0SCdula1yW3Vsm3lJGAMYA39pz5m2XHgMHLm9JU0YETSaThDCN+pODDyiIBeNvJ9lPTPMNZkonC42gQFcYvexPe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=xZ6bak7B; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Tvo6xwYWGeSnCsDnjEWAgafbwiwjvh049xe5Nk5dpNg=; b=xZ6bak7BpkQBZ6tVs1jszJBZgY
	2CC/heXQBljSq1+UnQj/pnQd+QVanLlfBQGcBRmIhQdmL2p7gXWOQyEyTM2Ag6SEzXVXG9Xz5if8L
	blJSkMIW15bhu9sGbs1as/6txHDYYtb1hE1FM8GGlT5dBFjTzGdjEBQuE4g4gHL5uF4wZOT6053lE
	/xYdiD08XmIfBXrRKTWC3+izfjyGfabO4OXRVl3wlihMEyEXvPhYuft/W8se4laZwvi4z3PHN0pZ3
	kUpVr6NVyOnzmvGeIB6nvKe+o4Qn5zLWUlZpkPazLsCDchbWK6yNGBlvIQa0lamk3Bn7AIk/hxJcg
	jNxua1LA==;
Received: from i53875bfb.versanet.de ([83.135.91.251] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tOz0Y-0008N9-TD; Sat, 21 Dec 2024 13:55:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, krzk+dt@kernel.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject:
 Re: [PATCH] arm64: dts: rockchip: aliase sdhci as mmc0 for rk3566 box demo
Date: Sat, 21 Dec 2024 13:55:02 +0100
Message-ID: <24438615.ouqheUzb2q@diego>
In-Reply-To: <20241221104920.4193034-1-andyshrk@163.com>
References: <20241221104920.4193034-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Samstag, 21. Dezember 2024, 11:49:07 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Follow most others rk356x based boards, and u-boot only use mmc0/1
> as mmc boot targets, so aliase sdhci as mmc0.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> index 41b4cd5a4220..7d0eedf1bd0d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -19,9 +19,9 @@ / {
>  
>  	aliases {
>  		ethernet0 = &gmac1;
> -		mmc0 = &sdmmc0;
> -		mmc1 = &sdmmc1;
> -		mmc2 = &sdhci;
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;
> +		mmc2 = &sdmmc1;

sorry, but that won't be possible :-( .

The original aliases for the mmc order were added over 2 years ago
(november 2022) and became part of the ABI then.

Imagine someone using that board with a rootfs=/dev/mmcblk2p1 part
in the commandline to mount the old sdhci-part1 as rootfs, but now
you reorder the controllers, so so that commandline would try to access
sdmmc1, so their system won't boot anymore after just a simple kernel
update.

Breaking people's setup is one of those big no-go-s in the kernel, so
sadly you'll need to live with the existing order.


Heiko



