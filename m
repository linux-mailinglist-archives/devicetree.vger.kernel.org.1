Return-Path: <devicetree+bounces-8803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F7B7CA1DE
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CBA428108B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2378C18643;
	Mon, 16 Oct 2023 08:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFA1A5A5
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:41:11 +0000 (UTC)
X-Greylist: delayed 479 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 16 Oct 2023 01:41:09 PDT
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B36F9B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:41:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id 87C85FB0F;
	Mon, 16 Oct 2023 10:33:06 +0200 (CEST)
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4a32YQ3nMSmE; Mon, 16 Oct 2023 10:33:03 +0200 (CEST)
Date: Mon, 16 Oct 2023 10:33:01 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	andyshrk@163.com, jagan@edgeble.ai, daniel@ffwll.ch,
	airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
	megous@megous.com, kernel@puri.sm, heiko@sntech.de,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Message-ID: <ZSz1PeHhFp0AHtMl@qwark.sigxcpu.org>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
 <20231013183918.225666-4-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013183918.225666-4-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_FAIL,SPF_HELO_NONE autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Chris,
On Fri, Oct 13, 2023 at 01:39:16PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB30 4 inch panel is a 4 inch 720x720 DSI panel used in
> the Powkiddy RGB30 handheld gaming device. Add support for it.
> 
> TODO: The panel seems to not resume properly from suspend. I've
> confirmed on the other ST7703 based devices it works correctly.

Regarding drm-misc-next has improvements regarding this prompted by the
PinePhone. Maybe that fixes suspend for you too?

Cheers,
 -- Guido

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index 6a3945639535..a9892a4447fb 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -433,6 +433,94 @@ static const struct st7703_panel_desc rg353v2_desc = {
>  	.init_sequence = rg353v2_init_sequence,
>  };
>  
> +static int rgb30panel_init_sequence(struct st7703 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +
> +	/* Init sequence extracted from Powkiddy RGB30 BSP kernel. */
> +
> +	/*
> +	 * For some reason this specific panel must be taken out of sleep
> +	 * before the full init sequence, or else it will not display.
> +	 */
> +	mipi_dsi_dcs_exit_sleep_mode(dsi);
> +	msleep(250);
> +
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
> +			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
> +			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
> +			       0x63);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
> +			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
> +			       0x00, 0x00, 0x12, 0x70, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x3c, 0x12, 0x30);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
> +			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
> +			       0xc0, 0x10);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x36, 0x00, 0x32,
> +			       0x32, 0x77, 0xf1, 0xcc, 0xcc, 0x77, 0x77, 0x33,
> +			       0x33);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x0a, 0x0a);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x88, 0x88);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x0a, 0x10,
> +			       0x0f, 0xa1, 0x80, 0x12, 0x31, 0x23, 0x47, 0x86,
> +			       0xa1, 0x80, 0x47, 0x08, 0x00, 0x00, 0x0d, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00,
> +			       0x48, 0x02, 0x8b, 0xaf, 0x46, 0x02, 0x88, 0x88,
> +			       0x88, 0x88, 0x88, 0x48, 0x13, 0x8b, 0xaf, 0x57,
> +			       0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x96, 0x12, 0x01, 0x01,
> +			       0x01, 0x78, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x4f, 0x31, 0x8b, 0xa8, 0x31, 0x75, 0x88, 0x88,
> +			       0x88, 0x88, 0x88, 0x4f, 0x20, 0x8b, 0xa8, 0x20,
> +			       0x64, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x00,
> +			       0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x40, 0xa1, 0x80, 0x00, 0x00, 0x00,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x0a, 0x0f,
> +			       0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d, 0x10,
> +			       0x13, 0x15, 0x14, 0x15, 0x10, 0x17, 0x00, 0x0a,
> +			       0x0f, 0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d,
> +			       0x10, 0x13, 0x15, 0x14, 0x15, 0x10, 0x17);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode rgb30panel_mode = {
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 45,
> +	.hsync_end	= 720 + 45 + 4,
> +	.htotal		= 720 + 45 + 4 + 45,
> +	.vdisplay	= 720,
> +	.vsync_start	= 720 + 15,
> +	.vsync_end	= 720 + 15 + 3,
> +	.vtotal		= 720 + 15 + 3 + 11,
> +	.clock		= 36570,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 76,
> +	.height_mm	= 76,
> +};
> +
> +static const struct st7703_panel_desc rgb30panel_desc = {
> +	.mode = &rgb30panel_mode,
> +	.lanes = 4,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = rgb30panel_init_sequence,
> +};
> +
>  static int st7703_enable(struct drm_panel *panel)
>  {
>  	struct st7703 *ctx = panel_to_st7703(panel);
> @@ -694,6 +782,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
>  
>  static const struct of_device_id st7703_of_match[] = {
>  	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
> +	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
>  	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
>  	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
>  	{ /* sentinel */ }
> -- 
> 2.34.1
> 

