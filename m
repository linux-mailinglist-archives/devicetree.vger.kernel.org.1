Return-Path: <devicetree+bounces-60046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD108A8080
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 12:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A4E1B216E7
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 10:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB6013B7AF;
	Wed, 17 Apr 2024 10:15:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5065613AD19
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 10:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713348909; cv=none; b=GsPlMgtT4Aezr3N1AXFUPeOdC1yWv/zXhray/bYM9kahEGZxPBd3aa0U0PZsV4uGutrxpCsstGA30zjkZkaozp6Mwj5koyVipb9cyEWvmQNZdDRjotpOM+cBsNzj44Kf3fsF5kffEmCbYDBI3K0ij5bCH0idtjYyY1UIeRWkDck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713348909; c=relaxed/simple;
	bh=QGWe+amBAZzWV9gRaAbbm3NPOnMa2F/UdNO4TT/URkg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bd3/FbZIxppY07SXBIoDgpK8JKKRdg0SsQloNQGG1f9sizALMtERiwBQ57viJgMEbmSeQdA83ZXFSc1/S8BfhcNq4p1yhvazoyMNRN6f9AriS4D1IJVCYlnY8mMPiHkuiM1UBuq6fhqgyNfQqeD4IeJS6lngaPWF5w3Sg+FkTLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rx2Jf-0006pF-HD; Wed, 17 Apr 2024 12:14:59 +0200
Message-ID: <352388ee-a267-4c1f-b968-e1a7709d46ea@pengutronix.de>
Date: Wed, 17 Apr 2024 12:14:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: imx8mp: Align both CSI2 pixel clock
Content-Language: en-US
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Paul Elder <paul.elder@ideasonboard.com>, imx@lists.linux.dev,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Fabio Estevam <festevam@gmail.com>
References: <20240416141914.9375-1-marex@denx.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240416141914.9375-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 16.04.24 16:19, Marek Vasut wrote:
> Configure both CSI2 assigned-clock-rates the same way.
> There does not seem to be any reason for keeping the
> two CSI2 pixel clock set to different frequencies.
> 
> This also reduces first CSI2 clock from overdrive mode
> frequency which is 500 MHz down below the regular mode
> frequency of 400 MHz.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: imx@lists.linux.dev
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: Align both clock to 266 MHz and update commit message
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 1bb96e96639f2..7883f5c056f4e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1667,7 +1667,7 @@ mipi_csi_0: csi@32e40000 {
>  						  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
>  				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
>  							 <&clk IMX8MP_CLK_24M>;
> -				assigned-clock-rates = <500000000>;
> +				assigned-clock-rates = <266000000>;
>  				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
>  				status = "disabled";
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


