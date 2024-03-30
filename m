Return-Path: <devicetree+bounces-54817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CAA892B46
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 14:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7AD828319A
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 13:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E81F18026;
	Sat, 30 Mar 2024 13:13:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CA41FB5
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 13:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711804400; cv=none; b=nMq8lGU2LX29Vge6sy/hudn4hWzNE32bCkEB9dbctRenSgLBPxOWwqdsY2xbWRgZMvrXYpUPiuQnW8cWO5PfkH976/Qg5ll1NHOXf4JEp1m/vinYaVIa6rTmzTFjLJPIhyhY3dlzETqBuDfKnBBe1zK47giLogdr5ZL+tff9WD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711804400; c=relaxed/simple;
	bh=XzOQiS3X35vllvmQTQsCL7el6MWtSMroCYP2T6D04lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SjY8ZVWWCJnl8xr/wuFJZOChm2b3qrGdcMxe3dlYvY76mWhQDcVS4GCfkTue1MCcFzmrCuzCs0BiRsF6DzKurK6NYzCYU7ZZevwD0CmNYcCnDh1ZJsd9WsGliHqJSBJr97dw0NjCJ5wjVdf757Za25Uq9Mg78zz5Hv8ldieGXyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rqYWC-00075P-7J; Sat, 30 Mar 2024 14:13:08 +0100
Message-ID: <7c7138f8-b0b7-46c3-b7b2-84e01467f368@pengutronix.de>
Date: Sat, 30 Mar 2024 14:13:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove UART2 from RGB30
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
 <20231018153357.343142-4-macroalpha82@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231018153357.343142-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Chris,

On 18.10.23 17:33, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB30 has no onboard UART header, so remove the reference
> to it in the device tree. This was left on by mistake in the initial
> commit.

Do you know if the UART is perhaps available over testpoints?

If yes, having a DT-overlay upstream enabling it along with documentation could be useful.
If not, how do you do low-level debugging on the RBG30 in absence of the serial console?

Thanks,
Ahmad 

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> index 3ebc21608213..1ead3c5c24b3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> @@ -64,6 +64,10 @@ simple-audio-card,cpu {
>  
>  /delete-node/ &adc_keys;
>  
> +&chosen {
> +	/delete-property/ stdout-path;
> +};
> +
>  &cru {
>  	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
>  			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
> @@ -149,4 +153,9 @@ rk817_charger: charger {
>  	};
>  };
>  
> +/* There is no UART header visible on the board for this device. */
> +&uart2 {
> +	status = "disabled";
> +};
> +
>  /delete-node/ &vibrator;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


