Return-Path: <devicetree+bounces-109203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 787C2995928
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 248B21F2269C
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5560E1C1ABC;
	Tue,  8 Oct 2024 21:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="KxvxiEzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EE9F9E8
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728422255; cv=none; b=HdrU9guU88yyPfRJkyXianL8Brckp9Jmx/GNMkt4gxmnt7S7pAVrU9248qlpoSpzlBZ8k9JBesUOFvcTgohsIWLtmN/Pd1cVz6PcYv0SOYb+aAceq6KSDR4WVhEcom1SAGP1yQeupyYqns/1s8R5qJSQEb+RVXQ0mH/64JKX70c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728422255; c=relaxed/simple;
	bh=PDPNnZzxxZj8XfWvlaJ1Hy2SipLyAaDnZHq4IbUhTcs=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=TZX4+rxEOA1jlCAL3YGDE5zeddlgeYKAnzYWSpkc0ncffeLLkPfWPt3MNxy4Nrf+yVsIUnzZKd/A1p+JKJxsNf8xqTRxrrY9X8+G+wEuSalJ3fD7e0kvBY9YCAv7kJIilTeNomaijg+VbgPpFgP15tRXFDWvorqw3113VoVgkZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=KxvxiEzm; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f7dwY4+lxv3nko1gtAtwMlk/2dBvalA2V0rED6qSW70=;
	b=KxvxiEzmXLZjGIUkUGiK1LjORmO6ptbKXNthdIEeC2S7cCczIfvdQJQs/4mtfKR51DOsPP
	RHXxfQEzufeML6dQ1tJT5Bx2GMZWTSOLXDccYe4u4/g8Dg8Bzl8p+VPlCJt+9LHo3Tpjpg
	fYxnM7CCXZYi4UyFMuIVVjXtXGGZOpssPJNwPKQ6L1j0IBPtZq7nM/yt3+mNZKGL2pT52v
	/vgUfltM0f/S/vZGbHCjJxd6oEXQ2w/TzxIyv9kGLAYks0DSNjNz/G76ObX60dCCqY5WqP
	ww6RmJ8rO91khCbLk1zw/FgiMhpHLAQ8y0FqkT8x41UkAG7o3WMVDT8Zix7Vdw==
Date: Tue, 08 Oct 2024 23:17:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Sergey Bostandzhyan
 <jin@mediatomb.cc>, Wenhao Cui <lasstp5011@gmail.com>, Andy Yan
 <andyshrk@163.com>
Subject: Re: [PATCH v2 05/14] arm64: dts: rockchip: Remove undocumented
 supports-emmc property
In-Reply-To: <20241008203940.2573684-6-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-6-heiko@sntech.de>
Message-ID: <6b776b6901fafb686a5c6d814ec185ef@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> supports-emmc is an undocumented property that slipped into the 
> mainline
> kernel devicetree for some boards. Drop it.
> 
> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
> SoM with Haikou baseboard")
> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM
> NanoPi R2S Plus")
> Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
> Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
> Cc: Wenhao Cui <lasstp5011@gmail.com>
> Fixes: cdf46cdbabfc ("arm64: dts: rockchip: Add dts for EmbedFire
> rk3568 LubanCat 2")
> Cc: Andy Yan <andyshrk@163.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced changes
are obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi         | 1 -
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
>  arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts      | 1 -
>  4 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> index bb1aea82e666..b7163ed74232 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> @@ -66,7 +66,6 @@ &emmc {
>  	bus-width = <8>;
>  	cap-mmc-highspeed;
>  	mmc-hs200-1_8v;
> -	supports-emmc;
>  	mmc-pwrseq = <&emmc_pwrseq>;
>  	non-removable;
>  	vmmc-supply = <&vcc_3v3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> index cb81ba3f23ff..3093f607f282 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> @@ -27,6 +27,5 @@ &emmc {
>  	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
> -	supports-emmc;
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> index c1194d1e438d..9a2f59a351de 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> @@ -507,7 +507,6 @@ &sdhci {
>  	non-removable;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
> -	supports-emmc;
>  	status = "okay";
>  };
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> index a3112d5df200..b505a4537ee8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> @@ -589,7 +589,6 @@ &sdhci {
>  	non-removable;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
> -	supports-emmc;
>  	status = "okay";
>  };

