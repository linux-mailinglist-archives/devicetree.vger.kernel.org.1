Return-Path: <devicetree+bounces-15878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A687EC258
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 13:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37AC11F26B48
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 12:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C663D309;
	Wed, 15 Nov 2023 12:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F101EB33
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 12:34:15 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A604122
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 04:34:14 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3F5k-0007OW-1M; Wed, 15 Nov 2023 13:34:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3F5j-009Ddp-BV; Wed, 15 Nov 2023 13:33:59 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3F5j-002Bad-7d; Wed, 15 Nov 2023 13:33:59 +0100
Date: Wed, 15 Nov 2023 13:33:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: haibo.chen@nxp.com
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	devicetree@vger.kernel.org, peng.fan@nxp.com, festevam@gmail.com,
	linux-imx@nxp.com, kernel@pengutronix.de
Subject: Re: [PATCH 2/2] arm64: dts: imx8ulp: update gpio node name to align
 with register address
Message-ID: <20231115123359.74efdqcditlyb7l6@pengutronix.de>
References: <20231115035621.3834539-1-haibo.chen@nxp.com>
 <20231115035621.3834539-2-haibo.chen@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115035621.3834539-2-haibo.chen@nxp.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 23-11-15, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Change the gpio node name to align with register address.

good catch.

> Fixes: ac7bcf48ddba ("arm64: dts: imx8ulp: update gpio node")
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Feel free to add my r-b for both:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> ---
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> index f22c1ac391c9..c4a0082f30d3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -483,7 +483,7 @@ fec: ethernet@29950000 {
>  			};
>  		};
>  
> -		gpioe: gpio@2d000080 {
> +		gpioe: gpio@2d000000 {
>  				compatible = "fsl,imx8ulp-gpio";
>  				reg = <0x2d000000 0x1000>;
>  				gpio-controller;
> @@ -498,7 +498,7 @@ gpioe: gpio@2d000080 {
>  				gpio-ranges = <&iomuxc1 0 32 24>;
>  		};
>  
> -		gpiof: gpio@2d010080 {
> +		gpiof: gpio@2d010000 {
>  				compatible = "fsl,imx8ulp-gpio";
>  				reg = <0x2d010000 0x1000>;
>  				gpio-controller;
> @@ -534,7 +534,7 @@ pcc5: clock-controller@2da70000 {
>  			};
>  		};
>  
> -		gpiod: gpio@2e200080 {
> +		gpiod: gpio@2e200000 {
>  			compatible = "fsl,imx8ulp-gpio";
>  			reg = <0x2e200000 0x1000>;
>  			gpio-controller;
> -- 
> 2.34.1
> 
> 
> 

