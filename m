Return-Path: <devicetree+bounces-34930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDA583BBF7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64C7F1C22720
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BF217993;
	Thu, 25 Jan 2024 08:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tpr8R5wO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F267018EA1
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706171277; cv=none; b=EPi1vkBRYPmqKZiOYxup117YlNOQC9yoabIINOYtesgJV52YDRf0Jrn2mi6PE13LQXuNib/mcPYvKh+CikhuqvBLEee6r4cDT0QYpqUGn9iqBOtlgU5xnTT6hsd7Iwr0ixnQbgbbrUaVPV4WXfDAfieT4xWo9RVO/TAJalsEUis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706171277; c=relaxed/simple;
	bh=2XiYbkPw3i5edkHdoGLqeOFp6GYs53ELzsqZ7MhTKYc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oV+ejbbl+ClAM+DrRcmf9b9ZBBKI8Rdf4MEFP+L+O26kQYVFGEYNYtOG/TAmhlisHyM9TVPMqp3Etlczn1LLO/+poMhPwoiPIR2zjbz5J7jz6j5WVTXyyu4vb3Wu4tD3wRHw3ZAErE2zuviUyxRNgzA3zEclItUaF6HByvmKoMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tpr8R5wO; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40ed2333c8fso2314785e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706171273; x=1706776073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hdaT3eh+IWzZ9wRxEt609lH8JpOZmnfT+gedHYcaONU=;
        b=Tpr8R5wOfD29f+mCowH8ji+CVy+00qVI08xq9LuMevGu5r8L01yUirOIM1tSFH/wJS
         zYedsWmNhnF/zIE1ySX1K7Dtp79xI4USH2DDfNlCTbUJPVHb/n0pZawPq3L84eYextSL
         AwrHyce2soqYMZ5yITe+pz/DcKs1HQeEaLL3vcJtH5IGmwxbEH2+7WMmRYu9Bb5q3Ahc
         4cG8Wt+mLbg/3Xha6pGYERQbFobRkRyYWBLUbO1HnswJEAUnmtiRwx5J44WrQhpnJAcl
         Tj9ew7YmZB9S6Rbif6O/OPTSQfnQDt4hVO69YsAXF39goTnZ9WkKAq4HeifEiI2P89dL
         2gdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706171273; x=1706776073;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hdaT3eh+IWzZ9wRxEt609lH8JpOZmnfT+gedHYcaONU=;
        b=wOVe2de+ahOqV02SRaMFYjCfG5fRrAeXPKWj/jF6vBvwa8V74KHEKpkIn6/nGNt213
         Uyxuvr09705juu3Q63CpVq8Klzv2tgq2Dw11vk0dWfTlkB/bMGR5s4sUjVowdhkk5IWb
         yJLbhAfyDgIqJFSXYsqGvIGgi53/WJgiMcbylz3wOMGKWymJ7orP6MYMzhZ20r0r/CDI
         cCvcv6loEJq3A3TairJm9JXdx9/88b+lWLJ18mIshnxJKGm3Iq4ZR3vheMfpUZFdmxVS
         T+rTWt5Fc1scRtJwss0Z2reJgx4YH40EoMKe3YkCIIuFaG3eCEuvVzQCCc+6g0FZ+fe9
         GLgA==
X-Gm-Message-State: AOJu0YxQIBfj4L6KaRNnCZHd3hbXJpuoBaIxX7joSh2MewMYI5Zw/DJ+
	ONX0BcPwiFeNKJqsa1VjHFtxvoTObAQKZTUid/ZSJCCVfvsy9uWhUXyiVxT+J1c=
X-Google-Smtp-Source: AGHT+IFWw8xacpEPCFZ/YlUi4IIfiSG8qoo4jjTTTF9CDHtGBE7DgBDccglFMNdlYiGkPtAq5kIhhg==
X-Received: by 2002:a7b:cbcd:0:b0:40e:3854:db2d with SMTP id n13-20020a7bcbcd000000b0040e3854db2dmr277842wmi.65.1706171273241;
        Thu, 25 Jan 2024 00:27:53 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3? ([2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3])
        by smtp.gmail.com with ESMTPSA id h21-20020a05600c351500b0040e47dc2e8fsm1716683wmq.6.2024.01.25.00.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 00:27:52 -0800 (PST)
Message-ID: <91158620-775e-4db1-9b8e-7154c6d66cd6@linaro.org>
Date: Thu, 25 Jan 2024 09:27:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 4/6] reset: Instantiate reset GPIO controller for
 shared reset-gpios
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Sean Anderson <sean.anderson@seco.com>
References: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
 <20240124074527.48869-5-krzysztof.kozlowski@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20240124074527.48869-5-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/01/2024 08:45, Krzysztof Kozlowski wrote:
> Devices sharing a reset GPIO could use the reset framework for
> coordinated handling of that shared GPIO line.  We have several cases of
> such needs, at least for Devicetree-based platforms.
> 
> If Devicetree-based device requests a reset line, while "resets"
> Devicetree property is missing but there is a "reset-gpios" one,
> instantiate a new "reset-gpio" platform device which will handle such
> reset line.  This allows seamless handling of such shared reset-gpios
> without need of changing Devicetree binding [1].
> 
> To avoid creating multiple "reset-gpio" platform devices, store the
> Devicetree "reset-gpios" GPIO specifiers used for new devices on a
> linked list.  Later such Devicetree GPIO specifier (phandle to GPIO
> controller, GPIO number and GPIO flags) is used to check if reset
> controller for given GPIO was already registered.
> 
> If two devices have conflicting "reset-gpios" property, e.g. with
> different ACTIVE_xxx flags, this would allow to spawn two separate
> "reset-gpio" devices, where the second would fail probing on busy GPIO
> request.
> 
> Link: https://lore.kernel.org/all/YXi5CUCEi7YmNxXM@robh.at.kernel.org/ [1]
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Sean Anderson <sean.anderson@seco.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Depends on previous of change.
> ---
>   drivers/reset/core.c             | 215 +++++++++++++++++++++++++++++--
>   include/linux/reset-controller.h |   4 +
>   2 files changed, 206 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/reset/core.c b/drivers/reset/core.c
> index 4d5a78d3c085..60a8a33c4419 100644
> --- a/drivers/reset/core.c
> +++ b/drivers/reset/core.c

<snip>

> +	}
> +
> +	ret = __reset_add_reset_gpio_lookup(id, args->np, args->args[0],
> +					    args->args[1]);

What would happen with gpio controllers using #gpio-cells = <3> (or more) like allwinner,sun4i-a10-pinctrl.yaml ?

On this example the flags are args->args[2] so this would probably fail.

This would also fails badly with #gpio-cells = <1>, args->args[1] value would be undefined.

You should probably limit to args->args_count == 2 for now.

Neil

> +	if (ret < 0)
> +		goto err_kfree;
> +
> +	rgpio_dev->of_args = *args;
> +	/*
> +	 * We keep the device_node reference, but of_args.np is put at the end
> +	 * of __of_reset_control_get(), so get it one more time.
> +	 * Hold reference as long as rgpio_dev memory is valid.
> +	 */
> +	of_node_get(rgpio_dev->of_args.np);
> +	pdev = platform_device_register_data(NULL, "reset-gpio", id,
> +					     &rgpio_dev->of_args,
> +					     sizeof(rgpio_dev->of_args));

<snip>


