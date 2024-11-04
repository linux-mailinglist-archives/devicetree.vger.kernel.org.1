Return-Path: <devicetree+bounces-118809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D13A39BB952
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5ADA9B20E98
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575FF13D246;
	Mon,  4 Nov 2024 15:46:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0FF1CF8B
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730735204; cv=none; b=bgbR9Ws3UUYse3rfCgSIUgSBQSM+Me/mo7D9K8zqVVzR46lySjrGtMQMyh0zQxcBG7Om7NTbeb32fyhimroMeWP+ITGjiN41cUzrzPVoh4rvLPMecGGkNMmgwyn7LxtBqq52LlJSq7e4sVhu03Kuxlv4oGN+5ES46E772zCnO/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730735204; c=relaxed/simple;
	bh=RRYhob/Ht0A51BwBbphpEbr1yiD1sVmJt994Zu5V1vY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mo1FbAxF8gFpMw9eltX7IlijvqpbZBMX3rGmOSZaBeVBk+b0xEAMLoJBb85AQo5nTxpD43GoLRz4FmqEcTAuA6GoQCDLEuaV+14GOreTB6A/FqY0swq9TxUia2Dc6psLzG+KntoQ6OwWHZurIWQp9es36m63X9KIEg2tTlH3830=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t7zHm-00081r-Qh; Mon, 04 Nov 2024 16:46:34 +0100
Message-ID: <97aacb17-675f-451d-9908-dfac409c015c@pengutronix.de>
Date: Mon, 4 Nov 2024 16:46:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] ARM: dts: imx6sl: Provide a more specific lcdif
 compatible
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: marex@denx.de, andreas@kemnade.info, kernel@pengutronix.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Fabio Estevam <festevam@denx.de>
References: <20241101135406.47836-1-festevam@gmail.com>
 <20241101135406.47836-3-festevam@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241101135406.47836-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 01.11.24 14:54, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The LCDIF IP on i.MX6SL and i.MX6SLL is compatible with i.MX6SX.
> 
> Provide a more specific "fsl,imx6sx-lcdif" compatible and still keep
> "fsl,imx28-lcdif" for DT compatibility.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thank you,
Ahmad

> ---
> Changes since v3:
> - None.
> 
>  arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 3 ++-
>  arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
> index 6aa61235e39e..840e19b2ca0f 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
> @@ -773,7 +773,8 @@ epdc: epdc@20f4000 {
>  			};
>  
>  			lcdif: lcdif@20f8000 {
> -				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
> +				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
> +					     "fsl,imx28-lcdif";
>  				reg = <0x020f8000 0x4000>;
>  				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
> index 85fe2a4ab97a..eff83f5e5535 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
> @@ -648,7 +648,8 @@ pxp: pxp@20f0000 {
>  			};
>  
>  			lcdif: lcd-controller@20f8000 {
> -				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
> +				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif",
> +					     "fsl,imx28-lcdif";
>  				reg = <0x020f8000 0x4000>;
>  				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

