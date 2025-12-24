Return-Path: <devicetree+bounces-249499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D31CDC2A6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35B333015A9E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726502D6E70;
	Wed, 24 Dec 2025 11:59:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4147629B204;
	Wed, 24 Dec 2025 11:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766577587; cv=none; b=Tx5rX9M2D3eZTJ4LE1oGdlyemtoCF2pb3o2s0utAiv2Swac+J/zdv7FM1cUBYnebRCfyt1Yu/OIGIlOP6CqfD9qTU6jvP7ohSw/f0h7wiI9m/7d/nxMsuHcafw9uV0Tc8m5yWZXUx+h9Egql585WaPbcaIDibhGzFa/4Eg7zdiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766577587; c=relaxed/simple;
	bh=bfTGN8xkH4pE25S0XH39huKLZSf1YogxexwMc9mdqJE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Mq/R+QwXJmfic6CqubCNtyyuUT5x2TcECHgrXoT8fP0AwRi5tYSd7GNmqgV5xyKoMsYF49G1S0bqM1P38tZ39zA/wedFFztYbjAvheSQMhoqHPdOY9EvsQ0ITftBQMm/1t0r8soopA8APvmVKQVS+4d2NylDkHZZTbmy0SOKHjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F028339;
	Wed, 24 Dec 2025 03:59:37 -0800 (PST)
Received: from [10.57.11.204] (unknown [10.57.11.204])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 07F833F5A1;
	Wed, 24 Dec 2025 03:59:42 -0800 (PST)
Message-ID: <161e78f7-1c87-4bd8-9184-f2044e7383a8@arm.com>
Date: Wed, 24 Dec 2025 11:59:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: arm: Use lowercase hex
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23/12/2025 15:24, Krzysztof Kozlowski wrote:
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Acked-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm/boot/dts/arm/arm-realview-eb.dtsi    | 2 +-
>  arch/arm/boot/dts/arm/arm-realview-pb1176.dts | 2 +-
>  arch/arm/boot/dts/arm/arm-realview-pb11mp.dts | 2 +-
>  arch/arm/boot/dts/arm/arm-realview-pbx.dtsi   | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/arm/arm-realview-eb.dtsi b/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
> index 16f784da5a55..ae370d4eb9d8 100644
> --- a/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
> +++ b/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
> @@ -234,7 +234,7 @@ oscclk0: clock-controller@c {
>  				reg = <0x0c 0x04>;
>  				#clock-cells = <0>;
>  				lock-offset = <0x20>;
> -				vco-offset = <0x0C>;
> +				vco-offset = <0x0c>;
>  				clocks = <&xtal24mhz>;
>  			};
>  			oscclk1: clock-controller@10 {
> diff --git a/arch/arm/boot/dts/arm/arm-realview-pb1176.dts b/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
> index b9b10cbd65aa..a75d8b107fe1 100644
> --- a/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
> +++ b/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
> @@ -260,7 +260,7 @@ oscclk0: clock-controller@c {
>  				reg = <0x0c 0x04>;
>  				#clock-cells = <0>;
>  				lock-offset = <0x20>;
> -				vco-offset = <0x0C>;
> +				vco-offset = <0x0c>;
>  				clocks = <&xtal24mhz>;
>  			};
>  			oscclk1: clock-controller@10 {
> diff --git a/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts b/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
> index db1b6793cd2c..59c78def83f2 100644
> --- a/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
> +++ b/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
> @@ -343,7 +343,7 @@ oscclk0: clock-controller@c {
>  				reg = <0x0c 0x04>;
>  				#clock-cells = <0>;
>  				lock-offset = <0x20>;
> -				vco-offset = <0x0C>;
> +				vco-offset = <0x0c>;
>  				clocks = <&xtal24mhz>;
>  			};
>  			oscclk1: clock-controller@10 {
> diff --git a/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi b/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
> index e625403a9456..0d3d96ffa6e6 100644
> --- a/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
> +++ b/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
> @@ -256,7 +256,7 @@ oscclk0: clock-controller@c {
>  				reg = <0x0c 0x04>;
>  				#clock-cells = <0>;
>  				lock-offset = <0x20>;
> -				vco-offset = <0x0C>;
> +				vco-offset = <0x0c>;
>  				clocks = <&xtal24mhz>;
>  			};
>  			oscclk1: clock-controller@10 {

-- 
Regards,
Vincenzo


