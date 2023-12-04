Return-Path: <devicetree+bounces-21518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF92C803E7D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 562371F21128
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 19:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4DB3218E;
	Mon,  4 Dec 2023 19:35:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5948710E9;
	Mon,  4 Dec 2023 11:35:31 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAEiq-0007pC-B2; Mon, 04 Dec 2023 20:35:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
Date: Mon, 04 Dec 2023 20:35:15 +0100
Message-ID: <62868103.matp6XCIr4@diego>
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Johan,

Am Samstag, 2. Dezember 2023, 19:22:01 CET schrieb Johan Jonker:
> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
> the same gpio numbers - even if not all are used for a specific board.
> In order to not have to re-define them for every board add the
> aliases to SoC dtsi files.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

patch itself looks good, but I don't understand the authorship situation.
As these two signed-off-bys are now it would suggest that you picked up
Jianqun Xu's patch, but then the author would need to be different.

Or do you want to declare this via a
Co-Developed-by: Jianqun Xu <jay.xu@rock-chips.com>


Thanks
Heiko

> ---
> 
> Changed V1:
>   rebase
>   remove rk3066 gpio5 alias
> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi  | 3 +++
>  arch/arm/boot/dts/rockchip/rk3066a.dtsi | 5 +++++
>  arch/arm/boot/dts/rockchip/rk322x.dtsi  | 4 ++++
>  arch/arm/boot/dts/rockchip/rk3288.dtsi  | 9 +++++++++
>  arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 4 ++++
>  5 files changed, 25 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 78686fc72ce6..8aa2e0864fed 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -17,6 +17,9 @@ / {
>  	interrupt-parent = <&gic>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> index de9915d946f7..30139f21de64 100644
> --- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> @@ -13,6 +13,11 @@
>  / {
>  	compatible = "rockchip,rk3066a";
> 
> +	aliases {
> +		gpio4 = &gpio4;
> +		gpio6 = &gpio6;
> +	};
> +
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
> index a721744cbfd1..831561fc1814 100644
> --- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
> @@ -15,6 +15,10 @@ / {
>  	interrupt-parent = <&gic>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
> index cb9cdaddffd4..ead343dc3df1 100644
> --- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
> @@ -19,6 +19,15 @@ / {
> 
>  	aliases {
>  		ethernet0 = &gmac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +		gpio4 = &gpio4;
> +		gpio5 = &gpio5;
> +		gpio6 = &gpio6;
> +		gpio7 = &gpio7;
> +		gpio8 = &gpio8;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> index cb4e42ede56a..f37137f298d5 100644
> --- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> @@ -16,6 +16,10 @@ / {
> 
>  	aliases {
>  		ethernet0 = &emac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> --
> 2.39.2
> 
> 





