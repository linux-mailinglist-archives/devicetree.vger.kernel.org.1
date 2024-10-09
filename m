Return-Path: <devicetree+bounces-109336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E10DA99614B
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A1202848B5
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D661B186284;
	Wed,  9 Oct 2024 07:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Z29yxpvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EB9183CDD
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459845; cv=none; b=uhrAhuRj5NABOfYo6lbQduAolneZ1kptEhLkuR/CTAEn5TFoTI9eRVtYo/dZDI4TkykO5HPP2pCdQG1DLDz2Ib+knZm2X48BrGd3RXp2+riR2ZG13Ykn34gdtB39dGd82R/jPDn2DjKxOXlJIv7KtAt9U5JkBQBb54vfLaQAR4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459845; c=relaxed/simple;
	bh=jj5zK6DhOS0D1k2S0uujXQkCnh+L993WzRIIxaDnq7A=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=PAPyKVojC2JI8mNNMbkIi4p2sb+CVdFScX1If0Hghaj09FuEtya+crTibLp2ezD6RyKsS3+RTEP78vJwXGo9PwYdRDzIaiw+ONGp2rnJyOj11twlZFuAf3gV0d2oMfB3gUB5QTZsT/NjgVtRvtrPKHD7p+ZW9D+pmptSF2n+FtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Z29yxpvq; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qN0le6Ml1NEMJ9YuuK8cymRbMjJcPIqsyuk4IKj9dis=;
	b=Z29yxpvqy2JNGUMzH66OxjfgGXYRI8o5I+1p0En69SxpCsxhnHrSJR5mmYv99GxAf14Vb6
	RyE5YCZWKIgGUZeGId3nYftsO2DaaWBShCyOwprsDyDaZz9CAj9HEdWbaZSGCdzGb3unj+
	N6C8KSvXuLS873TFsqBZN03MBJ5j9eeWFeRCH1dS1GvhkCqKDWPnf+JIbFDpG5DTPfiZsd
	IrLJgAaieh1LZvRAF13MTMzmDNgRkFq91XXS1o38tIZFwz167n9VGoAbbZ4RtzSrJSYWby
	9RpfazxR5mQhxTmawD2elA0HMLTb4iMKaK4d2MrG9CBewtbM863IDjklKbiQrg==
Date: Wed, 09 Oct 2024 09:44:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 14/14] ARM: dts: rockchip: Fix the realtek audio codec
 on rk3036-kylin
In-Reply-To: <20241008203940.2573684-15-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-15-heiko@sntech.de>
Message-ID: <ed0c03bc87739e8756fea91d1053cb0d@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Both the node name as well as the compatible were not named
> according to the binding expectations, fix that.
> 
> Fixes: 47bf3a5c9e2a ("ARM: dts: rockchip: add the sound setup for
> rk3036-kylin board")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced changes
are obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index e32c73d32f0a..2f84e2805712 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -325,8 +325,8 @@ regulator-state-mem {
>  &i2c2 {
>  	status = "okay";
> 
> -	rt5616: rt5616@1b {
> -		compatible = "rt5616";
> +	rt5616: audio-codec@1b {
> +		compatible = "realtek,rt5616";
>  		reg = <0x1b>;
>  		clocks = <&cru SCLK_I2S_OUT>;
>  		clock-names = "mclk";

