Return-Path: <devicetree+bounces-3342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBBD7AE6BD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:25:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id CA495B209B2
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 07:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C85D63C9;
	Tue, 26 Sep 2023 07:25:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B989C63AB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:25:41 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9890BDE;
	Tue, 26 Sep 2023 00:25:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id DD3A380A3;
	Tue, 26 Sep 2023 07:25:39 +0000 (UTC)
Date: Tue, 26 Sep 2023 10:25:38 +0300
From: Tony Lindgren <tony@atomide.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: robertcnelson@gmail.com, drew@beagleboard.org,
	=?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v3 4/4] ARM: dts: am335x-pocketbeagle: add missing GPIO
 mux
Message-ID: <20230926072538.GY5285@atomide.com>
References: <20230822143051.7640-1-twoerner@gmail.com>
 <20230822143051.7640-5-twoerner@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822143051.7640-5-twoerner@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Trevor Woerner <twoerner@gmail.com> [230822 14:31]:
> Add the default MODE setting of a GPIO pin that was missing from the device
> tree (i.e. P2.20/gpio2_00). This is to ensure the GPIO pins match the
> pocketbeagle wiring expectations.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts b/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> index e35d84ca5706..8042917b3b3b 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> @@ -271,6 +271,16 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)
>  		pinctrl-single,bias-pulldown   = < 0x10  0x00  0x10  0x18>;
>  	};
>  
> +	/* P2_20 (ZCZ ball T13) gpio2_00 0x888 */
> +	P2_20_gpio: P2-20-gpio-pins {
> +		pinctrl-single,pins = <
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN3, PIN_INPUT_PULLUP, MUX_MODE7)
> +		>;
> +		pinctrl-single,bias-pullup   =   < 0x10  0x10  0x00  0x18>;
> +		pinctrl-single,bias-pulldown   = < 0x10  0x00  0x10  0x18>;
> +	};
> +
> +
>  	/* P2_10 (ZCZ ball R14) gpio1_20 0x850 PIN 20 */
>  	P2_10_gpio: P2-10-gpio-pins {
>  		pinctrl-single,pins = <

Thanks applying all four patches into omap-for-v6.7/dt. I left out the extra
line break above though.

Regards,

Tony

