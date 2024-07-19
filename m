Return-Path: <devicetree+bounces-86758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EDE93763F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 11:59:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D21852812A8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 09:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B302C82D66;
	Fri, 19 Jul 2024 09:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KiQn2WIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2C36AF5
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721383159; cv=none; b=NF0JbeN/RclKDmEmkS2vhYlG7Hcino0ILvL8ki6rIQUDyG3LOTeI1oIRzdfHwDa5jhi9rfBIcu6Syo58hR9bP7ybUgtNbvm8UAQ4nX2W2DZT7RldcunDeigWRk2XhHBbao/FvuPJzi9UvZWhnjShx7u20abHW6paEk6kzdYNq64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721383159; c=relaxed/simple;
	bh=aVmA+avmUqXiWFPYEm8lwBrN8qK+Wsbxt77EdLdEEjs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LHFKPulCQCxOiQOksCLa5t67fAFbZBMVP9U2FqufDoud5PVWIwhn4QXGFa6ael+Ca/DOqFq3fMUb5l8g0KSS6m6zFgx818AJO2wqkUPuk7q9GLl94qJxNR7T2NhLgtn+1TpdgOorZD3RwEkBxHWJ4/w1DlZky1uT+isNgl1BzUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KiQn2WIq; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4279c924ca7so11079765e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 02:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721383155; x=1721987955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u0FPyw9xImHOOOT0F77KVGeWOAXsYnfRWXpu1Qn9tx4=;
        b=KiQn2WIqrz/yeWiZpyszE9WPu3dFttg281HuRcizjz7jeTBZDSoC+C+DJ4NFrskMio
         xVk8YFTyvMp7wSubdGOBkIJZxy5dr/G/oM05zvEWeIpPijOksJ5KoF/w2fTcjfti18RX
         Ara6i70Z/LIm0Lhuks6vrjk+ji/HMNS8irh22Z809O3O/dhf/O7ZbuhIJ32J8f/e7PwF
         T4fBe41qyxFuW0oWc/0GhHv9Ad6X4az0sQxK1b6eHWiHa+O/SebcvfukyVIrbaGAQXqW
         k+p6OBEE5c7un2z43xz1kMJEWRknAh7jACKS6Pm6MEtOMueK7ggd7zhKZ8aRFakDfETC
         PWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721383155; x=1721987955;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u0FPyw9xImHOOOT0F77KVGeWOAXsYnfRWXpu1Qn9tx4=;
        b=kHxv4DcrXo3ZyfQ7ZZpXkinXlQS4MkFemNkTasD5/lE2d56Ky5Ldxu4J5487JpLUib
         1s1mD6G8JQmW13hc7s+fwnNUvQv/gz4kuYtEI/KUJwjJkPw53HZ0gydSRf9RXo3rRRA4
         hpHjHmH772uNhZvfz6d1/CZrL8WEuSxSKlflSFNIlZjj9EOrhrkpcjCkh3CAfHqyuS4w
         p/wFgBynF9dsYa3FgO/fCHKqSaWcExFH+LepVq1uMhl13ZgKjfnk2DVdILvYfmPkg6CE
         +cLYPMeXBTsOU7wI3xEi9FK5hVJ+nzmaqFCmdeqKqukawHrB5xHsQcu8t8Wfkw2vtNE6
         pmRg==
X-Forwarded-Encrypted: i=1; AJvYcCW7RM+G9xK6YLnXroVndyR7T78mgFR2cvu+YD487vAotpqSCARtXR5XbIp5dRLxPlwm9yzeqzCsCXer1XQSjKmUL679Nb9IXrdobQ==
X-Gm-Message-State: AOJu0Yy+H2lV1pOBRSYWjMLqTkKyfsB+iS+MwXk2g70EuKk+O1HzTCTn
	E3Y/MLikALdYvLbUFtmeBxspmSY7rSivDRrMaP4SPVfVv4AdnK4RqIWuPi+mB7w=
X-Google-Smtp-Source: AGHT+IEW/vrpFybzO18z+EE1eYgzPxmvGwr4RswHCKyvMGlhoo9a2CzS1t/KunO7TkXV0sieu5vNJQ==
X-Received: by 2002:a05:6000:186:b0:368:3717:10c7 with SMTP id ffacd0b85a97d-36837171221mr4656534f8f.4.1721383155186;
        Fri, 19 Jul 2024 02:59:15 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ec82:adbe:8be7:588d? ([2a01:e0a:982:cbb0:ec82:adbe:8be7:588d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3687869447dsm1151425f8f.53.2024.07.19.02.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jul 2024 02:59:14 -0700 (PDT)
Message-ID: <5c57fbc8-d911-46ee-b421-ec31a00e0f91@linaro.org>
Date: Fri, 19 Jul 2024 11:59:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] clk: meson: axg-audio: setup regmap max_register
 based on the SoC
To: Jerome Brunet <jbrunet@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240719093934.3985139-1-jbrunet@baylibre.com>
 <20240719093934.3985139-3-jbrunet@baylibre.com>
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
In-Reply-To: <20240719093934.3985139-3-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/07/2024 11:39, Jerome Brunet wrote:
> The register region of axg-audio tends to grow with the addition of
> new supported SoC. Mapping slightly more has not been causing problem
> so far but it is not viable to continue like this long term.
> 
> Setup the max register based on what is necessary on the related SoC.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>   drivers/clk/meson/axg-audio.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/meson/axg-audio.c b/drivers/clk/meson/axg-audio.c
> index e03a5bf899c0..2426f3dbb7a2 100644
> --- a/drivers/clk/meson/axg-audio.c
> +++ b/drivers/clk/meson/axg-audio.c
> @@ -1726,11 +1726,10 @@ static const struct reset_control_ops axg_audio_rstc_ops = {
>   	.status = axg_audio_reset_status,
>   };
>   
> -static const struct regmap_config axg_audio_regmap_cfg = {
> +static struct regmap_config axg_audio_regmap_cfg = {
>   	.reg_bits	= 32,
>   	.val_bits	= 32,
>   	.reg_stride	= 4,
> -	.max_register	= AUDIO_CLK_SPDIFOUT_B_CTRL,
>   };
>   
>   struct audioclk_data {
> @@ -1739,6 +1738,7 @@ struct audioclk_data {
>   	struct meson_clk_hw_data hw_clks;
>   	unsigned int reset_offset;
>   	unsigned int reset_num;
> +	unsigned int max_register;
>   };
>   
>   static int axg_audio_clkc_probe(struct platform_device *pdev)
> @@ -1760,6 +1760,7 @@ static int axg_audio_clkc_probe(struct platform_device *pdev)
>   	if (IS_ERR(regs))
>   		return PTR_ERR(regs);
>   
> +	axg_audio_regmap_cfg.max_register = data->max_register;
>   	map = devm_regmap_init_mmio(dev, regs, &axg_audio_regmap_cfg);
>   	if (IS_ERR(map)) {
>   		dev_err(dev, "failed to init regmap: %ld\n", PTR_ERR(map));
> @@ -1828,6 +1829,7 @@ static const struct audioclk_data axg_audioclk_data = {
>   		.hws = axg_audio_hw_clks,
>   		.num = ARRAY_SIZE(axg_audio_hw_clks),
>   	},
> +	.max_register = AUDIO_CLK_PDMIN_CTRL1,
>   };
>   
>   static const struct audioclk_data g12a_audioclk_data = {
> @@ -1839,6 +1841,7 @@ static const struct audioclk_data g12a_audioclk_data = {
>   	},
>   	.reset_offset = AUDIO_SW_RESET,
>   	.reset_num = 26,
> +	.max_register = AUDIO_CLK_SPDIFOUT_B_CTRL,
>   };
>   
>   static const struct audioclk_data sm1_audioclk_data = {
> @@ -1850,6 +1853,7 @@ static const struct audioclk_data sm1_audioclk_data = {
>   	},
>   	.reset_offset = AUDIO_SM1_SW_RESET0,
>   	.reset_num = 39,
> +	.max_register = AUDIO_CLK_SPDIFOUT_B_CTRL,
>   };
>   
>   static const struct of_device_id clkc_match_table[] = {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

