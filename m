Return-Path: <devicetree+bounces-186284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 317BDADAEDD
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BAF81891C4E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BD42E3385;
	Mon, 16 Jun 2025 11:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EKzlwChv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781AF2E2EE9
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074065; cv=none; b=dt61V7kCU04H8015C8afw+EC2jH+T8O9cHlbBdO7tuQ+mZT4tBPfaU/kM/J08+Pc2pEM2eoXuXMoXsxy9S19dB0NYeWEAdYXOitqvIJPklhIWjC6a34XG/GZryQR51mShsEsgN4ir82c7Ng7nv6xOqtMwkmNaQ+/0dK63pFgeSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074065; c=relaxed/simple;
	bh=yJlk0KOOtIxUWFTDLMyAIEGgJPOOaVLvVHklyUhuMG4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JC+BQfXfzX9rQscokXpgL6oBaXAGhIoTdPFrr+BLXV2PSF4VcX31GjbicB/ft4nNMOXk5cc8lqWIAXppdY0DyOMrTRIQCEySsr9/vbKe0VIdzQXFti5fE2yCJKFPJ97Tc4kPJtn5P3eHQsSh4EzIP3LOL6YMgscpF4tizaCO3Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EKzlwChv; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-453398e90e9so21796825e9.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750074062; x=1750678862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sRD0hhehQiVFVz1/K2fPoR0pfi2oY4bqTmnvXtAuBI=;
        b=EKzlwChvJMf4UZz0JZ1d4YlbAbdyLU8BFVrtbowndqK+skcbOJY8y/VFx4qg1zHQW4
         M3HAcFccQMNHSRDr/yp3+VQjqDSRfo/ZDHR1+b3PCztxTjDtOy2LknBQTfmhBGBX00tT
         uzhipgHJKlG2mcAVE2hZ71IWKIOx+kgxM+0sduox1Sb/QRO/K9CgfRmqKKOmoWRbEqHX
         KWljwZCt3yHo3s51QtYh9NyASliPQwjIVlXvVfsuYLWADh6VRm6MACsR4lSWxuHxKXZk
         F3FRmnMVVUlMwCV+KhdR7Zqnf9x4/LMP2Ults+qbgt6LRJaFHU/7EyCLGSSLQBcmKa2K
         9i0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074062; x=1750678862;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8sRD0hhehQiVFVz1/K2fPoR0pfi2oY4bqTmnvXtAuBI=;
        b=NH1oxyFcBQEDyzS4MTTbPRupCZuxQWiMzrplbrtI735wdHvhRAuetn2Z83ik1+g3tA
         BMoKyRhA4rUGMoK8D7NVTPk8ExN95LVAKQNI8QguDh6x+HsKqSS1dr88bT6z5XloeHch
         BXiLHYNB7KY5+9XYKaLS4qD6gilf0cR9jRc1MCW9atvQ9fyD/Rxt+2Di8LiKJjp1aR5R
         lpJ4a6cPuaBAavCrLs6Dr7z9tu+MWFqRk2B+ky/1ZN2ktbzPjQLlpEcXlEw1V4zxNMbe
         Ms2niUJVMw7IPRgLg8Tr7TA+HF9b/DnE/SyHe1KwXIEgOTkcJDUZgPxgkk8QBOBhJ87G
         YpGA==
X-Forwarded-Encrypted: i=1; AJvYcCXFBs00uSVmeQjUeXLTWIFtKaYBdv46eK/a+kh5VEGyHyG4sR4jO5tzbb4MVudgvJBdv2Tb0L1zH06i@vger.kernel.org
X-Gm-Message-State: AOJu0YzLL1OkWLnSf7C7jaKrMXXEAw46S6e0jzRtW88pR+/33rlHkBo3
	UIejVDOopRS3KQKOnAHE76EF8j94dryGDHFwVLLOASgAcAZTN4hbdR/IOAgapNFBTLM=
X-Gm-Gg: ASbGncsMVreEa0p1iiiujZB4reEimbGFiX67VpBim0JTnqKOoMATwKHT0z9MDugatyk
	5vBUC7xoDHn63KPkYBrVTw/RHhS26Z+5EvGdJyVbJxUNo8V48UMFBIEMwIxrgkAooqwXepZU5uU
	Tkyo9ec1kDKTRN1WuWZXQEGYWBS2Pu4a/maFYchR7ix67Z8zrQnRMXE7dXxZA0DaLmKdBejQdsG
	HpX5ya68uWM35UNdFwAyY8cebBrB5pI4piXHtKXnagKk3YtNQyQVsx7dVyYY2Be2oFGZyqG/iu5
	cpD7VBHboZ4ig1YRwkrC5iWlfyNqaQJFQDd53lcNgxHl9worOWWz01/K/Vzk9sCw3esyUyyjveV
	nDtsqDGbvvw3XxHbAPREakuOIGt3DxLbiFDpH
X-Google-Smtp-Source: AGHT+IHlwg0FqnF45Bt2SZ9KIFe4JzMFcl0EqIteVDIf0H4otS2ZOjN+6NWiqd03gG2828hHw12IWw==
X-Received: by 2002:a05:600c:3ac6:b0:450:ceb2:67dd with SMTP id 5b1f17b1804b1-4533cb5751bmr75622585e9.33.1750074061762;
        Mon, 16 Jun 2025 04:41:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6c7:97de:65a8:488a? ([2a01:e0a:3d9:2080:6c7:97de:65a8:488a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54d1fsm10719856f8f.2.2025.06.16.04.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:41:01 -0700 (PDT)
Message-ID: <6b2a469c-c2b4-435a-8999-c69ac63fc041@linaro.org>
Date: Mon, 16 Jun 2025 13:41:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
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
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/06/2025 11:45, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
>   1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>   	LAYOUT_SIZE,
>   };
>   
> +struct eusb2_repeater_init_tbl_reg {
> +	u8 reg;

No need to be u8 here, could simply be unsigned int.

> +	u8 value;

Same for this one since it's passed to regmap_write which takes unsigned int.

Using u8 here won't save any memory since u8 will be aligned on at least u32
reading u8 will involve at least an u32 read with some masking operations,
and perhaps the compiler will just drop u8 after all.

> +};
> +
>   struct eusb2_repeater_cfg {
> -	const u32 *init_tbl;
> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>   	int init_tbl_num;
>   	const char * const *vreg_list;
>   	int num_vregs;
> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
>   	"vdd18", "vdd3",
>   };
>   
> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x8,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x5,
> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x8 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x5 },
>   };
>   
> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x5,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x2,
> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x5 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x2 },
>   };
>   
>   static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>   	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>   	struct device_node *np = rptr->dev->of_node;
>   	struct regmap *regmap = rptr->regmap;
> -	const u32 *init_tbl = rptr->cfg->init_tbl;
> -	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
> -	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
> -	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
>   	u32 base = rptr->base;
> -	u32 val;
> +	u32 poll_val;
>   	int ret;
> -
> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
> +	u8 val;
>   
>   	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>   	if (ret)
> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>   
>   	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>   
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
> +	/* Write registers from init table */
> +	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
> +			     rptr->cfg->init_tbl[i].value);
>   
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
> +	/* Override registers from devicetree values */
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>   
> -	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
> +
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
> +
> +	/* Wait for status OK */
> +	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
> +				       poll_val & RPTR_OK, 10, 5);
>   	if (ret)
>   		dev_err(rptr->dev, "initialization timed-out\n");
>   
> 

With that fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

