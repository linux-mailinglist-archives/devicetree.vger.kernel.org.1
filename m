Return-Path: <devicetree+bounces-165786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEBBA85702
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C8703BC40C
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073082980B1;
	Fri, 11 Apr 2025 08:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2uJu70n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768262980A8
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744361525; cv=none; b=dn4SUm1K0v7Wl3embA5VG/X9LUTxsFxpnFSStvi78Wh7yH/PQ1s7cGizZi/AXMoQOyLKLvjTjPsZU4T9BNpR0ieUSZ1G5OpGG/a8QILtF+XJ5o9jdiQ8t/DLeTX3TlGbMz2TeNlPCdI7WM+8C9NE4XaRRZZIROlqzJTIjjfGH1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744361525; c=relaxed/simple;
	bh=l3vGYGTVxd5S0eKrf4L1zp32HoILp0Tlg6Nd9IT88+g=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=MuCfxl7wNfL1OevS57pRTPuvTYjYH8wLvOta73JUED/RATLyqwwUut1qIfPi98mhLRBom9H30wqTuUYxVFAkM+pH8d8raSrXEHGJEY6P+6KlCrI/SnZM6953p3JBg9aD7Pp4yjPk6VjpQ0j0T0dTBIAIqR9u4qxu0GG5Rsw9Ya0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K2uJu70n; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39bf44be22fso985142f8f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744361521; x=1744966321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzOOKRvkmsiTvBsOj9aZcgg7xvPGMotbLChT8sx8KWg=;
        b=K2uJu70nR6BfMy4SIzkM4WWn9OhR/qyJ+OeHoesYvU48uc3S+fewaB/lY63jWHrbRB
         YXeBja2eBUmpD3awq8Yd5q1C00MxjXslAiQPeSbIcfDBa2pg4YO7mvC61vRBEwB2/XQY
         inwnc5F6hOu7kV3He/fxG+4kP3eQftez3idy1xuBuzZg9igZ/6WcFlmVgyGCuBBaTJhV
         l6Hyw9nCOR03Ofz7GlKFSo65AeyezrPA7TcSsMam49N4gQyjb28Gi/8KG8pnNpKRDWAl
         TXbzNOcrofvvxH/QjNv+uFXf8QoI7OxS1N6ITE8b1FqdVjRi0l24mwfzuJBPJl9aceGA
         RsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744361521; x=1744966321;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FzOOKRvkmsiTvBsOj9aZcgg7xvPGMotbLChT8sx8KWg=;
        b=S+p5ZAK0QdgLhPxpx+0lIjOXkm+1z1CRNDvAAP0Eus7oV7s+YwK8e21TuX9JuAa8MK
         pHcpB/feKevOH9xoi0qCEWBpRcamJ1ZcyOy5SgXGd7SWPFFG1akA1ftU4JgkPlGnG+ig
         QuxUCwg4QuneAm1QqvrVmNDn5YLk2uO8OHXjc5JrLT7s2Qs1tDWWMS9EYKc5V1c2u4dn
         0enFHDVZfaJ4tWJ13kP9hsRtR2kgBoGNUbvpSXlK7OGAtc2piGlOtd86/lpN/bDGQZug
         t9pPncqxZNNulXlzrjHLN10i27xvb8R/wyGDBrdWWvqwe5H+RHmmYiEL+U6OC4Rq30Ng
         wENQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfe8zGPkUZA+7NRn5lWGgCThpkAvpI+ZIH0cxqq6kfYC/Bw4b0f7RyLhBOEPlbeQogtgVHAFkdBkk4@vger.kernel.org
X-Gm-Message-State: AOJu0YxLmsf6RhsuV9523qq/F8AnlyHnwF5kRObFJvaxK6xaK5Q3B90r
	eg92PNmC6JMfZbSaoAMNgnlmiQXf3Opd/Yfh6ME3ZjqHK9Bu3SvFLPdUTvZtGbA=
X-Gm-Gg: ASbGncsDIkkgJd6zUgOUmzqY+CJOcDxGxjDmQuhkEp2CoG8vjqs/RvvsHDe7HmpKqA+
	67DtAA/9AR3Lv6eBN8A1DGCrgoGvt2pNhO1hYdDB/+Ag5Uxi7UzDbymmOMLlkMUMuMJmjjT1VjS
	EPZnwb7Ly6ULntzFfREnE3jOEW5gH22/T3fZb1NtcJaC5aSbI5oQjmDOVj5+kOkVnaDy7iMwPkp
	rUdwW6Lx07E2DtTwaGdSWuG/Rbj9/GjYpsAcE0+GCwtm8SBjlGk1cR5vVyrx6y7ozvDDFUCEedS
	8c3DfTN7mtGm9+Cqz4RD19FMN1gAP4mubErSvPcf1HD/jzbFoq/6UVkYcgrI+rIwE9ch4zf1Rw4
	c66RSx/A+V/blqNKWSg==
X-Google-Smtp-Source: AGHT+IHN4ItHWGKmFs/dcwQjSDpI/LJJWV+03Pa+xvMAMoDZJPIQ8x+scc0Kra8CZGc0wT1XZid0WQ==
X-Received: by 2002:a5d:64cd:0:b0:391:231b:8e0d with SMTP id ffacd0b85a97d-39eaaebc6a8mr1337105f8f.39.1744361520531;
        Fri, 11 Apr 2025 01:52:00 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf445515sm1319027f8f.89.2025.04.11.01.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:52:00 -0700 (PDT)
Message-ID: <0fc5612e-34a8-468c-a4f3-65b8686e2327@linaro.org>
Date: Fri, 11 Apr 2025 10:51:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 3/3] drm: panel: Add driver for Himax HX8279 DDIC
 panels
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, pablo.sun@mediatek.com,
 christophe.jaillet@wanadoo.fr
References: <20250410072456.387562-1-angelogioacchino.delregno@collabora.com>
 <20250410072456.387562-4-angelogioacchino.delregno@collabora.com>
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
In-Reply-To: <20250410072456.387562-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/04/2025 09:24, AngeloGioacchino Del Regno wrote:
> Add a driver for the Himax HX8279-D MIPI-DSI DriverIC with support
> for the Startek KX070FHFID078 7.0" 1200x1920 IPS panel, found on
> various MediaTek Genio Evaluation Kit boards and for the Aoly
> SL101PM1794FOG-v15 10.1" 1200x1920 LCD panel found on some I.MX8MM
> boards.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   drivers/gpu/drm/panel/Kconfig              |   11 +
>   drivers/gpu/drm/panel/Makefile             |    1 +
>   drivers/gpu/drm/panel/panel-himax-hx8279.c | 1365 ++++++++++++++++++++
>   3 files changed, 1377 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-himax-hx8279.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index e059b06e0239..42bc6097bf10 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -154,6 +154,17 @@ config DRM_PANEL_LVDS
>   	  handling of power supplies or control signals. It implements automatic
>   	  backlight handling if the panel is attached to a backlight controller.
>   
> +config DRM_PANEL_HIMAX_HX8279
> +	tristate "Himax HX8279-based panels"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y if you want to enable support for panels based on the
> +	  Himax HX8279 controller, such as the Startek KD070FHFID078
> +	  7.0" 1200x1920 IPS LCD panel that uses a MIPI-DSI interface
> +	  and others.
> +
>   config DRM_PANEL_HIMAX_HX83102
>   	tristate "Himax HX83102-based panels"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 1bb8ae46b59b..4fded6e66b05 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_DRM_PANEL_EBBG_FT8719) += panel-ebbg-ft8719.o
>   obj-$(CONFIG_DRM_PANEL_ELIDA_KD35T133) += panel-elida-kd35t133.o
>   obj-$(CONFIG_DRM_PANEL_FEIXIN_K101_IM2BA02) += panel-feixin-k101-im2ba02.o
>   obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
> +obj-$(CONFIG_DRM_PANEL_HIMAX_HX8279) += panel-himax-hx8279.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83102) += panel-himax-hx83102.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83112A) += panel-himax-hx83112a.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX8394) += panel-himax-hx8394.o
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8279.c b/drivers/gpu/drm/panel/panel-himax-hx8279.c
> new file mode 100644
> index 000000000000..72bddba2663f
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8279.c
> @@ -0,0 +1,1365 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Himax HX8279 DriverIC panels driver
> + *
> + * Copyright (c) 2025 Collabora Ltd.
> + *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +
> +/* Page selection */
> +#define HX8279_REG_PAGE			0xb0
> + #define HX8279_PAGE_SEL		GENMASK(3, 0)
> +
> +/* Page 0 - Driver/Module Configuration */
> +#define HX8279_P0_VGHS			0xbf
> +#define HX8279_P0_VGLS			0xc0
> +#define HX8279_P0_VGPHS			0xc2
> +#define HX8279_P0_VGNHS			0xc4
> + #define HX8279_P0_VG_SEL		GENMASK(4, 0)
> + #define HX8279_VGH_MIN_MV		8700
> + #define HX8279_VGH_STEP_MV		300
> + #define HX8279_VGL_MIN_MV		6700
> + #define HX8279_VGL_STEP_MV		300
> + #define HX8279_VGPNH_MIN_MV		4000
> + #define HX8279_VGPNX_STEP_MV		50
> + #define HX8279_VGH_VOLT_SEL(x)		((x - HX8279_VGH_MIN_MV) / HX8279_VGH_STEP_MV)
> + #define HX8279_VGL_VOLT_SEL(x)		((x - HX8279_VGL_MIN_MV) / HX8279_VGL_STEP_MV)
> + #define HX8279_VGPN_VOLT_SEL(x)	((x - HX8279_VGPNH_MIN_MV) / HX8279_VGPNX_STEP_MV)
> +
> +/* Page 1 - Gate driver On Array (GOA) Mux */
> +#define HX8279_P1_REG_GOA_L		0xc0
> +#define HX8279_P1_REG_GOUTL(x)		(HX8279_P1_REG_GOA_L + (x))
> +#define HX8279_P1_REG_GOA_R		0xd4
> +#define HX8279_P1_REG_GOUTR(x)		(HX8279_P1_REG_GOA_R + (x))
> + #define HX8279_GOUT_STB		GENMASK(7, 6)
> + #define HX8279_GOUT_SEL		GENMASK(5, 0)
> +
> +/* Page 2 - Analog Gamma Configuration */
> +#define HX8279_P2_REG_ANALOG_GAMMA	0xc0
> + #define HX8279_P2_REG_GAMMA_T_PVP(x)	(HX8279_P2_REG_ANALOG_GAMMA + (x))	/* 0..16 */
> + #define HX8279_P2_REG_GAMMA_T_PVN(x)	(HX8279_P2_REG_GAMMA_T_PVP(17) + (x))	/* 0..16 */
> +
> +/* Page 3 - Gate driver On Array (GOA) Configuration */
> +#define HX8279_P3_REG_UNKNOWN_BA	0xba
> +#define HX8279_P3_REG_GOA_CKV_FALL_PREC	0xbc
> +#define HX8279_P3_REG_GOA_TIMING_ODD	0xc2
> + #define HX8279_P3_REG_GOA_TO(x)	(HX8279_P3_REG_GOA_TIMING_ODD + x) /* GOA_T0..5 */
> +#define HX8279_P3_REG_GOA_STVL		0xc8
> + #define HX8279_P3_GOA_STV_LEAD		GENMASK(4, 0)
> +#define HX8279_P3_REG_GOA_CKVL		0xc9
> + #define HX8279_P3_GOA_CKV_LEAD		GENMASK(4, 0)
> +#define HX8279_P3_REG_GOA_CKVD		0xca
> + #define HX8279_P3_GOA_CKV_NONOVERLAP	BIT(7)
> + #define HX8279_P3_GOA_CKV_RESERVED	BIT(6)
> + #define HX8279_P3_GOA_CKV_DUMMY	GENMASK(5, 0)
> +#define HX8279_P3_REG_GOA_CKV_RISE_PREC	0xcb
> +#define HX8279_P3_REG_GOA_CLR1_W_ADJ	0xd2
> +#define HX8279_P3_REG_GOA_CLR234_W_ADJ	0xd3
> +#define HX8279_P3_REG_GOA_CLR1_CFG	0xd4
> +#define HX8279_P3_REG_GOA_CLR_CFG(x)	(HX8279_P3_REG_GOA_CLR1_CFG + (x)) /* CLR1..4 */
> + #define HX8279_P3_GOA_CLR_CFG_POLARITY	BIT(7)
> + #define HX8279_P3_GOA_CLR_CFG_STARTPOS	GENMASK(6, 0)
> +#define HX8279_P3_REG_GOA_TIMING_EVEN	0xdd
> + #define HX8279_P3_REG_GOA_TE(x)	(HX8279_P3_REG_GOA_TIMING_EVEN + x)
> +#define HX8279_P3_REG_UNKNOWN_E4	0xe4
> +#define HX8279_P3_REG_UNKNOWN_E5	0xe5
> +
> +/* Page 5 - MIPI */
> +#define HX8279_P5_REG_TIMING		0xb3
> + #define HX8279_P5_TIMING_THS_SETTLE	GENMASK(7, 5)
> + #define HX8279_P5_TIMING_LHS_SETTLE	BIT(4)
> + #define HX8279_P5_TIMING_TLPX		GENMASK(3, 0)
> +#define HX8279_P5_REG_UNKNOWN_B8	0xb8
> +#define HX8279_P5_REG_UNKNOWN_BC	0xbc
> +#define HX8279_P5_REG_UNKNOWN_D6	0xd6
> +
> +/* Page 6 - Engineer */
> +#define HX8279_P6_REG_ENGINEER_PWD	0xb8
> +#define HX8279_P6_REG_INHOUSE_FUNC	0xc0
> + #define HX8279_P6_ENG_UNLOCK_WORD	0xa5
> +#define HX8279_P6_REG_GAMMA_CHOPPER	0xbc
> + #define HX8279_P6_GAMMA_POCGM_CTL	GENMASK(6, 4)
> + #define HX8279_P6_GAMMA_POGCMD_CTL	GENMASK(2, 0)
> +#define HX8279_P6_REG_VOLT_ADJ		0xc7
> + /* For VCCIFS and VCCS - 0: 1450, 1: 1500, 2: 1550, 3: 1600 uV */
> + #define HX8279_P6_VOLT_ADJ_VCCIFS	GENMASK(3, 2)
> + #define HX8279_P6_VOLT_ADJ_VCCS	GENMASK(1, 0)
> +#define HX8279_P6_REG_DLY_TIME_ADJ	0xd5
> +
> +/* Page 7...12 - Digital Gamma Adjustment */
> +#define HX8279_PG_DIGITAL_GAMMA		0xb1
> +#define HX8279_DGAMMA_DGMA1_HI		GENMASK(7, 6)
> +#define HX8279_DGAMMA_DGMA2_HI		GENMASK(5, 4)
> +#define HX8279_DGAMMA_DGMA3_HI		GENMASK(3, 2)
> +#define HX8279_DGAMMA_DGMA4_HI		GENMASK(1, 0)
> +#define HX8279_PG_DGAMMA_NUM_LO_BYTES	24
> +#define HX8279_PG_DGAMMA_NUM_HI_BYTES	6
> +
> +struct hx8279 {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi[2];
> +	struct regulator_bulk_data vregs[2];
> +	struct gpio_desc *enable_gpio;
> +	struct gpio_desc *reset_gpio;
> +	const struct hx8279_panel_desc *desc;
> +	u8 last_page;
> +	bool skip_voltage_config;
> +	bool skip_goa_config;
> +	bool skip_goa_timing;
> +	bool skip_goa_even_timing;
> +	bool skip_mipi_timing;
> +};
> +
> +struct hx8279_panel_mode {
> +	const struct drm_display_mode mode;
> +	u8 bpc;
> +	bool is_video_mode;
> +};
> +
> +/**
> + * struct hx8279_goa_mux - Gate driver On Array Muxer
> + * @gout_l: Mux GOA signal to GOUT Left pin
> + * @gout_r: Mux GOA signal to GOUT Right pin
> + */
> +struct hx8279_goa_mux {
> +	u8 gout_l[20];
> +	u8 gout_r[20];
> +};
> +
> +/**
> + * struct hx8279_analog_gamma - Analog Gamma Adjustment
> + * @pos: Positive gamma op's input voltage, adjusted by VGP(H/L)
> + * @neg: Negative gamma op's input voltage, adjusted by VGN(H/L)
> + *
> + * Analog Gamma correction is performed with 17+17 reference voltages,
> + * changed with resistor streams, and defined with 17 register values
> + * for positive and 17 for negative.
> + *
> + * Each register holds resistance values, in 8.5ohms per unit, for the
> + * following gamma levels:
> + * 0, 8, 16, 28, 40, 56, 80, 128, 176, 200, 216, 228, 240, 248, 252, 255.
> + */
> +struct hx8279_analog_gamma {
> +	u8 pos[17];
> +	u8 neg[17];
> +};
> +
> +/**
> + * struct hx8279_digital_gamma - Digital Gamma Adjustment
> + * @r: Adjustment for red component
> + * @g: Adjustment for green component
> + * @b: Adjustment for blue component
> + *
> + * The layout of this structure follows the register layout to simplify
> + * both the handling and the declaration of those values in the driver.
> + * Gamma correction is internally done with a 24 segment piecewise
> + * linear interpolation; those segments are defined with 24 ten bits
> + * values of which:
> + *   - The LOW eight bits for the first 24 registers start at the first
> + *     first register (at 0xb1) of the Digital Gamma Adjustment page;
> + *   - The HIGH two bits for each of the 24 registers are contained
> + *     in the last six registers;
> + *   - The last six registers contain four groups of two-bits HI values
> + *     for each of the first 24 registers, but in an inverted fashion,
> + *     this means that the first two bits relate to the last register
> + *     of a set of four.
> + *
> + * The 24 segments refer to the following gamma levels:
> + * 0, 1, 3, 7, 11, 15, 23, 31, 47, 63, 95, 127, 128, 160,
> + * 192, 208, 224, 232, 240, 244, 248, 252, 254, 255
> + */
> +struct hx8279_digital_gamma {
> +	u8 r[HX8279_PG_DGAMMA_NUM_LO_BYTES + HX8279_PG_DGAMMA_NUM_HI_BYTES];
> +	u8 g[HX8279_PG_DGAMMA_NUM_LO_BYTES + HX8279_PG_DGAMMA_NUM_HI_BYTES];
> +	u8 b[HX8279_PG_DGAMMA_NUM_LO_BYTES + HX8279_PG_DGAMMA_NUM_HI_BYTES];
> +};
> +
> +struct hx8279_panel_desc {
> +	const struct mipi_dsi_device_info dsi_info;
> +	const struct hx8279_panel_mode *mode_data;
> +	u8 num_lanes;
> +	u8 num_modes;
> +
> +	/* Page 0 */
> +	unsigned int vgh_mv;
> +	unsigned int vgl_mv;
> +	unsigned int vgph_mv;
> +	unsigned int vgnh_mv;
> +
> +	/* Page 1 */
> +	const struct hx8279_goa_mux *gmux;
> +
> +	/* Page 2 */
> +	const struct hx8279_analog_gamma *agamma;
> +
> +	/* Page 3 */
> +	u8 goa_unk_ba;
> +	u8 goa_odd_timing[6];
> +	u8 goa_even_timing[6];
> +	u8 goa_stv_lead_time_ck;
> +	u8 goa_ckv_lead_time_ck;
> +	u8 goa_ckv_dummy_vblank_num;
> +	u8 goa_ckv_rise_precharge;
> +	u8 goa_ckv_fall_precharge;
> +	bool goa_ckv_non_overlap_ctl;
> +	u8 goa_clr1_width_adj;
> +	u8 goa_clr234_width_adj;
> +	s8 goa_clr_polarity[4];
> +	int goa_clr_start_pos[4];
> +	u8 goa_unk_e4;
> +	u8 goa_unk_e5;
> +
> +	/* Page 5 */
> +	u8 bta_tlpx;
> +	bool lhs_settle_time_by_osc25;
> +	u8 ths_settle_time;
> +	u8 timing_unk_b8;
> +	u8 timing_unk_bc;
> +	u8 timing_unk_d6;
> +
> +	/* Page 6 */
> +	u8 gamma_ctl;
> +	u8 volt_adj;
> +	u8 src_delay_time_adj_ck;
> +
> +	/* Page 7..12 */
> +	const struct hx8279_digital_gamma *dgamma;
> +};
> +
> +static inline struct hx8279 *to_hx8279(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct hx8279, panel);
> +}
> +
> +static int hx8279_set_page(struct hx8279 *hx,
> +			   struct mipi_dsi_multi_context *dsi_ctx, u8 page)
> +{
> +	const u8 cmd_set_page[] = { HX8279_REG_PAGE, page };
> +
> +	if (hx->last_page == page)
> +		return 0;
> +
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_page, ARRAY_SIZE(cmd_set_page));
> +	if (!dsi_ctx->accum_err)
> +		hx->last_page = page;
> +	else
> +		return -EINVAL;


Directly return dsi_ctx->accum_err instead at the end of the function

> +
> +	return 0;
> +}
> +
> +static int hx8279_set_module_config(struct hx8279 *hx,
> +				    struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	u8 cmd_set_voltage[2];
> +	int ret;
> +
> +	if (hx->skip_voltage_config)
> +		return 0;
> +
> +	/* Page 0 - Driver/Module Configuration */
> +	ret = hx8279_set_page(hx, dsi_ctx, 0);
> +	if (ret)
> +		return ret;

You drop this check, and change hx8279_set_page to return void instead,
the mipi_dsi_multi_context accum_err will make all the other calls as no-op.

> +
> +	if (desc->vgh_mv) {
> +		cmd_set_voltage[0] = HX8279_P0_VGHS;
> +		cmd_set_voltage[1] = HX8279_VGH_VOLT_SEL(desc->vgh_mv);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_voltage,
> +					     ARRAY_SIZE(cmd_set_voltage));
> +	}
> +
> +	if (desc->vgl_mv) {
> +		cmd_set_voltage[0] = HX8279_P0_VGLS;
> +		cmd_set_voltage[1] = HX8279_VGL_VOLT_SEL(desc->vgl_mv);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_voltage,
> +					     ARRAY_SIZE(cmd_set_voltage));
> +	}
> +
> +	if (desc->vgph_mv) {
> +		cmd_set_voltage[0] = HX8279_P0_VGPHS;
> +		cmd_set_voltage[1] = HX8279_VGPN_VOLT_SEL(desc->vgph_mv);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_voltage,
> +					     ARRAY_SIZE(cmd_set_voltage));
> +	}
> +
> +	if (desc->vgnh_mv) {
> +		cmd_set_voltage[0] = HX8279_P0_VGNHS;
> +		cmd_set_voltage[1] = HX8279_VGPN_VOLT_SEL(desc->vgnh_mv);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_voltage,
> +					     ARRAY_SIZE(cmd_set_voltage));
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_gmux(struct hx8279 *hx,
> +			   struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_goa_mux *gmux = hx->desc->gmux;
> +	u8 cmd_set_gmux[2];
> +	int i, ret;
> +
> +	if (!gmux)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 1);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(gmux->gout_l); i++) {
> +		cmd_set_gmux[0] = HX8279_P1_REG_GOUTL(i);
> +		cmd_set_gmux[1] = gmux->gout_l[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_gmux,
> +					     ARRAY_SIZE(cmd_set_gmux));
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(gmux->gout_r); i++) {
> +		cmd_set_gmux[0] = HX8279_P1_REG_GOUTR(i);
> +		cmd_set_gmux[1] = gmux->gout_r[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_gmux,
> +					     ARRAY_SIZE(cmd_set_gmux));
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_analog_gamma(struct hx8279 *hx,
> +				    struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_analog_gamma *agamma = hx->desc->agamma;
> +	u8 cmd_set_ana_gamma[2];
> +	int i, ret;
> +
> +	if (!agamma)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 2);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(agamma->pos); i++) {
> +		cmd_set_ana_gamma[0] = HX8279_P2_REG_GAMMA_T_PVP(i);
> +		cmd_set_ana_gamma[1] = agamma->pos[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_ana_gamma,
> +					     ARRAY_SIZE(cmd_set_ana_gamma));
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(agamma->neg); i++) {
> +		cmd_set_ana_gamma[0] = HX8279_P2_REG_GAMMA_T_PVN(i);
> +		cmd_set_ana_gamma[1] = agamma->neg[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_ana_gamma,
> +					     ARRAY_SIZE(cmd_set_ana_gamma));
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_goa_timing(struct hx8279 *hx,
> +				 struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	u8 cmd_set_goa_t[2];
> +	int i, ret;
> +
> +	if (hx->skip_goa_timing)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 3);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_odd_timing); i++) {
> +		cmd_set_goa_t[0] = HX8279_P3_REG_GOA_TO(i);
> +		cmd_set_goa_t[1] = desc->goa_odd_timing[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa_t,
> +					     ARRAY_SIZE(cmd_set_goa_t));
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_even_timing); i++) {
> +		cmd_set_goa_t[0] = HX8279_P3_REG_GOA_TE(i);
> +		cmd_set_goa_t[1] = desc->goa_odd_timing[i];
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa_t,
> +					     ARRAY_SIZE(cmd_set_goa_t));
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_goa_cfg(struct hx8279 *hx,
> +			      struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	u8 cmd_set_goa[2];
> +	int i, ret;
> +
> +	if (hx->skip_goa_config)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 3);
> +	if (ret)
> +		return ret;
> +
> +	if (desc->goa_unk_ba)  {
> +		cmd_set_goa[0] = HX8279_P3_REG_UNKNOWN_BA;
> +		cmd_set_goa[1] = desc->goa_unk_ba;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_stv_lead_time_ck) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_STVL;
> +		cmd_set_goa[1] = FIELD_PREP(HX8279_P3_GOA_STV_LEAD,
> +					    desc->goa_stv_lead_time_ck);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_ckv_lead_time_ck) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CKVL;
> +		cmd_set_goa[1] = FIELD_PREP(HX8279_P3_GOA_CKV_DUMMY,
> +					    desc->goa_ckv_lead_time_ck);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_ckv_dummy_vblank_num) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CKVD;
> +		cmd_set_goa[1] = FIELD_PREP(HX8279_P3_GOA_CKV_LEAD,
> +					    desc->goa_ckv_dummy_vblank_num);
> +		cmd_set_goa[1] |= FIELD_PREP(HX8279_P3_GOA_CKV_NONOVERLAP,
> +					     desc->goa_ckv_non_overlap_ctl);
> +		/* RESERVED must be always set */
> +		cmd_set_goa[1] |= HX8279_P3_GOA_CKV_RESERVED;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	/*
> +	 * One of the two being more than zero means that we want to write
> +	 * both of them. Anyway, the register default is zero in this case.
> +	 */
> +	if (desc->goa_ckv_rise_precharge || desc->goa_ckv_fall_precharge) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CKV_RISE_PREC;
> +		cmd_set_goa[1] = desc->goa_ckv_rise_precharge;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CKV_FALL_PREC;
> +		cmd_set_goa[1] = desc->goa_ckv_fall_precharge;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_clr1_width_adj) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CLR1_W_ADJ;
> +		cmd_set_goa[1] = desc->goa_clr1_width_adj;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_clr234_width_adj) {
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CLR234_W_ADJ;
> +		cmd_set_goa[1] = desc->goa_clr234_width_adj;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	/* Polarity and Start Position arrays are of the same size */
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_clr_polarity); i++) {
> +		if (desc->goa_clr_polarity[i] < 0 || desc->goa_clr_start_pos[i] < 0)
> +			continue;
> +
> +		cmd_set_goa[0] = HX8279_P3_REG_GOA_CLR_CFG(i);
> +		cmd_set_goa[1] = FIELD_PREP(HX8279_P3_GOA_CLR_CFG_STARTPOS,
> +					    desc->goa_clr_start_pos[i]);
> +		cmd_set_goa[1] |= FIELD_PREP(HX8279_P3_GOA_CLR_CFG_POLARITY,
> +					     desc->goa_clr_polarity[i]);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	if (desc->goa_unk_e4) {
> +		cmd_set_goa[0] = HX8279_P3_REG_UNKNOWN_E4;
> +		cmd_set_goa[1] = desc->goa_unk_e4;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +					     ARRAY_SIZE(cmd_set_goa));
> +	}
> +
> +	cmd_set_goa[0] = HX8279_P3_REG_UNKNOWN_E5;
> +	cmd_set_goa[1] = desc->goa_unk_e5;
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_goa,
> +				     ARRAY_SIZE(cmd_set_goa));
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_mipi_cfg(struct hx8279 *hx,
> +			       struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	u8 cmd_set_mipi[2];
> +	int ret;
> +
> +	if (hx->skip_mipi_timing)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 5);
> +	if (ret)
> +		return ret;
> +
> +	if (desc->bta_tlpx || desc->ths_settle_time || desc->lhs_settle_time_by_osc25) {
> +		cmd_set_mipi[0] = HX8279_P5_REG_TIMING;
> +		cmd_set_mipi[1] = FIELD_PREP(HX8279_P5_TIMING_TLPX, desc->bta_tlpx);
> +		cmd_set_mipi[1] |= FIELD_PREP(HX8279_P5_TIMING_THS_SETTLE,
> +					      desc->ths_settle_time);
> +		cmd_set_mipi[1] |= FIELD_PREP(HX8279_P5_TIMING_LHS_SETTLE,
> +					      desc->lhs_settle_time_by_osc25);
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_mipi,
> +					     ARRAY_SIZE(cmd_set_mipi));
> +	}
> +
> +	if (desc->timing_unk_b8) {
> +		cmd_set_mipi[0] = HX8279_P5_REG_UNKNOWN_B8;
> +		cmd_set_mipi[1] = desc->timing_unk_b8;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_mipi,
> +					     ARRAY_SIZE(cmd_set_mipi));
> +	}
> +
> +	if (desc->timing_unk_bc) {
> +		cmd_set_mipi[0] = HX8279_P5_REG_UNKNOWN_BC;
> +		cmd_set_mipi[1] = desc->timing_unk_bc;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_mipi,
> +					     ARRAY_SIZE(cmd_set_mipi));
> +	}
> +
> +	if (desc->timing_unk_d6) {
> +		cmd_set_mipi[0] = HX8279_P5_REG_UNKNOWN_D6;
> +		cmd_set_mipi[1] = desc->timing_unk_d6;
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_mipi,
> +					     ARRAY_SIZE(cmd_set_mipi));
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_adv_cfg(struct hx8279 *hx,
> +			      struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	const u8 cmd_set_dly[] = { HX8279_P6_REG_DLY_TIME_ADJ, desc->src_delay_time_adj_ck };
> +	const u8 cmd_set_gamma[] = { HX8279_P6_REG_GAMMA_CHOPPER, desc->gamma_ctl };
> +	const u8 cmd_set_volt_adj[] = { HX8279_P6_REG_VOLT_ADJ, desc->volt_adj };
> +	u8 cmd_set_eng[] = { HX8279_P6_REG_ENGINEER_PWD, HX8279_P6_ENG_UNLOCK_WORD };
> +	int ret;
> +
> +	if (!desc->gamma_ctl && !desc->src_delay_time_adj_ck && !desc->volt_adj)
> +		return 0;
> +
> +	ret = hx8279_set_page(hx, dsi_ctx, 6);
> +	if (ret)
> +		return ret;
> +
> +	/* Unlock ENG settings: write same word to both ENGINEER_PWD and INHOUSE_FUNC */
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_eng, ARRAY_SIZE(cmd_set_eng));
> +
> +	cmd_set_eng[0] = HX8279_P6_REG_INHOUSE_FUNC;
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_eng, ARRAY_SIZE(cmd_set_eng));
> +
> +	/* Set Gamma Chopper and Gamma buffer Chopper control */
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_gamma, ARRAY_SIZE(cmd_set_gamma));
> +
> +	/* Set Source delay time adjustment (CKV falling to Source off) */
> +	if (desc->src_delay_time_adj_ck)
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_dly,
> +					     ARRAY_SIZE(cmd_set_dly));
> +
> +	/* Set voltage adjustment */
> +	if (desc->volt_adj)
> +		mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_volt_adj,
> +					     ARRAY_SIZE(cmd_set_volt_adj));
> +
> +	/* Lock ENG settings again */
> +	cmd_set_eng[0] = HX8279_P6_REG_ENGINEER_PWD;
> +	cmd_set_eng[1] = 0;
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_eng, ARRAY_SIZE(cmd_set_eng));
> +
> +	cmd_set_eng[0] = HX8279_P6_REG_INHOUSE_FUNC;
> +	mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_eng, ARRAY_SIZE(cmd_set_eng));
> +
> +	return 0;
> +}
> +
> +static int hx8279_set_digital_gamma(struct hx8279 *hx,
> +				    struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	const struct hx8279_digital_gamma *dgamma = hx->desc->dgamma;
> +	u8 cmd_set_dig_gamma[2];
> +	int i, ret;
> +
> +	if (!dgamma)
> +		return 0;
> +
> +	/*
> +	 * Pages 7..9 are for RGB Positive, 10..12 are for RGB Negative:
> +	 * The first iteration sets all positive component registers,
> +	 * the second one sets all negatives.
> +	 */
> +	for (i = 0; i < 2; i++) {
> +		u8 pg_neg = i * 3;
> +
> +		ret = hx8279_set_page(hx, dsi_ctx, 7 + pg_neg);
> +		if (ret)
> +			return ret;
> +		
> +		for (i = 0; i < ARRAY_SIZE(dgamma->r); i++) {
> +			cmd_set_dig_gamma[0] = HX8279_PG_DIGITAL_GAMMA + i;
> +			cmd_set_dig_gamma[1] = dgamma->r[i];
> +			mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_dig_gamma,
> +						     ARRAY_SIZE(cmd_set_dig_gamma));
> +		}
> +
> +		ret = hx8279_set_page(hx, dsi_ctx, 8 + pg_neg);
> +		if (ret)
> +			return ret;
> +
> +		for (i = 0; i < ARRAY_SIZE(dgamma->g); i++) {
> +			cmd_set_dig_gamma[0] = HX8279_PG_DIGITAL_GAMMA + i;
> +			cmd_set_dig_gamma[1] = dgamma->g[i];
> +			mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_dig_gamma,
> +						     ARRAY_SIZE(cmd_set_dig_gamma));
> +		}
> +
> +		ret = hx8279_set_page(hx, dsi_ctx, 9 + pg_neg);
> +		if (ret)
> +			return ret;
> +
> +		for (i = 0; i < ARRAY_SIZE(dgamma->b); i++) {
> +			cmd_set_dig_gamma[0] = HX8279_PG_DIGITAL_GAMMA + i;
> +			cmd_set_dig_gamma[1] = dgamma->b[i];
> +			mipi_dsi_generic_write_multi(dsi_ctx, cmd_set_dig_gamma,
> +						     ARRAY_SIZE(cmd_set_dig_gamma));
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_on(struct hx8279 *hx)
> +{
> +	struct mipi_dsi_device *dsi = hx->dsi[0];
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +	int ret;
> +
> +	/* Page 5 */
> +	ret = hx8279_set_mipi_cfg(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;

I would drop all the checks, yes the failure path would be
suboptimal but all dsi calls would be no-op and we can drop
a lof of checks that would be still executed in nominal case.

> +
> +	/* Page 1 */
> +	ret = hx8279_set_gmux(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	/* Page 2 */
> +	ret = hx8279_set_analog_gamma(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	/* Page 3 */
> +	ret = hx8279_set_goa_cfg(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	ret = hx8279_set_goa_timing(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	/* Page 0 - Driver/Module Configuration */
> +	ret = hx8279_set_module_config(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	/* Page 6 */
> +	ret = hx8279_set_adv_cfg(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	/* Pages 7..12 */
> +	ret = hx8279_set_digital_gamma(hx, &dsi_ctx);
> +	if (ret)
> +		return ret;
> +
> +	if (dsi_ctx.accum_err)
> +		return dsi_ctx.accum_err;

Directly return dsi_ctx.accum_err at the end of the function

> +
> +	return 0;
> +}
> +
> +static void hx8279_power_off(struct hx8279 *hx)
> +{
> +	gpiod_set_value_cansleep(hx->reset_gpio, 0);
> +	usleep_range(100, 500);
> +	gpiod_set_value_cansleep(hx->enable_gpio, 0);
> +	regulator_bulk_disable(ARRAY_SIZE(hx->vregs), hx->vregs);
> +}
> +
> +static int hx8279_disable(struct drm_panel *panel)
> +{
> +	struct hx8279 *hx = to_hx8279(panel);
> +	struct mipi_dsi_device *dsi = hx->dsi[0];
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +
> +	return 0;
> +}
> +
> +static int hx8279_enable(struct drm_panel *panel)
> +{
> +	struct hx8279 *hx = to_hx8279(panel);
> +	struct mipi_dsi_device *dsi = hx->dsi[0];
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +
> +	return 0;
> +}
> +
> +static int hx8279_prepare(struct drm_panel *panel)
> +{
> +	struct hx8279 *hx = to_hx8279(panel);
> +	struct mipi_dsi_device *dsi = hx->dsi[0];
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(hx->vregs), hx->vregs);
> +	if (ret)
> +		return ret;
> +
> +	gpiod_set_value_cansleep(hx->enable_gpio, 1);
> +	usleep_range(5000, 6000);
> +	gpiod_set_value_cansleep(hx->reset_gpio, 1);
> +	usleep_range(6000, 7000);
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +	if (hx->dsi[1])
> +		hx->dsi[1]->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	ret = hx8279_on(hx);
> +	if (ret) {
> +		hx8279_power_off(hx);
> +		return ret;
> +	}
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 130);
> +	return 0;

Return dsi_ctx.accum_err

> +}
> +
> +static int hx8279_unprepare(struct drm_panel *panel)
> +{
> +	struct hx8279 *hx = to_hx8279(panel);
> +	struct mipi_dsi_device *dsi = hx->dsi[0];
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 130);
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +	if (hx->dsi[1])
> +		hx->dsi[1]->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	hx8279_power_off(hx);
> +	return 0;

Return dsi_ctx.accum_err

> +}
> +
> +static int hx8279_get_modes(struct drm_panel *panel, struct drm_connector *connector)
> +{
> +	struct hx8279 *hx = to_hx8279(panel);
> +	int i;
> +
> +	for (i = 0; i < hx->desc->num_modes; i++) {
> +		struct drm_display_mode *mode;
> +
> +		mode = drm_mode_duplicate(connector->dev, &hx->desc->mode_data[i].mode);
> +		if (!mode)
> +			return -ENOMEM;
> +
> +		drm_mode_set_name(mode);
> +
> +		mode->type |= DRM_MODE_TYPE_DRIVER;
> +		if (hx->desc->num_modes == 1)
> +			mode->type |= DRM_MODE_TYPE_PREFERRED;
> +
> +		drm_mode_probed_add(connector, mode);
> +	}
> +
> +	connector->display_info.bpc = hx->desc->mode_data[0].bpc;
> +	connector->display_info.height_mm = hx->desc->mode_data[0].mode.height_mm;
> +	connector->display_info.width_mm = hx->desc->mode_data[0].mode.width_mm;
> +
> +	return hx->desc->num_modes;
> +}
> +
> +static const struct drm_panel_funcs hx8279_panel_funcs = {
> +	.disable = hx8279_disable,
> +	.unprepare = hx8279_unprepare,
> +	.prepare = hx8279_prepare,
> +	.enable = hx8279_enable,
> +	.get_modes = hx8279_get_modes,
> +};
> +
> +static int hx8279_init_vregs(struct hx8279 *hx, struct device *dev)
> +{
> +	int ret;
> +
> +	hx->vregs[0].supply = "vdd";
> +	hx->vregs[1].supply = "iovcc";
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(hx->vregs),
> +				      hx->vregs);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = regulator_is_supported_voltage(hx->vregs[0].consumer,
> +					     3000000, 5000000);
> +	if (!ret)
> +		return -EINVAL;
> +
> +	ret = regulator_is_supported_voltage(hx->vregs[1].consumer,
> +					     1700000, 1900000);
> +	if (!ret)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int hx8279_check_gmux_config(struct hx8279 *hx, struct device *dev)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	const struct hx8279_goa_mux *gmux = desc->gmux;
> +	int i;
> +
> +	/* No gmux defined means we simply skip the GOA mux configuration */
> +	if (!gmux)
> +		return 0;
> +
> +	for (i = 0; i < ARRAY_SIZE(gmux->gout_l); i++) {
> +		if (gmux->gout_l[i] > (HX8279_GOUT_STB | HX8279_GOUT_SEL))
> +			return dev_err_probe(dev, -EINVAL,
> +					     "Invalid value found in gout_l[%d]\n", i);
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(gmux->gout_r); i++) {
> +		if (gmux->gout_r[i] > (HX8279_GOUT_STB | HX8279_GOUT_SEL))
> +			return dev_err_probe(dev, -EINVAL,
> +					     "Invalid value found in gout_r[%d]\n", i);
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_check_goa_config(struct hx8279 *hx, struct device *dev)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	bool goa_odd_valid, goa_even_valid;
> +	int i, num_zero, num_clr = 0;
> +
> +	/* Up to 4 zero values is a valid configuration. Check them all. */
> +	num_zero = 1;
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_odd_timing); i++) {
> +		if (desc->goa_odd_timing[i])
> +			num_zero++;
> +	}
> +
> +	if (num_zero == ARRAY_SIZE(desc->goa_odd_timing))
> +		goa_odd_valid = false;
> +
> +	/* Up to 3 zeroes is a valid config. Check them all. */
> +	num_zero = 1;
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_even_timing); i++) {
> +		if (desc->goa_even_timing[i])
> +			num_zero++;
> +	}
> +
> +	if (num_zero == ARRAY_SIZE(desc->goa_even_timing))
> +		goa_even_valid = false;
> +
> +	/* Programming one without the other would make no sense! */
> +	if (goa_odd_valid != goa_even_valid)
> +		return -EINVAL;
> +
> +	/* We know that both are either true or false now, check just one */
> +	if (!goa_odd_valid)
> +		hx->skip_goa_timing = true;
> +
> +	if (!desc->goa_unk_ba && !desc->goa_stv_lead_time_ck &&
> +	    !desc->goa_ckv_lead_time_ck && !desc->goa_ckv_dummy_vblank_num &&
> +	    !desc->goa_ckv_rise_precharge && !desc->goa_ckv_fall_precharge &&
> +	    !desc->goa_clr1_width_adj && !desc->goa_clr234_width_adj &&
> +	    !desc->goa_unk_e4 && !desc->goa_unk_e5) {
> +		hx->skip_goa_config = true;
> +		return 0;
> +	}
> +
> +	if ((desc->goa_stv_lead_time_ck > HX8279_P3_GOA_STV_LEAD) ||
> +	    (desc->goa_ckv_lead_time_ck > HX8279_P3_GOA_CKV_LEAD) ||
> +	    (desc->goa_ckv_dummy_vblank_num > HX8279_P3_GOA_CKV_DUMMY))
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Invalid lead timings in GOA config\n");
> +
> +	/*
> +	 * Don't perform zero check for polarity and start position, as
> +	 * both pol=0 and start=0 are valid configuration values.
> +	 */
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_clr_start_pos); i++) {
> +		if (desc->goa_clr_start_pos[i] < 0)
> +			continue;
> +		else if (desc->goa_clr_start_pos[i] > HX8279_P3_GOA_CLR_CFG_STARTPOS)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "Invalid start position for CLR%d\n", i + 1);
> +		else
> +			num_clr++;
> +	}
> +	if (!num_clr)
> +		return -EINVAL;
> +
> +	for (i = 0; i < ARRAY_SIZE(desc->goa_clr_polarity); i++) {
> +		if (num_clr < 0)
> +			return -EINVAL;
> +
> +		if (desc->goa_clr_polarity[i] < 0)
> +			continue;
> +		else if (desc->goa_clr_polarity[i] > 1)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "Invalid polarity for CLR%d\n", i + 1);
> +		else
> +			num_clr--;
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_check_dig_gamma(struct hx8279 *hx, struct device *dev, const u8 *component)
> +{
> +	u8 gamma_high_bits[4];
> +	u16 prev_val = 0;
> +	int i, j, k, x;
> +
> +	/*
> +	 * The gamma values are 10 bits long and shall be incremental
> +	 * to form a digital gamma correction reference curve.
> +	 *
> +	 * As for the registers format: the first 24 bytes contain each the
> +	 * lowest 8 bits for each of the gamma level references, and the last
> +	 * 6 bytes contain the high two bits of 4 registers at a time, where
> +	 * the first two bits are relative to the last register, and the last
> +	 * two are relative to the first register.
> +	 *
> +	 * Another way of saying, those are the first four LOW values:
> +	 * DGMA1_LO = 0xb1, DGMA2_LO = 0xb2, DGMA3_LO = 0xb3, DGMA4_LO = 0xb4
> +	 *
> +	 * The high values for those four are at DGMA1_4_HI = 0xc9;
> +	 * ...and DGMA1_4_HI's data contains the following bits:
> +	 * [1:0] = DGMA4_HI, [3:2] = DGMA3_HI, [5:4] = DGMA2_HI, [7:6] = DGMA1_HI
> +	 */
> +	for (i = 0; i < HX8279_PG_DGAMMA_NUM_HI_BYTES; i++) {
> +		k = HX8279_PG_DGAMMA_NUM_LO_BYTES + i;
> +		j = i * 4;
> +		x = 0;
> +
> +		gamma_high_bits[0] = FIELD_GET(HX8279_DGAMMA_DGMA1_HI, component[k]);
> +		gamma_high_bits[1] = FIELD_GET(HX8279_DGAMMA_DGMA2_HI, component[k]);
> +		gamma_high_bits[2] = FIELD_GET(HX8279_DGAMMA_DGMA3_HI, component[k]);
> +		gamma_high_bits[3] = FIELD_GET(HX8279_DGAMMA_DGMA4_HI, component[k]);
> +
> +		do {
> +			u16 cur_val = component[j] | (gamma_high_bits[x] << 8);
> +
> +			if (cur_val < prev_val)
> +				return dev_err_probe(dev, -EINVAL,
> +						     "Invalid dgamma values: %u < %u!\n",
> +						     cur_val, prev_val);
> +			prev_val = cur_val;
> +			j++;
> +			x++;
> +		} while (x < 4);
> +	};
> +
> +	return 0;
> +}
> +
> +static int hx8279_check_params(struct hx8279 *hx, struct device *dev)
> +{
> +	const struct hx8279_panel_desc *desc = hx->desc;
> +	int ret;
> +
> +	/* Voltages config validation */
> +	if (!desc->vgh_mv && !desc->vgl_mv && !desc->vgph_mv && !desc->vgnh_mv)
> +		hx->skip_voltage_config = true;
> +	else if ((desc->vgh_mv && desc->vgh_mv < HX8279_VGH_MIN_MV) ||
> +		 (desc->vgl_mv && desc->vgl_mv < HX8279_VGL_MIN_MV) ||
> +		 (desc->vgph_mv && desc->vgph_mv < HX8279_VGPNH_MIN_MV) ||
> +		 (desc->vgnh_mv && desc->vgnh_mv < HX8279_VGPNH_MIN_MV))
> +			return -EINVAL;
> +
> +	/* GOA Muxing validation */
> +	ret = hx8279_check_gmux_config(hx, dev);
> +	if (ret)
> +		return ret;
> +
> +	/* GOA Configuration validation */
> +	ret = hx8279_check_goa_config(hx, dev);
> +	if (ret)
> +		return ret;
> +
> +	/* MIPI Configuration validation */
> +	if (!desc->bta_tlpx && !desc->lhs_settle_time_by_osc25 &&
> +	    !desc->ths_settle_time && !desc->timing_unk_b8 &&
> +	    !desc->timing_unk_bc && !desc->timing_unk_d6)
> +		hx->skip_mipi_timing = true;
> +
> +	/* ENG/Gamma Configuration validation */
> +	if (desc->gamma_ctl > (HX8279_P6_GAMMA_POCGM_CTL | HX8279_P6_GAMMA_POGCMD_CTL))
> +		return -EINVAL;
> +
> +	/* Digital Gamma values validation */
> +	if (desc->dgamma) {
> +		ret = hx8279_check_dig_gamma(hx, dev, desc->dgamma->r);
> +		if (ret)
> +			return ret;
> +
> +		ret = hx8279_check_dig_gamma(hx, dev, desc->dgamma->g);
> +		if (ret)
> +			return ret;
> +
> +		ret = hx8279_check_dig_gamma(hx, dev, desc->dgamma->b);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int hx8279_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct device_node *dsi_r;
> +	struct hx8279 *hx;
> +	int i, ret;
> +
> +	hx = devm_kzalloc(dev, sizeof(*hx), GFP_KERNEL);
> +	if (!hx)
> +		return -ENOMEM;
> +
> +	ret = hx8279_init_vregs(hx, dev);
> +	if (ret)
> +		return ret;
> +
> +	hx->desc = device_get_match_data(dev);
> +	if (!hx->desc)
> +		return -ENODEV;
> +
> +	/*
> +	 * In some DriverICs some or all fields may be OTP: perform a
> +	 * basic configuration check before writing to help avoiding
> +	 * irreparable mistakes.
> +	 *
> +	 * Please note that this is not perfect and will only check if
> +	 * the values may be plausible; values that are wrong for a
> +	 * specific display, but still plausible for DrIC config will
> +	 * be accepted.
> +	 */
> +	ret = hx8279_check_params(hx, dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Invalid DriverIC configuration\n");
> +
> +	/* The enable line may be always tied to VCCIO, so this is optional */
> +	hx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_ASIS);
> +	if (IS_ERR(hx->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(hx->enable_gpio),
> +				     "Failed to get enable GPIO\n");
> +
> +	hx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_ASIS);
> +	if (IS_ERR(hx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(hx->reset_gpio),
> +				     "Failed to get reset GPIO\n");
> +
> +	/* If the panel is connected on two DSIs then DSI0 left, DSI1 right */
> +	dsi_r = of_graph_get_remote_node(dsi->dev.of_node, 1, -1);
> +	if (dsi_r) {
> +		const struct mipi_dsi_device_info *info = &hx->desc->dsi_info;
> +		struct mipi_dsi_host *dsi_r_host;
> +
> +		dsi_r_host = of_find_mipi_dsi_host_by_node(dsi_r);
> +		of_node_put(dsi_r);
> +		if (!dsi_r_host)
> +			return dev_err_probe(dev, -EPROBE_DEFER,
> +					     "Cannot get secondary DSI host\n");
> +
> +		hx->dsi[1] = devm_mipi_dsi_device_register_full(dev, dsi_r_host, info);
> +		if (IS_ERR(hx->dsi[1]))
> +			return dev_err_probe(dev, PTR_ERR(hx->dsi[1]),
> +					     "Cannot get secondary DSI node\n");
> +		mipi_dsi_set_drvdata(hx->dsi[1], hx);
> +	}
> +
> +	hx->dsi[0] = dsi;
> +	mipi_dsi_set_drvdata(dsi, hx);
> +
> +	drm_panel_init(&hx->panel, dev, &hx8279_panel_funcs, DRM_MODE_CONNECTOR_DSI);

Can you switch to devm_drm_panel_alloc() ?

> +
> +	ret = drm_panel_of_backlight(&hx->panel);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get backlight\n");
> +
> +	drm_panel_add(&hx->panel);
> +
> +	for (i = 0; i < 2; i++) {
> +		if (!hx->dsi[i])
> +			continue;
> +
> +		hx->dsi[i]->lanes = hx->desc->num_lanes;
> +		hx->dsi[i]->format = MIPI_DSI_FMT_RGB888;
> +
> +		hx->dsi[i]->mode_flags = MIPI_DSI_CLOCK_NON_CONTINUOUS |
> +					 MIPI_DSI_MODE_LPM;
> +
> +		if (hx->desc->mode_data[0].is_video_mode)
> +			hx->dsi[i]->mode_flags |= MIPI_DSI_MODE_VIDEO |
> +						  MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
> +
> +		ret = devm_mipi_dsi_attach(dev, hx->dsi[i]);
> +		if (ret < 0) {
> +			drm_panel_remove(&hx->panel);
> +			return dev_err_probe(dev, ret,
> +					     "Cannot attach to DSI%d host.\n", i);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void hx8279_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct hx8279 *hx = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&hx->panel);
> +}
> +
> +static const struct hx8279_panel_mode aoly_sl101pm1794fog_v15_modes[] = {
> +	{
> +		.mode = {
> +			.clock = 159420,
> +			.hdisplay = 1200,
> +			.hsync_start = 1200 + 80,
> +			.hsync_end = 1200 + 80 + 60,
> +			.htotal = 1200 + 80 + 60 + 24,
> +			.vdisplay = 1920,
> +			.vsync_start = 1920 + 10,
> +			.vsync_end = 1920 + 10 + 14,
> +			.vtotal = 1920 + 10 + 14 + 4,
> +			.width_mm = 136,
> +			.height_mm = 217,
> +			.type = DRM_MODE_TYPE_DRIVER
> +		},
> +		.bpc = 8,
> +		.is_video_mode = true,
> +	},
> +};
> +
> +static const struct hx8279_panel_mode startek_kd070fhfid078_modes[] = {
> +	{
> +		.mode = {
> +			.clock = 156458,
> +			.hdisplay = 1200,
> +			.hsync_start = 1200 + 50,
> +			.hsync_end = 1200 + 50 + 24,
> +			.htotal = 1200 + 50 + 24 + 66,
> +			.vdisplay = 1920,
> +			.vsync_start = 1920 + 14,
> +			.vsync_end = 1920 + 14 + 2,
> +			.vtotal = 1920 + 14 + 2 + 10,
> +			.width_mm = 95,
> +			.height_mm = 151,
> +			.type = DRM_MODE_TYPE_DRIVER
> +		},
> +		.bpc = 8,
> +		.is_video_mode = true,
> +	},
> +};
> +
> +static const struct hx8279_goa_mux aoly_sl101pm1794fog_v15_gmux =
> +{
> +	.gout_l = { 0x5, 0x5, 0xb, 0xb, 0x9, 0x9, 0x16, 0x16, 0xe, 0xe,
> +		    0x7, 0x7, 0x26, 0x26, 0x15, 0x15, 0x1, 0x1, 0x3, 0x3 },
> +	.gout_r = { 0x6, 0x6, 0xc, 0xc, 0xa, 0xa, 0x16, 0x16, 0xe, 0xe,
> +		    0x8, 0x8, 0x26, 0x26, 0x15, 0x15, 0x2, 0x2, 0x4, 0x4 },
> +};
> +
> +static const struct hx8279_analog_gamma aoly_sl101pm1794fog_v15_ana_gamma =
> +{
> +	.pos = { 0x0, 0xd, 0x17, 0x26, 0x31, 0x1c, 0x2c, 0x33, 0x31,
> +		 0x37, 0x37, 0x37, 0x39, 0x2e, 0x2f, 0x2f, 0x7 },
> +	.neg = { 0x0, 0xd, 0x17, 0x26, 0x31, 0x3f, 0x3f, 0x3f, 0x3f,
> +		 0x37, 0x37, 0x37, 0x39, 0x2e, 0x2f, 0x2f, 0x7 },
> +};
> +
> +static const struct hx8279_digital_gamma aoly_sl101pm1794fog_v15_dig_gamma =
> +{
> +	.r = { 0x0, 0x5, 0x10, 0x22, 0x36, 0x4a, 0x6c, 0x9a, 0xd7, 0x17,
> +	       0x92, 0x15, 0x18, 0x8c, 0x0, 0x3a, 0x72, 0x8c, 0xa5, 0xb1,
> +	       0xbe, 0xca, 0xd1, 0xd4, 0x0, 0x0, 0x16, 0xaf, 0xff, 0xff },
> +	.g = { 0x4, 0x5, 0x11, 0x24, 0x39, 0x4e, 0x72, 0xa3, 0xe1, 0x25,
> +	       0xa8, 0x2e, 0x32, 0xad, 0x28, 0x63, 0x9b, 0xb5, 0xcf, 0xdb,
> +	       0xe8, 0xf5, 0xfa, 0xfc, 0x0, 0x0, 0x16, 0xaf, 0xff, 0xff },
> +	.b = { 0x4, 0x4, 0xf, 0x22, 0x37, 0x4d, 0x71, 0xa2, 0xe1, 0x26,
> +	       0xa9, 0x2f, 0x33, 0xac, 0x24, 0x5d, 0x94, 0xac, 0xc5, 0xd1,
> +	       0xdc, 0xe8, 0xed, 0xf0, 0x0, 0x0, 0x16, 0xaf, 0xff, 0xff },
> +};
> +
> +static const struct hx8279_panel_desc aoly_sl101pm1794fog_v15 = {
> +	.dsi_info = {
> +		.type = "L101PM1794FOG-V15",
> +		.channel = 0,
> +		.node = NULL,
> +	},
> +	.mode_data = aoly_sl101pm1794fog_v15_modes,
> +	.num_modes = ARRAY_SIZE(aoly_sl101pm1794fog_v15_modes),
> +	.num_lanes = 4,
> +
> +	/* Driver/Module Configuration: LC Matrix voltages */
> +	.vgh_mv = 16500,
> +	.vgl_mv = 11200,
> +	.vgph_mv = 4600,
> +	.vgnh_mv = 4600,
> +
> +	/* Analog Gamma correction */
> +	.agamma = &aoly_sl101pm1794fog_v15_ana_gamma,
> +
> +	/* Gate driver On Array (GOA) Muxing */
> +	.gmux = &aoly_sl101pm1794fog_v15_gmux,
> +
> +	/* Gate driver On Array (GOA) Mux Config */
> +	.goa_unk_ba = 0xf0,
> +	.goa_odd_timing = { 0, 0, 0, 42, 0, 0 },
> +	.goa_even_timing = { 1, 42, 0, 0 },
> +	.goa_stv_lead_time_ck = 11,
> +	.goa_ckv_lead_time_ck = 7,
> +	.goa_ckv_dummy_vblank_num = 3,
> +	.goa_ckv_rise_precharge = 1,
> +	.goa_clr1_width_adj = 0,
> +	.goa_clr234_width_adj = 0,
> +	.goa_clr_polarity = { 1, 0, 0, 0 },
> +	.goa_clr_start_pos = { 8, 9, 3, 4 },
> +	.goa_unk_e4 = 0xc0,
> +	.goa_unk_e5 = 0x0d,
> +
> +	/* MIPI Configuration */
> +	.bta_tlpx = 2,
> +	.lhs_settle_time_by_osc25 = true,
> +	.ths_settle_time = 2,
> +	.timing_unk_b8 = 0xa5,
> +	.timing_unk_bc = 0x20,
> +	.timing_unk_d6 = 0x7f,
> +
> +	/* ENG/Gamma Configuration */
> +	.gamma_ctl = 0,
> +	.volt_adj = FIELD_PREP_CONST(HX8279_P6_VOLT_ADJ_VCCIFS, 3) |
> +		    FIELD_PREP_CONST(HX8279_P6_VOLT_ADJ_VCCS, 3),
> +	.src_delay_time_adj_ck = 50,
> +
> +	/* Digital Gamma Adjustment */
> +	.dgamma = &aoly_sl101pm1794fog_v15_dig_gamma,
> +};
> +
> +static const struct hx8279_goa_mux startek_kd070fhfid078_gmux =
> +{
> +	.gout_l = { 0xd, 0xd, 0x6, 0x6, 0x8, 0x8, 0xa, 0xa, 0xc, 0xc,
> +		    0x0, 0x0, 0xe, 0xe, 0x1, 0x1, 0x4, 0x4, 0x0, 0x0 },
> +	.gout_r = { 0xd, 0xd, 0x5, 0x5, 0x7, 0x7, 0x9, 0x9, 0xb, 0xb,
> +		    0x0, 0x0, 0xe, 0xe, 0x1, 0x1, 0x3, 0x3, 0x0, 0x0 },
> +};
> +
> +static const struct hx8279_panel_desc startek_kd070fhfid078 = {
> +	.dsi_info = {
> +		.type = "KD070FHFID078",
> +		.channel = 0,
> +		.node = NULL,
> +	},
> +	.mode_data = startek_kd070fhfid078_modes,
> +	.num_modes = ARRAY_SIZE(startek_kd070fhfid078_modes),
> +	.num_lanes = 4,
> +
> +	/* Driver/Module Configuration: LC Matrix voltages */
> +	.vgh_mv = 18000,
> +	.vgl_mv = 12100,
> +	.vgph_mv = 5500,
> +	.vgnh_mv = 5500,
> +
> +	/* Gate driver On Array (GOA) Mux Config */
> +	.gmux = &startek_kd070fhfid078_gmux,
> +
> +	/* Gate driver On Array (GOA) Configuration */
> +	.goa_unk_ba = 0xf0,
> +	.goa_stv_lead_time_ck = 7,
> +	.goa_ckv_lead_time_ck = 3,
> +	.goa_ckv_dummy_vblank_num = 1,
> +	.goa_ckv_rise_precharge = 0,
> +	.goa_ckv_fall_precharge = 0,
> +	.goa_clr1_width_adj = 1,
> +	.goa_clr234_width_adj = 5,
> +	.goa_clr_polarity = { 0, 1, -1, -1 },
> +	.goa_clr_start_pos = { 5, 10, -1, -1 },
> +	.goa_unk_e4 = 0xc0,
> +	.goa_unk_e5 = 0x00,
> +
> +	/* MIPI Configuration */
> +	.bta_tlpx = 2,
> +	.lhs_settle_time_by_osc25 = true,
> +	.ths_settle_time = 2,
> +	.timing_unk_b8 = 0x7f,
> +	.timing_unk_bc = 0x20,
> +	.timing_unk_d6 = 0x7f,
> +
> +	/* ENG/Gamma Configuration */
> +	.gamma_ctl = FIELD_PREP_CONST(HX8279_P6_GAMMA_POCGM_CTL, 1) |
> +		     FIELD_PREP_CONST(HX8279_P6_GAMMA_POGCMD_CTL, 1),
> +	.src_delay_time_adj_ck = 72,
> +};
> +
> +static const struct of_device_id hx8279_of_match[] = {
> +	{ .compatible = "aoly,sl101pm1794fog-v15", .data = &aoly_sl101pm1794fog_v15 },
> +	{ .compatible = "startek,kd070fhfid078", .data = &startek_kd070fhfid078 },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, hx8279_of_match);
> +
> +static struct mipi_dsi_driver hx8279_driver = {
> +	.probe = hx8279_probe,
> +	.remove = hx8279_remove,
> +	.driver = {
> +		.name = "panel-himax-hx8279",
> +		.of_match_table = hx8279_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(hx8279_driver);
> +
> +MODULE_AUTHOR("AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>");
> +MODULE_DESCRIPTION("Himax HX8279 DriverIC panels driver");
> +MODULE_LICENSE("GPL");

Thanks for this very nice driver, very well documented an clean :-)

Some bits to change for the dsi_multi handling, but overall very good!

Neil

