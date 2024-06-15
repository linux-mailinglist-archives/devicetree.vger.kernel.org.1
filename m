Return-Path: <devicetree+bounces-76015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C019096F9
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 10:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1E001C20C2E
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 08:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD29F179AA;
	Sat, 15 Jun 2024 08:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Qd6BUR0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571A9BE68
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 08:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718440055; cv=none; b=pwrvFKdmrzFFwUGymEf7JjzJwUHiQpiV0SjfnZMTPZUPX6IYfeipA37msu3zrGx0jV4w33pYWTExpsfpejd9D6G9Du/tx4+FGrEabKK03hElKAQrcoFdlNQW33U5Pj9AjP/7avDqa625klJoQGTQrEQFXGedFQh6WgzwzXJujdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718440055; c=relaxed/simple;
	bh=wbP+DVcMV6S0ZwiE4Nl6IMvsdYk2+pGazCPP/gGpWkU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UW1zoJCW5Yj95gx2s1mCKZrHuCR+p9SaZWzv6BmXWvAa8Peld4EytI780x5jofNXFTvXJgDY0bmpEW6fi6lGpnsAAW5R/LxFDHWfA2YvHQTTM/6ciniv9ZLsSlKPB4d908sNVcOhJWCVcBRjPPeXFA5Z4JKE0jItv9sJu/dzk/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Qd6BUR0n; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=pozcFWI81uujYSyyFNg9PeQTnN81oEwSnK5ZMVKU0oc=;
	b=Qd6BUR0nBsS0Jl1F9Dp2q9uBMB1dBcuJccEsNvR12CCqZD5A0WlX7fI/xZM3q1
	oc0j6sPnD05pg8sXDIdbyJyjoHJwd1pCclZRHX0cyW8O4YI80sD5slaPrJ1239ur
	IzH37ekAoDOVvu6L68Lx+Lo7WrfQHe8j0ufgTQhyKj+1E=
Received: from dragon (unknown [114.216.76.201])
	by smtp1 (Coremail) with SMTP id ClUQrABHrvpRUG1mV0zyBw--.32100S3;
	Sat, 15 Jun 2024 16:26:58 +0800 (CST)
Date: Sat, 15 Jun 2024 16:26:57 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: nxp: imx6: convert NVMEM content to layout
 syntax
Message-ID: <Zm1QUUAIB9CuGu9n@dragon>
References: <20240520060222.2980-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520060222.2980-1-zajec5@gmail.com>
X-CM-TRANSID:ClUQrABHrvpRUG1mV0zyBw--.32100S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFy8tr1kZw17WrWDZr1DZFb_yoW8ZFWkp3
	Z7C395Ars3Cr1Iyay5Xr1UKrZ0kw4kJF1ruw15JFyYyFsxXa47CrZa9w1ftry5XF4rAw4f
	Krn7uF1xtanrXaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j67K3UUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiGBL+ZV6Nn4pT6QAAst

On Mon, May 20, 2024 at 08:02:22AM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Markus, Alexander

Are you guys good with this change?

Shawn

> ---
>  arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi | 12 ++++++++----
>  arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi | 12 ++++++++----
>  2 files changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> index 238f3af42822..807f3c95e3ce 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> @@ -22,12 +22,16 @@ m24c64_57: eeprom@57 {
>  		compatible = "atmel,24c64";
>  		reg = <0x57>;
>  		pagesize = <32>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
>  		vcc-supply = <&reg_mba6_3p3v>;
>  
> -		mba_mac_address: mac-address@20 {
> -			reg = <0x20 0x6>;
> +		nvmem-layout {
> +			compatible = "fixed-layout";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			mba_mac_address: mac-address@20 {
> +				reg = <0x20 0x6>;
> +			};
>  		};
>  	};
>  
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> index a587bc88f76f..789733a45b95 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> @@ -32,12 +32,16 @@ m24c64_57: eeprom@57 {
>  		compatible = "atmel,24c64";
>  		reg = <0x57>;
>  		pagesize = <32>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
>  		vcc-supply = <&reg_mba6_3p3v>;
>  
> -		mba_mac_address: mac-address@20 {
> -			reg = <0x20 0x6>;
> +		nvmem-layout {
> +			compatible = "fixed-layout";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			mba_mac_address: mac-address@20 {
> +				reg = <0x20 0x6>;
> +			};
>  		};
>  	};
>  
> -- 
> 2.35.3
> 


