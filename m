Return-Path: <devicetree+bounces-109315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC2F996079
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE6D82823CC
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 227BA17BED4;
	Wed,  9 Oct 2024 07:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="yW6LlVoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2EA42070
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728458192; cv=none; b=iVTgRlsge6QaVPwTv78QBeM12PvVZ+EYKLhmc3GlPZfFwP7AmUQ+UlAna51oYUHIfDL7Nf7vb9PJSMZO7eUZYZOl1a89kIxJm9BmcDsfKAgl7S3r819W3bXtkTxHVPwQRzD9aE7Jtjcjvr96dbKkKX/XLNYux3s6D9OIn3COkTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728458192; c=relaxed/simple;
	bh=2rqo4GThQ3te13imBUH4sEuz7DO1TFBQa+l8OvnxZYc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=DIKj6RdY3YJUmNCtaOY5yF6COa1gvCoEbBwTlZnPNKPBizZaPxYtURJtIKORurEEv9oV1r+jFSxC25UtLK5Yesa6M5ZGgKkNdMvDzA7tZeMDa6hDR8XHWDy2QKjOMX9Bmx1y/5s0nMpvN3zPopDtkK2lL/W6ndcpb68vIivyJ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=yW6LlVoV; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R7KGjuUSCJsHNN8JQGwjEMcvel1ygg4tsB6vaxnkEpY=;
	b=yW6LlVoVN7EsUlcqxn4hk/M4TK1G1Cc6pSZlwQGtduJ8gLvdPvOBfq5aOXL/+eoGDdnKaS
	A8qWI20qkzrgzN96YFd1XxanLQ3Vj0aGBH5yp947DDfJ+7i597OjkRiRlUn08GtYcnG6Hz
	KgPx8E8t0pALB2wZ1vqEX7AZCgwVtj72rsIEoPS5idTkkDHkTWT1oacHuaQUhhm2e1ulQx
	fxgkYzod9hYF0a1aE2N7RLhJ2Rs5y+IKPsNwOsK70oEbiR5hOZMrOyAQVwBCJp5ZZ7HBJM
	JPq8cQ/dbUvuHkF2O3Kx2yufcBN2+pFVFcExjOoQERRSs1yQ6X45tKIq1ASpvw==
Date: Wed, 09 Oct 2024 09:16:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Klaus Goger
 <klaus.goger@theobroma-systems.com>, Quentin Schulz
 <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
In-Reply-To: <20241008203940.2573684-7-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
Message-ID: <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> All Theobroma boards use a ti,amc6821 as fan controller.
> It normally runs in an automatically controlled way and while it may be
> possible to use it as part of a dt-based thermal management, this is
> not yet specified in the binding, nor implemented in any kernel.
> 
> Newer boards already don't contain that #cooling-cells property, but
> older ones do. So remove them for now, they can be re-added if thermal
> integration gets implemented in the future.
> 
> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
> SoM with Haikou baseboard")
> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Looking good to me, thanks for the patch.  In addition to the amc6821
driver currently not supporting full integration into the thermal
framework, the "fan" DT node also isn't referenced in any cooling map,
so having it define the "cooling-cells" property is of no use.

By the way, it would be nice to see the amc6821 driver supporting fan
speed regulation, and test it to check who does a better job when it
comes to cooling and fan speed regulation, the thermal framework or
the chip's built-in logic. :)

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 1 -
>  arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 1 -
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi   | 1 -
>  3 files changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> index b7163ed74232..a6ea9d8c785c 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> @@ -293,7 +293,6 @@ &i2c1 {
>  	fan: fan@18 {
>  		compatible = "ti,amc6821";
>  		reg = <0x18>;
> -		#cooling-cells = <2>;
>  	};
> 
>  	rtc_twi: rtc@6f {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> index 8ac8acf4082d..ab3fda69a1fb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> @@ -61,7 +61,6 @@ i2c_lvds_blc: i2c@0 {
>  			fan: fan@18 {
>  				compatible = "ti,amc6821";
>  				reg = <0x18>;
> -				#cooling-cells = <2>;
>  			};
> 
>  			rtc_twi: rtc@6f {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index 650b1ba9c192..6de3128556b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -395,7 +395,6 @@ &i2c7 {
>  	fan: fan@18 {
>  		compatible = "ti,amc6821";
>  		reg = <0x18>;
> -		#cooling-cells = <2>;
>  	};
> 
>  	rtc_twi: rtc@6f {

