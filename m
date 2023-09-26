Return-Path: <devicetree+bounces-3484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD2E7AF0AA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3B77D1C20805
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3646339A6;
	Tue, 26 Sep 2023 16:26:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E739273EF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:26:14 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B0408E
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:26:13 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qlAsj-0007gX-JJ; Tue, 26 Sep 2023 18:25:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qlAsi-0099CX-IK; Tue, 26 Sep 2023 18:25:52 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qlAsi-00BajT-FP; Tue, 26 Sep 2023 18:25:52 +0200
Date: Tue, 26 Sep 2023 18:25:52 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v4 4/7] gpio: vf610: add i.MX8ULP of_device_id entry
Message-ID: <20230926162552.dzyrsrmtjoysrhgg@pengutronix.de>
References: <20230926-vf610-gpio-v4-0-b57b7f6e8368@nxp.com>
 <20230926-vf610-gpio-v4-4-b57b7f6e8368@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926-vf610-gpio-v4-4-b57b7f6e8368@nxp.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23-09-26, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8ULP/93 GPIO supports similar feature as i.MX7ULP GPIO, but i.MX8ULP is
> actually not hardware compatible with i.MX7ULP. i.MX8ULP only has one
> register base, not two bases. i.MX8ULP and i.MX93 actually has two interrupts
> for each gpio controller, one for Trustzone non-secure world, one for
> secure world.
> 
> Although the Linux Kernel driver gpio-vf610.c could work with
> fsl,imx7ulp-gpio compatible, it is based on some tricks did in device tree
> with some offset added to base address.
> 
> Add a new of_device_id entry for i.MX8ULP. But to make the driver could
> also support old bindings, check the compatible string first, before
> check the device data.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/gpio/gpio-vf610.c | 40 ++++++++++++++++++++++++++++++++++------
>  1 file changed, 34 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
> index dbc7ba0ee72c..49867d5db642 100644
> --- a/drivers/gpio/gpio-vf610.c
> +++ b/drivers/gpio/gpio-vf610.c
> @@ -25,6 +25,7 @@
>  struct fsl_gpio_soc_data {
>  	/* SoCs has a Port Data Direction Register (PDDR) */
>  	bool have_paddr;
> +	bool have_dual_base;
>  };
>  
>  struct vf610_gpio_port {
> @@ -60,13 +61,22 @@ struct vf610_gpio_port {
>  #define PORT_INT_EITHER_EDGE	0xb
>  #define PORT_INT_LOGIC_ONE	0xc
>  
> +#define IMX8ULP_GPIO_BASE_OFF	0x40
> +#define IMX8ULP_BASE_OFF	0x80
> +
>  static const struct fsl_gpio_soc_data imx_data = {
>  	.have_paddr = true,
> +	.have_dual_base = true,
> +};
> +
> +static const struct fsl_gpio_soc_data imx8ulp_data = {
> +	.have_paddr = true,
>  };
>  
>  static const struct of_device_id vf610_gpio_dt_ids[] = {
>  	{ .compatible = "fsl,vf610-gpio",	.data = NULL, },
>  	{ .compatible = "fsl,imx7ulp-gpio",	.data = &imx_data, },
> +	{ .compatible = "fsl,imx8ulp-gpio",	.data = &imx8ulp_data, },
>  	{ /* sentinel */ }
>  };
>  
> @@ -263,19 +273,37 @@ static int vf610_gpio_probe(struct platform_device *pdev)
>  	struct gpio_irq_chip *girq;
>  	int i;
>  	int ret;
> +	bool dual_base = false;
>  
>  	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
>  	if (!port)
>  		return -ENOMEM;
>  
>  	port->sdata = of_device_get_match_data(dev);
> -	port->base = devm_platform_ioremap_resource(pdev, 0);
> -	if (IS_ERR(port->base))
> -		return PTR_ERR(port->base);
>  
> -	port->gpio_base = devm_platform_ioremap_resource(pdev, 1);
> -	if (IS_ERR(port->gpio_base))
> -		return PTR_ERR(port->gpio_base);
> +	/* support old compatible strings */
> +	if (device_is_compatible(dev, "fsl,imx7ulp-gpio") &&
> +	    (device_is_compatible(dev, "fsl,imx93-gpio") ||
> +	    (device_is_compatible(dev, "fsl,imx8ulp-gpio"))))
> +		dual_base = true;

Could be simplified even further, if we would add the have_dual_base for
the vf610 as well within this patch.

	dual_base = port->sdata->have_dual_base;

	/* support old bindings */
	if (device_is_compatible(dev, "fsl,imx7ulp-gpio") &&
	    (device_is_compatible(dev, "fsl,imx93-gpio") ||
	    (device_is_compatible(dev, "fsl,imx8ulp-gpio"))))
		dual_base = true;

	if (dual_base) {
		...

Regards,
  Marco

> +	if ((port->sdata && port->sdata->have_dual_base) || dual_base) {
> +		port->base = devm_platform_ioremap_resource(pdev, 0);
> +		if (IS_ERR(port->base))
> +			return PTR_ERR(port->base);
> +
> +		port->gpio_base = devm_platform_ioremap_resource(pdev, 1);
> +		if (IS_ERR(port->gpio_base))
> +			return PTR_ERR(port->gpio_base);
> +	} else {
> +		port->base = devm_platform_ioremap_resource(pdev, 0);
> +		if (IS_ERR(port->base))
> +			return PTR_ERR(port->base);
> +
> +		port->gpio_base = port->base + IMX8ULP_GPIO_BASE_OFF;
> +		port->base = port->base + IMX8ULP_BASE_OFF;
> +	}
> +
>  
>  	port->irq = platform_get_irq(pdev, 0);
>  	if (port->irq < 0)
> 
> -- 
> 2.37.1
> 
> 

