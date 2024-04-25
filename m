Return-Path: <devicetree+bounces-62622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2E98B1CCD
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 10:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92317B2129B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 08:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9AF47442F;
	Thu, 25 Apr 2024 08:27:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEB06EB6F
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 08:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714033650; cv=none; b=lsIY8ATdXPz9f1DYnpcGNcVJ/8eCn/cD62zTUfBI57yXND1UJZaLZWURl7QEvFbvTGVi1eqTxrSf+A3+eSuZZizwV0WhRSbsV0tJGsz/YJSbfCJFqDjJZMsd4bVjSFbtyP89Cg3VK2l3vZo2Thrpml9F2VvPEur0Sdn4VqrwimE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714033650; c=relaxed/simple;
	bh=y8LiJljg4xZXt9iMVf9+qIKeyf1dM+kJYLDoVor3Vds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d7dtYsgWC0TY7VYXoazZfjqSg9IF37l2/M7BxbQDtz1Dt9D1Zdd382aKmwB+LEAAEUvqWAUJ+plTirYyyMIteZZhw5QnHIn6lk8bCxnguVKdXOK3vpYCvS0dp9rRmoaVPlIgWgGrcC4CEo1CTZitWmcQwo5xLu/bPyBDL35Ws4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rzuRf-0002HT-5i; Thu, 25 Apr 2024 10:27:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rzuRd-00EEIo-7W; Thu, 25 Apr 2024 10:27:05 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rzuRd-00DEDz-0R;
	Thu, 25 Apr 2024 10:27:05 +0200
Date: Thu, 25 Apr 2024 10:27:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Joy Zou <joy.zou@nxp.com>
Cc: frank.li@nxp.com, ping.bai@nxp.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/1] arm64: dts: imx93-11x11-evk: add RTC PCF2131
 support
Message-ID: <20240425082705.6tgsw5vlwaqtc6mp@pengutronix.de>
References: <20240425013507.2840128-1-joy.zou@nxp.com>
 <20240425013507.2840128-2-joy.zou@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240425013507.2840128-2-joy.zou@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-04-25, Joy Zou wrote:
> Support RTC PCF2131 on imx93-11x11-evk.
> 
> Signed-off-by: Joy Zou <joy.zou@nxp.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
> Changes in v5:
> 1.remove pinctrl-1.
> 2.change rtc into RTC.
> 3.remove unnecessary cells in order to keep terse.
> 
> Changes in v4:
> 1.remove the sleep from the pinctrl-names.
> 
> Changes in v3:
> 1.adjust the indentation.
> 
> Changes in v2:
> 1.remove unnecessary status property.
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> index 07e85a30a25f..11eeaa9d2674 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -281,6 +281,20 @@ ldo5: LDO5 {
>  	};
>  };
>  
> +&lpi2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpi2c3>;
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
> @@ -343,6 +357,13 @@ MX93_PAD_I2C2_SDA__LPI2C2_SDA			0x40000b9e
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

