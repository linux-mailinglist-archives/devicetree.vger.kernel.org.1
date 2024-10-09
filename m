Return-Path: <devicetree+bounces-109322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 008CA9960F1
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5A9328A632
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED2A165F11;
	Wed,  9 Oct 2024 07:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="X0GN4FND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7DF36D
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459191; cv=none; b=GZhLvMbNnLMFdCXIYz3FYoVy1zUXi5T3c+UDnZjXc7Phui+AG1ZEmambPIUlnXUQMMDg9ZDz/oNVDue/WLHGyc+gVTvF/6eF06GqSTC9q/AwWlEVXnhcpwhmJdVZykjcYxFO9pM8WM1Px3ZX50SO16k5Mi/0bTgEL2pIpG5bRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459191; c=relaxed/simple;
	bh=MYwu1oraQDr8fqRgObmbTFzNqsRgrvI7FJYMJeeaoEg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=f8EDsNGxmC4w+4WRvx+r0YN4GY6KCc9/Tj9b97S+HpOh+f0vSMQ42idfU5dd0I11KOWkxrO9dAzz6bFy5gEp2PaYkU2q87+62ttLaypx53WFprN6klJBG2osd9XFroaklANElUO9bUjy1JvafmyXaZM/TlpYBWACGm8YqUAbVuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=X0GN4FND; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TiyNJJVamoNtjg9XHrBDoVADhtv1GofuxOEol/jV3ug=;
	b=X0GN4FNDBK41sDdoEn2BiVCaC+ddWLBZ3HEHppNZeoPt3oivzn9kp3MXqg6ub2AWf7/+Kz
	TgPJAVDagpnFDj37LXhCRggCQwb/9olhakQVDORD1gldTsDd/sdyBxqKtK0neY6oFHInyS
	wh1arqvV+UQjHXKj3V5MLjkr7d91RvKFUPrmeG66uZ9+22wpiYCLzrIv7x3/m3muIOwNJf
	ybgSbR0ksLr0wP/TYKnFCAaTCyt8vdoT3pZkk1RTC4r+rJSL2aNp9+jloDOj2a6qplhsnu
	kUWWx/iM5vPa2W0os02WqKuqB0xmF6yLrDUZdepYyCDckUNwZN8PruxYyQ8kkQ==
Date: Wed, 09 Oct 2024 09:33:05 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 11/14] ARM: dts: rockchip: fix rk3036 acodec node
In-Reply-To: <20241008203940.2573684-12-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-12-heiko@sntech.de>
Message-ID: <42b2e20207520d00625049a89a2ca36b@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> The acodec node is not conformant to the binding.
> Set the correct nodename, use the correct compatible,
> add the needed #sound-dai-cells and sort the rockchip,grf
> below clocks properties as expected.

Maybe reflow the commit description a bit, to use the available
column width better. :)

> Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced changes
are obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 96279d1e02fe..37369538483f 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -384,12 +384,13 @@ reboot-mode {
>  		};
>  	};
> 
> -	acodec: acodec-ana@20030000 {
> -		compatible = "rk3036-codec";
> +	acodec: audio-codec@20030000 {
> +		compatible = "rockchip,rk3036-codec";
>  		reg = <0x20030000 0x4000>;
> -		rockchip,grf = <&grf>;
>  		clock-names = "acodec_pclk";
>  		clocks = <&cru PCLK_ACODEC>;
> +		rockchip,grf = <&grf>;
> +		#sound-dai-cells = <0>;
>  		status = "disabled";
>  	};

