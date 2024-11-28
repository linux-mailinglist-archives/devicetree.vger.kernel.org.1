Return-Path: <devicetree+bounces-125170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 328469DB04F
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 01:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22701654EA
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 00:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E97D7482;
	Thu, 28 Nov 2024 00:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="XrfKJCcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B47C13C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 00:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732754350; cv=none; b=nfFwbxZgtBR+DRVZ21uuL6KKzCEa5v22HcgcSmexmYZZ59m5+72jv9s2uWZeUfekKki4OayXzDhLvWYwdRaT7ZcmZUttiR2F0amCMih/JMEnY04JZRNF7dZAFaaE5y5jhDhjmfNNZMkjxY/tSo6/iA4twsgM/u/vp6jyxVXvB6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732754350; c=relaxed/simple;
	bh=8k0at0E/kWmTRU7urlfx+2sDuINObpV7NOoTKXVmE4E=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Qx8N0+tqj4AR766CKpgi69u66bHOxgClUSiMpH4zRrh/MHSLa77DpFQ/hu8XUAKjuRHr0QhUa7NAmObykp71ypKPac8IX9Eze06+4MOp2nlN0YrTpEiaOu/CS89zeu13vo0KpgweIG2Zlir5/DS+VFtY/FRo7u0m6bqr+fxfYnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=XrfKJCcH; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732754346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+9WEbYayF7r4dc1ciKZ8iF2OQZGu8E4gJJI8dvu5Zk8=;
	b=XrfKJCcHghg9w3phtZZMqLobPTLd6MDMumHPvKRj8dvVcfAChMaRQyTyXPEGFh/1kRM6Mm
	cDTQMjNEuMliG7/g8ROO1JGWOLFnNKnE3F9zoXOz2OSEx+urDXTsUihtzLHq+qGA3eGfKN
	CCQ8IXy+4tKu4H1iVvnLjcuEQvzzqw4xnfzAdA/EUPaPpt+75e/g5ZBG9X2OSuH+0b7oGX
	wCkxrW9Rbshve7Rn9IXLMcxiIsoVNOCRKgzQZMBEkBUrsgyAwFRJjti0jLeaBzk2t7IdoR
	eiupFTXywRm+Juvplo5zVdi9vrEr6mlOldprKce+GlTHAnTQW+U0rbZTuvVQzA==
Date: Thu, 28 Nov 2024 01:39:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
In-Reply-To: <20241119100813.78820-1-naoki@radxa.com>
References: <20241119100813.78820-1-naoki@radxa.com>
Message-ID: <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-11-19 11:08, FUKAUMI Naoki wrote:
> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
> regulator.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - none
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 6da13b6b9a7b..b5460c179ef7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>  		vin-supply = <&vcc_sysin>;
>  	};
> 
> -	vcc5v_dcin: regulator-vcc5v-dcin {
> +	vcc5v_dcin: dcin: regulator-vcc5v-dcin {

I just went through the associated part of the ROCK 5C schematic,
and I was unable to see any reasons why should we introduce "dcin"
as another alias here?

The root of the ROCK 5C's power tree is labeled "5v_dcin" in the
schematic, so renaming "vcc5v_dcin" to "5v_dcin" would make sense,
but I don't see why should we add another alias.

>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v_dcin";
>  		regulator-always-on;
> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>  		regulator-boot-on;
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v_dcin>;
> +		vin-supply = <&dcin>;
>  	};
> 
>  	vcca: regulator-vcca {

