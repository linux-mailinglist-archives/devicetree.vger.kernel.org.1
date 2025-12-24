Return-Path: <devicetree+bounces-249498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FF0CDC2A0
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 507DB3027EA9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284BD2C3276;
	Wed, 24 Dec 2025 11:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4A11E2834;
	Wed, 24 Dec 2025 11:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766577537; cv=none; b=FcHPkP78kk62S1jyO7QAsJvmjvxbQdFk6I0360u4eqoY8+glBbZobxWY2unbvuN7t5/jLvjyz0bja9peGudi+MnWDAT+6nkyjK6QiDLB/pPAB78XNhPSo9EJqg2M+zkB70t3gCD5GPqmu+qpLtAVVDqIDX9eQn89jTFBTxM8Zg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766577537; c=relaxed/simple;
	bh=yolr/oJ4DTtL+SgGKsKuuKp/SDJ2DCPD/rPmZzhfQpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jjE/Ba/ITY/G+1l9hKNOZGFrS2qGlxLh2AvUIfZieY1WlEBCWa12sgNzf0YczabLuQ980avwm5BOsb73wVip7SN694GYCeCq1AVFsy11fRfgNuP1dieL0KGjFjQwtb5X8P07+qHfOblnY+I2GKrJmcBUFt29jqJhFbyt0XvGDTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 933C6339;
	Wed, 24 Dec 2025 03:58:41 -0800 (PST)
Received: from [10.57.11.204] (unknown [10.57.11.204])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D2043F5A1;
	Wed, 24 Dec 2025 03:58:46 -0800 (PST)
Message-ID: <10a089d2-4823-4406-b1a9-d38f05ba0760@arm.com>
Date: Wed, 24 Dec 2025 11:58:44 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: arm: Use hyphen in node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-GB
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23/12/2025 15:24, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>

Acked-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
> 
> Patches done with sed, verified with comparing unflattened DTB and
> dtx_diff.
> ---
>  arch/arm64/boot/dts/arm/morello-fvp.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/morello-fvp.dts b/arch/arm64/boot/dts/arm/morello-fvp.dts
> index 2072c0b72325..4a3f217555f7 100644
> --- a/arch/arm64/boot/dts/arm/morello-fvp.dts
> +++ b/arch/arm64/boot/dts/arm/morello-fvp.dts
> @@ -25,25 +25,25 @@ bp_refclock24mhz: clock-24000000 {
>  		clock-output-names = "bp:clock24mhz";
>  	};
>  
> -	block_0: virtio_block@1c170000 {
> +	block_0: virtio-block@1c170000 {
>  		compatible = "virtio,mmio";
>  		reg = <0x0 0x1c170000 0x0 0x200>;
>  		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> -	net_0: virtio_net@1c180000 {
> +	net_0: virtio-net@1c180000 {
>  		compatible = "virtio,mmio";
>  		reg = <0x0 0x1c180000 0x0 0x200>;
>  		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> -	rng_0: virtio_rng@1c190000 {
> +	rng_0: virtio-rng@1c190000 {
>  		compatible = "virtio,mmio";
>  		reg = <0x0 0x1c190000 0x0 0x200>;
>  		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> -	p9_0: virtio_p9@1c1a0000 {
> +	p9_0: virtio-p9@1c1a0000 {
>  		compatible = "virtio,mmio";
>  		reg = <0x0 0x1c1a0000 0x0 0x200>;
>  		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;

-- 
Regards,
Vincenzo


