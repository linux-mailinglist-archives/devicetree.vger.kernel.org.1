Return-Path: <devicetree+bounces-124926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8139DA592
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4911A1643C9
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C5F195F22;
	Wed, 27 Nov 2024 10:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FoiKujRh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DE4198E80
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732702617; cv=none; b=BeUE0PCzUScEykqMp8AIrnopJ2e3G7xRvCcDwZkWiJuDYizD/3wha09MoIt9eH32QHriru27g3pBrl8Wh25W1q6UvCpyse9qH+xhApjTag77pA4w06kB95dHNMBRENgk2MHwPpO80FeuX6FYGvNjVhrL6vAEcNbWQ63ehPVXGuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732702617; c=relaxed/simple;
	bh=CpV4TC2URlu00Pe/ojwLEvpDCru7ms4QpcUGeDWrUo0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EGMkBu0Z3lvAAlUdlPDKFg6txC7RdppnK/geHMoYnbTa/6hTSk9sH4QRob1Wwg3tfXpj2fK6o9J7WKmsKVE/x5cjjHZiat0/2LblhKGOoWt/0pNyXeQ0Zhfr9NWsL+E0kYFOaDKpquhecYAq/FX7B84fagtQlQTqw5KaBv3pbGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FoiKujRh; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37ed3bd6114so3962102f8f.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732702611; x=1733307411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KAmvZunhNfSKaJMERKHNZmWl3gntS509C8IJ8XiBSeM=;
        b=FoiKujRhuzxUJ2YCuNtaqVqX5mzlqYV2LM9bJMBdNtG2xQUIzSfdJ4eMOy/EXvZTVs
         3eCqXiP6eficXGwyKxM7J9NXEuRgo2K5ky1ewF5HVyiakNIElB/dE6R1+5yaXdMDJ+t1
         QtwNYkYOSCYLnt7muxxF4veSaVsNtHXGN48xzJHTdpJwPRmmlkCz+agFeLuGfrQmivGy
         z4w/O2u+RTby6VaPnMF7Vb25uJS54LkyzXxoS7Nd2GObAroLBWOk0566dAgNs6/bJ34G
         qzAYlifWkSyvp3pc4b5VlLHd2++vamV1neQ/Ax1JomKdwIwxdIrK9D/h9iV8OrAjmLok
         HFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732702611; x=1733307411;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KAmvZunhNfSKaJMERKHNZmWl3gntS509C8IJ8XiBSeM=;
        b=HazT4R8MhZs6FKp66W6OeCbnMMuST0gPyHQKVZw830tW4eMwdxf1rQ6tY9vj+KWsSa
         bJqzwa2UrXDtK3fzyUblHf4d53JYVEUTuXn3DJnePgIhCbjwohAuKLowV9KskhDIO+WM
         +dtK3qJsKwRo9xEwLkf+hzanPrJPW5nkioKQDyDOqLA9avHaB4/KOJkq9MX86q9eA+dX
         UcI0AXWWbac36f4AVOIc7u9xI9czGEI9PbOBQlE7dogGAqzGdTKMZPejlCkQZenz9BsY
         WsXcP2O8qXnA+K5HEZVkOywEaROgNU7bkSO9E3Ea2kXONFSzwd3jHQGnOZpuoRaiKeKY
         1u1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqqTZMdYb2Y0iJdS+ZaOmOmLoEJ8zU29gHR08XY1pdrcaFBiYv+OVrIcHi3QrMNvTeYCzL2xtTkHoh@vger.kernel.org
X-Gm-Message-State: AOJu0YyXxMRdh0oismz+vu0PSEPqhsquJWJskxQUJsw7mHD84ik0REDu
	2/JcnR1iJKoaOtUzTDLyL9l3mv5Y4uVmHiqu8M8r3rXQk8/k8bR0g5onIziRyA8=
X-Gm-Gg: ASbGncvWvcZvoAPrLFpajR/ShyX+3DWnVb3QOOqzRQZN69iBdgmZCLIqBF4eLYXqUMS
	gBDq9Jlm/zsD7H48+l5RoL0lvC23MUgwCQIpIRAKUU4oDoSieu53biQVLQnSjdwXBmQp86HXydW
	dvAvZ99h4lrCG5UMDIRKNv86VxeUtJFVvVN8Ok9YWvdw2JdtneWxingQU43yQA1e7qIUh2l2iK1
	1kjDRjnW+qTtoafzw5pw/cxuDKhDOEtX1gotPyFtfnCrh7f2+8uHPPri2JCq9D8lSc/XthwuJzj
	EiudZG8p7DryHT3CyNHyeGI6dgQ=
X-Google-Smtp-Source: AGHT+IFwKMKMIUk+3KQVgsY4eAhYULVqt7T7JXzmU+YJZGAVggwvmjbCvUPmUsDwDRevs8ShSr2/Lw==
X-Received: by 2002:a05:6000:1865:b0:382:4eef:270 with SMTP id ffacd0b85a97d-385c6eb7283mr1971209f8f.16.1732702611260;
        Wed, 27 Nov 2024 02:16:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8ad2:e64c:f150:ebc6? ([2a01:e0a:982:cbb0:8ad2:e64c:f150:ebc6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fb27386sm15987952f8f.51.2024.11.27.02.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 02:16:50 -0800 (PST)
Message-ID: <994e3195-1237-4388-8559-6e2cc1da3687@linaro.org>
Date: Wed, 27 Nov 2024 11:16:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/3] drm/bridge/synopsys: Add MIPI DSI2 host controller
 bridge
To: Heiko Stuebner <heiko@sntech.de>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>,
 Daniel Semkowicz <dse@thaumatec.com>
References: <20241126201213.522753-1-heiko@sntech.de>
 <20241126201213.522753-2-heiko@sntech.de>
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
In-Reply-To: <20241126201213.522753-2-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/11/2024 21:12, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Add a Synopsys Designware MIPI DSI host DRM bridge driver for their
> DSI2 host controller, based on the Rockchip version from the driver
> rockchip/dw-mipi-dsi2.c in their vendor-kernel with phy & bridge APIs.
> 
> While the driver is heavily modelled after the previous IP, the register
> set of this DSI2 controller is completely different and there are also
> additional properties like the variable-width phy interface.
> 
> Tested-by: Daniel Semkowicz <dse@thaumatec.com>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>   drivers/gpu/drm/bridge/synopsys/Kconfig       |    6 +
>   drivers/gpu/drm/bridge/synopsys/Makefile      |    1 +
>   .../gpu/drm/bridge/synopsys/dw-mipi-dsi2.c    | 1030 +++++++++++++++++
>   include/drm/bridge/dw_mipi_dsi2.h             |   95 ++
>   4 files changed, 1132 insertions(+)
>   create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c
>   create mode 100644 include/drm/bridge/dw_mipi_dsi2.h
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
> index ca416dab156d..f3ab2f985f8c 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Kconfig
> +++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
> @@ -59,3 +59,9 @@ config DRM_DW_MIPI_DSI
>   	select DRM_KMS_HELPER
>   	select DRM_MIPI_DSI
>   	select DRM_PANEL_BRIDGE
> +
> +config DRM_DW_MIPI_DSI2
> +	tristate
> +	select DRM_KMS_HELPER
> +	select DRM_MIPI_DSI
> +	select DRM_PANEL_BRIDGE
> diff --git a/drivers/gpu/drm/bridge/synopsys/Makefile b/drivers/gpu/drm/bridge/synopsys/Makefile
> index 9869d9651ed1..9dc376d220ad 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Makefile
> +++ b/drivers/gpu/drm/bridge/synopsys/Makefile
> @@ -8,3 +8,4 @@ obj-$(CONFIG_DRM_DW_HDMI_CEC) += dw-hdmi-cec.o
>   obj-$(CONFIG_DRM_DW_HDMI_QP) += dw-hdmi-qp.o
>   
>   obj-$(CONFIG_DRM_DW_MIPI_DSI) += dw-mipi-dsi.o
> +obj-$(CONFIG_DRM_DW_MIPI_DSI2) += dw-mipi-dsi2.o
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c
> new file mode 100644
> index 000000000000..099cf812650a
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c
> @@ -0,0 +1,1030 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2024, Fuzhou Rockchip Electronics Co., Ltd
> + *
> + * Modified by Heiko Stuebner <heiko.stuebner@cherry.de>
> + * This generic Synopsys DesignWare MIPI DSI2 host driver is based on the
> + * Rockchip version from rockchip/dw-mipi-dsi2.c converted to use bridge APIs.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/iopoll.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/bridge/dw_mipi_dsi2.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_print.h>
> +
> +

Nit: spurious line

> +#define DSI2_PWR_UP			0x000c
> +#define RESET				0
> +#define POWER_UP			BIT(0)
> +#define CMD_TX_MODE(x)			FIELD_PREP(BIT(24), x)
> +#define DSI2_SOFT_RESET			0x0010
> +#define SYS_RSTN			BIT(2)
> +#define PHY_RSTN			BIT(1)
> +#define IPI_RSTN			BIT(0)
> +#define INT_ST_MAIN			0x0014
> +#define DSI2_MODE_CTRL			0x0018
> +#define DSI2_MODE_STATUS		0x001c
> +#define DSI2_CORE_STATUS		0x0020
> +#define PRI_RD_DATA_AVAIL		BIT(26)
> +#define PRI_FIFOS_NOT_EMPTY		BIT(25)
> +#define PRI_BUSY			BIT(24)
> +#define CRI_RD_DATA_AVAIL		BIT(18)
> +#define CRT_FIFOS_NOT_EMPTY		BIT(17)
> +#define CRI_BUSY			BIT(16)
> +#define IPI_FIFOS_NOT_EMPTY		BIT(9)
> +#define IPI_BUSY			BIT(8)
> +#define CORE_FIFOS_NOT_EMPTY		BIT(1)
> +#define CORE_BUSY			BIT(0)
> +#define MANUAL_MODE_CFG			0x0024
> +#define MANUAL_MODE_EN			BIT(0)
> +#define DSI2_TIMEOUT_HSTX_CFG		0x0048
> +#define TO_HSTX(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_HSTXRDY_CFG	0x004c
> +#define TO_HSTXRDY(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_LPRX_CFG		0x0050
> +#define TO_LPRXRDY(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_LPTXRDY_CFG	0x0054
> +#define TO_LPTXRDY(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_LPTXTRIG_CFG	0x0058
> +#define TO_LPTXTRIG(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_LPTXULPS_CFG	0x005c
> +#define TO_LPTXULPS(x)			FIELD_PREP(GENMASK(15, 0), x)
> +#define DSI2_TIMEOUT_BTA_CFG		0x60
> +#define TO_BTA(x)			FIELD_PREP(GENMASK(15, 0), x)
> +
> +#define DSI2_PHY_MODE_CFG		0x0100
> +#define PPI_WIDTH(x)			FIELD_PREP(GENMASK(9, 8), x)
> +#define PHY_LANES(x)			FIELD_PREP(GENMASK(5, 4), (x) - 1)
> +#define PHY_TYPE(x)			FIELD_PREP(BIT(0), x)
> +#define DSI2_PHY_CLK_CFG		0X0104
> +#define PHY_LPTX_CLK_DIV(x)		FIELD_PREP(GENMASK(12, 8), x)
> +#define CLK_TYPE_MASK			BIT(0)
> +#define NON_CONTINUOUS_CLK		BIT(0)
> +#define CONTINUOUS_CLK			0
> +#define DSI2_PHY_LP2HS_MAN_CFG		0x010c
> +#define PHY_LP2HS_TIME(x)		FIELD_PREP(GENMASK(28, 0), x)
> +#define DSI2_PHY_HS2LP_MAN_CFG		0x0114
> +#define PHY_HS2LP_TIME(x)		FIELD_PREP(GENMASK(28, 0), x)
> +#define DSI2_PHY_MAX_RD_T_MAN_CFG	0x011c
> +#define PHY_MAX_RD_TIME(x)		FIELD_PREP(GENMASK(26, 0), x)
> +#define DSI2_PHY_ESC_CMD_T_MAN_CFG	0x0124
> +#define PHY_ESC_CMD_TIME(x)		FIELD_PREP(GENMASK(28, 0), x)
> +#define DSI2_PHY_ESC_BYTE_T_MAN_CFG	0x012c
> +#define PHY_ESC_BYTE_TIME(x)		FIELD_PREP(GENMASK(28, 0), x)
> +
> +#define DSI2_PHY_IPI_RATIO_MAN_CFG	0x0134
> +#define PHY_IPI_RATIO(x)		FIELD_PREP(GENMASK(21, 0), x)
> +#define DSI2_PHY_SYS_RATIO_MAN_CFG	0x013C
> +#define PHY_SYS_RATIO(x)		FIELD_PREP(GENMASK(16, 0), x)
> +
> +#define DSI2_DSI_GENERAL_CFG		0x0200
> +#define BTA_EN				BIT(1)
> +#define EOTP_TX_EN			BIT(0)
> +#define DSI2_DSI_VCID_CFG		0x0204
> +#define TX_VCID(x)			FIELD_PREP(GENMASK(1, 0), x)
> +#define DSI2_DSI_SCRAMBLING_CFG		0x0208
> +#define SCRAMBLING_SEED(x)		FIELD_PREP(GENMASK(31, 16), x)
> +#define SCRAMBLING_EN			BIT(0)
> +#define DSI2_DSI_VID_TX_CFG		0x020c
> +#define LPDT_DISPLAY_CMD_EN		BIT(20)
> +#define BLK_VFP_HS_EN			BIT(14)
> +#define BLK_VBP_HS_EN			BIT(13)
> +#define BLK_VSA_HS_EN			BIT(12)
> +#define BLK_HFP_HS_EN			BIT(6)
> +#define BLK_HBP_HS_EN			BIT(5)
> +#define BLK_HSA_HS_EN			BIT(4)
> +#define VID_MODE_TYPE(x)		FIELD_PREP(GENMASK(1, 0), x)
> +#define DSI2_CRI_TX_HDR			0x02c0
> +#define CMD_TX_MODE(x)			FIELD_PREP(BIT(24), x)
> +#define DSI2_CRI_TX_PLD			0x02c4
> +#define DSI2_CRI_RX_HDR			0x02c8
> +#define DSI2_CRI_RX_PLD			0x02cc
> +
> +#define DSI2_IPI_COLOR_MAN_CFG		0x0300
> +#define IPI_DEPTH(x)			FIELD_PREP(GENMASK(7, 4), x)
> +#define IPI_DEPTH_5_6_5_BITS		0x02
> +#define IPI_DEPTH_6_BITS		0x03
> +#define IPI_DEPTH_8_BITS		0x05
> +#define IPI_DEPTH_10_BITS		0x06
> +#define IPI_FORMAT(x)			FIELD_PREP(GENMASK(3, 0), x)
> +#define IPI_FORMAT_RGB			0x0
> +#define IPI_FORMAT_DSC			0x0b
> +#define DSI2_IPI_VID_HSA_MAN_CFG	0x0304
> +#define VID_HSA_TIME(x)			FIELD_PREP(GENMASK(29, 0), x)
> +#define DSI2_IPI_VID_HBP_MAN_CFG	0x030c
> +#define VID_HBP_TIME(x)			FIELD_PREP(GENMASK(29, 0), x)
> +#define DSI2_IPI_VID_HACT_MAN_CFG	0x0314
> +#define VID_HACT_TIME(x)		FIELD_PREP(GENMASK(29, 0), x)
> +#define DSI2_IPI_VID_HLINE_MAN_CFG	0x031c
> +#define VID_HLINE_TIME(x)		FIELD_PREP(GENMASK(29, 0), x)
> +#define DSI2_IPI_VID_VSA_MAN_CFG	0x0324
> +#define VID_VSA_LINES(x)		FIELD_PREP(GENMASK(9, 0), x)
> +#define DSI2_IPI_VID_VBP_MAN_CFG	0X032C
> +#define VID_VBP_LINES(x)		FIELD_PREP(GENMASK(9, 0), x)
> +#define DSI2_IPI_VID_VACT_MAN_CFG	0X0334
> +#define VID_VACT_LINES(x)		FIELD_PREP(GENMASK(13, 0), x)
> +#define DSI2_IPI_VID_VFP_MAN_CFG	0X033C
> +#define VID_VFP_LINES(x)		FIELD_PREP(GENMASK(9, 0), x)
> +#define DSI2_IPI_PIX_PKT_CFG		0x0344
> +#define MAX_PIX_PKT(x)			FIELD_PREP(GENMASK(15, 0), x)
> +
> +#define DSI2_INT_ST_PHY			0x0400
> +#define DSI2_INT_MASK_PHY		0x0404
> +#define DSI2_INT_ST_TO			0x0410
> +#define DSI2_INT_MASK_TO		0x0414
> +#define DSI2_INT_ST_ACK			0x0420
> +#define DSI2_INT_MASK_ACK		0x0424
> +#define DSI2_INT_ST_IPI			0x0430
> +#define DSI2_INT_MASK_IPI		0x0434
> +#define DSI2_INT_ST_FIFO		0x0440
> +#define DSI2_INT_MASK_FIFO		0x0444
> +#define DSI2_INT_ST_PRI			0x0450
> +#define DSI2_INT_MASK_PRI		0x0454
> +#define DSI2_INT_ST_CRI			0x0460
> +#define DSI2_INT_MASK_CRI		0x0464
> +#define DSI2_INT_FORCE_CRI		0x0468
> +#define DSI2_MAX_REGISGER		DSI2_INT_FORCE_CRI
> +
> +#define MODE_STATUS_TIMEOUT_US		10000
> +#define CMD_PKT_STATUS_TIMEOUT_US	20000
> +
> +enum vid_mode_type {
> +	VID_MODE_TYPE_NON_BURST_SYNC_PULSES,
> +	VID_MODE_TYPE_NON_BURST_SYNC_EVENTS,
> +	VID_MODE_TYPE_BURST,
> +};
> +
> +enum mode_ctrl {
> +	IDLE_MODE,
> +	AUTOCALC_MODE,
> +	COMMAND_MODE,
> +	VIDEO_MODE,
> +	DATA_STREAM_MODE,
> +	VIDEO_TEST_MODE,
> +	DATA_STREAM_TEST_MODE,
> +};
> +
> +enum ppi_width {
> +	PPI_WIDTH_8_BITS,
> +	PPI_WIDTH_16_BITS,
> +	PPI_WIDTH_32_BITS,
> +};
> +
> +struct cmd_header {
> +	u8 cmd_type;
> +	u8 delay;
> +	u8 payload_length;
> +};
> +
> +struct dw_mipi_dsi2 {
> +	struct drm_bridge bridge;
> +	struct mipi_dsi_host dsi_host;
> +	struct drm_bridge *panel_bridge;
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct clk *pclk;
> +	struct clk *sys_clk;
> +
> +	unsigned int lane_mbps; /* per lane */
> +	u32 channel;
> +	u32 lanes;
> +	u32 format;
> +	unsigned long mode_flags;
> +
> +	struct drm_display_mode mode;
> +	const struct dw_mipi_dsi2_plat_data *plat_data;
> +};
> +
> +static inline struct dw_mipi_dsi2 *host_to_dsi2(struct mipi_dsi_host *host)
> +{
> +	return container_of(host, struct dw_mipi_dsi2, dsi_host);
> +}
> +
> +static inline struct dw_mipi_dsi2 *bridge_to_dsi2(struct drm_bridge *bridge)
> +{
> +	return container_of(bridge, struct dw_mipi_dsi2, bridge);
> +}
> +
> +static int cri_fifos_wait_avail(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 sts, mask;
> +	int ret;
> +
> +	mask = CRI_BUSY | CRT_FIFOS_NOT_EMPTY;
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_CORE_STATUS, sts,
> +				       !(sts & mask), 0, CMD_PKT_STATUS_TIMEOUT_US);
> +	if (ret < 0) {
> +		dev_err(dsi2->dev, "command interface is busy\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void dw_mipi_dsi2_set_vid_mode(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 val = 0, mode;
> +	int ret;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HFP)
> +		val |= BLK_HFP_HS_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HBP)
> +		val |= BLK_HBP_HS_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HSA)
> +		val |= BLK_HSA_HS_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
> +		val |= VID_MODE_TYPE_BURST;
> +	else if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> +		val |= VID_MODE_TYPE_NON_BURST_SYNC_PULSES;
> +	else
> +		val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
> +
> +	regmap_write(dsi2->regmap, DSI2_DSI_VID_TX_CFG, val);
> +
> +	regmap_write(dsi2->regmap, DSI2_MODE_CTRL, VIDEO_MODE);
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_MODE_STATUS,
> +				       mode, mode & VIDEO_MODE,
> +				       1000, MODE_STATUS_TIMEOUT_US);
> +	if (ret < 0)
> +		dev_err(dsi2->dev, "failed to enter video mode\n");
> +}
> +
> +static void dw_mipi_dsi2_set_data_stream_mode(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 mode;
> +	int ret;
> +
> +	regmap_write(dsi2->regmap, DSI2_MODE_CTRL, DATA_STREAM_MODE);
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_MODE_STATUS,
> +				       mode, mode & DATA_STREAM_MODE,
> +				       1000, MODE_STATUS_TIMEOUT_US);
> +	if (ret < 0)
> +		dev_err(dsi2->dev, "failed to enter data stream mode\n");
> +}
> +
> +static void dw_mipi_dsi2_set_cmd_mode(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 mode;
> +	int ret;
> +
> +	regmap_write(dsi2->regmap, DSI2_MODE_CTRL, COMMAND_MODE);
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_MODE_STATUS,
> +				       mode, mode & COMMAND_MODE,
> +				       1000, MODE_STATUS_TIMEOUT_US);
> +	if (ret < 0)
> +		dev_err(dsi2->dev, "failed to enter data stream mode\n");
> +}
> +
> +static void dw_mipi_dsi2_host_softrst(struct dw_mipi_dsi2 *dsi2)
> +{
> +	regmap_write(dsi2->regmap, DSI2_SOFT_RESET, 0x0);
> +	usleep_range(50, 100);
> +	regmap_write(dsi2->regmap, DSI2_SOFT_RESET,
> +		   SYS_RSTN | PHY_RSTN | IPI_RSTN);
> +}
> +
> +static void dw_mipi_dsi2_phy_clk_mode_cfg(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 sys_clk, esc_clk_div;
> +	u32 val = 0;
> +
> +	/*
> +	 * clk_type should be NON_CONTINUOUS_CLK before
> +	 * initial deskew calibration be sent.
> +	 */
> +	val |= NON_CONTINUOUS_CLK;
> +
> +	/* The maximum value of the escape clock frequency is 20MHz */
> +	sys_clk = clk_get_rate(dsi2->sys_clk) / USEC_PER_SEC;
> +	esc_clk_div = DIV_ROUND_UP(sys_clk, 20 * 2);
> +	val |= PHY_LPTX_CLK_DIV(esc_clk_div);
> +
> +	regmap_write(dsi2->regmap, DSI2_PHY_CLK_CFG, val);
> +}
> +
> +static void dw_mipi_dsi2_phy_ratio_cfg(struct dw_mipi_dsi2 *dsi2)
> +{
> +	struct drm_display_mode *mode = &dsi2->mode;
> +	u64 sys_clk = clk_get_rate(dsi2->sys_clk);
> +	u64 pixel_clk, ipi_clk, phy_hsclk;
> +	u64 tmp;
> +
> +	/*
> +	 * in DPHY mode, the phy_hstx_clk is exactly 1/16 the Lane high-speed
> +	 * data rate; In CPHY mode, the phy_hstx_clk is exactly 1/7 the trio
> +	 * high speed symbol rate.
> +	 */
> +	phy_hsclk = DIV_ROUND_CLOSEST_ULL(dsi2->lane_mbps * USEC_PER_SEC, 16);
> +
> +	/* IPI_RATIO_MAN_CFG = PHY_HSTX_CLK / IPI_CLK */
> +	pixel_clk = mode->crtc_clock * MSEC_PER_SEC;
> +	ipi_clk = pixel_clk / 4;
> +
> +	tmp = DIV_ROUND_CLOSEST_ULL(phy_hsclk << 16, ipi_clk);
> +	regmap_write(dsi2->regmap, DSI2_PHY_IPI_RATIO_MAN_CFG,
> +		   PHY_IPI_RATIO(tmp));
> +
> +	/*
> +	 * SYS_RATIO_MAN_CFG = MIPI_DCPHY_HSCLK_Freq / MIPI_DCPHY_HSCLK_Freq
> +	 */
> +	tmp = DIV_ROUND_CLOSEST_ULL(phy_hsclk << 16, sys_clk);
> +	regmap_write(dsi2->regmap, DSI2_PHY_SYS_RATIO_MAN_CFG,
> +		   PHY_SYS_RATIO(tmp));
> +}
> +
> +static void dw_mipi_dsi2_lp2hs_or_hs2lp_cfg(struct dw_mipi_dsi2 *dsi2)
> +{
> +	const struct dw_mipi_dsi2_phy_ops *phy_ops = dsi2->plat_data->phy_ops;
> +	struct dw_mipi_dsi2_phy_timing timing;
> +	int ret;
> +
> +	ret = phy_ops->get_timing(dsi2->plat_data->priv_data,
> +				  dsi2->lane_mbps, &timing);
> +	if (ret)
> +		dev_err(dsi2->dev, "Retrieving phy timings failed\n");
> +
> +	regmap_write(dsi2->regmap, DSI2_PHY_LP2HS_MAN_CFG, PHY_LP2HS_TIME(timing.data_lp2hs));
> +	regmap_write(dsi2->regmap, DSI2_PHY_HS2LP_MAN_CFG, PHY_HS2LP_TIME(timing.data_hs2lp));
> +}
> +
> +static void dw_mipi_dsi2_phy_init(struct dw_mipi_dsi2 *dsi2)
> +{
> +	const struct dw_mipi_dsi2_phy_ops *phy_ops = dsi2->plat_data->phy_ops;
> +	struct dw_mipi_dsi2_phy_iface iface;
> +	u32 val = 0;
> +
> +	phy_ops->get_interface(dsi2->plat_data->priv_data, &iface);
> +
> +	switch (iface.ppi_width) {
> +	case 8:
> +		val |= PPI_WIDTH(PPI_WIDTH_8_BITS);
> +		break;
> +	case 16:
> +		val |= PPI_WIDTH(PPI_WIDTH_16_BITS);
> +		break;
> +	case 32:
> +		val |= PPI_WIDTH(PPI_WIDTH_32_BITS);
> +		break;
> +	default:
> +		/* Caught in probe */
> +		break;
> +	}
> +
> +	val |= PHY_LANES(dsi2->lanes);
> +	val |= PHY_TYPE(DW_MIPI_DSI2_DPHY);
> +	regmap_write(dsi2->regmap, DSI2_PHY_MODE_CFG, val);
> +
> +	dw_mipi_dsi2_phy_clk_mode_cfg(dsi2);
> +	dw_mipi_dsi2_phy_ratio_cfg(dsi2);
> +	dw_mipi_dsi2_lp2hs_or_hs2lp_cfg(dsi2);
> +
> +	/* phy configuration 8 - 10 */
> +}
> +
> +static void dw_mipi_dsi2_tx_option_set(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 val;
> +
> +	val = BTA_EN | EOTP_TX_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_NO_EOT_PACKET)
> +		val &= ~EOTP_TX_EN;
> +
> +	regmap_write(dsi2->regmap, DSI2_DSI_GENERAL_CFG, val);
> +	regmap_write(dsi2->regmap, DSI2_DSI_VCID_CFG, TX_VCID(dsi2->channel));
> +}
> +
> +static void dw_mipi_dsi2_ipi_color_coding_cfg(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 val, color_depth;
> +
> +	switch (dsi2->format) {
> +	case MIPI_DSI_FMT_RGB666:
> +	case MIPI_DSI_FMT_RGB666_PACKED:
> +		color_depth = IPI_DEPTH_6_BITS;
> +		break;
> +	case MIPI_DSI_FMT_RGB565:
> +		color_depth = IPI_DEPTH_5_6_5_BITS;
> +		break;
> +	case MIPI_DSI_FMT_RGB888:
> +	default:
> +		color_depth = IPI_DEPTH_8_BITS;
> +		break;
> +	}
> +
> +	val = IPI_DEPTH(color_depth) |
> +	      IPI_FORMAT(IPI_FORMAT_RGB);
> +	regmap_write(dsi2->regmap, DSI2_IPI_COLOR_MAN_CFG, val);
> +}
> +
> +static void dw_mipi_dsi2_vertical_timing_config(struct dw_mipi_dsi2 *dsi2,
> +						const struct drm_display_mode *mode)
> +{
> +	u32 vactive, vsa, vfp, vbp;
> +
> +	vactive = mode->vdisplay;
> +	vsa = mode->vsync_end - mode->vsync_start;
> +	vfp = mode->vsync_start - mode->vdisplay;
> +	vbp = mode->vtotal - mode->vsync_end;
> +
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_VSA_MAN_CFG, VID_VSA_LINES(vsa));
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_VBP_MAN_CFG, VID_VBP_LINES(vbp));
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_VACT_MAN_CFG, VID_VACT_LINES(vactive));
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_VFP_MAN_CFG, VID_VFP_LINES(vfp));
> +}
> +
> +static void dw_mipi_dsi2_ipi_set(struct dw_mipi_dsi2 *dsi2)
> +{
> +	struct drm_display_mode *mode = &dsi2->mode;
> +	u32 hline, hsa, hbp, hact;
> +	u64 hline_time, hsa_time, hbp_time, hact_time, tmp;
> +	u64 pixel_clk, phy_hs_clk;
> +	u16 val;
> +
> +	val = mode->hdisplay;
> +
> +	regmap_write(dsi2->regmap, DSI2_IPI_PIX_PKT_CFG, MAX_PIX_PKT(val));
> +
> +	dw_mipi_dsi2_ipi_color_coding_cfg(dsi2);
> +
> +	/*
> +	 * if the controller is intended to operate in data stream mode,
> +	 * no more steps are required.
> +	 */
> +	if (!(dsi2->mode_flags & MIPI_DSI_MODE_VIDEO))
> +		return;
> +
> +	hact = mode->hdisplay;
> +	hsa = mode->hsync_end - mode->hsync_start;
> +	hbp = mode->htotal - mode->hsync_end;
> +	hline = mode->htotal;
> +
> +	pixel_clk = mode->crtc_clock * MSEC_PER_SEC;
> +
> +	phy_hs_clk = DIV_ROUND_CLOSEST_ULL(dsi2->lane_mbps * USEC_PER_SEC, 16);
> +
> +	tmp = hsa * phy_hs_clk;
> +	hsa_time = DIV_ROUND_CLOSEST_ULL(tmp << 16, pixel_clk);
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_HSA_MAN_CFG, VID_HSA_TIME(hsa_time));
> +
> +	tmp = hbp * phy_hs_clk;
> +	hbp_time = DIV_ROUND_CLOSEST_ULL(tmp << 16, pixel_clk);
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_HBP_MAN_CFG, VID_HBP_TIME(hbp_time));
> +
> +	tmp = hact * phy_hs_clk;
> +	hact_time = DIV_ROUND_CLOSEST_ULL(tmp << 16, pixel_clk);
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_HACT_MAN_CFG, VID_HACT_TIME(hact_time));
> +
> +	tmp = hline * phy_hs_clk;
> +	hline_time = DIV_ROUND_CLOSEST_ULL(tmp << 16, pixel_clk);
> +	regmap_write(dsi2->regmap, DSI2_IPI_VID_HLINE_MAN_CFG, VID_HLINE_TIME(hline_time));
> +
> +	dw_mipi_dsi2_vertical_timing_config(dsi2, mode);
> +}
> +
> +static void
> +dw_mipi_dsi2_work_mode(struct dw_mipi_dsi2 *dsi2, u32 mode)
> +{
> +	/*
> +	 * select controller work in Manual mode
> +	 * Manual: MANUAL_MODE_EN
> +	 * Automatic: 0
> +	 */
> +	regmap_write(dsi2->regmap, MANUAL_MODE_CFG, mode);
> +}
> +
> +static int dw_mipi_dsi2_host_attach(struct mipi_dsi_host *host,
> +				    struct mipi_dsi_device *device)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = host_to_dsi2(host);
> +	const struct dw_mipi_dsi2_plat_data *pdata = dsi2->plat_data;
> +	struct drm_bridge *bridge;
> +	int ret;
> +
> +	if (device->lanes > dsi2->plat_data->max_data_lanes) {
> +		dev_err(dsi2->dev, "the number of data lanes(%u) is too many\n",
> +			device->lanes);
> +		return -EINVAL;
> +	}
> +
> +	dsi2->lanes = device->lanes;
> +	dsi2->channel = device->channel;
> +	dsi2->format = device->format;
> +	dsi2->mode_flags = device->mode_flags;
> +
> +	bridge = devm_drm_of_get_bridge(dsi2->dev, dsi2->dev->of_node, 1, 0);
> +	if (IS_ERR(bridge))
> +		return PTR_ERR(bridge);
> +
> +	bridge->pre_enable_prev_first = true;
> +	dsi2->panel_bridge = bridge;
> +
> +	drm_bridge_add(&dsi2->bridge);
> +
> +	if (pdata->host_ops && pdata->host_ops->attach) {
> +		ret = pdata->host_ops->attach(pdata->priv_data, device);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dw_mipi_dsi2_host_detach(struct mipi_dsi_host *host,
> +				    struct mipi_dsi_device *device)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = host_to_dsi2(host);
> +	const struct dw_mipi_dsi2_plat_data *pdata = dsi2->plat_data;
> +	int ret;
> +
> +	if (pdata->host_ops && pdata->host_ops->detach) {
> +		ret = pdata->host_ops->detach(pdata->priv_data, device);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	drm_bridge_remove(&dsi2->bridge);
> +
> +	drm_of_panel_bridge_remove(host->dev->of_node, 1, 0);
> +
> +	return 0;
> +}
> +
> +static int dw_mipi_dsi2_gen_pkt_hdr_write(struct dw_mipi_dsi2 *dsi2,
> +					  u32 hdr_val, bool lpm)
> +{
> +	int ret;
> +
> +	regmap_write(dsi2->regmap, DSI2_CRI_TX_HDR, hdr_val | CMD_TX_MODE(lpm));
> +
> +	ret = cri_fifos_wait_avail(dsi2);
> +	if (ret) {
> +		dev_err(dsi2->dev, "failed to write command header\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dw_mipi_dsi2_write(struct dw_mipi_dsi2 *dsi2,
> +			      const struct mipi_dsi_packet *packet, bool lpm)
> +{
> +	const u8 *tx_buf = packet->payload;
> +	int len = packet->payload_length, pld_data_bytes = sizeof(u32);
> +	__le32 word;
> +
> +	/* Send payload */
> +	while (len) {
> +		if (len < pld_data_bytes) {
> +			word = 0;
> +			memcpy(&word, tx_buf, len);
> +			regmap_write(dsi2->regmap, DSI2_CRI_TX_PLD, le32_to_cpu(word));
> +			len = 0;
> +		} else {
> +			memcpy(&word, tx_buf, pld_data_bytes);
> +			regmap_write(dsi2->regmap, DSI2_CRI_TX_PLD, le32_to_cpu(word));
> +			tx_buf += pld_data_bytes;
> +			len -= pld_data_bytes;
> +		}
> +	}
> +
> +	word = 0;
> +	memcpy(&word, packet->header, sizeof(packet->header));
> +	return dw_mipi_dsi2_gen_pkt_hdr_write(dsi2, le32_to_cpu(word), lpm);
> +}
> +
> +static int dw_mipi_dsi2_read(struct dw_mipi_dsi2 *dsi2,
> +			     const struct mipi_dsi_msg *msg)
> +{
> +	u8 *payload = msg->rx_buf;
> +	int i, j, ret, len = msg->rx_len;
> +	u8 data_type;
> +	u16 wc;
> +	u32 val;
> +
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_CORE_STATUS,
> +				       val, val & CRI_RD_DATA_AVAIL,
> +				       100, CMD_PKT_STATUS_TIMEOUT_US);
> +	if (ret) {
> +		dev_err(dsi2->dev, "CRI has no available read data\n");
> +		return ret;
> +	}
> +
> +	regmap_read(dsi2->regmap, DSI2_CRI_RX_HDR, &val);
> +	data_type = val & 0x3f;
> +
> +	if (mipi_dsi_packet_format_is_short(data_type)) {
> +		for (i = 0; i < len && i < 2; i++)
> +			payload[i] = (val >> (8 * (i + 1))) & 0xff;
> +
> +		return 0;
> +	}
> +
> +	wc = (val >> 8) & 0xffff;
> +	/* Receive payload */
> +	for (i = 0; i < len && i < wc; i += 4) {
> +		regmap_read(dsi2->regmap, DSI2_CRI_RX_PLD, &val);
> +		for (j = 0; j < 4 && j + i < len && j + i < wc; j++)
> +			payload[i + j] = val >> (8 * j);
> +	}
> +
> +	return 0;
> +}
> +
> +static ssize_t dw_mipi_dsi2_host_transfer(struct mipi_dsi_host *host,
> +					  const struct mipi_dsi_msg *msg)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = host_to_dsi2(host);
> +	bool lpm = msg->flags & MIPI_DSI_MSG_USE_LPM;
> +	struct mipi_dsi_packet packet;
> +	int ret, nb_bytes;
> +
> +	regmap_update_bits(dsi2->regmap, DSI2_DSI_VID_TX_CFG,
> +			   LPDT_DISPLAY_CMD_EN,
> +			   lpm ? LPDT_DISPLAY_CMD_EN : 0);
> +
> +	/* create a packet to the DSI protocol */
> +	ret = mipi_dsi_create_packet(&packet, msg);
> +	if (ret) {
> +		dev_err(dsi2->dev, "failed to create packet: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = cri_fifos_wait_avail(dsi2);
> +	if (ret)
> +		return ret;
> +
> +	ret = dw_mipi_dsi2_write(dsi2, &packet, lpm);
> +	if (ret)
> +		return ret;
> +
> +	if (msg->rx_buf && msg->rx_len) {
> +		ret = dw_mipi_dsi2_read(dsi2, msg);
> +		if (ret < 0)
> +			return ret;
> +		nb_bytes = msg->rx_len;
> +	} else {
> +		nb_bytes = packet.size;
> +	}
> +
> +	return nb_bytes;
> +}
> +
> +static const struct mipi_dsi_host_ops dw_mipi_dsi2_host_ops = {
> +	.attach = dw_mipi_dsi2_host_attach,
> +	.detach = dw_mipi_dsi2_host_detach,
> +	.transfer = dw_mipi_dsi2_host_transfer,
> +};
> +
> +static u32 *
> +dw_mipi_dsi2_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> +					      struct drm_bridge_state *bridge_state,
> +					      struct drm_crtc_state *crtc_state,
> +					      struct drm_connector_state *conn_state,
> +					      u32 output_fmt,
> +					      unsigned int *num_input_fmts)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +	const struct dw_mipi_dsi2_plat_data *pdata = dsi2->plat_data;
> +	u32 *input_fmts;
> +
> +	if (pdata->get_input_bus_fmts)
> +		return pdata->get_input_bus_fmts(pdata->priv_data,
> +						 bridge, bridge_state,
> +						 crtc_state, conn_state,
> +						 output_fmt, num_input_fmts);
> +
> +	/* Fall back to MEDIA_BUS_FMT_FIXED as the only input format. */
> +	input_fmts = kmalloc(sizeof(*input_fmts), GFP_KERNEL);
> +	if (!input_fmts)
> +		return NULL;
> +	input_fmts[0] = MEDIA_BUS_FMT_FIXED;
> +	*num_input_fmts = 1;
> +
> +	return input_fmts;
> +}
> +
> +static int dw_mipi_dsi2_bridge_atomic_check(struct drm_bridge *bridge,
> +					    struct drm_bridge_state *bridge_state,
> +					    struct drm_crtc_state *crtc_state,
> +					    struct drm_connector_state *conn_state)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +	const struct dw_mipi_dsi2_plat_data *pdata = dsi2->plat_data;
> +	bool ret;
> +
> +	bridge_state->input_bus_cfg.flags =
> +		DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;
> +
> +	if (pdata->mode_fixup) {
> +		ret = pdata->mode_fixup(pdata->priv_data, &crtc_state->mode,
> +					&crtc_state->adjusted_mode);
> +		if (!ret) {
> +			DRM_DEBUG_DRIVER("failed to fixup mode " DRM_MODE_FMT "\n",
> +					 DRM_MODE_ARG(&crtc_state->mode));
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void dw_mipi_dsi2_bridge_post_atomic_disable(struct drm_bridge *bridge,
> +						    struct drm_bridge_state *old_bridge_state)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +	const struct dw_mipi_dsi2_phy_ops *phy_ops = dsi2->plat_data->phy_ops;
> +
> +	regmap_write(dsi2->regmap, DSI2_IPI_PIX_PKT_CFG, 0);
> +
> +	/*
> +	 * Switch to command mode before panel-bridge post_disable &
> +	 * panel unprepare.
> +	 * Note: panel-bridge disable & panel disable has been called
> +	 * before by the drm framework.
> +	 */
> +	dw_mipi_dsi2_set_cmd_mode(dsi2);
> +
> +	regmap_write(dsi2->regmap, DSI2_PWR_UP, RESET);
> +
> +	if (phy_ops->power_off)
> +		phy_ops->power_off(dsi2->plat_data->priv_data);
> +
> +	clk_disable_unprepare(dsi2->pclk);
> +	pm_runtime_put(dsi2->dev);
> +}
> +
> +static unsigned int dw_mipi_dsi2_get_lanes(struct dw_mipi_dsi2 *dsi2)
> +{
> +	/* single-dsi, so no other instance to consider */
> +	return dsi2->lanes;
> +}
> +
> +static void dw_mipi_dsi2_mode_set(struct dw_mipi_dsi2 *dsi2,
> +				  const struct drm_display_mode *adjusted_mode)
> +{
> +	const struct dw_mipi_dsi2_phy_ops *phy_ops = dsi2->plat_data->phy_ops;
> +	void *priv_data = dsi2->plat_data->priv_data;
> +	u32 lanes = dw_mipi_dsi2_get_lanes(dsi2);
> +	int ret;
> +
> +	clk_prepare_enable(dsi2->pclk);
> +
> +	ret = phy_ops->get_lane_mbps(priv_data, adjusted_mode, dsi2->mode_flags,
> +				     lanes, dsi2->format, &dsi2->lane_mbps);
> +	if (ret)
> +		DRM_DEBUG_DRIVER("Phy get_lane_mbps() failed\n");
> +
> +	pm_runtime_get_sync(dsi2->dev);
> +
> +	dw_mipi_dsi2_host_softrst(dsi2);
> +	regmap_write(dsi2->regmap, DSI2_PWR_UP, RESET);
> +
> +	dw_mipi_dsi2_work_mode(dsi2, MANUAL_MODE_EN);
> +	dw_mipi_dsi2_phy_init(dsi2);
> +
> +	if (phy_ops->power_on)
> +		phy_ops->power_on(dsi2->plat_data->priv_data);
> +
> +	dw_mipi_dsi2_tx_option_set(dsi2);
> +
> +	/*
> +	 * initial deskew calibration is send after phy_power_on,
> +	 * then we can configure clk_type.
> +	 */
> +
> +	regmap_update_bits(dsi2->regmap, DSI2_PHY_CLK_CFG, CLK_TYPE_MASK,
> +			   dsi2->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS ? NON_CONTINUOUS_CLK :
> +									      CONTINUOUS_CLK);
> +
> +	regmap_write(dsi2->regmap, DSI2_PWR_UP, POWER_UP);
> +	dw_mipi_dsi2_set_cmd_mode(dsi2);
> +
> +	dw_mipi_dsi2_ipi_set(dsi2);
> +}
> +
> +static void dw_mipi_dsi2_bridge_atomic_pre_enable(struct drm_bridge *bridge,
> +						  struct drm_bridge_state *old_bridge_state)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +
> +	/* Power up the dsi ctl into a command mode */
> +	dw_mipi_dsi2_mode_set(dsi2, &dsi2->mode);
> +}
> +
> +static void dw_mipi_dsi2_bridge_mode_set(struct drm_bridge *bridge,
> +					 const struct drm_display_mode *mode,
> +					 const struct drm_display_mode *adjusted_mode)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +
> +	/* Store the display mode for later use in pre_enable callback */
> +	drm_mode_copy(&dsi2->mode, adjusted_mode);
> +}
> +
> +static void dw_mipi_dsi2_bridge_atomic_enable(struct drm_bridge *bridge,
> +					      struct drm_bridge_state *old_bridge_state)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +
> +	/* Switch to video mode for panel-bridge enable & panel enable */
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO)
> +		dw_mipi_dsi2_set_vid_mode(dsi2);
> +	else
> +		dw_mipi_dsi2_set_data_stream_mode(dsi2);
> +}
> +
> +static enum drm_mode_status
> +dw_mipi_dsi2_bridge_mode_valid(struct drm_bridge *bridge,
> +			       const struct drm_display_info *info,
> +			       const struct drm_display_mode *mode)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +	const struct dw_mipi_dsi2_plat_data *pdata = dsi2->plat_data;
> +	enum drm_mode_status mode_status = MODE_OK;
> +
> +	if (pdata->mode_valid)
> +		mode_status = pdata->mode_valid(pdata->priv_data, mode,
> +						dsi2->mode_flags,
> +						dw_mipi_dsi2_get_lanes(dsi2),
> +						dsi2->format);
> +
> +	return mode_status;
> +}
> +
> +static int dw_mipi_dsi2_bridge_attach(struct drm_bridge *bridge,
> +				      enum drm_bridge_attach_flags flags)
> +{
> +	struct dw_mipi_dsi2 *dsi2 = bridge_to_dsi2(bridge);
> +
> +	/* Set the encoder type as caller does not know it */
> +	bridge->encoder->encoder_type = DRM_MODE_ENCODER_DSI;
> +
> +	/* Attach the panel-bridge to the dsi bridge */
> +	return drm_bridge_attach(bridge->encoder, dsi2->panel_bridge, bridge,
> +				 flags);
> +}
> +
> +static const struct drm_bridge_funcs dw_mipi_dsi2_bridge_funcs = {
> +	.atomic_duplicate_state	= drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state	= drm_atomic_helper_bridge_destroy_state,
> +	.atomic_get_input_bus_fmts = dw_mipi_dsi2_bridge_atomic_get_input_bus_fmts,
> +	.atomic_check		= dw_mipi_dsi2_bridge_atomic_check,
> +	.atomic_reset		= drm_atomic_helper_bridge_reset,
> +	.atomic_pre_enable	= dw_mipi_dsi2_bridge_atomic_pre_enable,
> +	.atomic_enable		= dw_mipi_dsi2_bridge_atomic_enable,
> +	.atomic_post_disable	= dw_mipi_dsi2_bridge_post_atomic_disable,
> +	.mode_set		= dw_mipi_dsi2_bridge_mode_set,
> +	.mode_valid		= dw_mipi_dsi2_bridge_mode_valid,
> +	.attach			= dw_mipi_dsi2_bridge_attach,
> +};
> +
> +static const struct regmap_config dw_mipi_dsi2_regmap_config = {
> +	.name = "dsi2-host",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.fast_io = true,
> +};
> +
> +static struct dw_mipi_dsi2 *
> +__dw_mipi_dsi2_probe(struct platform_device *pdev,
> +		     const struct dw_mipi_dsi2_plat_data *plat_data)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct reset_control *apb_rst;
> +	struct dw_mipi_dsi2 *dsi2;
> +	int ret;
> +
> +	dsi2 = devm_kzalloc(dev, sizeof(*dsi2), GFP_KERNEL);
> +	if (!dsi2)
> +		return ERR_PTR(-ENOMEM);
> +
> +	dsi2->dev = dev;
> +	dsi2->plat_data = plat_data;
> +
> +	if (!plat_data->phy_ops->init || !plat_data->phy_ops->get_lane_mbps ||
> +	    !plat_data->phy_ops->get_timing)
> +		return dev_err_ptr_probe(dev, -ENODEV, "Phy not properly configured\n");
> +
> +	if (!plat_data->regmap) {
> +		void __iomem *base = devm_platform_ioremap_resource(pdev, 0);
> +
> +		if (IS_ERR(base))
> +			return dev_err_cast_probe(dev, base, "failed to registers\n");
> +
> +		dsi2->regmap = devm_regmap_init_mmio(dev, base,
> +						     &dw_mipi_dsi2_regmap_config);
> +		if (IS_ERR(dsi2->regmap))
> +			return dev_err_cast_probe(dev, dsi2->regmap, "failed to init regmap\n");
> +	} else {
> +		dsi2->regmap = plat_data->regmap;
> +	}
> +
> +	dsi2->pclk = devm_clk_get(dev, "pclk");
> +	if (IS_ERR(dsi2->pclk))
> +		return dev_err_cast_probe(dev, dsi2->pclk, "Unable to get pclk\n");
> +
> +	dsi2->sys_clk = devm_clk_get(dev, "sys");
> +	if (IS_ERR(dsi2->sys_clk))
> +		return dev_err_cast_probe(dev, dsi2->sys_clk, "Unable to get sys_clk\n");
> +
> +	/*
> +	 * Note that the reset was not defined in the initial device tree, so
> +	 * we have to be prepared for it not being found.
> +	 */
> +	apb_rst = devm_reset_control_get_optional_exclusive(dev, "apb");
> +	if (IS_ERR(apb_rst))
> +		return dev_err_cast_probe(dev, apb_rst, "Unable to get reset control\n");
> +
> +	if (apb_rst) {
> +		ret = clk_prepare_enable(dsi2->pclk);
> +		if (ret) {
> +			dev_err(dev, "%s: Failed to enable pclk\n", __func__);
> +			return ERR_PTR(ret);
> +		}
> +
> +		reset_control_assert(apb_rst);
> +		usleep_range(10, 20);
> +		reset_control_deassert(apb_rst);
> +
> +		clk_disable_unprepare(dsi2->pclk);
> +	}
> +
> +	pm_runtime_enable(dev);
> +
> +	dsi2->dsi_host.ops = &dw_mipi_dsi2_host_ops;
> +	dsi2->dsi_host.dev = dev;
> +	ret = mipi_dsi_host_register(&dsi2->dsi_host);
> +	if (ret) {
> +		dev_err(dev, "Failed to register MIPI host: %d\n", ret);
> +		pm_runtime_disable(dev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	dsi2->bridge.driver_private = dsi2;
> +	dsi2->bridge.funcs = &dw_mipi_dsi2_bridge_funcs;
> +	dsi2->bridge.of_node = pdev->dev.of_node;
> +
> +	return dsi2;
> +}
> +
> +static void __dw_mipi_dsi2_remove(struct dw_mipi_dsi2 *dsi2)
> +{
> +	mipi_dsi_host_unregister(&dsi2->dsi_host);
> +
> +	pm_runtime_disable(dsi2->dev);
> +}
> +
> +/*
> + * Probe/remove API, used to create the bridge instance.
> + */
> +struct dw_mipi_dsi2 *
> +dw_mipi_dsi2_probe(struct platform_device *pdev,
> +		   const struct dw_mipi_dsi2_plat_data *plat_data)
> +{
> +	return __dw_mipi_dsi2_probe(pdev, plat_data);
> +}
> +EXPORT_SYMBOL_GPL(dw_mipi_dsi2_probe);
> +
> +void dw_mipi_dsi2_remove(struct dw_mipi_dsi2 *dsi2)
> +{
> +	__dw_mipi_dsi2_remove(dsi2);
> +}
> +EXPORT_SYMBOL_GPL(dw_mipi_dsi2_remove);
> +
> +/*
> + * Bind/unbind API, used from platforms based on the component framework
> + * to attach the bridge to an encoder.
> + */
> +int dw_mipi_dsi2_bind(struct dw_mipi_dsi2 *dsi2, struct drm_encoder *encoder)
> +{
> +	return drm_bridge_attach(encoder, &dsi2->bridge, NULL, 0);
> +}
> +EXPORT_SYMBOL_GPL(dw_mipi_dsi2_bind);
> +
> +void dw_mipi_dsi2_unbind(struct dw_mipi_dsi2 *dsi2)
> +{
> +}
> +EXPORT_SYMBOL_GPL(dw_mipi_dsi2_unbind);
> +
> +MODULE_AUTHOR("Guochun Huang <hero.huang@rock-chips.com>");
> +MODULE_AUTHOR("Heiko Stuebner <heiko.stuebner@cherry.de>");
> +MODULE_DESCRIPTION("DW MIPI DSI2 host controller driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:dw-mipi-dsi2");
> diff --git a/include/drm/bridge/dw_mipi_dsi2.h b/include/drm/bridge/dw_mipi_dsi2.h
> new file mode 100644
> index 000000000000..c18c49379247
> --- /dev/null
> +++ b/include/drm/bridge/dw_mipi_dsi2.h
> @@ -0,0 +1,95 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2024, Fuzhou Rockchip Electronics Co., Ltd
> + *
> + * Authors: Guochun Huang <hero.huang@rock-chips.com>
> + *          Heiko Stuebner <heiko.stuebner@cherry.de>
> + */
> +
> +#ifndef __DW_MIPI_DSI2__
> +#define __DW_MIPI_DSI2__
> +
> +#include <linux/regmap.h>
> +#include <linux/types.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_modes.h>
> +
> +struct drm_display_mode;
> +struct drm_encoder;
> +struct dw_mipi_dsi2;
> +struct mipi_dsi_device;
> +struct platform_device;
> +
> +enum dw_mipi_dsi2_phy_type {
> +	DW_MIPI_DSI2_DPHY,
> +	DW_MIPI_DSI2_CPHY,
> +};
> +
> +struct dw_mipi_dsi2_phy_iface {
> +	int ppi_width;
> +	enum dw_mipi_dsi2_phy_type phy_type;
> +};
> +
> +struct dw_mipi_dsi2_phy_timing {
> +	u32 data_hs2lp;
> +	u32 data_lp2hs;
> +};
> +
> +struct dw_mipi_dsi2_phy_ops {
> +	int (*init)(void *priv_data);
> +	void (*power_on)(void *priv_data);
> +	void (*power_off)(void *priv_data);
> +	void (*get_interface)(void *priv_data, struct dw_mipi_dsi2_phy_iface *iface);
> +	int (*get_lane_mbps)(void *priv_data,
> +			     const struct drm_display_mode *mode,
> +			     unsigned long mode_flags, u32 lanes, u32 format,
> +			     unsigned int *lane_mbps);
> +	int (*get_timing)(void *priv_data, unsigned int lane_mbps,
> +			  struct dw_mipi_dsi2_phy_timing *timing);
> +	int (*get_esc_clk_rate)(void *priv_data, unsigned int *esc_clk_rate);
> +};
> +
> +struct dw_mipi_dsi2_host_ops {
> +	int (*attach)(void *priv_data,
> +		      struct mipi_dsi_device *dsi);
> +	int (*detach)(void *priv_data,
> +		      struct mipi_dsi_device *dsi);
> +};
> +
> +struct dw_mipi_dsi2_plat_data {
> +	struct regmap *regmap;
> +	unsigned int max_data_lanes;
> +
> +	enum drm_mode_status (*mode_valid)(void *priv_data,
> +					   const struct drm_display_mode *mode,
> +					   unsigned long mode_flags,
> +					   u32 lanes, u32 format);
> +
> +	bool (*mode_fixup)(void *priv_data, const struct drm_display_mode *mode,
> +			   struct drm_display_mode *adjusted_mode);
> +
> +	u32 *(*get_input_bus_fmts)(void *priv_data,
> +				   struct drm_bridge *bridge,
> +				   struct drm_bridge_state *bridge_state,
> +				   struct drm_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state,
> +				   u32 output_fmt,
> +				   unsigned int *num_input_fmts);
> +
> +	const struct dw_mipi_dsi2_phy_ops *phy_ops;
> +	const struct dw_mipi_dsi2_host_ops *host_ops;
> +
> +	void *priv_data;
> +};
> +
> +struct dw_mipi_dsi2 *dw_mipi_dsi2_probe(struct platform_device *pdev,
> +					const struct dw_mipi_dsi2_plat_data *plat_data);
> +void dw_mipi_dsi2_remove(struct dw_mipi_dsi2 *dsi2);
> +int dw_mipi_dsi2_bind(struct dw_mipi_dsi2 *dsi2, struct drm_encoder *encoder);
> +void dw_mipi_dsi2_unbind(struct dw_mipi_dsi2 *dsi2);
> +
> +#endif /* __DW_MIPI_DSI2__ */

Looks very good, thanks for switching to regmap & field macros :-)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

