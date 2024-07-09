Return-Path: <devicetree+bounces-84143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F49092B2A2
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:53:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4287A1C21B41
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 08:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381A6153824;
	Tue,  9 Jul 2024 08:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wHRIHcyM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BAB1534FD
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 08:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515225; cv=none; b=kmYmFcgfyHRrcwgTtY0Hn5aKvK9l8vacab3n867eVXZSu8FKoPpHf1FdYV6Qoyrlm3flnJpjvIwIxiAno7bnnAvOPfjakUMeA0G6LJX6/xQ2kuASzbDnqofV7EwaDWMku3aa+4ZAR5Wo33N3HLAgZGlvqQ401Eey3K7rQvnNPe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515225; c=relaxed/simple;
	bh=cd79zXbx+N5vL7P7T5X50BfnGu+fuRaCuSWUDwLHr4E=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=O9FU1ht84WtkYVUYV8QdI2U3uCVJ8xe9WTdTzBsdGe9GP3O0RcXF3gFwr1NwC+VXW4Ko9jQS2bnyNWU/zbvwE2k4H08/AaX7bTrFLw3+gqTdU7setpe/bL6h3NXp1tBrpqssG2Ij4IDB3fRMDgcrrIzwxYF1ScIQpPiXTys6mXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wHRIHcyM; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-36798779d75so4289928f8f.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 01:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720515221; x=1721120021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SA4aYgkuEJQ+2zt3ir0pQgoFJui8snze/b5Z9Ceeoqw=;
        b=wHRIHcyMlXzYlbMt90M/WZqByG20ElKqxAluGsfVWgsQ7nOnBaQpqATQCqOXaCIYdx
         MBsrtBVad9S9+iorF95revQHv7VwrMXfLYbcOqU3pStNWqy/84lTDRZOM/mgf7jRItrC
         rlW8DXzQEIMXYl/G/EouPZBX+3qJe3AiV5AkTBrXsjrGk5vmoH36P4SmPW8CCpJ0NGrq
         I2bNWLq6q4eyItfSQmO4aD/f4ziHxPPZjbYlGRXL1SMajfyMfWNp+igzrIKvf8YkaAsg
         JOwpruZ9Y+KNK0qb9SGMqXGCkyBPc/jZPALtMS31NQCuCHcMmmqAAzAfkZMxM927R5Nk
         rmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720515221; x=1721120021;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SA4aYgkuEJQ+2zt3ir0pQgoFJui8snze/b5Z9Ceeoqw=;
        b=pTynYaIT+MykeiIWDS8lvlJ9ADEUOqfbFoR70bkcPVPpbxk7PWFKlm2ttlHHRGVf/y
         lXqjbMYoMKIOg5AHqcIgCOZZoP3bAeJGMXkSWfU2JW3ATIEjd9Oaso6FdehFwObtoDBG
         GmG3JH4JRZk84NdV4gs2oqA7pirqlRhzZQ+WDy+j+vUZYsVcZRBIXwB48+ssjCeL9A/5
         QGaWB0rN9RtAlbF0O0APbSOx0MESqtoITp6nv15oJmHynUTjgHQrZceI9on/zvadVo7l
         hSrBi0wPUw/yBcPW+MYTQL3A51/yJ4pWfTy8ABsDmm7750tcA9nhSa+R+EJFyjexwC6C
         ZuNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlxVxN6I8VzZMw6YdC1oTz0Cqn+bZ4SGM5d2dYy7g+5DGVIVktv8RShHUPes+Gv8tKgmhJh6+0rB0gerXpvXKo/1C1oMb9/g/nrw==
X-Gm-Message-State: AOJu0YxfJp1xhWBmSrtfwtLFtUqM7KM0rYkjVxe0UO6Muf/jfrKCcZrj
	JkuM5T5rft6NGCwPGTaKnqp6SmFLdy+fKz4AqMEGQu9v7K9+vKJFFwiO5nBmfhA=
X-Google-Smtp-Source: AGHT+IGqB81NuLSnCUMTBHrJCIu396Gu/1DlJmDXwuPVOZxJWI5XPrLUGFSWhEfO8pch8PKu4xYm1Q==
X-Received: by 2002:adf:f30b:0:b0:366:eba0:8d8c with SMTP id ffacd0b85a97d-367cead19b5mr1656003f8f.54.1720515221137;
        Tue, 09 Jul 2024 01:53:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:b12a:8461:5e2a:dfe? ([2a01:e0a:cad:2140:b12a:8461:5e2a:dfe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6e09fcsm31353055e9.4.2024.07.09.01.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 01:53:40 -0700 (PDT)
Message-ID: <a75ae0d7-9945-4e97-a4f9-706b253a161e@linaro.org>
Date: Tue, 9 Jul 2024 10:53:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/4] arm64: dts: meson: a1: bind power domain to
 temperature sensor
To: George Stark <gnstark@salutedevices.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 hkallweit1@gmail.com, broonie@kernel.org, glaroque@baylibre.com,
 rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, b.galvani@gmail.com, mmkurbanov@sberdevices.ru
Cc: linux-i2c@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@salutedevices.com
References: <20240708194808.1819185-1-gnstark@salutedevices.com>
 <20240708194808.1819185-5-gnstark@salutedevices.com>
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
In-Reply-To: <20240708194808.1819185-5-gnstark@salutedevices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/07/2024 21:48, George Stark wrote:
> Meson A1 temperature sensor has dedicated power domain so bind it
> to the device node.
> 
> Signed-off-by: George Stark <gnstark@salutedevices.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index dd5695963caa..86d77f51c25c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -919,6 +919,7 @@ cpu_temp: temperature-sensor@4c00 {
>   				assigned-clock-rates = <500000>;
>   				#thermal-sensor-cells = <0>;
>   				amlogic,ao-secure = <&sec_AO>;
> +				power-domains = <&pwrc PWRC_I2C_ID>;
>   			};
>   
>   			hwrng: rng@5118 {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

