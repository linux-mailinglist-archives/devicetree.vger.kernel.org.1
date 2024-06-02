Return-Path: <devicetree+bounces-71548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1CD8D73E1
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 07:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2402B212B0
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 05:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 830BF12E61;
	Sun,  2 Jun 2024 05:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TCU1w01p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA569CA7D;
	Sun,  2 Jun 2024 05:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717304848; cv=none; b=Jns+Wj5UbUT6Uo4BxJn80ZnVuzuc2PSNmczIcqvoRfUblquUrafqp7qljjUiSt6WJ3+ZkrhkcndxFvPd3BTwHm5J0Dzxv8Gdc4bqaxU5qIfg/xNb0JkpNE0O4ngaMygATFKEdHRkWV/2fJTM2eCuqc0ptpnBw6+GxSRnZ7p70HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717304848; c=relaxed/simple;
	bh=rGq5YUYsYT5zk9CApMIxNnLDfW7Urc2951E2gVM4w00=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lLvRBBmhocOY+Go5BcLV56BMk3GLK1yI4Sl6SPAt66XEM6+y4u3qCdQXrT9eYIQHQgsb7IKHJ2SyuejKanCEEW1JTwjgh9pqmB7LYE4c/KyKvy6Ml1HQK1jX1C3sbc9/SfGVPf0v1A/+9j9Pt+suZOK4lBG6BEL5L0LITmVAm4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TCU1w01p; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso2939133e87.3;
        Sat, 01 Jun 2024 22:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717304844; x=1717909644; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ANOuOIj21dBRnsbDhD3MChrhN8nctxPTpgEyWOUaK84=;
        b=TCU1w01pmN5yzOsv6B0ymFEHY0upvwwZUpjEHKIowNr1mNmdHH5Y6LC8In/d+fKUC6
         fr3Hsb5NXGqMLc6S8yS4oDN51ZvJBq9KfrgTvCdGU8OLCcR6U/AgBd2+hlvLAq5D+KU8
         zP24hWdH27SRPMA07riwqDZeXOzKpziFTBwm8jRaMsxy+PsWDQuJUO67vokYw4d8QBnX
         eT3unSaIkV5BWxUkM/bjnNpolh15Jb74O7BJe7TJje63FKDTYdQgSrDujuAMBaasnziA
         9100zERkDdiGsudbtymZkOcr7YNIMwK9jWw4R/sisdJqjvn3CDB0oLjT+nO5GVFnmQRJ
         lkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717304844; x=1717909644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ANOuOIj21dBRnsbDhD3MChrhN8nctxPTpgEyWOUaK84=;
        b=Ho5wssE9mMHG2w2As/btUN4hBGMNDYMNA8MBkrI8Qjugil51SXsRFqcRXq213/PDb/
         ajWv2Eik0wCkrfmbTp1hZMXGrN40InXZqMfxPyn49sDFlVoqek05aQMmknGF80qscl5O
         F8gQ8VnuNg7VI+MmiEYtGGCWcIxc6eDrVneXP1lv2TlV11LeTI9nP2xQqDTl5gf1DjW5
         6lbKGbtrEFPv5uGuhNVpYuOI3+Z7aSPtFQYy13aL1+42zgrilIgzBE6niTO6KrpZ1XjP
         8cl5uquZCQ77meR7CNJBv6TJaCx+XOykB9m5jx1P/CxVgNte9wsmRWCesKArjpyhjpxy
         quCw==
X-Forwarded-Encrypted: i=1; AJvYcCWzwCimMim1pd2mEBxlp7mgUluX9QmSH3m3GNXw/H8fIfkHfH+sKn3ibuAJtsyqJT8+53Tut21jc1IE8Dleoeqj/7+ty8IsuipwdJ88CxdVPG6MpgJGk8B9QJW6AIqajjZVuC31hzVGoQ==
X-Gm-Message-State: AOJu0YyP9VgvwH7cZtgBSKV++mOWHI3+/ZSSTiqaxSSz/D1Mhi8DY+Fv
	TnWY0jJ62qDLXgfHwOw1jiv3JPJ4FzglgTVN7lYGhuFuMVWNbdk=
X-Google-Smtp-Source: AGHT+IHEzj/V63jUhZxHs5J8J0YccJAsFSt0oTPUeoC5i4uEoUKd/vs/MmeVv8bH/5boR+fiiM+G9w==
X-Received: by 2002:a19:4354:0:b0:51e:f2bb:158a with SMTP id 2adb3069b0e04-52b896e0decmr2844859e87.64.1717304843598;
        Sat, 01 Jun 2024 22:07:23 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:f4e3:3e9c:a02e:a3a1? ([2a02:810b:f40:4600:f4e3:3e9c:a02e:a3a1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b66c0c87sm144921566b.73.2024.06.01.22.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Jun 2024 22:07:23 -0700 (PDT)
Message-ID: <94c80cae-4992-4cd2-9b06-93505a5ca799@gmail.com>
Date: Sun, 2 Jun 2024 07:07:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] drm/panel: kd101ne3: add new panel driver
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 dmitry.torokhov@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org,
 benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240601084528.22502-3-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240601084528.22502-3-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Am 01.06.24 um 10:45 schrieb Zhaoxiong Lv:

Hi Zhaoxiong,

> The bias IC of this kindisplay-kd101ne3 panel is placed
> on the panel side, so when the panel is powered on,
> there is no need to control AVDD and AVEE in the driver,
> only 3.3v and reset are needed.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> 
> Chage since V2:
> 
> -  1. Use the new mipi_dsi_dcs_write_seq_multi() function.
> -  2. Modify Move mipi_dsi_dcs_set_display_off() and mipi_dsi_dcs_enter_sleep_mode() to disable(),
> -  and drop kingdisplay_panel_enter_sleep_mode().
> -  3. If prepare fails, disable GPIO before regulators.
> -  4. This function drm_connector_set_panel_orientation() is no longer used. Delete it.
> -  5. Drop ".shutdown = kingdisplay_panel_shutdown".
> 
> ---
>   drivers/gpu/drm/panel/Kconfig                 |   9 +
>   drivers/gpu/drm/panel/Makefile                |   1 +
>   .../drm/panel/panel-kingdisplay-kd101ne3.c    | 533 ++++++++++++++++++
>   3 files changed, 543 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index e54f6f5604ed..71669e990e8e 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -297,6 +297,15 @@ config DRM_PANEL_KINGDISPLAY_KD097D04
>   	  24 bit RGB per pixel. It provides a MIPI DSI interface to
>   	  the host and has a built-in LED backlight.
>   
> +config DRM_PANEL_KINGDISPLAY_KD101NE3
> +	tristate "Kingdisplay kd101ne3 panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for the kingdisplay kd101ne3
> +	  4-lane 800x1280 MIPI DSI panel.
> +
>   config DRM_PANEL_LEADTEK_LTK050H3146W
>   	tristate "Leadtek LTK050H3146W panel"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index f0203f6e02f4..4576c9fe33d9 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -30,6 +30,7 @@ obj-$(CONFIG_DRM_PANEL_JDI_LPM102A188A) += panel-jdi-lpm102a188a.o
>   obj-$(CONFIG_DRM_PANEL_JDI_R63452) += panel-jdi-fhd-r63452.o
>   obj-$(CONFIG_DRM_PANEL_KHADAS_TS050) += panel-khadas-ts050.o
>   obj-$(CONFIG_DRM_PANEL_KINGDISPLAY_KD097D04) += panel-kingdisplay-kd097d04.o
> +obj-$(CONFIG_DRM_PANEL_KINGDISPLAY_KD101NE3) += panel-kingdisplay-kd101ne3.o
>   obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK050H3146W) += panel-leadtek-ltk050h3146w.o
>   obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK500HD1829) += panel-leadtek-ltk500hd1829.o
>   obj-$(CONFIG_DRM_PANEL_LG_LB035Q02) += panel-lg-lb035q02.o
> diff --git a/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c b/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c
> new file mode 100644
> index 000000000000..8994a1c9afb5
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c
> @@ -0,0 +1,533 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Panels based on the JD9365DA display controller.
> + * Author: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_panel.h>
> +
> +#include <video/mipi_display.h>
> +
> +struct kingdisplay_panel;
> +
> +struct panel_desc {
> +	const struct drm_display_mode *modes;
> +	unsigned int bpc;
> +
> +	/**
> +	 * @width_mm: width of the panel's active display area
> +	 * @height_mm: height of the panel's active display area
> +	 */
> +	struct {
> +		unsigned int width_mm;
> +		unsigned int height_mm;
> +	} size;
> +
> +	unsigned long mode_flags;
> +	enum mipi_dsi_pixel_format format;
> +	const struct panel_init_cmd *init_cmds;
> +	int (*init)(struct kingdisplay_panel *kingdisplay);
> +	unsigned int lanes;
> +	bool discharge_on_disable;
> +	bool lp11_before_reset;
> +};
> +
> +struct kingdisplay_panel {
> +	struct drm_panel base;
> +	struct mipi_dsi_device *dsi;
> +
> +	const struct panel_desc *desc;
> +
> +	enum drm_panel_orientation orientation;
> +	struct regulator *pp3300;
> +	struct gpio_desc *enable_gpio;
> +};
> +
> +static int kingdisplay_kd101ne3_init(struct kingdisplay_panel *kingdisplay)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = kingdisplay->dsi };
> +
> +	/* T5:HWreset to init_code >= 50ms */
> +	msleep(50);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x93);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe2, 0x65);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe3, 0xf8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xc7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xc7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x12);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x7e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xa0);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x2e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x15);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x61);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x32);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x54);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x42);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x39);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x26);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x61);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x32);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x54);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x42);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x39);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x26);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x52);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x4e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x4c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x53);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x51);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x4f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x4d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x13);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x0d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x12);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x75);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0xb4);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xbb);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xb3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x61);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
Looking at the init sequence, I'm pretty confident this panel uses a 
Jadard JD 9365 driver IC. It's probably worth adding it to 
panel-jadard-jd9365da instead of adding a completly new driver.

Alex
> +	if (dsi_ctx.accum_err)
> +		return dsi_ctx.accum_err;
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_EXIT_SLEEP_MODE);
> +	if (dsi_ctx.accum_err)
> +		return dsi_ctx.accum_err;
> +
> +	msleep(120);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_SET_DISPLAY_ON);
> +	if (dsi_ctx.accum_err)
> +		return dsi_ctx.accum_err;
> +
> +	msleep(20);
> +
> +	return 0;
> +};
> +
> +static inline struct kingdisplay_panel *to_kingdisplay_panel(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct kingdisplay_panel, base);
> +}
> +
> +static int kingdisplay_panel_disable(struct drm_panel *panel)
> +{
> +	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
> +	int err;
> +
> +	kingdisplay->dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	msleep(100);
> +
> +	err = mipi_dsi_dcs_set_display_off(kingdisplay->dsi);
> +	if (err < 0)
> +		dev_err(panel->dev, "failed to set display off: %d\n", err);
> +
> +	msleep(50);
> +
> +	err = mipi_dsi_dcs_enter_sleep_mode(kingdisplay->dsi);
> +	if (err < 0) {
> +		dev_err(panel->dev, "failed to enter sleep mode: %d\n", err);
> +		return err;
> +	}
> +
> +	msleep(120);
> +
> +	return 0;
> +}
> +
> +static int kingdisplay_panel_unprepare(struct drm_panel *panel)
> +{
> +	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
> +	int err;
> +
> +	gpiod_set_value_cansleep(kingdisplay->enable_gpio, 0);
> +
> +	/* T15: 2ms */
> +	usleep_range(1000, 2000);
> +
> +	err = regulator_disable(kingdisplay->pp3300);
> +	if (err < 0)
> +		return err;
> +
> +	return 0;
> +}
> +
> +static int kingdisplay_panel_prepare(struct drm_panel *panel)
> +{
> +	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
> +	int err;
> +
> +	gpiod_set_value(kingdisplay->enable_gpio, 0);
> +
> +	err = regulator_enable(kingdisplay->pp3300);
> +	if (err < 0)
> +		return err;
> +
> +	/* T1:Vdd to mipi_lp >= 0ms */
> +	usleep_range(5000, 6000);
> +
> +	if (kingdisplay->desc->lp11_before_reset) {
> +		err = mipi_dsi_dcs_nop(kingdisplay->dsi);
> +		if (err < 0)
> +			goto poweroff;
> +
> +		usleep_range(1000, 2000);
> +	}
> +
> +	/* T2: 10ms, T1 + T2 > 60ms */
> +	msleep(60);
> +
> +	gpiod_set_value_cansleep(kingdisplay->enable_gpio, 1);
> +
> +	err = kingdisplay->desc->init(kingdisplay);
> +	if (err < 0)
> +		goto poweroff;
> +
> +	return 0;
> +
> +poweroff:
> +	gpiod_set_value(kingdisplay->enable_gpio, 0);
> +		/* T6: 2ms */
> +	usleep_range(1000, 2000);
> +	regulator_disable(kingdisplay->pp3300);
> +
> +	return err;
> +}
> +
> +static int kingdisplay_panel_enable(struct drm_panel *panel)
> +{
> +	msleep(130);
> +	return 0;
> +}
> +
> +static const struct drm_display_mode kingdisplay_kd101ne3_40ti_default_mode = {
> +	.clock = 70595,
> +	.hdisplay = 800,
> +	.hsync_start = 800 + 30,
> +	.hsync_end = 800 + 30 + 30,
> +	.htotal = 800 + 30 + 30 + 30,
> +	.vdisplay = 1280,
> +	.vsync_start = 1280 + 30,
> +	.vsync_end = 1280 + 30 + 4,
> +	.vtotal = 1280 + 30 + 4 + 8,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static const struct panel_desc kingdisplay_kd101ne3_40ti_desc = {
> +	.modes = &kingdisplay_kd101ne3_40ti_default_mode,
> +	.bpc = 8,
> +	.size = {
> +		.width_mm = 135,
> +		.height_mm = 216,
> +	},
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
> +		      MIPI_DSI_MODE_LPM,
> +	.init = kingdisplay_kd101ne3_init,
> +	.lp11_before_reset = true,
> +};
> +
> +static int kingdisplay_panel_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
> +{
> +	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
> +	const struct drm_display_mode *m = kingdisplay->desc->modes;
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev, m);
> +	if (!mode) {
> +		dev_err(panel->dev, "failed to add mode %ux%u@%u\n",
> +			m->hdisplay, m->vdisplay, drm_mode_vrefresh(m));
> +		return -ENOMEM;
> +	}
> +
> +	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> +	drm_mode_set_name(mode);
> +	drm_mode_probed_add(connector, mode);
> +
> +	connector->display_info.width_mm = kingdisplay->desc->size.width_mm;
> +	connector->display_info.height_mm = kingdisplay->desc->size.height_mm;
> +	connector->display_info.bpc = kingdisplay->desc->bpc;
> +
> +	return 1;
> +}
> +
> +static enum drm_panel_orientation kingdisplay_panel_get_orientation(struct drm_panel *panel)
> +{
> +	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
> +
> +	return kingdisplay->orientation;
> +}
> +
> +static const struct drm_panel_funcs kingdisplay_panel_funcs = {
> +	.disable = kingdisplay_panel_disable,
> +	.unprepare = kingdisplay_panel_unprepare,
> +	.prepare = kingdisplay_panel_prepare,
> +	.enable = kingdisplay_panel_enable,
> +	.get_modes = kingdisplay_panel_get_modes,
> +	.get_orientation = kingdisplay_panel_get_orientation,
> +};
> +
> +static int kingdisplay_panel_add(struct kingdisplay_panel *kingdisplay)
> +{
> +	struct device *dev = &kingdisplay->dsi->dev;
> +	int err;
> +
> +	kingdisplay->pp3300 = devm_regulator_get(dev, "pp3300");
> +	if (IS_ERR(kingdisplay->pp3300))
> +		return dev_err_probe(dev, PTR_ERR(kingdisplay->pp3300),
> +				     "Cannot get pp3300\n");
> +
> +	kingdisplay->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
> +	if (IS_ERR(kingdisplay->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(kingdisplay->enable_gpio),
> +				     "Cannot get enable GPIO\n");
> +
> +	drm_panel_init(&kingdisplay->base, dev, &kingdisplay_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +
> +	err = of_drm_get_panel_orientation(dev->of_node, &kingdisplay->orientation);
> +	if (err < 0) {
> +		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, err);
> +		return err;
> +	}
> +
> +	err = drm_panel_of_backlight(&kingdisplay->base);
> +	if (err)
> +		return err;
> +
> +	kingdisplay->base.funcs = &kingdisplay_panel_funcs;
> +	kingdisplay->base.dev = &kingdisplay->dsi->dev;
> +
> +	drm_panel_add(&kingdisplay->base);
> +
> +	return 0;
> +}
> +
> +static int kingdisplay_panel_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct kingdisplay_panel *kingdisplay;
> +	int ret;
> +	const struct panel_desc *desc;
> +
> +	kingdisplay = devm_kzalloc(&dsi->dev, sizeof(*kingdisplay), GFP_KERNEL);
> +	if (!kingdisplay)
> +		return -ENOMEM;
> +
> +	desc = of_device_get_match_data(&dsi->dev);
> +	dsi->lanes = desc->lanes;
> +	dsi->format = desc->format;
> +	dsi->mode_flags = desc->mode_flags;
> +	kingdisplay->desc = desc;
> +	kingdisplay->dsi = dsi;
> +	ret = kingdisplay_panel_add(kingdisplay);
> +	if (ret < 0)
> +		return ret;
> +
> +	mipi_dsi_set_drvdata(dsi, kingdisplay);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret)
> +		drm_panel_remove(&kingdisplay->base);
> +
> +	return ret;
> +}
> +
> +static void kingdisplay_panel_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct kingdisplay_panel *kingdisplay = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
> +
> +	if (kingdisplay->base.dev)
> +		drm_panel_remove(&kingdisplay->base);
> +}
> +
> +static const struct of_device_id kingdisplay_of_match[] = {
> +	{ .compatible = "kingdisplay,kd101ne3-40ti",
> +	  .data = &kingdisplay_kd101ne3_40ti_desc
> +	},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, kingdisplay_of_match);
> +
> +static struct mipi_dsi_driver kingdisplay_panel_driver = {
> +	.driver = {
> +		.name = "panel-kingdisplay-kd101ne3",
> +		.of_match_table = kingdisplay_of_match,
> +	},
> +	.probe = kingdisplay_panel_probe,
> +	.remove = kingdisplay_panel_remove,
> +};
> +module_mipi_dsi_driver(kingdisplay_panel_driver);
> +
> +MODULE_AUTHOR("Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>");
> +MODULE_DESCRIPTION("kingdisplay kd101ne3-40ti 800x1280 video mode panel driver");
> +MODULE_LICENSE("GPL v2");


