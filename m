Return-Path: <devicetree+bounces-114595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6309AC07F
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 09:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22A27B244C6
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 07:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415E114BFA2;
	Wed, 23 Oct 2024 07:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aeLJXVre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF7D14A639
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 07:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729669272; cv=none; b=UetQV5Ohhh7EnaPUUmH/xObhZsVhGmnHHxOo9+yBaKm848MKlvTqX7kkkwd2z+5giUA58WJJ8vYeGa8MxS3CNtO3o4KM0RCQCxFuM9RB1HmpgMj4VdxOi7VMW3qAOiUjubf3qatSmddMUCTaRTrBO+v6SMPiICThYSN+I5HOCH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729669272; c=relaxed/simple;
	bh=kq4UuF3fTYqL/Bs064KVb/+4Qoasd/vPczgDk2OESg0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FmUewqZBrWAyrmObsOEW+REqKLhLq59bFjc746lYtza3OJvG0cgqK+9LXWOszQWkGCuXrBe7q9dKPCqyXZSe8zEc5dtC8g1bplp6xmqHzvLtkXSGlBcTFH/19IH+xOjpq8RldN4R5Wff62d89sLf6ezvwzAwRHyVKbG3xgOevcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aeLJXVre; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4316f3d3c21so35236505e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 00:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729669268; x=1730274068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/2qWeqMDnEBeTgg4m6gYgxPdkwYNvxwIjqs9ft5ELIE=;
        b=aeLJXVreKMU4ygOaaLCGHdXxcskYRrbVm41E5Uaa4NirmNngqNyGt3tjOUsjE1AgsU
         I2AlX7gz5xTg7/2HrTaE24ICypAQjXM7y0sLKbbN4K9I8klKhMExBhiqe3H/zp4ksXrM
         aFLknS7QjZoX8vmvpTkN1dZ8b6FyH50ALFQO6TDhyT8CRBu/l27o3QYD1VCDQFlgFhrv
         8s7kpGdBM7Iwi0ZNzzl+z0HvGlueGYhZEt3etEkGP6J9OpbYG60Pv+MMUpmTeBlrwhW7
         Pt68UPJybWJnpDdSBmvQe6Slpv/v7raFQpkF22pwLZGHyJ23TSxEFKEXYOTQxaE2XhDf
         9DSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729669268; x=1730274068;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/2qWeqMDnEBeTgg4m6gYgxPdkwYNvxwIjqs9ft5ELIE=;
        b=tuKSAUklMXFtKhpqfe/6YPKL9WXUfxc728IONoZ0bUA18Ij38C7SGUvt2HTwFm5AIY
         8w2He7Bt+Xnz8GqqPN6KNMevHNNnpnf1LYF978AtkgoeinfGzJVGUQ3td5HJrlpGHJOi
         ZI9bNZlLPq7EAOUyXdu+qtiP3C8xe6xATDcxvZEBb2ZF0TgVNhzxLI8V81X0f2FcNs+z
         53+MKbYB0NVTarn4lGpEP6PA5voc8x+LUDG0MQE2MVV3EHu1/k9sTpxGqrAlrZCSRGNz
         tlKidsszAR+XoKi+ItiVo7itta5IFJyTHoPZC24zsJibOv9fHTyFR/EbYyo+1KxdwXf5
         ZclQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwzcpG8RaaAZrPRDVQ98ZRlanbg9GTl/MnexKplvHsEQtLaFOA6GhTheCALcUl3sRs3Lpgetin6Lfy@vger.kernel.org
X-Gm-Message-State: AOJu0YyYMS2O7rzvil5iY8LvQflTruFKqsHPBYU1R+5hoFnolooMAQxI
	vrfqt0R6WjpPCjUt9kWMigKkoP9bV0zqKCL8E6zTSNNyyTIVzGlt52qdGYndolQ=
X-Google-Smtp-Source: AGHT+IEsYojvsQJXyY6IX0ImeYXfy+CsCViR2CKfuMBzrWGzp/owJY0o31u3TPfagqS0w7CJpLyg5A==
X-Received: by 2002:a05:600c:3595:b0:42c:ae30:fc4d with SMTP id 5b1f17b1804b1-43184130182mr12914435e9.7.1729669268094;
        Wed, 23 Oct 2024 00:41:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:f9e2:19d:5b22:8044? ([2a01:e0a:cad:2140:f9e2:19d:5b22:8044])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4317d03ee7asm32782675e9.0.2024.10.23.00.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2024 00:41:07 -0700 (PDT)
Message-ID: <8c611775-7994-427b-b15e-68ada7e340e4@linaro.org>
Date: Wed, 23 Oct 2024 09:41:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 3/5] drm/panel: samsung-s6e88a0-ams427ap24: Add initial
 driver
To: Jakob Hauser <jahau@rocketmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <cover.1729630039.git.jahau@rocketmail.com>
 <3a7d3e17e37819fa0a198a37d0c2f54de7b93971.1729630039.git.jahau@rocketmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <3a7d3e17e37819fa0a198a37d0c2f54de7b93971.1729630039.git.jahau@rocketmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 22/10/2024 23:33, Jakob Hauser wrote:
> This initial part of the panel driver was mostly generated by the
> "linux-mdss-dsi-panel-driver-generator" tool [1], reading downstream
> Android kernel file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [2].
> 
> On top of the generic output of the tool, there were a couple of changes
> applied:
> - Added mipi_dsi_dcs_set_display_on() to function s6e88a0_ams427ap24_on(),
>    otherwise the display does not show up.
> - In functions s6e88a0_ams427ap24_on() and s6e88a0_ams427ap24_off()
>    changed DSI commands to multi context and used "accum_err" returns.
> - In functions s6e88a0_ams427ap24_on() and s6e88a0_ams427ap24_off() replaced
>    msleep() by mipi_dsi_msleep().
> - The function s6e88a0_ams427ap24_get_modes() was changed to make use of
>    drm_connector_helper_get_modes_fixed(). This also required to include
>    drm/drm_probe_helper.h.
> - In function s6e88a0_ams427ap24_probe() registring the regulators was changed
>    to devm_regulator_bulk_get_const(). This required to change supplies in struct
>    s6e88a0_ams427ap24 to a pointer.
> - Removed bool "prepared" from struct s6e88a0_ams427ap24 and instead used
>    framework-provided "panel->prepared" in functions s6e88a0_ams427ap24_prepare()
>    and s6e88a0_ams427ap24_unprepare().
> 
> [1] https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> [2] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi
> 
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> ---
> Coulnd't read out RAW EDID, /sys/class/drm/card0-DSI-1/edid is empty.

DSI panels doesn't have EDID, you can drop this comment

> 
> Changes in v2:
>   - Removed bool "prepared" from struct s6e88a0_ams427ap24 and instead used
>     framework-provided "panel->prepared" in functions s6e88a0_ams427ap24_prepare()
>     and s6e88a0_ams427ap24_unprepare(). Mentioned this in the commit message.
> ---
>   drivers/gpu/drm/panel/Kconfig                 |   9 +
>   drivers/gpu/drm/panel/Makefile                |   1 +
>   .../panel/panel-samsung-s6e88a0-ams427ap24.c  | 260 ++++++++++++++++++
>   3 files changed, 270 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index bce4cb64184a..f8adc38447fb 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -632,6 +632,15 @@ config DRM_PANEL_SAMSUNG_AMS639RQ08
>   	  Say Y or M here if you want to enable support for the
>   	  Samsung AMS639RQ08 FHD Plus (2340x1080@60Hz) CMD mode panel.
>   
> +config DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24
> +	tristate "Samsung AMS427AP24 panel with S6E88A0 controller"
> +	depends on GPIOLIB && OF && REGULATOR
> +	depends on DRM_MIPI_DSI
> +	help
> +	  Say Y here if you want to enable support for Samsung AMS427AP24 panel
> +	  with S6E88A0 controller (found in Samsung Galaxy S4 Mini Value Edition
> +	  GT-I9195I). To compile this driver as a module, choose M here.
> +
>   config DRM_PANEL_SAMSUNG_S6E88A0_AMS452EF01
>   	tristate "Samsung AMS452EF01 panel with S6E88A0 DSI video mode controller"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 4db02c2411ae..7dcf72646cac 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -77,6 +77,7 @@ obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63J0X03) += panel-samsung-s6e63j0x03.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63M0) += panel-samsung-s6e63m0.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63M0_SPI) += panel-samsung-s6e63m0-spi.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63M0_DSI) += panel-samsung-s6e63m0-dsi.o
> +obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24) += panel-samsung-s6e88a0-ams427ap24.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS452EF01) += panel-samsung-s6e88a0-ams452ef01.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0) += panel-samsung-s6e8aa0.o
>   obj-$(CONFIG_DRM_PANEL_SAMSUNG_SOFEF00) += panel-samsung-sofef00.o
> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
> new file mode 100644
> index 000000000000..0ab2768e0e2b
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
> @@ -0,0 +1,260 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Samsung AMS427AP24 panel with S6E88A0 controller
> + * Copyright (c) 2024 Jakob Hauser <jahau@rocketmail.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct s6e88a0_ams427ap24 {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct regulator_bulk_data *supplies;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +const struct regulator_bulk_data s6e88a0_ams427ap24_supplies[] = {

Please add static

> +	{ .supply = "vdd3" },
> +	{ .supply = "vci" },
> +};
> +
> +static inline
> +struct s6e88a0_ams427ap24 *to_s6e88a0_ams427ap24(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct s6e88a0_ams427ap24, panel);
> +}
> +
> +static void s6e88a0_ams427ap24_reset(struct s6e88a0_ams427ap24 *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(5000, 6000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(18000, 19000);
> +}
> +
> +static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfd, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x13);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfd, 0x18);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb8, 0x30);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 20);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0x5a, 0x5a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca,
> +				     0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x80,
> +				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
> +				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
> +				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
> +				     0x80, 0x80, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb2,
> +				     0x40, 0x08, 0x20, 0x00, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb6, 0x28, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf7, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
> +
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int s6e88a0_ams427ap24_off(struct s6e88a0_ams427ap24 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int s6e88a0_ams427ap24_prepare(struct drm_panel *panel)
> +{
> +	struct s6e88a0_ams427ap24 *ctx = to_s6e88a0_ams427ap24(panel);
> +	struct device *dev = &ctx->dsi->dev;
> +	int ret;
> +
> +	if (panel->prepared)
> +		return 0;

You can drop these, _prepare won't be called twice, the framework controls that.

> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(s6e88a0_ams427ap24_supplies),
> +				    ctx->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	s6e88a0_ams427ap24_reset(ctx);
> +
> +	ret = s6e88a0_ams427ap24_on(ctx);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to initialize panel: %d\n", ret);
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		regulator_bulk_disable(ARRAY_SIZE(s6e88a0_ams427ap24_supplies),
> +				       ctx->supplies);
> +		return ret;
> +	}
> +
> +	panel->prepared = true;

Ditto

> +	return 0;
> +}
> +
> +static int s6e88a0_ams427ap24_unprepare(struct drm_panel *panel)
> +{
> +	struct s6e88a0_ams427ap24 *ctx = to_s6e88a0_ams427ap24(panel);
> +	struct device *dev = &ctx->dsi->dev;
> +	int ret;
> +
> +	if (!panel->prepared)
> +		return 0;

Ditto

> +
> +	ret = s6e88a0_ams427ap24_off(ctx);
> +	if (ret < 0)
> +		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(s6e88a0_ams427ap24_supplies),
> +			       ctx->supplies);
> +
> +	panel->prepared = false;

Ditto

> +	return 0;
> +}
> +
> +static const struct drm_display_mode s6e88a0_ams427ap24_mode = {
> +	.clock = (540 + 94 + 4 + 18) * (960 + 12 + 1 + 3) * 60 / 1000,
> +	.hdisplay = 540,
> +	.hsync_start = 540 + 94,
> +	.hsync_end = 540 + 94 + 4,
> +	.htotal = 540 + 94 + 4 + 18,
> +	.vdisplay = 960,
> +	.vsync_start = 960 + 12,
> +	.vsync_end = 960 + 12 + 1,
> +	.vtotal = 960 + 12 + 1 + 3,
> +	.width_mm = 55,
> +	.height_mm = 95,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static int s6e88a0_ams427ap24_get_modes(struct drm_panel *panel,
> +					struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector,
> +						    &s6e88a0_ams427ap24_mode);
> +}
> +
> +static const struct drm_panel_funcs s6e88a0_ams427ap24_panel_funcs = {
> +	.prepare = s6e88a0_ams427ap24_prepare,
> +	.unprepare = s6e88a0_ams427ap24_unprepare,
> +	.get_modes = s6e88a0_ams427ap24_get_modes,
> +};
> +
> +static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct s6e88a0_ams427ap24 *ctx;
> +	int ret;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ret = devm_regulator_bulk_get_const(dev,
> +				      ARRAY_SIZE(s6e88a0_ams427ap24_supplies),
> +				      s6e88a0_ams427ap24_supplies,
> +				      &ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes = 2;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_MODE_NO_EOT_PACKET;
> +
> +	drm_panel_init(&ctx->panel, dev, &s6e88a0_ams427ap24_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	ctx->panel.prepare_prev_first = true;
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to attach to DSI host: %d\n", ret);
> +		drm_panel_remove(&ctx->panel);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void s6e88a0_ams427ap24_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct s6e88a0_ams427ap24 *ctx = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id s6e88a0_ams427ap24_of_match[] = {
> +	{ .compatible = "samsung,s6e88a0-ams427ap24" },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, s6e88a0_ams427ap24_of_match);
> +
> +static struct mipi_dsi_driver s6e88a0_ams427ap24_driver = {
> +	.probe = s6e88a0_ams427ap24_probe,
> +	.remove = s6e88a0_ams427ap24_remove,
> +	.driver = {
> +		.name = "panel-s6e88a0-ams427ap24",
> +		.of_match_table = s6e88a0_ams427ap24_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(s6e88a0_ams427ap24_driver);
> +
> +MODULE_AUTHOR("Jakob Hauser <jahau@rocketmail.com>");
> +MODULE_DESCRIPTION("Samsung AMS427AP24 panel with S6E88A0 controller");
> +MODULE_LICENSE("GPL v2");


Thanks,
Neil

