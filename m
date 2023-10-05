Return-Path: <devicetree+bounces-6184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA39C7BA255
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C626A281D51
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA3330D02;
	Thu,  5 Oct 2023 15:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E803E30CF6
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:30:42 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D29A4C3E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:30:41 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoLGr-0004EJ-Ds; Thu, 05 Oct 2023 12:07:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject:
 Re: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
Date: Thu, 05 Oct 2023 12:07:52 +0200
Message-ID: <2194166.1BCLMh4Saa@diego>
In-Reply-To: <20230731200559.635629-1-jagan@edgeble.ai>
References: <20230731200559.635629-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am Montag, 31. Juli 2023, 22:05:57 CEST schrieb Jagan Teki:
> Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.
> 
> The DSI connector in Radxa ROCK 4C+ board support different
> resolution panels and those compatible is added in another
> DT-overlay.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1ebbb3e9c2f9..3a4c4cd769eb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus-mipi-dsi.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4se.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> new file mode 100644
> index 000000000000..271717040b6c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2023 Radxa Computer Co., Ltd.
> + * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
> + *
> + * DT-overlay for Radxa ROCK 4C+ DSI Connector.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +&{/} {
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm2 0 25000 0>;
> +	};
> +};
> +
> +&mipi_dsi {
> +	clock-master;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		mipi_out: port@1 {
> +			reg = <1>;
> +
> +			mipi_out_panel: endpoint {
> +				remote-endpoint = <&mipi_in_panel>;
> +			};
> +		};
> +	};
> +
> +	panel: panel@0 {
> +		/* different resolution panels are used, compatibles are in DTO */

then I guess, the panel node should get a disabled here (and the mipi_dsi
should stay disabled at this point) and both should get enabled in the final
dtbo where the compatible lives?



> +		reg = <0>;
> +		backlight = <&backlight>;
> +		vdd-supply = <&lcd_3v3>;
> +		vccio-supply = <&vcc_1v8_s0>;
> +		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcd_panel_reset>;
> +
> +		port {
> +			mipi_in_panel: endpoint {
> +				remote-endpoint = <&mipi_out_panel>;
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	lcd {
> +		lcd_panel_reset: lcd-panel-reset {
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> 





