Return-Path: <devicetree+bounces-152582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2624A4982B
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B94FC1896EE6
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C642E2580CC;
	Fri, 28 Feb 2025 11:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="IrXbWTDt"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB022620C8
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 11:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740741314; cv=none; b=FQD5gowl7Zgb+neksxGgqAUr+shHrSfSCq91tkB95xgOGL8GH/ypyrp9OTRVlAXV02d6ZDKv5q8p85tuW3l8GH4ATBawmzKb7Iy7BkUXks5BdoSkz0zzidgsAOhFcQfeZj9dTKISbVZjwYrkwEsxaR7Rd7Sbw7GNHf/+U1udSB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740741314; c=relaxed/simple;
	bh=isHbY/IQxLptRIvosa0pjZEubSG4kQQCkajcw2CB5gI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mUwToTBKg6zHftjM1ICsDZNGV4/YRzeE9VaVtvARiyS2VFEpwThvm+I6sNv7/Snm77QRDQ53ZjDbRNxYaJRpHrd8HKYHp9KHbPvD1VoFcqoLHqHZTcoa1CYsF4BI4YtlwBCcYmrHQju0rwfvkzPWB2f73DTkLPlZPhhln6cZ6Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=IrXbWTDt; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1740741302; bh=isHbY/IQxLptRIvosa0pjZEubSG4kQQCkajcw2CB5gI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=IrXbWTDt42YWW0LfUD6JRUzdY30YbkSXYXfEjbBQvSh5oqGzgCG9/B0KsLLNdchIZ
	 lX04oNsne8r+Azz+kmHDH5/Hb5ZfaTLc2WAtKoctfQhgf8UqqCjBx4hqYV/CZT6zPj
	 4EQUlYQfEAf4nGoU9ZHqQaaeLzDl17phtaILEnYw=
Date: Fri, 28 Feb 2025 12:15:02 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Cenk Uluisik <cenk.uluisik@googlemail.com>, Chen-Yu Tsai <wens@csie.org>, Florian Klink <flokli@flokli.de>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED 3/4] arm64: dts: rockchip: Enable HDMI1 on
 Orange Pi 5 Plus
Message-ID: <5qi24bxuamu3agtldyxhrnlefao6zy2mw2qmx62ycsdg3v6sbz@2jeawstukcyd>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Cenk Uluisik <cenk.uluisik@googlemail.com>, Chen-Yu Tsai <wens@csie.org>, Florian Klink <flokli@flokli.de>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
 <20250227235623.1624-4-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227235623.1624-4-honyuenkwun@gmail.com>

Hello Jimmy,

On Thu, Feb 27, 2025 at 05:56:22PM -0600, Jimmy Hon wrote:
> Enable the second HDMI output port on the Orange Pi 5 Plus

RK3588 hardware design guide states that:

  - When working in HDMI2.1 mode, HDMI0_TX_ON_H is configured as low level,
    Q1700, Q1701, Q1702, and Q1703 are not turned on.
  
  - When working in HDMI2.0 and below modes, HDMI0_TX_ON_H is configured as high
    level, Q5007, Q5004, Q5005, and Q5006 are turned on, and the 499ohm resistor
    to ground and the 50ohm pull-up resistor at the Sink end form a DC bias of
    about 3V.
  
  If you only need to support HDMI2.0 and below modes, Q5007, Q5004, Q5005, and
  Q5006 cannot be omitted. It is necessary to ensure that the tube is not turned
  on when the machine is not turned on, because the HDMI CTS Test ID 7-3 TMDS
  Voff test item requires that the Voff voltage must be within AVcc+-10mV when
  the DUT is not powered on, otherwise this test item cannot pass. 2: The Coss
  of the control MOS tube cannot be too large, otherwise it will affect the
  signal quality. It is recommended to follow the reference figure model or the
  corresponding Coss value.

And Orange Pi 5 schematic (which has almost the same circuit as Plus variant)
states this explicitely too:

  https://megous.com/dl/tmp/5dc98e91dfee3b5a.png

The same applies to HDMI1.

Maybe it would be better to pull up HDMI1_TX_ON_H more explicitely for now via:

&hdmi1 {
+ pinctrl-0 = <&hdmim2_tx1_cec &hdmim0_tx1_hpd
+              &hdmim1_tx1_scl &hdmim1_tx1_sda
+              &hdmi1_tx_on_h>;
};

&pinctrl {
...
+ hdmi {
+         hdmi1_tx_on_h: hdmi1-tx-on-h {
+                 rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+         };
+ };
...
};

AFAIK FRL is not supported, yet, so this may be a better default for HDMI1_TX_ON_H.

In any case,

Reviewed-by: Ondrej Jirman <megi@xff.cz>


And I've also tested and used identical patch for a few weeks already on my
Orange Pi 5+. :)

Kind regards,
	o.

> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 0f874b87b47e..53797f633d3a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -26,6 +26,17 @@ hdmi0_con_in: endpoint {
>  		};
>  	};
>  
> +	hdmi1-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi1_con_in: endpoint {
> +				remote-endpoint = <&hdmi1_out_con>;
> +			};
> +		};
> +	};
> +
>  	ir-receiver {
>  		compatible = "gpio-ir-receiver";
>  		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> @@ -125,10 +136,30 @@ hdmi0_out_con: endpoint {
>  	};
>  };
>  
> +&hdmi1 {
> +	status = "okay";
> +};
> +
> +&hdmi1_in {
> +	hdmi1_in_vp1: endpoint {
> +		remote-endpoint = <&vp1_out_hdmi1>;
> +	};
> +};
> +
> +&hdmi1_out {
> +	hdmi1_out_con: endpoint {
> +		remote-endpoint = <&hdmi1_con_in>;
> +	};
> +};
> +
>  &hdptxphy0 {
>  	status = "okay";
>  };
>  
> +&hdptxphy1 {
> +	status = "okay";
> +};
> +
>  &hym8563 {
>  	interrupt-parent = <&gpio0>;
>  	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> @@ -342,3 +373,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>  		remote-endpoint = <&hdmi0_in_vp0>;
>  	};
>  };
> +
> +&vp1 {
> +	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
> +		remote-endpoint = <&hdmi1_in_vp1>;
> +	};
> +};
> -- 
> 2.48.1
> 

