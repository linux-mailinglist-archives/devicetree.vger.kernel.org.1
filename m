Return-Path: <devicetree+bounces-8997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9B57CB220
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:14:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D4C1B20FA8
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2630A328DE;
	Mon, 16 Oct 2023 18:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C44433987
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:14:47 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB17EB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:14:44 -0700 (PDT)
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsS6x-0007t7-TA; Mon, 16 Oct 2023 20:14:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Liu Ying <victor.liu@nxp.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, rfoss@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, jonas@kwiboo.se, shawnguo@kernel.org,
 s.hauer@pengutronix.de, jernej.skrabec@gmail.com, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject:
 Re: [PATCH 5/9] drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock rate to
 calculate lbcc
Date: Mon, 16 Oct 2023 20:14:38 +0200
Message-ID: <1971539.CrzyxZ31qj@diego>
In-Reply-To: <20230717061831.1826878-6-victor.liu@nxp.com>
References:
 <20230717061831.1826878-1-victor.liu@nxp.com>
 <20230717061831.1826878-6-victor.liu@nxp.com>
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

Hi,

Am Montag, 17. Juli 2023, 08:18:27 CEST schrieb Liu Ying:
> To get better accuration, use pixel clock rate to calculate lbcc instead of
> lane_mbps since the pixel clock rate is in KHz while lane_mbps is in MHz.
> Without this, distorted image can be seen on a HDMI monitor connected with
> i.MX93 11x11 EVK through ADV7535 DSI to HDMI bridge in 1920x1080p@60 video
> mode.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

looks like I'm late to the party, but this change breaks the display output
my px30 minievb with the xinpeng xpp055c272 dsi display [0].

Found this commit via git bisection and added a bit of debug output to
compare the value differences for the old and new calculation:

[   34.810722] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 810 * 480 * 1000 / 8
[   34.810749] dw_mipi_dsi_get_hcomponent_lbcc: new lbcc: 810 * 64000 * 24 / (4 * 8)
[   34.810756] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 48600000, new lbcc: 38880000
[   34.810762] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 10 * 480 * 1000 / 8
[   34.810767] dw_mipi_dsi_get_hcomponent_lbcc: new lbcc: 10 * 64000 * 24 / (4 * 8)
[   34.810773] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 600000, new lbcc: 480000
[   34.810778] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 40 * 480 * 1000 / 8
[   34.810783] dw_mipi_dsi_get_hcomponent_lbcc: new lbcc: 40 * 64000 * 24 / (4 * 8)
[   34.810789] dw_mipi_dsi_get_hcomponent_lbcc: old lbcc: 2400000, new lbcc: 1920000

With the new lbcc I get a blank dsi panel and just going back to the old
calculation of lbcc restores the image.

I don't have that much in-depth knowledge about dsi stuff and the original
panel times also "just" came from the vendor tree, but I really would like
to keep that display working ;-) .

Do you have any idea which way to go to fix this?


Thanks
Heiko


[0]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/px30-evb.dts#n138
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/panel/panel-xinpeng-xpp055c272.c

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index c754d55f71d1..332388fd86da 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -12,6 +12,7 @@
>  #include <linux/component.h>
>  #include <linux/debugfs.h>
>  #include <linux/iopoll.h>
> +#include <linux/math64.h>
>  #include <linux/media-bus-format.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> @@ -762,8 +763,15 @@ static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
>  					   u32 hcomponent)
>  {
>  	u32 frac, lbcc;
> +	int bpp;
>  
> -	lbcc = hcomponent * dsi->lane_mbps * MSEC_PER_SEC / 8;
> +	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
> +	if (bpp < 0) {
> +		dev_err(dsi->dev, "failed to get bpp\n");
> +		return 0;
> +	}
> +
> +	lbcc = div_u64((u64)hcomponent * mode->clock * bpp, dsi->lanes * 8);





