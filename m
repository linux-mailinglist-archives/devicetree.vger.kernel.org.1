Return-Path: <devicetree+bounces-78138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFF6911351
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 22:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E6FF1F22380
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 20:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61CA50A62;
	Thu, 20 Jun 2024 20:36:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6775F43156
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 20:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718915764; cv=none; b=UXHyVjeZxYx5A3mlUiGFw3V9rIB2KX5WpVWZHc6B0vFtGYJW9/Y9c90G86ebwMeFMNHqEVjvUo7Evilkm1ehp00Qqd1QY1TZjk8IWlTPMxyZcoJYaGbdgmelOBxXLTZNY5NKe/4PjdWwoMHWBtc7Cc9XckSW4DL2gZHEhcQkpkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718915764; c=relaxed/simple;
	bh=WLfzmsdMA3M+MwSUr+DBp28Q0pXzz4lbROqp0RQ4L6g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gmcZ7IuaUndP7BpdbdcrhYhLU6pZbxPAW+gMNp8z2K1CJln+gwqXqW8BEgJFd3vSJxRpnNq/oeDzF6jBhSU8gUWaSrf3dHB8Wd6QtWZmbbI2wBiLbz8R4pKr3NEU8GJrOGaOMZHbEqWKBgAcZa5sMPKHMmFWDvwio4+pRl39ne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKOVh-0001h2-Jm; Thu, 20 Jun 2024 22:35:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Thu, 20 Jun 2024 22:35:56 +0200
Message-ID: <10613118.nitPUkWRp2@diego>
In-Reply-To: <20240619232734.1126-1-naoki@radxa.com>
References: <20240619232734.1126-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Donnerstag, 20. Juni 2024, 01:27:34 CEST schrieb FUKAUMI Naoki:
> align with other Radxa products.
> 
> - mmc0 is eMMC
> - mmc1 is microSD
> 

so yes we can still change the mmc aliases as the zero will only become part of 6.11
But mmc aliases should start at 0 and not contain holes.

So if you care much about the ordering, move the alias block out of the zero-3.dtsi
and introduce separate blocks for each board.


In zero-3w:
  	aliases {
		mmc0 = &sdmmc0;
  	};

In zero-3w:
  	aliases {
		mmc0 = &sdhci;
		mmc1 = &sdmmc0;
  		mmc2 = &sdmmc1;
  	};


Alternatively, leave the aliases as they are now
Heiko

> Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index 623d5939d194..85d76d535338 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -7,7 +7,7 @@
>  
>  / {
>  	aliases {
> -		mmc0 = &sdmmc0;
> +		mmc1 = &sdmmc0;
>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> index 9bf4f464915f..188147c4b78b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> @@ -9,7 +9,7 @@ / {
>  	compatible = "radxa,zero-3w", "rockchip,rk3566";
>  
>  	aliases {
> -		mmc1 = &sdhci;
> +		mmc0 = &sdhci;
>  		mmc2 = &sdmmc1;
>  	};
>  
> 





