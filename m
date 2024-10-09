Return-Path: <devicetree+bounces-109318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0369C9960B8
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 995C41F220FA
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34354181D00;
	Wed,  9 Oct 2024 07:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="TyETTNC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A7B178CC5
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728458480; cv=none; b=lltW9p4HqdFfCeAben1GIwE3cQq9dreC2cC4T1wkpb0piJuIiczMHEHp8PoUG8cMYf8yxb91onP2OBrlLbagg/UTLoGKjhmdFm2lnDWTaqUmb6tv8Ojf+tq4OY9FT9oIi8RSar8EBi3/1s8kpn0uOJFN5vwzvXq1vgFDL0I+nUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728458480; c=relaxed/simple;
	bh=h6f59Loxk4mtqbMnmdsF8jgzp29p0wU0LpWdEQ4Q+Rc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Np/SWVv68sQdiiTsVDkh/GUO9oGQSMVqGc44WOHFLmMhDrpaqvjdaKW8J7NHbrR6qTsiPzk7cN0UZY2C1ulnsfYIdm3EmK0Lm2bkgnaOsZrdg0JucVJGzSnOaPT/7ybildZ+eVuVS2JVZaYy+anij6po6p0xcmH2L8lVu6lE9cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=TyETTNC1; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=teJTPtRRgJhpXeRenDVLI/Et/c/d1xs+s7uhazdPDm0=;
	b=TyETTNC1zl05T201XgrXqx0D0KiRvUAaraRZz1XxXCWydv7LPMdASYegWv6IGRDtVaoLGs
	tiuV/8IpCRSNfO2LLkjevdVyE1tvGuiTgTiDkM2JqQTO2WeAqqzzz7N9sZcZDX2Xx2V746
	UfLBTIQBGcmQe+KT3lbp3slxuEmupGZy2vwCa/1MiFd+kqXwzhjeTYGpkJ1dsRLQb/TZBf
	+llqIwgDWXO6qalY27My0UvrChQ+6722Sujlby0ilmmwernpZJyM3UEem/fBq6fqxUxuYS
	hHybBRsxtHmaa6vr6vkl+nbo/bceM8kBTr2ci3c8Nb6TUJpTOGialrGaGuly4A==
Date: Wed, 09 Oct 2024 09:21:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Sergey
 Bostandzhyan <jin@mediatomb.cc>
Subject: Re: [PATCH v2 08/14] arm64: dts: rockchip: remove num-slots property
 from rk3328-nanopi-r2s-plus
In-Reply-To: <20241008203940.2573684-9-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-9-heiko@sntech.de>
Message-ID: <6d5e661117f23aa85c3a874290ea336f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> num-slots was not part of the dw-mmc binding and the last slipage of
> one of them seeping in from the vendor kernel was removed way back in
> 2017. Somehow the nanopi-r2s-plus managed to smuggle another on in the
> kernel, so remove that as well.
> 
> Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM
> NanoPi R2S Plus")
> Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced change
is obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> index 3093f607f282..4b9ced67742d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> @@ -24,7 +24,6 @@ &emmc {
>  	disable-wp;
>  	mmc-hs200-1_8v;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
>  	status = "okay";

