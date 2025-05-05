Return-Path: <devicetree+bounces-173559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5CAAA8D4C
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:47:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5E61189001A
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 07:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2B4155C88;
	Mon,  5 May 2025 07:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iN7UsG6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559D7176AC8
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 07:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746431261; cv=none; b=mnQYBQ8NzhV0VL5XSxn05/t5kJg7WoXx8x/8br6vf5wx9pfL87zh+2awt+YHeQPxZxNQ7b1dKs+sgJlBhP1AGKCbZlejvQjEnOKgEpo8B9lzHv8E4FDAVZXxnIUQpzSkEDV/yKJ59VV/jtWxKjLNAgjwvlU35xw6iG6jjKC9WaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746431261; c=relaxed/simple;
	bh=+vsiJLHE5xeruZQImbUDMKwQo0b0NGtnv+jjtxMqqYY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Xr4h7kCh0WIkZs0P6XX+ky3RzZDPHHWPjdroSLEopY3/F+J02NSMyOVNCR47v34jQcQzTuzTGbzrcWPJI0dBIxc9DSyezFsfSvbAl5wrMJArk5XwVN6KkJAUQ4/XE3MdswrsmC18r5f2EA4FwtPAky5SwMsr50wMUIdnsaS+Y7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iN7UsG6A; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf0d787eeso37483405e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746431256; x=1747036056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOyv4V7C6FHhYEVN2ZZW1os9lg5hZFxkuJPd1YJTIZU=;
        b=iN7UsG6AwfxnkOgxamOFyqvOwUjOcpaEhzp4lkMLiII/TWtcib7KXYrJBq/Mx1SYql
         hjLwy7FTcWKHeCKpf2VlKWWhXaouY16Rx0qPHHgY2mUUaiVuyKA4NUl63eEeQm6ELMWP
         3XC0Lu7RgQglFOvhWsTcC9VIdbIaEZJow+gSSpo8bI+qDx9JgsP4bhekqfA7UB/x0ZLj
         Er1JEfOG9WT2YAZ+md6Efk/iaF+b+DhhexIoAwX1Mq3W/JTiu21wvLRrMiF52Es3GEkn
         eio9ghMNOZLVPXv6KnK1nqgfeibMuOGdO/ev03CFjfztinBLNxZzEsaSlzO/kSV6drsJ
         L8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746431256; x=1747036056;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OOyv4V7C6FHhYEVN2ZZW1os9lg5hZFxkuJPd1YJTIZU=;
        b=PYCJlqRnZvWAZHVavMpsyKMj0jB11AYNNS0elrsRI24lGHFc2nyzpgWSNGPztiymlB
         6YMF0YhWYEgTCU5USpXZRfsm3Una8K1lNVhCwzd4xRHpMwaip90fU0m+MOz5s69vOqjF
         wFIAu7A1j1YJm+edpumOBKngm3UNTMBhR1CTFFxgjHh1pboempEYAc1h7vxatiS37U9v
         kmb5/FvjvgLz+owjI0694HGchVMsjU8CYZOw+3F/p7+DZQWOTpUTNtIksN1cz9ms7FGG
         eY6bmQbjE1Ae+gfMoOXezeSQJRI8MkCIbnxpNVPknVh2cvUGLqBksxmyjbBVRoBKGRqu
         2+nw==
X-Forwarded-Encrypted: i=1; AJvYcCWbKgvRxZpdr3rqMZ5Rrein/2KrIHjb8Pzbi4pCGXXubYv7gkQMnFaoVe0Xb/AJzGdBQdOCPYYTJL2a@vger.kernel.org
X-Gm-Message-State: AOJu0YwWZFSEz8ln0ESZY0cdmiBUtMAtacvYUbXq6RN7UuQgF/cccM2H
	cTAXN4YCHylal2nay+FRdbaCU/pn6lsk5dS43Sh/RCl88OtaGdxKGAqK/Mc6c04=
X-Gm-Gg: ASbGncsDQihZ7D2l+yW6iYifNCYpy1DewpKwPsTBtJfIElCj3S4xeK7s5Vj1NuLEXyx
	KdW/gXH6JUrp2i0fxlh6pEX7fg4xuu1hezf7hs7EJK9Dtp64aphC7CbO2nqH0QabUBDDTcjm/3X
	7UMJN6dbxSzw1tVP9P4RP9jMVzo3H4QJ/lXbe38u+WYFOwuLWo88G6BXGIYebNtUIfVEaycvfCm
	mX2IOAEhfdFIWwywBx/uvVHLVDB8XQsOZrZKRM1ovt1VSq4A8We95U1of29MO3L19SEUodtapbS
	puZshrh7xaYJnfcJikD1uN1M4juTFhSGBMFitdZYJ5vUyNRusd3U7z8hUb/2H/SnSEyoJnKH5rS
	NKjqfVohfy9GPwAXZwA==
X-Google-Smtp-Source: AGHT+IG/ICCdDMFPfbHX3KEd1kB8UF8xTHfptpvpojiq14DZ3PXmgTpnjcovLOjdsdwwJcVb0O3big==
X-Received: by 2002:a05:600d:13:b0:43c:ef55:f1e8 with SMTP id 5b1f17b1804b1-441c79ea9a2mr34224695e9.13.1746431256562;
        Mon, 05 May 2025 00:47:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:88d3:1ad7:3ae1:56e3? ([2a01:e0a:3d9:2080:88d3:1ad7:3ae1:56e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b8a286dasm123475975e9.31.2025.05.05.00.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 00:47:36 -0700 (PDT)
Message-ID: <22951635-e12e-4db2-9a74-5d5cd991e177@linaro.org>
Date: Mon, 5 May 2025 09:47:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 2/2] drivers: gpu: drm: panel: Add BOE TD4320
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20250430-lavender-panel-v3-0-7625e62d62b2@mainlining.org>
 <20250430-lavender-panel-v3-2-7625e62d62b2@mainlining.org>
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
In-Reply-To: <20250430-lavender-panel-v3-2-7625e62d62b2@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/04/2025 21:42, Barnabás Czémán wrote:
> Add driver for BOE TD4320 DSI panel, used in Xiaomi Redmi Note 7
> mobile phone.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>   drivers/gpu/drm/panel/Kconfig            |   9 ++
>   drivers/gpu/drm/panel/Makefile           |   1 +
>   drivers/gpu/drm/panel/panel-boe-td4320.c | 247 +++++++++++++++++++++++++++++++
>   3 files changed, 257 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 7e9c60a626fbbabb954ed2a7e3d1ef5eee0679d6..639f4324db617a0a2a56debd75eeca7a50e60df6 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -67,6 +67,15 @@ config DRM_PANEL_BOE_HIMAX8279D
>   	  24 bit RGB per pixel. It provides a MIPI DSI interface to
>   	  the host and has a built-in LED backlight.
>   
> +config DRM_PANEL_BOE_TD4320
> +	tristate "BOE TD4320 DSI panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for BOE TD4320 1080x2340
> +	  video mode panel found in Xiaomi Redmi Note 7 smartphones.
> +
>   config DRM_PANEL_BOE_TH101MB31UIG002_28A
>   	tristate "Boe TH101MB31UIG002-28A panel"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 883974f0cba128e28f23e31512f8d30d59913b0e..5eec88e4ac3dea6a1cb357e27a32d2d14c64af9b 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_DRM_PANEL_ASUS_Z00T_TM5P5_NT35596) += panel-asus-z00t-tm5p5-n35596.
>   obj-$(CONFIG_DRM_PANEL_AUO_A030JTN01) += panel-auo-a030jtn01.o
>   obj-$(CONFIG_DRM_PANEL_BOE_BF060Y8M_AJ0) += panel-boe-bf060y8m-aj0.o
>   obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
> +obj-$(CONFIG_DRM_PANEL_BOE_TD4320) += panel-boe-td4320.o
>   obj-$(CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A) += panel-boe-th101mb31ig002-28a.o
>   obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_LL2) += panel-boe-tv101wum-ll2.o
>   obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_NL6) += panel-boe-tv101wum-nl6.o
> diff --git a/drivers/gpu/drm/panel/panel-boe-td4320.c b/drivers/gpu/drm/panel/panel-boe-td4320.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..1956daa2c71bc92c94fc76319d841b520407001c
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-boe-td4320.c
> @@ -0,0 +1,247 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) 2024 Barnabas Czeman <barnabas.czeman@mainlining.org>
> +// Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
> +//   Copyright (c) 2013, The Linux Foundation. All rights reserved.
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct boe_td4320 {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct regulator_bulk_data *supplies;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +static const struct regulator_bulk_data boe_td4320_supplies[] = {
> +	{ .supply = "iovcc" },
> +	{ .supply = "vsn" },
> +	{ .supply = "vsp" },
> +};
> +
> +static inline struct boe_td4320 *to_boe_td4320(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct boe_td4320, panel);
> +}
> +
> +static void boe_td4320_reset(struct boe_td4320 *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(5000, 6000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(30);
> +}
> +
> +static int boe_td4320_on(struct boe_td4320 *ctx)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> +
> +	ctx->dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0, 0x04);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xd6, 0x00);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb8,
> +					 0x19, 0x55, 0x00, 0xbe, 0x00, 0x00,
> +					 0x00);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb9,
> +					 0x4d, 0x55, 0x05, 0xe6, 0x00, 0x02,
> +					 0x03);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xba,
> +					 0x9b, 0x5b, 0x07, 0xe6, 0x00, 0x13,
> +					 0x00);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf9,
> +					 0x44, 0x3f, 0x00, 0x8d, 0xbf);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xce,
> +					 0x5d, 0x00, 0x0f, 0x1f, 0x2f, 0x3f,
> +					 0x4f, 0x5f, 0x6f, 0x7f, 0x8f, 0x9f,
> +					 0xaf, 0xbf, 0xcf, 0xdf, 0xef, 0xff,
> +					 0x04, 0x00, 0x02, 0x02, 0x42, 0x01,
> +					 0x69, 0x5a, 0x40, 0x40, 0x00, 0x00,
> +					 0x04, 0xfa, 0x00);
> +	mipi_dsi_dcs_set_display_brightness_multi(&dsi_ctx, 0x00b8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY,
> +				     0x2c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x00);
> +	mipi_dsi_msleep(&dsi_ctx, 96);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x00);
> +	mipi_dsi_msleep(&dsi_ctx, 20);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int boe_td4320_off(struct boe_td4320 *ctx)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> +
> +	ctx->dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 20);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int boe_td4320_prepare(struct drm_panel *panel)
> +{
> +	struct boe_td4320 *ctx = to_boe_td4320(panel);
> +	struct device *dev = &ctx->dsi->dev;
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(boe_td4320_supplies), ctx->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	boe_td4320_reset(ctx);
> +
> +	ret = boe_td4320_on(ctx);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to initialize panel: %d\n", ret);
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		regulator_bulk_disable(ARRAY_SIZE(boe_td4320_supplies), ctx->supplies);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int boe_td4320_unprepare(struct drm_panel *panel)
> +{
> +	struct boe_td4320 *ctx = to_boe_td4320(panel);
> +	struct device *dev = &ctx->dsi->dev;
> +	int ret;
> +
> +	ret = boe_td4320_off(ctx);
> +	if (ret < 0)
> +		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(boe_td4320_supplies), ctx->supplies);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode boe_td4320_mode = {
> +	.clock = (1080 + 86 + 2 + 100) * (2340 + 4 + 4 + 60) * 60 / 1000,
> +	.hdisplay = 1080,
> +	.hsync_start = 1080 + 86,
> +	.hsync_end = 1080 + 86 + 2,
> +	.htotal = 1080 + 86 + 2 + 100,
> +	.vdisplay = 2340,
> +	.vsync_start = 2340 + 4,
> +	.vsync_end = 2340 + 4 + 4,
> +	.vtotal = 2340 + 4 + 4 + 60,
> +	.width_mm = 67,
> +	.height_mm = 145,
> +	.type = DRM_MODE_TYPE_DRIVER,
> +};
> +
> +static int boe_td4320_get_modes(struct drm_panel *panel,
> +				struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector, &boe_td4320_mode);
> +}
> +
> +static const struct drm_panel_funcs boe_td4320_panel_funcs = {
> +	.prepare = boe_td4320_prepare,
> +	.unprepare = boe_td4320_unprepare,
> +	.get_modes = boe_td4320_get_modes,
> +};
> +
> +static int boe_td4320_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct boe_td4320 *ctx;
> +	int ret;
> +
> +	ctx = devm_drm_panel_alloc(dev, struct boe_td4320, panel,
> +				   &boe_td4320_panel_funcs,
> +				   DRM_MODE_CONNECTOR_DSI);
> +	if (IS_ERR(ctx))
> +		return PTR_ERR(ctx);
> +
> +	ret = devm_regulator_bulk_get_const(dev,
> +					    ARRAY_SIZE(boe_td4320_supplies),
> +					    boe_td4320_supplies,
> +					    &ctx->supplies);
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
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +
> +	ctx->panel.prepare_prev_first = true;
> +
> +	ret = drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void boe_td4320_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct boe_td4320 *ctx = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id boe_td4320_of_match[] = {
> +	{ .compatible = "boe,td4320" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, boe_td4320_of_match);
> +
> +static struct mipi_dsi_driver boe_td4320_driver = {
> +	.probe = boe_td4320_probe,
> +	.remove = boe_td4320_remove,
> +	.driver = {
> +		.name = "panel-boe-td4320",
> +		.of_match_table = boe_td4320_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(boe_td4320_driver);
> +
> +MODULE_AUTHOR("Barnabas Czeman <barnabas.czeman@mainlining.org>");
> +MODULE_DESCRIPTION("DRM driver for boe td4320 fhdplus video mode dsi panel");
> +MODULE_LICENSE("GPL");
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

