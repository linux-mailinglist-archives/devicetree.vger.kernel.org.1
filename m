Return-Path: <devicetree+bounces-240111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3E4C6D761
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 1DD2B2D2B8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3310329E56;
	Wed, 19 Nov 2025 08:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O/NlLEPD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809A6325704
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541459; cv=none; b=Y7Ram4A/yWCSwSYd7cZifKlBoFqbe6CUmyDfzauL+Ew31Rw9bArZYxzWCeg2NWCkfA18nMRprVGxRKs4bd4om2khUIG9qTW4ok5N2+vhxZeyCynO4kSxxJ0NvZZTQmUu0xyPzC1zd3HD6C+PUSrq2lf1srPH7V7ZpCqfDsulK2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541459; c=relaxed/simple;
	bh=UZhf5Xl6UiC9OOsJTlgmtwzXuSWT5AxS99tb0PsAW/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mtftgcfLbaZVoKEBXZQUWSRwVhE0hqjCmtnDS17eyQS+1ZCAVFbh27iti4Fs7o72Zosb93qd7NfJFHkIZ2fVp4H1dxwH1PehplyrbA/xKonHGcdcuXzlMzn4JVSFyfJSPrTLZPnhCVYfrNtBkbO5G8Kg9JdgZUKMHrqvsSJmHgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O/NlLEPD; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-429c8632fcbso4504116f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541456; x=1764146256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvXbaBmOOErIHCg8Z4osVCMQqoA4a4SSUiRk+vhbLU0=;
        b=O/NlLEPD9ceDbqXOQRDjmHrtGPrj92OJeMb4P9kXia8X/enG68RBkxqzmVZhZiSJfq
         j6IH7MC03rh10D17wJOiGpK0Gho+S3vL5cQBUQ/RbKOuxeiGJVApC7NydGmt8r8lzIfS
         hFpxqD3c/pDJNje3WeERbuYddDjg1DYGdL7wSp0MB0B8OFQ5rp0wAWOrR5gyeeuffpeo
         fvw4rzsoOx+pWQGINgxDhdivUWuh9WlgbmICrhWHjZTsqVDpiuy0pt/weZBREXQyZ8ya
         flFawKfpkI4Y/PA1Q37JhPbXJGBHT+hVbpojfLIWK8Gwutke+J3J9z1NA0Wj1ENu1FKi
         npMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541456; x=1764146256;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TvXbaBmOOErIHCg8Z4osVCMQqoA4a4SSUiRk+vhbLU0=;
        b=kp4WQTq9K1zoSNi9esTeRMjhU77ZYMlfEJSRYUzMAMtLu0RXWJC80WZVPbDIcz8A6q
         /DVX04GI+jl+BKqcQe/UAawqs1xqFtr1SQJx+d0Xz8EgJXIY0SlPj5Awor+/iLb4HS83
         vf4fc6ycBHjpW51YxmquCUAk63yGHeyJDuF4YrO/zw5qa41mE59FNG5hlUXJDaHXI5sw
         QP1GRYt8Pvu4gyIt9mfkipuQzM8FLt/B3X2plblgRw276C2iXWKd/WVSbaVmddUkwwES
         e4dEFYLbmPM0l1rLrfdGx2slpYGdxgHHs27GNp13GevqdA8NCWlO3FARmkr+T/HlNuv0
         iJyA==
X-Forwarded-Encrypted: i=1; AJvYcCXvGPA13HUEia7Ya1JMKlo7ZXW0EgyE/zuu4pJ4AljoDp4QaNPZBz4HjpfVo51kxgcpN3MLpe5QZduT@vger.kernel.org
X-Gm-Message-State: AOJu0YxNdkNLcaUQpLrmovQZoR0zOVGTKF3cvfU2nalFz/ZqHi9GGy80
	pGufPCRsoXnjwbiJLHS3MyJMrGkhZJkQJsPg+opLG7P1HV6K24OQ3fSm9pMhU+yLLO4=
X-Gm-Gg: ASbGnctsTbCHtM2NhogAYPBiMwZ3KFawbF3FcDs8XpgLl+J4m4O8itInWFn6dKOuPxt
	0tG/8x4gjz108/VqdVU8+xGSkL53EQciemSkbNBVUuwVeJtJ31vBXrQI3jrAHZ+78pVwOjS7gCk
	OPwOAqdVZOfqM6jBBa07pSX0FvmWjoIzu4sJGLi9nEhz+R6iTRRQ9fmYk28GmLLdrpK9PS8I60w
	nJQtmlmyAUBorPWSvyQKNc4DASbAM+vZpkW5WzX6vKMldJOzZTab2z72XpBs5dM8NmnoQH4IghO
	fPQyxDmTbG2DZm5k7USjM/huO5cqQd3qcQ1lFMTRcwUlnL/g4GSDcPlgf3Cet23nwKe7GxW/zPQ
	w2KuJn36wjoTU/c8UG3Nb/sakSk4IehIA87Ku/eZZp2dSlrzcL7jQdYot8MElPTTmvQoI6Mrx44
	F2wsWKOg53kglIX3675uPBmL5a3ZwRof7MB78R0h9GVZpUMNZmfIMPpeCyx3YIhoU=
X-Google-Smtp-Source: AGHT+IHCxYUjbyJA4c8W+HycRA5XTv/xke4exEKnKAlgosQpl5vxVbjThB/YaW4g+OgWttQVUnRwTQ==
X-Received: by 2002:a05:6000:200f:b0:42b:3806:2ba6 with SMTP id ffacd0b85a97d-42b593394b4mr19373199f8f.25.1763541455560;
        Wed, 19 Nov 2025 00:37:35 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f21948sm36489179f8f.43.2025.11.19.00.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:37:34 -0800 (PST)
Message-ID: <8be79a2d-4f2b-4ff0-aad8-eaf525f58744@linaro.org>
Date: Wed, 19 Nov 2025 09:37:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 3/3] phy: eswin: Create eswin directory and add EIC7700
 SATA PHY driver
To: Yulin Lu <luyulin@eswincomputing.com>, dlemoal@kernel.org,
 cassel@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org
Cc: ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
 linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
 fenglin@eswincomputing.com, lianghujun@eswincomputing.com
References: <20250930083754.15-1-luyulin@eswincomputing.com>
 <20250930084628.1151-1-luyulin@eswincomputing.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250930084628.1151-1-luyulin@eswincomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 9/30/25 10:46, Yulin Lu wrote:
> Created the eswin phy driver directory and added support for
> the SATA phy driver on the EIC7700 SoC platform.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>   drivers/phy/Kconfig                  |   1 +
>   drivers/phy/Makefile                 |   1 +
>   drivers/phy/eswin/Kconfig            |  14 ++
>   drivers/phy/eswin/Makefile           |   2 +
>   drivers/phy/eswin/phy-eic7700-sata.c | 192 +++++++++++++++++++++++++++
>   5 files changed, 210 insertions(+)
>   create mode 100644 drivers/phy/eswin/Kconfig
>   create mode 100644 drivers/phy/eswin/Makefile
>   create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0a..6d50704917f0 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -105,6 +105,7 @@ source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"
>   source "drivers/phy/cadence/Kconfig"
> +source "drivers/phy/eswin/Kconfig"
>   source "drivers/phy/freescale/Kconfig"
>   source "drivers/phy/hisilicon/Kconfig"
>   source "drivers/phy/ingenic/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494..482a143d3417 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -17,6 +17,7 @@ obj-y					+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
>   					   cadence/	\
> +					   eswin/	\
>   					   freescale/	\
>   					   hisilicon/	\
>   					   ingenic/	\
> diff --git a/drivers/phy/eswin/Kconfig b/drivers/phy/eswin/Kconfig
> new file mode 100644
> index 000000000000..3fcd76582c3b
> --- /dev/null
> +++ b/drivers/phy/eswin/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for Eswin platforms
> +#
> +config PHY_EIC7700_SATA
> +	tristate "eic7700 Sata SerDes/PHY driver"
> +	depends on ARCH_ESWIN || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support SerDes/Phy found on ESWIN's
> +	  EIC7700 SoC.This Phy supports SATA 1.5 Gb/s,
> +	  SATA 3.0 Gb/s, SATA 6.0 Gb/s speeds.
> +	  It supports one SATA host port to accept one SATA device.
> diff --git a/drivers/phy/eswin/Makefile b/drivers/phy/eswin/Makefile
> new file mode 100644
> index 000000000000..db08c66be812
> --- /dev/null
> +++ b/drivers/phy/eswin/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_PHY_EIC7700_SATA)	+= phy-eic7700-sata.o
> diff --git a/drivers/phy/eswin/phy-eic7700-sata.c b/drivers/phy/eswin/phy-eic7700-sata.c
> new file mode 100644
> index 000000000000..19b7ddf2583f
> --- /dev/null
> +++ b/drivers/phy/eswin/phy-eic7700-sata.c
> @@ -0,0 +1,192 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ESWIN SATA PHY driver
> + *
> + * Copyright 2024, Beijing ESWIN Computing Technology Co., Ltd..
> + * All rights reserved.
> + *
> + * Authors: Yulin Lu <luyulin@eswincomputing.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#define SATA_CLK_CTRL				0x0
> +#define SATA_AXI_LP_CTRL			0x08
> +#define SATA_MPLL_CTRL				0x20
> +#define SATA_P0_PHY_STAT			0x24
> +#define SATA_PHY_CTRL0				0x28
> +#define SATA_PHY_CTRL1				0x2c
> +#define SATA_REG_CTRL				0x34
> +#define SATA_REF_CTRL1				0x38
> +#define SATA_LOS_IDEN				0x3c
> +#define SATA_RESET_CTRL				0x40
> +
> +#define SATA_SYS_CLK_EN				BIT(28)
> +#define SATA_PHY_RESET				BIT(0)
> +#define SATA_PORT_RESET				BIT(1)
> +#define SATA_CLK_RST_SOURCE_PHY			BIT(0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK	GENMASK(6, 0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK	GENMASK(14, 8)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK	GENMASK(22, 16)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN1_MASK	GENMASK(5, 0)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN2_MASK	GENMASK(13, 8)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN3_MASK	GENMASK(21, 16)
> +#define SATA_LOS_LEVEL_MASK			GENMASK(4, 0)
> +#define SATA_LOS_BIAS_MASK			GENMASK(18, 16)
> +#define SATA_M_CSYSREQ				BIT(0)
> +#define SATA_S_CSYSREQ				BIT(16)
> +#define SATA_REF_REPEATCLK_EN			BIT(0)
> +#define SATA_REF_USE_PAD			BIT(20)
> +#define SATA_MPLL_MULTIPLIER_MASK		GENMASK(22, 16)
> +#define SATA_P0_PHY_READY			BIT(0)
> +
> +#define PHY_READY_TIMEOUT			(usecs_to_jiffies(4000))
> +
> +struct eic7700_sata_phy {
> +	void __iomem *regs;
> +	struct phy *phy;
> +};
> +
> +static int wait_for_phy_ready(void __iomem *base, u32 reg, u32 checkbit,
> +			      u32 status)
> +{
> +	unsigned long timeout = jiffies + PHY_READY_TIMEOUT;
> +
> +	while (time_before(jiffies, timeout)) {
> +		if ((readl(base + reg) & checkbit) == status)
> +			return 0;
> +		usleep_range(50, 70);
> +	}
> +
> +	return -ETIMEDOUT;
> +}

Please use read_poll_timeout() or even better use regmap and use regmap_read_poll_timeout()

> +
> +static int eic7700_sata_phy_init(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val;
> +	int ret;
> +
> +	/*
> +	 * The SATA_CLK_CTRL register offset controls the pmalive, rxoob, and
> +	 * rbc clocks gate provided by the PHY through the HSP bus, and it is
> +	 * not registered in the clock tree.
> +	 */
> +	val = readl(sata_phy->regs + SATA_CLK_CTRL);
> +	val |= SATA_SYS_CLK_EN;
> +	writel(val, sata_phy->regs + SATA_CLK_CTRL);

regmap_update_bits() would fit here and all other read/modify/write sequence.

> +
> +	writel(SATA_CLK_RST_SOURCE_PHY, sata_phy->regs + SATA_REF_CTRL1);
> +	writel(FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK, 0x42) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK, 0x46) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK, 0x73),
> +	       sata_phy->regs + SATA_PHY_CTRL0);
> +	writel(FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN1_MASK, 0x5) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN2_MASK, 0x5) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN3_MASK, 0x8),
> +	       sata_phy->regs + SATA_PHY_CTRL1);
> +	writel(FIELD_PREP(SATA_LOS_LEVEL_MASK, 0x9) |
> +	       FIELD_PREP(SATA_LOS_BIAS_MASK, 0x2),
> +	       sata_phy->regs + SATA_LOS_IDEN);
> +	writel(SATA_M_CSYSREQ | SATA_S_CSYSREQ,
> +	       sata_phy->regs + SATA_AXI_LP_CTRL);
> +	writel(SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD,
> +	       sata_phy->regs + SATA_REG_CTRL);
> +	writel(FIELD_PREP(SATA_MPLL_MULTIPLIER_MASK, 0x3c),
> +	       sata_phy->regs + SATA_MPLL_CTRL);
> +	usleep_range(15, 20);
> +
> +	/*
> +	 * The SATA_RESET_CTRL register offset controls reset/deassert for both
> +	 * the port and the PHY through the HSP bus, and it is not registered
> +	 * in the reset tree.
> +	 */
> +	val = readl(sata_phy->regs + SATA_RESET_CTRL);
> +	val &= ~(SATA_PHY_RESET | SATA_PORT_RESET);
> +	writel(val, sata_phy->regs + SATA_RESET_CTRL);
> +
> +	ret = wait_for_phy_ready(sata_phy->regs, SATA_P0_PHY_STAT,
> +				 SATA_P0_PHY_READY, 1);
> +	if (ret < 0)
> +		dev_err(&sata_phy->phy->dev,
> +			"PHY READY check failed\n");
> +	return ret;
> +}
> +
> +static int eic7700_sata_phy_exit(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val;
> +
> +	val = readl(sata_phy->regs + SATA_RESET_CTRL);
> +	val |= SATA_PHY_RESET | SATA_PORT_RESET;
> +	writel(val, sata_phy->regs + SATA_RESET_CTRL);
> +
> +	val = readl(sata_phy->regs + SATA_CLK_CTRL);
> +	val &= ~SATA_SYS_CLK_EN;
> +	writel(val, sata_phy->regs + SATA_CLK_CTRL);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops eic7700_sata_phy_ops = {
> +	.init		= eic7700_sata_phy_init,
> +	.exit		= eic7700_sata_phy_exit,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int eic7700_sata_phy_probe(struct platform_device *pdev)
> +{
> +	struct eic7700_sata_phy *sata_phy;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +
> +	sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
> +	if (!sata_phy)
> +		return -ENOMEM;
> +
> +	sata_phy->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(sata_phy->regs))
> +		return PTR_ERR(sata_phy->regs);
> +
> +	dev_set_drvdata(dev, sata_phy);
> +
> +	sata_phy->phy = devm_phy_create(dev, NULL, &eic7700_sata_phy_ops);
> +	if (IS_ERR(sata_phy->phy))
> +		return dev_err_probe(dev, PTR_ERR(sata_phy->phy),
> +				     "failed to create PHY\n");
> +
> +	phy_set_drvdata(sata_phy->phy, sata_phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return dev_err_probe(dev, PTR_ERR(phy_provider),
> +				     "failed to register PHY provider\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id eic7700_sata_phy_of_match[] = {
> +	{ .compatible = "eswin,eic7700-sata-phy" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, eic7700_sata_phy_of_match);
> +
> +static struct platform_driver eic7700_sata_phy_driver = {
> +	.probe	= eic7700_sata_phy_probe,
> +	.driver = {
> +		.of_match_table	= eic7700_sata_phy_of_match,
> +		.name  = "eic7700-sata-phy",
> +	}
> +};
> +module_platform_driver(eic7700_sata_phy_driver);
> +
> +MODULE_DESCRIPTION("SATA PHY driver for the ESWIN EIC7700 SoC");
> +MODULE_AUTHOR("Yulin Lu <luyulin@eswincomputing.com>");
> +MODULE_LICENSE("GPL");

Thanks,
Neil


