Return-Path: <devicetree+bounces-151920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 626A6A47810
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4009163932
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D90CF226868;
	Thu, 27 Feb 2025 08:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G9M2SFtL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D751225417
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740645664; cv=none; b=L4wV8A9QD5yx/USl3Gvt0fGPJEaK2PWeFuhC//tyYfRJt8lGah5INls35diXAn05sGCzvxbY6sLVl9vU8hqZvkdAmRnNi82U79U7+XMwabjSwbPnEi49v+b4e2MKioonmsl3Awk+WhUDlMw8oh6YqXmxPX9SoSi70CD+cgXnfVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740645664; c=relaxed/simple;
	bh=nuikqCUtCO3O64DzQD1nZ+0zkM3pOwNgggYjw8Y9Lqg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=awIfa23EEkg7xj0unuXzmy4VCTzbVepJUVfEtEkSCCObyck14m8DZpa7Y1uiJLZMP8If86qzAo1Tsr1MZbsuAnGWWb9gYxbVAFLW3SYeZCh4eZtE/advixN9uA51oFkLGQTF0FF9HGWWuY2TPJqfaU+pLV8uKT9KyES/2ylvrLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G9M2SFtL; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso7136365e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 00:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740645659; x=1741250459; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJuPal8Gmgg9T+roMbykdAQyTY+nf284uEaa198m1xk=;
        b=G9M2SFtLaUa+s0M8Y8YHpx9o33VjbyXDG4iFQbOkokAS5roY4jVbd9mlJPbkyujqQg
         X2Z5mK9H874Dr+jZ1OKtVWaVNIgsWfgELKTbTOwBVkyocmhvb9Xfw1Xw+qaVrgDaJV7N
         PsDpO4Uyzg829+I77Ah7XV/WxWWmwadyEeq9gxWcDG3O+ikZ+KLal5c4tKxqW5AjlWwZ
         +EMf4sKpps3wPCnIAnt3czADNg2o9F8DkdL1efBFMXzXj2/6dg7Ddlfbwh+ea5nyVJOS
         NjF0pGPGS5HIMnf9JHVFDJ8ai22RL3/NknaFPgbHZe/tkHDwtP//1GF6UpSHoKJvIB17
         /w1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740645659; x=1741250459;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uJuPal8Gmgg9T+roMbykdAQyTY+nf284uEaa198m1xk=;
        b=f8rr4hXZh4ERqEjR567+LG2AwnflyoBOvcT0001d4eQmu/5HlavSJ+uf2WcFeW4F8I
         csDcJ5YXiEXfWtc/m61alr9+R0K0JYqsIFcfOnRzAT+wXuTCzSpSTfUwlRpf3NyU5X53
         9E9YQu4Bqr9X4+n38i7LrPzFHiVgbvndx3YHQJN+rdvr+iDF/lyFDKEzNVum/kLpa/tN
         gBvb0zeke82SWa7tSiYsJSYt0+Vba8Eu5H3hTYEqCCiz5CZXXHxLkretK/SpL1xjN6JE
         JUCGOCy/as9KFqxNl9Cjbf25SIkZw51FlD9IYkFvI2giLzafT+0r+GUAUej8+kyv7Ywi
         XNEw==
X-Forwarded-Encrypted: i=1; AJvYcCUK5r9yVAfIrrL5NcPt8hTcH96KdZOr+8yMkIMZ98a9d06zfXovIYcjao2rA6nfyvApawshpXdqankD@vger.kernel.org
X-Gm-Message-State: AOJu0YxmrXfg+K5Aif4IMvDPGd4BQI6l9hwEJ0IkOapunnNDfSP+CvtY
	SYmTTLuNvQf2uTkUx/C53pWT9GR4YKOxKnyxp3bxa78r7VU9mEAZ9nxzsL6WpG8=
X-Gm-Gg: ASbGncvHTp/sgH+Xi7X0OwTFhZfojkTUkt628xduYCCfXUlM9UeCRg6vaPJGHbHBV4l
	TYVG+0QUFmamcMjG1cDPgaLWbO0og9CFCQ1fGWxCypFotfko5WjNLUNBkajyp4IGZHOR2tQzNTz
	J81eKVSJEQnbujVLKDVDF6/ACDHDjGmKmeMjmn5jn4/xUy/FcARl8p2Ep/33/sNEk0fqOo44xcR
	bm2OIxkGMfbyoQvbZ2mNnH3qdTLmm3xZINwj9M1HzY3KwJTzLXzWrBaabIXlgos3m6CiCMchsZx
	rj5Gy1S38CcaoijulBQ/7uIWtdAKFZNcWScAOZidf7lW2eh/t3IE+N1Esk1vtNdetKwk2lvNMKl
	S4ko=
X-Google-Smtp-Source: AGHT+IENEv4SDITD86lW1b0EEtZIDy1NZ4Sqi8uEd26+AsAxqTYVPFdATPdjzQPRmw0vQD4TjeMxwQ==
X-Received: by 2002:a05:600c:468b:b0:439:9eba:93bb with SMTP id 5b1f17b1804b1-43ab0f42a24mr115913065e9.18.1740645659226;
        Thu, 27 Feb 2025 00:40:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c5de:e7f3:73c7:7958? ([2a01:e0a:982:cbb0:c5de:e7f3:73c7:7958])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b736f74e8sm15621225e9.7.2025.02.27.00.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 00:40:58 -0800 (PST)
Message-ID: <7354326b-e389-4f00-be63-ca5eb0270b3c@linaro.org>
Date: Thu, 27 Feb 2025 09:40:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/4] drm/panel: Add Visionox RM692E5 panel driver
To: Danila Tikhonov <danila@jiaxyga.com>, quic_jesszhan@quicinc.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 robdclark@gmail.com, quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
 sean@poorly.run, marijn.suijten@somainline.org, jonathan@marek.ca,
 fekz115@gmail.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux@mainlining.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20250217222431.82522-1-danila@jiaxyga.com>
 <20250217222431.82522-3-danila@jiaxyga.com>
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
In-Reply-To: <20250217222431.82522-3-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/02/2025 23:24, Danila Tikhonov wrote:
> From: Eugene Lepshy <fekz115@gmail.com>
> 
> Add the driver for Visionox RM692E5 panel support found in Nothing
> Phone (1).
> 
> Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>   drivers/gpu/drm/panel/Kconfig                 |  10 +
>   drivers/gpu/drm/panel/Makefile                |   1 +
>   .../gpu/drm/panel/panel-visionox-rm692e5.c    | 442 ++++++++++++++++++
>   3 files changed, 453 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-visionox-rm692e5.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index d7469c565d1d..66b2827169fb 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -996,6 +996,16 @@ config DRM_PANEL_VISIONOX_RM69299
>   	  Say Y here if you want to enable support for Visionox
>   	  RM69299  DSI Video Mode panel.
>   
> +config DRM_PANEL_VISIONOX_RM692E5
> +	tristate "Visionox RM692E5"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for Visionox RM692E5 amoled
> +	  display panels, such as the one found in the Nothing Phone (1)
> +	  smartphone.
> +
>   config DRM_PANEL_VISIONOX_VTDR6130
>   	tristate "Visionox VTDR6130"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 7dcf72646cac..6177f2d4113e 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -100,6 +100,7 @@ obj-$(CONFIG_DRM_PANEL_TPO_TD043MTEA1) += panel-tpo-td043mtea1.o
>   obj-$(CONFIG_DRM_PANEL_TPO_TPG110) += panel-tpo-tpg110.o
>   obj-$(CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA) += panel-truly-nt35597.o
>   obj-$(CONFIG_DRM_PANEL_VISIONOX_RM69299) += panel-visionox-rm69299.o
> +obj-$(CONFIG_DRM_PANEL_VISIONOX_RM692E5) += panel-visionox-rm692e5.o
>   obj-$(CONFIG_DRM_PANEL_VISIONOX_VTDR6130) += panel-visionox-vtdr6130.o
>   obj-$(CONFIG_DRM_PANEL_VISIONOX_R66451) += panel-visionox-r66451.o
>   obj-$(CONFIG_DRM_PANEL_WIDECHIPS_WS2401) += panel-widechips-ws2401.o
> diff --git a/drivers/gpu/drm/panel/panel-visionox-rm692e5.c b/drivers/gpu/drm/panel/panel-visionox-rm692e5.c
> new file mode 100644
> index 000000000000..4db7fa8d74c4
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-visionox-rm692e5.c
> @@ -0,0 +1,442 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
> + * Copyright (c) 2013, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2025, Eugene Lepshy <fekz115@gmail.com>
> + * Copyright (c) 2025, Danila Tikhonov <danila@jiaxyga.com>
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/display/drm_dsc.h>
> +#include <drm/display/drm_dsc_helper.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct visionox_rm692e5 {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct drm_dsc_config dsc;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data *supplies;
> +};
> +
> +static const struct regulator_bulk_data visionox_rm692e5_supplies[] = {
> +	{ .supply = "vddio" },	/* 1p8 */
> +	{ .supply = "vdd" },	/* 3p3 */
> +};
> +
> +static inline
> +struct visionox_rm692e5 *to_visionox_rm692e5(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct visionox_rm692e5, panel);
> +}
> +
> +static void visionox_rm692e5_reset(struct visionox_rm692e5 *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(32);
> +}
> +
> +static int visionox_rm692e5_on(struct visionox_rm692e5 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbd, 0x07);
> +	mipi_dsi_usleep_range(&dsi_ctx, 17000, 18000);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0xd2);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x11);
> +	mipi_dsi_dcs_set_display_brightness_multi(&dsi_ctx, 0x00ab);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x60);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_SET_CABC_MIN_BRIGHTNESS, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0xe8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x16);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x18);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0xf0);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x33);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x1c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x2a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x54);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x62);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x69);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x70);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x79);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x7b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x7d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x7e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x83, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x84, 0x22);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x85, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x86, 0x2a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x87, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x88, 0x2a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x89, 0xbe);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8a, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8b, 0xfc);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8c, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8d, 0xfa);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8e, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x8f, 0xf8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x90, 0x3b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x91, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x92, 0x3b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x93, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x94, 0x3b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x95, 0xb6);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x96, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x97, 0xf6);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x98, 0x4c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x99, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9a, 0x4c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9b, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9c, 0x5c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9d, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9e, 0x8c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x9f, 0xf4);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_READ_PPS_START, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa3, 0x1c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa4, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa5, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa6, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa7, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_READ_PPS_CONTINUE, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xaa, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa0, 0x80);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0xa1);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x6b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xce, 0xbb);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0xd1);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb4, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfe, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfa, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc2, 0x08);
> +	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> +	mipi_dsi_dcs_set_display_brightness_multi(&dsi_ctx, 0x000d);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 50);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +	mipi_dsi_usleep_range(&dsi_ctx, 1000, 2000);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int visionox_rm692e5_disable(struct drm_panel *panel)
> +{
> +	struct visionox_rm692e5 *ctx = to_visionox_rm692e5(panel);
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +	mipi_dsi_usleep_range(&dsi_ctx, 1000, 2000);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_usleep_range(&dsi_ctx, 1000, 2000);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int visionox_rm692e5_prepare(struct drm_panel *panel)
> +{
> +	struct visionox_rm692e5 *ctx = to_visionox_rm692e5(panel);
> +	struct drm_dsc_picture_parameter_set pps;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(visionox_rm692e5_supplies),
> +				    ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	visionox_rm692e5_reset(ctx);
> +
> +	ret = visionox_rm692e5_on(ctx);
> +	if (ret < 0) {
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		goto err;
> +	}
> +
> +	drm_dsc_pps_payload_pack(&pps, &ctx->dsc);
> +	mipi_dsi_picture_parameter_set_multi(&dsi_ctx, &pps);
> +	mipi_dsi_compression_mode_ext_multi(&dsi_ctx, true, MIPI_DSI_COMPRESSION_DSC, 0);
> +
> +	mipi_dsi_msleep(&dsi_ctx, 28);
> +
> +	if (dsi_ctx.accum_err < 0) {
> +		ret = dsi_ctx.accum_err;
> +		goto err;
> +	}
> +
> +	return dsi_ctx.accum_err;
> +err:
> +	regulator_bulk_disable(ARRAY_SIZE(visionox_rm692e5_supplies),
> +			ctx->supplies);
> +	return ret;
> +}
> +
> +static int visionox_rm692e5_unprepare(struct drm_panel *panel)
> +{
> +	struct visionox_rm692e5 *ctx = to_visionox_rm692e5(panel);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(visionox_rm692e5_supplies),
> +			       ctx->supplies);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode visionox_rm692e5_modes[] = {
> +	/* Let's initialize the highest frequency first */
> +	{ /* 120Hz mode */
> +		.clock = (1080 + 26 + 39 + 36) * (2400 + 16 + 21 + 16) * 120 / 1000,
> +		.hdisplay = 1080,
> +		.hsync_start = 1080 + 26,
> +		.hsync_end = 1080 + 26 + 39,
> +		.htotal = 1080 + 26 + 39 + 36,
> +		.vdisplay = 2400,
> +		.vsync_start = 2400 + 16,
> +		.vsync_end = 2400 + 16 + 21,
> +		.vtotal = 2400 + 16 + 21 + 16,
> +		.width_mm = 68,
> +		.height_mm = 152,
> +		.type = DRM_MODE_TYPE_DRIVER,
> +	},
> +	{ /* 90Hz mode */
> +		.clock = (1080 + 26 + 39 + 36) * (2400 + 16 + 21 + 16) * 90 / 1000,
> +		.hdisplay = 1080,
> +		.hsync_start = 1080 + 26,
> +		.hsync_end = 1080 + 26 + 39,
> +		.htotal = 1080 + 26 + 39 + 36,
> +		.vdisplay = 2400,
> +		.vsync_start = 2400 + 16,
> +		.vsync_end = 2400 + 16 + 21,
> +		.vtotal = 2400 + 16 + 21 + 16,
> +		.width_mm = 68,
> +		.height_mm = 152,
> +		.type = DRM_MODE_TYPE_DRIVER,
> +	},
> +	{ /* 60Hz mode */
> +		.clock = (1080 + 26 + 39 + 36) * (2400 + 16 + 21 + 16) * 60 / 1000,
> +		.hdisplay = 1080,
> +		.hsync_start = 1080 + 26,
> +		.hsync_end = 1080 + 26 + 39,
> +		.htotal = 1080 + 26 + 39 + 36,
> +		.vdisplay = 2400,
> +		.vsync_start = 2400 + 16,
> +		.vsync_end = 2400 + 16 + 21,
> +		.vtotal = 2400 + 16 + 21 + 16,
> +		.width_mm = 68,
> +		.height_mm = 152,
> +		.type = DRM_MODE_TYPE_DRIVER,
> +	},
> +};
> +
> +static int visionox_rm692e5_get_modes(struct drm_panel *panel,
> +						   struct drm_connector *connector)
> +{
> +	int count = 0;
> +
> +	for (int i = 0; i < ARRAY_SIZE(visionox_rm692e5_modes); i++)
> +		count += drm_connector_helper_get_modes_fixed(connector,
> +						    &visionox_rm692e5_modes[i]);
> +
> +	return count;
> +}
> +
> +static const struct drm_panel_funcs visionox_rm692e5_panel_funcs = {
> +	.prepare = visionox_rm692e5_prepare,
> +	.unprepare = visionox_rm692e5_unprepare,
> +	.disable = visionox_rm692e5_disable,
> +	.get_modes = visionox_rm692e5_get_modes,
> +};
> +
> +static int visionox_rm692e5_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness = backlight_get_brightness(bl);
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return 0;
> +}
> +
> +static int visionox_rm692e5_bl_get_brightness(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness;
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return brightness;
> +}
> +
> +static const struct backlight_ops visionox_rm692e5_bl_ops = {
> +	.update_status = visionox_rm692e5_bl_update_status,
> +	.get_brightness = visionox_rm692e5_bl_get_brightness,
> +};
> +
> +static struct backlight_device *
> +visionox_rm692e5_create_backlight(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	const struct backlight_properties props = {
> +		.type = BACKLIGHT_RAW,
> +		.brightness = 2047,
> +		.max_brightness = 4095,
> +	};
> +
> +	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
> +					      &visionox_rm692e5_bl_ops, &props);
> +}
> +
> +static int visionox_rm692e5_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct visionox_rm692e5 *ctx;
> +	int ret;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ret = devm_regulator_bulk_get_const(&dsi->dev,
> +					    ARRAY_SIZE(visionox_rm692e5_supplies),
> +					    visionox_rm692e5_supplies,
> +					    &ctx->supplies);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to get regulators\n");
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +
> +	drm_panel_init(&ctx->panel, dev, &visionox_rm692e5_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	ctx->panel.prepare_prev_first = true;
> +
> +	ctx->panel.backlight = visionox_rm692e5_create_backlight(dsi);
> +	if (IS_ERR(ctx->panel.backlight))
> +		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
> +				     "Failed to create backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	dsi->dsc = &ctx->dsc;
> +	ctx->dsc.dsc_version_major = 1;
> +	ctx->dsc.dsc_version_minor = 1;
> +	ctx->dsc.slice_height = 20;
> +	ctx->dsc.slice_width = 540;
> +	ctx->dsc.slice_count = 1080 / ctx->dsc.slice_width;
> +	ctx->dsc.bits_per_component = 10;
> +	ctx->dsc.bits_per_pixel = 8 << 4;
> +	ctx->dsc.block_pred_enable = true;
> +
> +	ret = devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void visionox_rm692e5_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct visionox_rm692e5 *ctx = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id visionox_rm692e5_of_match[] = {
> +	{ .compatible = "visionox,rm692e5" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, visionox_rm692e5_of_match);
> +
> +static struct mipi_dsi_driver visionox_rm692e5_driver = {
> +	.probe = visionox_rm692e5_probe,
> +	.remove = visionox_rm692e5_remove,
> +	.driver = {
> +		.name = "panel-visionox-rm692e5",
> +		.of_match_table = visionox_rm692e5_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(visionox_rm692e5_driver);
> +
> +MODULE_AUTHOR("Eugene Lepshy <fekz115@gmail.com>");
> +MODULE_AUTHOR("Danila Tikhonov <danila@jiaxyga.com>");
> +MODULE_DESCRIPTION("DRM driver for Visionox RM692E5 cmd mode dsi panel");
> +MODULE_LICENSE("GPL");

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

