Return-Path: <devicetree+bounces-74632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1858F903D94
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:38:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2D011F216C9
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4DB17837A;
	Tue, 11 Jun 2024 13:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="POC18nbi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327A847F7A
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 13:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718113079; cv=none; b=dnjhfsSZVtrTusYaN/6RRLE4S+H2YoYN2+75dPSIaH+Q3J0F3PCo77Ip2aLuFYCzfw0er5Z4/V6GfsmqGYo8Pver+3Bd5cPOMDnAKdtb4wJXOytlffr0uNqhr64Ssy1QgXMTl7RyE/92OYznSVzNyfgaKDV87hgWFnLHueB2+5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718113079; c=relaxed/simple;
	bh=AwBpom4V0fRq34CxPRd4L5iRZW3XEptxEMOOZM+UaSA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=daFmBycw6Ed+eQVPqji2SKDJsfwLpdFIF3dsQv88qVpBe2iAp8tMrp/s9oj++oy6Soo9gBzkIWxb/wmvaYKNGGx8g9it4ehbvW75NkUcAfwe8hqIHDHBoBO5SkFBT1lGj4UnOIYc81D/gFY6VXTNlQ/ZH1IHFkQisnDsKwcV0Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=POC18nbi; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718113068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8OKHpcrH+N7FE+gIrpjsyO+CJz/ecmxmFROEdEF5EGk=;
	b=POC18nbiqriKMTz1563ByoYGgkeePX/qzc0N9gxQhT9K9F9vyX30vdz0rJls2KSMTuMAfj
	bWZZynV3o2sC3SNOlD0qHZjswkGrzd/1VUm3JMKDoTxl3W86BuE5J2ASIx8eGYCgWXvA2O
	iH/9z+FYgfyy3D7X9q7bbhOFac3HEWX8gSyqmqmpjr9CJQc1T7281+w9OrrobwJvoFKQTp
	H69zgki69hM6zn/95UHZKG0u+eGoRdbkgzojUwg6N12SQ1L9lq30hCDCIk9SSSngrHZStO
	rxx5iNfLeFECSA62a9L3Eu/KUeTMcDawEJ6I+7rVsR+mokDul5P3FhwiWg8mSw==
Date: Tue, 11 Jun 2024 15:37:48 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
In-Reply-To: <20240611122746.751-1-naoki@radxa.com>
References: <20240611122746.751-1-naoki@radxa.com>
Message-ID: <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukami,

On 2024-06-11 14:27, FUKAUMI Naoki wrote:
> to make "poweroff" command work, add "system-power-controller;" into
> pmic@0. without this, "poweroff" works as same as "reboot".
> 
> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me, with a small remark below.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index b070955627be..cf7b878a3eb2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -395,6 +395,8 @@ pmic@0 {
>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>  		spi-max-frequency = <1000000>;
> 

I don't think there's need for the empty line right above, i.e.
between the "spi-max-frequency" and "system-power-controller" lines.

> +		system-power-controller;
> +
>  		vcc1-supply = <&vcc5v0_sys>;
>  		vcc2-supply = <&vcc5v0_sys>;
>  		vcc3-supply = <&vcc5v0_sys>;

