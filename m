Return-Path: <devicetree+bounces-28954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4151D82021D
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 23:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DB1F1C223EF
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 22:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72E214A90;
	Fri, 29 Dec 2023 22:08:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0F214A94
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 22:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJL1o-0004Bc-LT; Fri, 29 Dec 2023 23:08:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shantur Rathore <i@shantur.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sigmaris@gmail.com, dsimic@manjaro.org, Shantur Rathore <i@shantur.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Fri, 29 Dec 2023 23:08:27 +0100
Message-ID: <2323515.eGJsNajkDb@diego>
In-Reply-To: <20231222141616.508073-1-i@shantur.com>
References: <20231222141616.508073-1-i@shantur.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
> USB port regulators should be controlled by PHYs
> so we remove always-on property and let PHYs manage the
> regulator.
> 
> phy-supply isn't sconfugred for the TypeC port and now that we are
		^^ configured ?

> removing regulator-always-on, we need to fix the phy-supply
> so the PHYs are able to turn power to type-c port.
> 
> Series-version: 2
> 
> Signed-off-by: Shantur Rathore <i@shantur.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index bca2b50e0a..f7273f7990 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_host_en>;
>  		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_typec_en>;
>  		regulator-name = "vcc5v0_typec";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> @@ -859,6 +857,7 @@ &u2phy0 {
>  	status = "okay";
>  
>  	u2phy0_otg: otg-port {
> +		phy-supply = <&vcc5v0_typec>;
>  		status = "okay";
>  	};

Just to explain for me, what is supplying the "other" OTG port
	u2phy1_otg: otg-port {}

in u2phy1 ... this one is status okay, but does not have any phy
supply?


Thanks
Heiko



