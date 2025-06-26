Return-Path: <devicetree+bounces-189969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 686C2AEA026
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 965034E2FDA
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F762E5419;
	Thu, 26 Jun 2025 14:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TcApoWX9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD70C289810
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947235; cv=none; b=nFPE9En+yjbnOo+eK3omgoR+6IEPKH6GY0IYfXtoVezde7Sk9J5ckDs75HHTPKjDU8bXmBbVumujLsQGS+zejCIbvD3HfktdImBFG8zF7SfTQirh76TlOVloNTnuEkG5f6rlxO8xNu6YZmrfNXdt1MJ02JINysxRhirA1Xi9UzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947235; c=relaxed/simple;
	bh=m9gYVDA+vIGLS/Y1cwTdJGaO3vOZMPWvV30eu6+ER3g=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=dmuv6aih51yUq/r4+51zX02Tm1NPVjBzJDaQo4NLjuzBFOJPVjDxjX8ZgWmh6zYGCIsGAC3h3U9LM0MiDVTReo5+1m3PS3EaLEZidnxqNGm48RODKAWHehscXpFK1YHdSzIk62KKydnp7RiRpi8Yb6yN6fpTL5rmXnmOgcRuCTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TcApoWX9; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-453426170b6so12525265e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750947229; x=1751552029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMJbxK+Vs0vHD/rLpXgatG28H8njeuPukA8Oh9Ztkak=;
        b=TcApoWX9+DqY1DYekru/PIyQ/0wOFY30HF3E7H/0AUR5gra/AhjC9yIv5STrhL1VPE
         TRxEt8SBNYBJxv+EqYk3ZE49IJqgvfX515NUsPi0g50FTomgZdMDJwZ1n3TaKF4sBbtw
         lwq+P3IrcwLOOWC66v8eK+p4SLBYhRKCbJvuUd2REXcNeBCs81jrHX3+T/8oaEDTCJ+K
         OHPlil9bWJnlMAbDEYwKFojG7GAblbWwNKekitKo7P2UMbT9lc++kKuimmhXO9p64SXT
         V5tfJXU9DKP8gXMEqq5ZZJisc9DcgZH3STNnkcTlzT8PjuNsMx7ZLCDfFbU/8G2+W+ZJ
         TiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947229; x=1751552029;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NMJbxK+Vs0vHD/rLpXgatG28H8njeuPukA8Oh9Ztkak=;
        b=hWeZ0753yJaeFWtwpaHG0LLw088KiIdvZShuJeaDEmqa44vMiyqa/7pq4yVIanCS81
         RrFJO4nHWFWoh2C5m1KTHCGkyhVo6O4CanbGFVCcLcOah4jKYUpteiDgN/RbMZ84oDcU
         2ANooF3EmHpVLeNxHQbQd/yLv+HX6R0A+mKSwgYlGeejIc16I1PFa6pmSrBvIyFELKI1
         5RztIMPLbTvh+90OC5YNccSz7AEd3pn9Dx3jTttU3AYFY3cbruBLloqIZMZ45f4rcVkf
         nb50h5JRDZzBPAMaT3mjk9Plbe1uTpu2bun2EvrMNqkPqiZhRPs+W6mZ4E+Af+ChF3Qp
         6v6w==
X-Gm-Message-State: AOJu0Yw8y3eXoRlDdJbm3XEQpG1sG8ZAUogmxYsTchV11ofTedma58dJ
	C0HBPSNJG4SO0PmBWlsLzobtKmypVfJxoLfTkH1JLWFHijIq1m5Qayqz9sQRE7O2/pk=
X-Gm-Gg: ASbGnctv8UkT7yqJRbjhm0smBEonJm0gAILHmV9YsWy2J0/lv3NHLTX7X6prxk5bFRF
	tbPnHDjFZUGcYiviK4NNW9/uotxNoSsYuVMBR7l/0saLK3J0IqtlZQXm8JXTwl5Wdg7ThFGpOsG
	x/xEiwaDCB80tJg3/I9TukY2yvJOy9oJEdAuKvLkXvCCVlv9jZDNdoH+FO/uaNzRCSbRG9xvIa0
	kjER+vkYeMq+hn584PP7s+J4emEH6uaJAd+0oEkRZu94IvkOYljm6g5HUEig1TiPt/V0+4544PR
	aa0AvblnuySSpLXys41xFIp30ZXh1twoipZX98FlxO3zvwvDzeOmib0y0wt9cDDdkNqoBZ3qugX
	dvkBK/9Am8x/nGcpI2FXsTXYz3+yIurhOHpku+MY=
X-Google-Smtp-Source: AGHT+IHAaJHtYzCJoYKM9gdvCp6tWkdRHXxVPebdwEL9y2imblqKnZ4SnYi7AI2VF2X9Y7HivIxDYA==
X-Received: by 2002:a05:600c:a01:b0:451:df07:d8e0 with SMTP id 5b1f17b1804b1-453889d0d93mr40114195e9.11.1750947228759;
        Thu, 26 Jun 2025 07:13:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a406ab6sm21614295e9.30.2025.06.26.07.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:13:48 -0700 (PDT)
Message-ID: <4da70304-96c6-4b2a-bd8c-0b53811089de@linaro.org>
Date: Thu, 26 Jun 2025 16:13:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/5] mfd: khadas-mcu: add Khadas Edge 2 registers
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <16807e13e034f85adc91d131f6c5046ce7d98d9c.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <16807e13e034f85adc91d131f6c5046ce7d98d9c.1746518265.git.efectn@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Add Khadas Edge 2 MCU registers to khadas-mcu.h and adjust some properties.
> Also, i've added some registers with V2 suffix,
> as same addresses were already exist for previous boards.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   drivers/mfd/khadas-mcu.c       |  8 ++++++--
>   include/linux/mfd/khadas-mcu.h | 25 +++++++++++++++++++++++++
>   2 files changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
> index ca4bd6cf5..199ed4925 100644
> --- a/drivers/mfd/khadas-mcu.c
> +++ b/drivers/mfd/khadas-mcu.c
> @@ -26,6 +26,10 @@ static bool khadas_mcu_reg_volatile(struct device *dev, unsigned int reg)
>   	case KHADAS_MCU_CHECK_USER_PASSWD_REG:
>   	case KHADAS_MCU_WOL_INIT_START_REG:
>   	case KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG:
> +	case KHADAS_MCU_LED_ON_RAM_REG:
> +	case KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG_V2:
> +	case KHADAS_MCU_WDT_EN_REG:
> +	case KHADAS_MCU_SYS_RST_REG:
>   		return true;
>   	default:
>   		return false;
> @@ -69,14 +73,14 @@ static const struct regmap_config khadas_mcu_regmap_config = {
>   	.reg_bits	= 8,
>   	.reg_stride	= 1,
>   	.val_bits	= 8,
> -	.max_register	= KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
> +	.max_register	= KHADAS_MCU_SYS_RST_REG,
>   	.volatile_reg	= khadas_mcu_reg_volatile,
>   	.writeable_reg	= khadas_mcu_reg_writeable,
>   	.cache_type	= REGCACHE_MAPLE,
>   };
>   
>   static struct mfd_cell khadas_mcu_fan_cells[] = {
> -	/* VIM1/2 Rev13+ and VIM3 only */
> +	/* VIM1/2 Rev13+, VIM3 and Edge2 only */
>   	{ .name = "khadas-mcu-fan-ctrl", },
>   };
>   
> diff --git a/include/linux/mfd/khadas-mcu.h b/include/linux/mfd/khadas-mcu.h
> index a99ba2ed0..de570e159 100644
> --- a/include/linux/mfd/khadas-mcu.h
> +++ b/include/linux/mfd/khadas-mcu.h
> @@ -35,26 +35,45 @@
>   #define KHADAS_MCU_FACTORY_TEST_REG		0x16 /* R */
>   #define KHADAS_MCU_BOOT_MODE_REG		0x20 /* RW */
>   #define KHADAS_MCU_BOOT_EN_WOL_REG		0x21 /* RW */
> +#define KHADAS_MCU_BOOT_EN_DCIN_REG_V2		0x21 /* RW */
>   #define KHADAS_MCU_BOOT_EN_RTC_REG		0x22 /* RW */
>   #define KHADAS_MCU_BOOT_EN_EXP_REG		0x23 /* RW */
> +#define KHADAS_MCU_LED_MODE_ON_REG_V2		0x23 /* RW */
> +#define KHADAS_MCU_LED_MODE_OFF_REG_V2		0x24 /* RW */
>   #define KHADAS_MCU_BOOT_EN_IR_REG		0x24 /* RW */
>   #define KHADAS_MCU_BOOT_EN_DCIN_REG		0x25 /* RW */
> +#define KHADAS_MCU_RGB_ON_R_REG			0x25 /* RW */
> +#define KHADAS_MCU_RGB_ON_G_REG			0x26 /* RW */
>   #define KHADAS_MCU_BOOT_EN_KEY_REG		0x26 /* RW */
> +#define KHADAS_MCU_RGB_ON_B_REG			0x27 /* RW */
>   #define KHADAS_MCU_KEY_MODE_REG			0x27 /* RW */
> +#define KHADAS_MCU_RGB_OFF_R_REG		0x28 /* RW */
>   #define KHADAS_MCU_LED_MODE_ON_REG		0x28 /* RW */
> +#define KHADAS_MCU_RGB_OFF_G_REG		0x29 /* RW */
>   #define KHADAS_MCU_LED_MODE_OFF_REG		0x29 /* RW */
> +#define KHADAS_MCU_RGB_OFF_B_REG		0x2a /* RW */
> +#define KHADAS_MCU_REST_CONF_REG		0x2c /* WO */
>   #define KHADAS_MCU_SHUTDOWN_NORMAL_REG		0x2c /* RW */
>   #define KHADAS_MCU_MAC_SWITCH_REG		0x2d /* RW */
>   #define KHADAS_MCU_MCU_SLEEP_MODE_REG		0x2e /* RW */
> +#define KHADAS_MCU_BOOT_EN_IR_REG_V2		0x2f /* RW */
>   #define KHADAS_MCU_IR_CODE1_0_REG		0x2f /* RW */
>   #define KHADAS_MCU_IR_CODE1_1_REG		0x30 /* RW */
> +#define KHADAS_MCU_IR1_CUST1_REG		0x30 /* RW */
>   #define KHADAS_MCU_IR_CODE1_2_REG		0x31 /* RW */
> +#define KHADAS_MCU_IR1_CUST2_REG		0x31 /* RW */
>   #define KHADAS_MCU_IR_CODE1_3_REG		0x32 /* RW */
> +#define KHADAS_MCU_IR1_ORDER1_REG		0x32 /* RW */
>   #define KHADAS_MCU_USB_PCIE_SWITCH_REG		0x33 /* RW */
> +#define KHADAS_MCU_IR1_ORDER2_REG		0x33 /* RW */
> +#define KHADAS_MCU_IR2_CUST1_REG		0x34 /* RW */
>   #define KHADAS_MCU_IR_CODE2_0_REG		0x34 /* RW */
>   #define KHADAS_MCU_IR_CODE2_1_REG		0x35 /* RW */
> +#define KHADAS_MCU_IR2_CUST2_REG		0x35 /* RW */
>   #define KHADAS_MCU_IR_CODE2_2_REG		0x36 /* RW */
> +#define KHADAS_MCU_IR2_ORDER1_REG		0x36 /* RW */
>   #define KHADAS_MCU_IR_CODE2_3_REG		0x37 /* RW */
> +#define KHADAS_MCU_IR2_ORDER2_REG		0x36 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_0_REG		0x40 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_1_REG		0x41 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_2_REG		0x42 /* RW */
> @@ -69,6 +88,11 @@
>   #define KHADAS_MCU_SHUTDOWN_NORMAL_STATUS_REG	0x86 /* RO */
>   #define KHADAS_MCU_WOL_INIT_START_REG		0x87 /* WO */
>   #define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG	0x88 /* WO */
> +#define KHADAS_MCU_LED_ON_RAM_REG		0x89 /* WO */
> +#define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG_V2	0x8A /* WO */
> +#define KHADAS_MCU_WDT_EN_REG			0x8B /* WO */
> +#define KHADAS_MCU_SYS_RST_REG			0x91 /* WO */
> +
>   
>   enum {
>   	KHADAS_BOARD_VIM1 = 0x1,
> @@ -76,6 +100,7 @@ enum {
>   	KHADAS_BOARD_VIM3,
>   	KHADAS_BOARD_EDGE = 0x11,
>   	KHADAS_BOARD_EDGE_V,
> +	KHADAS_BOARD_EDGE2,
>   };
>   
>   /**

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

