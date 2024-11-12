Return-Path: <devicetree+bounces-121146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BB29C5920
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 14:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B22A1F2277C
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 13:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6992915A864;
	Tue, 12 Nov 2024 13:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sokRkpjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD20145B3F
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731418119; cv=none; b=g7frzm6Iw+A+fXymfXqt21zBgc0w8sWLUmSBnvvfAcx5Vc8nXIzYKylSOhcT/rZc2H5DhxfgYfAW1dGkW2NIWXc5dC2cAczpUGAtbDVwCq44nPjsTNz3XZVbbQnUDQ2sGuFHMKZHJqedmkZmn1qMV94sgBwBZ3lFxOIxCUPLjXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731418119; c=relaxed/simple;
	bh=XJ80DbxIizVFPgfPrXifJvFLG8FIkBRi0n6SYjToORw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=UmlSE1bgyROxyR3lBVPsgv2XdJaY9KuP9IhbfdL4eJ6H6ZQkSKhQhcbC1NUH2yMTjJGOMRJS9u0Ynvbq9KTFsbEeAQwBg88KOevbRvgbYByDNHDU/r9a8Or077kj61Yn97hTmkd5f8Q7Rmb1kvtS7jCivjEltObLR9H/fX2U2pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sokRkpjP; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-381ee2e10dfso3306758f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 05:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731418116; x=1732022916; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YsaZoX49/UTmnCYipmJYozRv1F9KJT6zGJ2FPgwHPM0=;
        b=sokRkpjPC4yYnenU1Dzj8ydI4gQk65vnXM5J8VD16gnbTtJDYxdZvh9NOP3swthUDS
         VRpio6EwsvxhofyMTdWQDmmYo7P/T1thZ1dsmgQp/xJAMzVKbWqttQyizym1xByD8/VX
         hK4tauKGLUX3Fj9u3QYWiwMd93CEk1fQJkNKB06SYaQc28TJlLfn2kisc/60aa8opV+z
         XOzuJKs1/O11xQ6eM/84lBScFa/vF+0Ry+sxxdl2Q2cR4fR2MbiDgqZMHN+QudfUlGm/
         DXolQopY+rcTkrl1lA0g24BiOU6QvXZ6pecG3+ZDd85/Mrn8Sl/CXGmoVy1SmnGKbr9M
         AYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731418116; x=1732022916;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YsaZoX49/UTmnCYipmJYozRv1F9KJT6zGJ2FPgwHPM0=;
        b=twOkDKUnbDMjSbsEBCkeyHzYQ5u8up3z/U27ks6UqtO+1FtcZfkG+vFIdfvBwSUvll
         Ok9hWtsXKTizWwJVU2P6Ztc5NE4Da5FD6qmyzdPb1XE4w833tvHOVTgNZfZTugDWcFN1
         oMlnB55ZMMYyQ6EiDy9V4EwVgWq9wxl6ECMttctXBRXrckVGPoaEb3nkYzeIoPfiLtXV
         1zo+2IeEfxKWZHo6SCV9EGB5jhH7dAgVFNQrO8qEm/uAqJNieVRoxqyHVuwL8Q5CWNIa
         quTtsGENCCUMSZwwh3IxH0LzHLa0R27HKglINn11aEIo+KKW9nv4/gw8elMjISMaAXJM
         4SOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMht31jL0iEBusn1WDbpt3SYcHkyOvUKXVL7XBq8UU8W+Jpx2Wwp1Hgnpvrv2aBwlGkW8JOZBoSd0/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb2+h3Aq4paL8Zek6bOEiJH7DbWW4MFTYJ/Ya9GDUfU0QvSXe/
	EbNIGSXXcpjXAYh/c1CZmU0AdSeuCx2dov3HXqIZx88PiyW2I4O09X6BjO70NzE=
X-Google-Smtp-Source: AGHT+IGcxUmMqHN8a/cQuWmNKDKEmC6I6tUTcWYjNJv51eGA/I3ZpzDc+lB74YRdvxBPxcRvqG1PMg==
X-Received: by 2002:a05:6000:186e:b0:382:b57:f0b5 with SMTP id ffacd0b85a97d-3820b57f16amr747635f8f.12.1731418115692;
        Tue, 12 Nov 2024 05:28:35 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:860c:aff4:d0e9:9db8? ([2a01:e0a:982:cbb0:860c:aff4:d0e9:9db8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381eda04111sm15330046f8f.92.2024.11.12.05.28.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 05:28:35 -0800 (PST)
Message-ID: <69918f77-c0d6-4151-b725-e5051f0f6680@linaro.org>
Date: Tue, 12 Nov 2024 14:28:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 3/5] pinctrl: meson: add interface of of_xlate
To: xianwei.zhao@amlogic.com, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241112-a4_pinctrl-v5-0-3460ce10c480@amlogic.com>
 <20241112-a4_pinctrl-v5-3-3460ce10c480@amlogic.com>
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
In-Reply-To: <20241112-a4_pinctrl-v5-3-3460ce10c480@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2024 11:26, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Amlogic pinctrl software framework use system API of_gpio_simple_xlate
> which only support linear one-to-one correspondence to translate gpiospec
> to the GPIO number and flags before. It can not meet the non-linear needs.
> Add the interface satisfies the underlying driver to implement the
> transformation to meet the needs of various scenarios.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   drivers/pinctrl/meson/pinctrl-meson.c | 4 ++++
>   drivers/pinctrl/meson/pinctrl-meson.h | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
> index 253a0cc57e39..fc0c0bef38c0 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
> @@ -620,6 +620,10 @@ static int meson_gpiolib_register(struct meson_pinctrl *pc)
>   	pc->chip.base = -1;
>   	pc->chip.ngpio = pc->data->num_pins;
>   	pc->chip.can_sleep = false;
> +	if (pc->data->of_xlate) {
> +		pc->chip.of_gpio_n_cells = pc->data->of_gpio_n_cells;
> +		pc->chip.of_xlate = pc->data->of_xlate;
> +	}
>   
>   	ret = gpiochip_add_data(&pc->chip, pc);
>   	if (ret) {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
> index 7883ea31a001..cbb3f22552b9 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.h
> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
> @@ -120,6 +120,10 @@ struct meson_pinctrl_data {
>   	const struct pinmux_ops *pmx_ops;
>   	const void *pmx_data;
>   	int (*parse_dt)(struct meson_pinctrl *pc);
> +	int (*of_xlate)(struct gpio_chip *gc,
> +			const struct of_phandle_args *gpiospec,
> +			u32 *flags);
> +	int of_gpio_n_cells;
>   };
>   
>   struct meson_pinctrl {
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

