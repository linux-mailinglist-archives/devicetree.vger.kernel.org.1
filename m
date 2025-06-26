Return-Path: <devicetree+bounces-189961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1C7AE9FE3
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F277A7B3D29
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3500928FFEE;
	Thu, 26 Jun 2025 14:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fhkJJWdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7952E175E
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946840; cv=none; b=onQB4IOhTPffm0D3ojEUzThxFiRJtAhNF+cchAA3ZVpO7e0tciFH1DP9rIp0T75ieAbkRouou0WTRJWJNeNvCn55KcN93nRweFWFpOYoBfA6SCarjOIwOVMn5l/PnqjQrsZDDhug+d4C1cKv5U5XdV/uG00v0LUg53RK9dWnXT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946840; c=relaxed/simple;
	bh=iiHkbrBBGv/V6j0x1qrEIpF50wlkCHnl6q7L7xGOios=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XtWmWvGjAWU1txJP60+AgxlDypMqBfzz+5k9QKb+P2T3C/Iy10giWdGzv3LP+It8Ai/W8STSqaDzqMB5+hmITJW+VZ7cg85VSBX+0zOs1i35JU0z2wlFWSI699qql+7jcTZ7gtTwxp9H8hfl6LGz5OLycET+MSlQJHM/rSpXs+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fhkJJWdF; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a522224582so496198f8f.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750946837; x=1751551637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4tyfKJ3iWwfYhEwtvlvqYH/qs9dAR1n1suyqwAjSqmI=;
        b=fhkJJWdFQRMsrgow1sWb9V6L/7zTY0krVvG2v2VyY/DX7uMvuAgQRlzPlU3wYpA2Z9
         MgW+l75ru1y3RbMqPg9hXRW/n3XIhWo4fg03Dj34FrzHMPvIy1MhScV8LYGYMGCYsmUy
         ncMJFPksDBUCvcjOsbJT7QJFLhgHOOfUkK5g8LEbokIH7vBAaxscsBl+c0ldwsvo5ene
         XAhaVG44Ye1KCB0YJade3KG927OFnweqLwr45GvLB2bI2ovA3NEg5+hHVyeuwgLsoUmx
         vsxMzT0N7Jyz9LNuNtM9olWeGoSGXEEPHdPxRT+FIfPi/qM9237NCV3qFWg5Sh/xMRcB
         lQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946837; x=1751551637;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4tyfKJ3iWwfYhEwtvlvqYH/qs9dAR1n1suyqwAjSqmI=;
        b=EU0DLkR57JOnpX6P//oIEanNdpok4I0ZZob1vIgnsjiiWjwGnbckRhRHgoSGG/rRBP
         86en2vVdPmDqWDCW5SPmomToTIx2XOzqaJMgHM9CAdJpm/5p72itpgXA/tnOJ+VbkUqY
         9Mk3p0nLEKx88cLoWA1WkTo6zh9+tCxB2m3kunqZSlfLfkcLfqYGumL5mjS2D0afMSek
         IIBS6eYHHv71PF2cz7CoFRPfdoJEi1D+yyDOFoGkZ2ymJ6fV5O5KhVliI7h7czQrY/Fh
         tGaYrbmbkKHHuoU7xgG7WTxadBTjGWGXUSD1YJZ9DIsyn4bjFQFaxpDHxRWFEqLoDlvs
         dHPA==
X-Gm-Message-State: AOJu0Yz71ljgnGPWYGh+2lYbN2apMqdz0xu32P54YGTsPoVNIIqiCjTf
	Ys4nWmgUCpX4uY4pbc1gAO+5vnmgJ6q9FfUAZ2qTuK73n8OajgvDkaWiMr6h4qUxLC8=
X-Gm-Gg: ASbGncubO5UPSFm2pHDZtKb0T7hi9eLJy76jp64esONTFihU6cNskrG2/Dh14kdDpyU
	xDXzyqrPlEUzRPBBGlZ89DiV/q72sXte2bdUU+tcQgjQuBUic4UspKNRjecDIfjOiSPHzGeNCTx
	NbhgZIXPD4jRKP/2+8XcRhVYxDqRXaZ06hpSh8GWdRlUL+wo+xeDLWs7tBVurF5wHkAvl8X7yYw
	QCuGTXS4pg10+yRH735hjriVD8RMEn7i8UrUHEKW8Z0oogRy+hUJpXITJ3SUiuAnryYN5XimuQz
	r8t26y45LnW9D1rc6yuA0jglnFzUPkWhGLHAkalrL8WQzCRViwsACgdOrqW7kvs80JihW3ArU+N
	OFoCQoqHdetUXSZLhwTiAeiUAs52D8ayRUpO7Bgg=
X-Google-Smtp-Source: AGHT+IH2o/48Q3NSxhVyfkjDMI5iDi5m1hTz1aTZlrpWBbENmqy1WfQrH0ZoXoOKjfZDADuR+Pkv4w==
X-Received: by 2002:a05:6000:420c:b0:3a6:e2d5:f161 with SMTP id ffacd0b85a97d-3a6f2e8725bmr2928225f8f.8.1750946832282;
        Thu, 26 Jun 2025 07:07:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7e72c1sm18312f8f.1.2025.06.26.07.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:07:12 -0700 (PDT)
Message-ID: <f92836f5-c81a-4bfd-a77f-903e74452c59@linaro.org>
Date: Thu, 26 Jun 2025 16:07:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/5] mfd: khadas-mcu: drop unused nvmem code
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <1b421ddfd44d096cd3a979462ced002e2356eb21.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <1b421ddfd44d096cd3a979462ced002e2356eb21.1746518265.git.efectn@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Drop "khadas-mcu-user-mem" code since it is not used anywhere.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   drivers/mfd/khadas-mcu.c | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
> index ba981a788..ca4bd6cf5 100644
> --- a/drivers/mfd/khadas-mcu.c
> +++ b/drivers/mfd/khadas-mcu.c
> @@ -80,10 +80,6 @@ static struct mfd_cell khadas_mcu_fan_cells[] = {
>   	{ .name = "khadas-mcu-fan-ctrl", },
>   };
>   
> -static struct mfd_cell khadas_mcu_cells[] = {
> -	{ .name = "khadas-mcu-user-mem", },
> -};
> -
>   static int khadas_mcu_probe(struct i2c_client *client)
>   {
>   	struct device *dev = &client->dev;
> @@ -105,13 +101,6 @@ static int khadas_mcu_probe(struct i2c_client *client)
>   		return ret;
>   	}
>   
> -	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
> -				   khadas_mcu_cells,
> -				   ARRAY_SIZE(khadas_mcu_cells),
> -				   NULL, 0, NULL);
> -	if (ret)
> -		return ret;
> -
>   	if (of_property_present(dev->of_node, "#cooling-cells"))
>   		return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
>   					    khadas_mcu_fan_cells,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

