Return-Path: <devicetree+bounces-114896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA499AD521
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF3BF1F20F73
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7E1A1D5AB6;
	Wed, 23 Oct 2024 19:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="I1wYRPVS"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DA41D0E2B
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 19:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729712639; cv=none; b=Jkn668P/gw14UrviKGUIS7bEEAmA0J9kqrK0eyV4cETto0JvtsHdDnS4GWwnf1q6iyYUcKYlvy8ZTpxXuZ9Pl8ZRiypXArC6oyHFcigxyvcWl27BfOkLZsySavyAc37sIZWCPIvcyaOc12jteYUsNxn+DxNOxBCo0QhCzMgma8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729712639; c=relaxed/simple;
	bh=VbNSljtrG7HC2J2sDbh+vHJsgpO0vDVNSxCca0nZ8cQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Iu+U9tW4EVvjtd4iA7IdQIdQNJaJIe2Psc1QPkVwDb8VE43JRkINnvXdaOIX2XdTgLrxcywafDdrwdhnp6P+A3XjoTVEPN8dJztwVI8+FuyyLqNQXhVjxs51TT5zNodckbidwsp9dVEETbfrk7LnvXceAx/mbhgKTLKyG9jO378=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=I1wYRPVS; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JWKBCrheMnDwDxxa6Xpd5V/N96xN2BH0moUZB4LkXaI=; b=I1wYRPVSEd0WFKjzgZCgMdJV2p
	+uEZJDMsRrZsLt1KIRx4JLJZqZB7DwmX7UAlxasxvfWM1Fv1P7/I+g2cpG5zZd6F6YmRFGGgMtlHk
	KpE81dHu5w5tT/zQUZC3cmqQxJB3G0PmHhNzIQS1yKsGM0g4z3wi90gjamjJ51blxm2dBDpgcUW6d
	cXx7sQjuexahECDWhpyv+Bh8njQV297aQ4NRfaYEbaZaN2SGBXFJOtymzeUnnM5da0JEZlej9N5so
	ZOeEvyQO7UIJDa9BkIYx3kbW1qUWqo/fWP7x0JEOzLYFsFsDf2PQ6BldDMKMtaJnxc1sDQkK3hhwP
	j4jM0xuw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3hGs-0002eH-38; Wed, 23 Oct 2024 21:43:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova
Date: Wed, 23 Oct 2024 21:43:54 +0200
Message-ID: <46754280.fMDQidcC6G@diego>
In-Reply-To: <20241023164104.66282-3-macroalpha82@gmail.com>
References:
 <20241023164104.66282-1-macroalpha82@gmail.com>
 <20241023164104.66282-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 23. Oktober 2024, 18:41:04 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Enable the HDMI0 and GPU for the Indiedroid Nova.

in general please notice the "and" in your commit message. This generally
indicates a situation that wants to be more than one patch.

With the gpu + hdmi being close cousins and the gpu actually tiny,
there is not a big reason to resend this series though.

So I would've preferred 2 patches, but it'll do this time ;-)


Heiko

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index a4b930f6987f..547b3ca881e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -5,6 +5,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -50,6 +51,17 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	hdmi0-con {
> +		compatible = "hdmi-connector";
> +		type = "c";
> +
> +		port {
> +			hdmi0_con_in: endpoint {
> +				remote-endpoint = <&hdmi0_out_con>;
> +			};
> +		};
> +	};
> +
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		clock-names = "ext_clock";
> @@ -242,6 +254,35 @@ &gpio4 {
>  			  "", "", "", "";
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu_s0>;
> +	status = "okay";
> +};
> +
> +&hdmi0 {
> +	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
> +		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
> +		    <&hdmim0_tx0_cec>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&hdmi0_in {
> +	hdmi0_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi0>;
> +	};
> +};
> +
> +&hdmi0_out {
> +	hdmi0_out_con: endpoint {
> +		remote-endpoint = <&hdmi0_con_in>;
> +	};
> +};
> +
> +&hdptxphy_hdmi0 {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	pinctrl-0 = <&i2c0m2_xfer>;
>  	pinctrl-names = "default";
> @@ -919,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop {
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi0_in_vp0>;
> +	};
> +};
> 





