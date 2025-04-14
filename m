Return-Path: <devicetree+bounces-166628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 998AFA87D6D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EC9716FA44
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BCF0266B7D;
	Mon, 14 Apr 2025 10:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lu5exM9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493A719DF5B
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744626099; cv=none; b=o7PimxgpW3BDzwn5Af8HJcoKXxye+N6yLG3cXN5jl1Lu9c9Ioj2qymO9/d8eF/guLwcUuzzY8NCdk5c3OYAbIAuMY1OPIpSuku0Rd+BaiRLZ/5phNGkGmH6mjKuNHAbZK5WR89OWEQLUGfd3k6Rwua2q9ML2GB1+lP60+zgFayc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744626099; c=relaxed/simple;
	bh=61ekFFKexwgO5M3A5GKowZa+bb0JV9zD+js9VS8c5fo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bxvQh3uWUKQng6PoH8A3mZojX1DFG2bDIQFGivf0Io5pS714zI/bEnwlDyFlFPHDDD7+3xsnHNVx2JAmSPPp5Suzg2MU7ngHwsN6KbhysO5WwLKWOyZcxkwlaGyDZqXXR78DkA0jZiYeW2cXJiWitZuTzIPtQW0nEYFLJhxhhIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lu5exM9x; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c1ef4ae3aso2489191f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744626094; x=1745230894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yoJfn+WfhcCob3lYkX4rLFC4vL/JU+QDHeEHm6Z8Pus=;
        b=lu5exM9xsBE4NFGpJZJDll9KJ6ybKmjRvEHeYnavWIJdsabns6chJjaMJuYi2qb2V1
         74/JIjV/+gFGpDK8nXfNIWpeCFNI/sTnH8fIZgn6LZwIJqsBoro7W+wn/oanqDEIkzJe
         pzlviIdNpXyb9zX2ddbZeuiTMam43LQ/CHChDkMqJmACMsM9ZPyt0vrZgTOI7G/h9v/e
         +8dr6zA76+qjClfYpVSUZJf1IGHEsCJllYZYjjcZ7AXlBzMU8WMd88HWIsdkY9lZ0M7X
         I2jjxE+6PwSVSqo2uM8/NKk+ytltXtrFfV4ku8ONSQh52iYbLEFMvB6N/yV7CuPvrkw9
         eJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744626094; x=1745230894;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yoJfn+WfhcCob3lYkX4rLFC4vL/JU+QDHeEHm6Z8Pus=;
        b=JV8vAHQsgLhLbgBQF3Hs6kppdJIsW9FpEKvzW3NQrqVZ+scVl4YyF0aCBoYpFc7ZeW
         3etkV+lAcg58INP0F/Sdqo4cMTjCLgctR1LWEpqjuVAlQjUaVSi/ISoFu69unJkLSbNr
         MUzcdHshe8eoN0kNsiRtqOYRj5DZzgK+CtmkLpmXmo7bUuIHuHzpGHF7pKzCDUMLRt1m
         9aKkL5yfNk1qnIgyrWT8It2aCRmvd7YspbVDZi/2eHfJ0jlh/WwgcD3m0wg2qNM0B69m
         lwW0kQ1Aglscxkm3zED3ZuQZlb5ILVFYruUH/QK+zzLZuwxKlYJE3TgwoEu3nMcmpv4Z
         SlwA==
X-Forwarded-Encrypted: i=1; AJvYcCWAb49dF1Zh2PXtPa5pr3L02mTM1RTF9kakmBAw6NZR5ZNzwpdx8J8I4CpJzEtMdw4cdST74QiHbvjG@vger.kernel.org
X-Gm-Message-State: AOJu0YwyEFUaR0/Rgdy+seXnmaREP9bPFV76jhOi2ZTNgNRIIZjbzaqe
	pjTF/zX3V7KVZqsNE6D38XSamJYAUTM6U/mWBF0lkx3cdPqTZKlvvYy9KVDLuus=
X-Gm-Gg: ASbGncuIdE7itHQj3ISU1ljUSEDDgO73G1dmoXN688NCjWs1YWtKCufUmuX8XKgZQTG
	Gm4xW4m4j4PU+cTSqe/+Fwc1LfkwsdZbRUj6w+sN4H5Z7rsckusxGsSML4CqcD3WuqC8KCEjSrs
	5OS1j9k7Ps3Ypbmb1eLSDJnQ7k2e1ajHF7kqbmVUtOHfHZr7pNNm4OOaatoauEy53HNeiH3RJO/
	GoQdLycfIcxtZrQ2PnSfTNh9LmDpEy+iXL7IYNt9w0SzHWvbRUACN9TNpTZo07Fw2RJchZ/yrWl
	Q/y7KRNWQkK8wzEZyEAEoliRGo3GpU5ESUJmcuKJZENzIALhMjx4DfjGPHMMyeXzj+toSGhBHm8
	UY44EJ5D/MNnRUqRB/6wKt3X3jbUr
X-Google-Smtp-Source: AGHT+IGi7pe4joqsduvh0sVavfTwIAZtPwHu9vH2XybtTdHDqiTbqFeoh96FoPqaD/ghle7zKPCzbg==
X-Received: by 2002:a05:6000:1ace:b0:391:1218:d5f4 with SMTP id ffacd0b85a97d-39e7658b3aemr9537331f8f.23.1744626094457;
        Mon, 14 Apr 2025 03:21:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bf8a:3473:5c13:9743? ([2a01:e0a:3d9:2080:bf8a:3473:5c13:9743])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae964048sm10618166f8f.2.2025.04.14.03.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:21:34 -0700 (PDT)
Message-ID: <608488e4-a744-4aef-af17-2bf19ea5b788@linaro.org>
Date: Mon, 14 Apr 2025 12:21:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/7] soc: amlogic: clk-measure: Define MSR_CLK's
 register offset separately
To: chuan.liu@amlogic.com, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250414-clk-measure-v2-0-65077690053a@amlogic.com>
 <20250414-clk-measure-v2-1-65077690053a@amlogic.com>
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
In-Reply-To: <20250414-clk-measure-v2-1-65077690053a@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/04/2025 12:12, Chuan Liu via B4 Relay wrote:
> From: Chuan Liu <chuan.liu@amlogic.com>
> 
> Since the MSR_CLK register offset differs between chip variants, we
> replace the macro-based definition with chip-specific assignments.
> 
> Change the max_register in regmap_config to be retrieved from DTS.
> 
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
>   drivers/soc/amlogic/meson-clk-measure.c | 54 ++++++++++++++++++++++++---------
>   1 file changed, 39 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index 39638d6a593c..82c008ade894 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -14,11 +14,6 @@
>   
>   static DEFINE_MUTEX(measure_lock);
>   
> -#define MSR_CLK_DUTY		0x0
> -#define MSR_CLK_REG0		0x4
> -#define MSR_CLK_REG1		0x8
> -#define MSR_CLK_REG2		0xc
> -
>   #define MSR_DURATION		GENMASK(15, 0)
>   #define MSR_ENABLE		BIT(16)
>   #define MSR_CONT		BIT(17) /* continuous measurement */
> @@ -39,9 +34,17 @@ struct meson_msr_id {
>   	const char *name;
>   };
>   
> +struct msr_reg_offset {
> +	unsigned int duty_val;
> +	unsigned int freq_ctrl;
> +	unsigned int duty_ctrl;
> +	unsigned int freq_val;
> +};
> +
>   struct meson_msr_data {
>   	struct meson_msr_id *msr_table;
>   	unsigned int msr_count;
> +	struct msr_reg_offset *reg;

const truct msr_reg_offset *reg;

>   };
>   
>   struct meson_msr {
> @@ -495,6 +498,7 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
>   			    unsigned int duration)
>   {
>   	struct meson_msr *priv = clk_msr_id->priv;
> +	struct msr_reg_offset *reg = priv->data.reg;
>   	unsigned int val;
>   	int ret;
>   
> @@ -502,22 +506,22 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
>   	if (ret)
>   		return ret;
>   
> -	regmap_write(priv->regmap, MSR_CLK_REG0, 0);
> +	regmap_write(priv->regmap, reg->freq_ctrl, 0);
>   
>   	/* Set measurement duration */
> -	regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_DURATION,
> +	regmap_update_bits(priv->regmap, reg->freq_ctrl, MSR_DURATION,
>   			   FIELD_PREP(MSR_DURATION, duration - 1));
>   
>   	/* Set ID */
> -	regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_CLK_SRC,
> +	regmap_update_bits(priv->regmap, reg->freq_ctrl, MSR_CLK_SRC,
>   			   FIELD_PREP(MSR_CLK_SRC, clk_msr_id->id));
>   
>   	/* Enable & Start */
> -	regmap_update_bits(priv->regmap, MSR_CLK_REG0,
> +	regmap_update_bits(priv->regmap, reg->freq_ctrl,
>   			   MSR_RUN | MSR_ENABLE,
>   			   MSR_RUN | MSR_ENABLE);
>   
> -	ret = regmap_read_poll_timeout(priv->regmap, MSR_CLK_REG0,
> +	ret = regmap_read_poll_timeout(priv->regmap, reg->freq_ctrl,
>   				       val, !(val & MSR_BUSY), 10, 10000);
>   	if (ret) {
>   		mutex_unlock(&measure_lock);
> @@ -525,10 +529,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
>   	}
>   
>   	/* Disable */
> -	regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_ENABLE, 0);
> +	regmap_update_bits(priv->regmap, reg->freq_ctrl, MSR_ENABLE, 0);
>   
>   	/* Get the value in multiple of gate time counts */
> -	regmap_read(priv->regmap, MSR_CLK_REG2, &val);
> +	regmap_read(priv->regmap, reg->freq_val, &val);
>   
>   	mutex_unlock(&measure_lock);
>   
> @@ -599,11 +603,10 @@ static int clk_msr_summary_show(struct seq_file *s, void *data)
>   }
>   DEFINE_SHOW_ATTRIBUTE(clk_msr_summary);
>   
> -static const struct regmap_config meson_clk_msr_regmap_config = {
> +static struct regmap_config meson_clk_msr_regmap_config = {
>   	.reg_bits = 32,
>   	.val_bits = 32,
>   	.reg_stride = 4,
> -	.max_register = MSR_CLK_REG2,
>   };
>   
>   static int meson_msr_probe(struct platform_device *pdev)
> @@ -611,6 +614,7 @@ static int meson_msr_probe(struct platform_device *pdev)
>   	const struct meson_msr_data *match_data;
>   	struct meson_msr *priv;
>   	struct dentry *root, *clks;
> +	struct resource *res;
>   	void __iomem *base;
>   	int i;
>   
> @@ -636,15 +640,23 @@ static int meson_msr_probe(struct platform_device *pdev)
>   	       match_data->msr_count * sizeof(struct meson_msr_id));
>   	priv->data.msr_count = match_data->msr_count;
>   
> -	base = devm_platform_ioremap_resource(pdev, 0);
> +	base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
>   	if (IS_ERR(base))
>   		return PTR_ERR(base);
>   
> +	meson_clk_msr_regmap_config.max_register = resource_size(res) - 4;
>   	priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
>   					     &meson_clk_msr_regmap_config);
>   	if (IS_ERR(priv->regmap))
>   		return PTR_ERR(priv->regmap);
>   
> +	priv->data.reg = devm_kzalloc(&pdev->dev, sizeof(struct msr_reg_offset),
> +				      GFP_KERNEL);
> +	if (!priv->data.reg)
> +		return -ENOMEM;
> +
> +	memcpy(priv->data.reg, match_data->reg, sizeof(struct msr_reg_offset));
> +
>   	root = debugfs_create_dir("meson-clk-msr", NULL);
>   	clks = debugfs_create_dir("clks", root);
>   
> @@ -664,29 +676,41 @@ static int meson_msr_probe(struct platform_device *pdev)
>   	return 0;
>   }
>   
> +struct msr_reg_offset msr_reg_offset = {
> +	.duty_val = 0x0,
> +	.freq_ctrl = 0x4,
> +	.duty_ctrl = 0x8,
> +	.freq_val = 0xc,
> +};

This should be static const

> +
>   static const struct meson_msr_data clk_msr_gx_data = {
>   	.msr_table = (void *)clk_msr_gx,
>   	.msr_count = ARRAY_SIZE(clk_msr_gx),
> +	.reg = &msr_reg_offset,
>   };
>   
>   static const struct meson_msr_data clk_msr_m8_data = {
>   	.msr_table = (void *)clk_msr_m8,
>   	.msr_count = ARRAY_SIZE(clk_msr_m8),
> +	.reg = &msr_reg_offset,
>   };
>   
>   static const struct meson_msr_data clk_msr_axg_data = {
>   	.msr_table = (void *)clk_msr_axg,
>   	.msr_count = ARRAY_SIZE(clk_msr_axg),
> +	.reg = &msr_reg_offset,
>   };
>   
>   static const struct meson_msr_data clk_msr_g12a_data = {
>   	.msr_table = (void *)clk_msr_g12a,
>   	.msr_count = ARRAY_SIZE(clk_msr_g12a),
> +	.reg = &msr_reg_offset,
>   };
>   
>   static const struct meson_msr_data clk_msr_sm1_data = {
>   	.msr_table = (void *)clk_msr_sm1,
>   	.msr_count = ARRAY_SIZE(clk_msr_sm1),
> +	.reg = &msr_reg_offset,
>   };
>   
>   static const struct of_device_id meson_msr_match_table[] = {
> 

With this fixed:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

