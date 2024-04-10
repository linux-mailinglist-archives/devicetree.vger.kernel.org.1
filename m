Return-Path: <devicetree+bounces-57778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A489EC58
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00763B22FBC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5738551C2C;
	Wed, 10 Apr 2024 07:40:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EFD53E00
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712734836; cv=none; b=m9w53mwNWfeGnGNcf/vxRYgPhmDVQ7l+KY8Prbi7ALjOQelnJQptVEkFbZGfuy8G3gvDPei4Dv+GPOQUXNKyQ1tHsPUrL8k3jirMuZMIxcETpb/xyM0YCbTjB2NbtZosmwl3oQpj8xtKYx9TVddykQFXX3KGt3y4eeL4j8YrLz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712734836; c=relaxed/simple;
	bh=I0BoT/9aVltasDJkw4V9sgksz5cDIjXWVXEUgPrZOk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CKM2IBXcPmVDWWWu1ljHoBLvYajX43Xa9pwfRSSrcWDMiCarkAfCpfyAGJozi7JabiHNiHn2rNAwF66tGBuf0dXOg4C4gvCA7kUtj3xFlPx73YolbH1849bZ0Y0eJ5qeGWkQ1pWfi5fvhh2sQGX1jO2X3eBpWTHWqlcwAX+GGgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ruSZH-0000CY-EH; Wed, 10 Apr 2024 09:40:27 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ruSZG-00BS1z-KX; Wed, 10 Apr 2024 09:40:26 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ruSZG-0060ua-1j;
	Wed, 10 Apr 2024 09:40:26 +0200
Date: Wed, 10 Apr 2024 09:40:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Joy Zou <joy.zou@nxp.com>
Cc: ping.bai@nxp.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-imx@nxp.com,
	kernel@pengutronix.de, festevam@gmail.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/1] arm64: dts: imx93-11x11-evk: add rtc PCF2131
 support
Message-ID: <20240410074026.qjpk3sjhtbb6sw7j@pengutronix.de>
References: <20240410070128.1506555-1-joy.zou@nxp.com>
 <20240410070128.1506555-2-joy.zou@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240410070128.1506555-2-joy.zou@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-04-10, Joy Zou wrote:
> Support rtc PCF2131 on imx93-11x11-evk.
> 
> Signed-off-by: Joy Zou <joy.zou@nxp.com>
> ---
> Changes in v3:
> 1.adjust the indentation.
> 
> Changes in v2:
> 1. remove unnecessary status property.
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> index 07e85a30a25f..73e0bca36b81 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -281,6 +281,23 @@ ldo5: LDO5 {
>  	};
>  };
>  
> +&lpi2c3 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_lpi2c3>;
> +	pinctrl-1 = <&pinctrl_lpi2c3>;

Are both "default" and "sleep" pinctrl's required? It doesn't make any
sense to provde a sleep state which uses the same pinctrl state.

Regards,
  Marco

> +	status = "okay";
> +
> +	pcf2131: rtc@53 {
> +		compatible = "nxp,pcf2131";
> +		reg = <0x53>;
> +		interrupt-parent = <&pcal6524>;
> +		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +};
> +
>  &iomuxc {
>  	pinctrl_eqos: eqosgrp {
>  		fsl,pins = <
> @@ -343,6 +360,13 @@ MX93_PAD_I2C2_SDA__LPI2C2_SDA			0x40000b9e
>  		>;
>  	};
>  
> +	pinctrl_lpi2c3: lpi2c3grp {
> +		fsl,pins = <
> +			MX93_PAD_GPIO_IO28__LPI2C3_SDA			0x40000b9e
> +			MX93_PAD_GPIO_IO29__LPI2C3_SCL			0x40000b9e
> +		>;
> +	};
> +
>  	pinctrl_pcal6524: pcal6524grp {
>  		fsl,pins = <
>  			MX93_PAD_CCM_CLKO2__GPIO3_IO27			0x31e
> -- 
> 2.37.1
> 
> 
> 

