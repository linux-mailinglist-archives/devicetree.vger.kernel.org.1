Return-Path: <devicetree+bounces-171391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B19B7A9E95B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 09:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07E077A85E1
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 07:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21F31DDA09;
	Mon, 28 Apr 2025 07:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xlC+cLPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029281D54E2
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745825533; cv=none; b=M4d0U528hjO8RfQhLFkdDlVm/Hr9vChQPwy7QxVTPonbQBr9hVZgM0NL9Y9Al69GUVDl7Hz0l8Weo9DHSJxh+fexEGvlt3FaUmy4sX0iq6yk3hamYs8wkjorK2l8qq+YFkUIp38MvhEa+JteqyZMifAIr/EKb03vDii1VH9Dv9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745825533; c=relaxed/simple;
	bh=QJCal8CXpSxtV6NulIx/0tF1rQ4/QuFDPBte8ijaA4E=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lrGFMZxwbA68cSRg1EEdHhy0pe1ThfVG5x02YVarBHxPaFSSeLUcuPjC7Wngn+hllxk0MXN5NUKcIfsCW5J2FqsQGizMUdthIr00hRheR3tSxBVyuMvKgGOclHM6bgkuQIChgHVAXkjAwog/G3Vo4SQ+9VYxKlSHfuSvKBxiyws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xlC+cLPI; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so45762375e9.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 00:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745825529; x=1746430329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGcH0UeKddFKvZzS6VK/UwJ2UKFscoxXJBXhLgGEGFA=;
        b=xlC+cLPITYNx1TNx0Af7VZft/q4CZLJEyOuY3BQr407xsJhtpYPZQ+VYu3aUvH7fMB
         vJ1hbtS2vHkGAkWYMmoyObokP9q8IlM6WXE3imno28xZJPXLQpWYC4o9q2urULi8Bwpj
         ksfgJ0nGF/XrXSsz/XBWWD+YVpnN0UspWAWq8JVPJYWPpgnk2NnKUAKYbSXjY930zfNh
         yIS1/1Mbf7jeH+izHyZqR9APVws3eZpQOUChgXQ3UwrKIPtmoynWgYk6Mg1uvLCQhomD
         GobinuUfiqvC7xmtZPknDen9j2/Xrv6ln/d5Fyp9cL+xMwkALAbbTOOBl7T4uNhdHG8h
         GjkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745825529; x=1746430329;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gGcH0UeKddFKvZzS6VK/UwJ2UKFscoxXJBXhLgGEGFA=;
        b=mu+4Ad9GwOgsi57P5fX8JwOnfTX25h/XD8qnot4cZAufmDBMxLHQHmRz1V2j+nS466
         UPjVeiJsnfHccA2EbrpfXB6BYdNUQdgv11bFYjSxQ71HZG43ShbmOOJg461lb2pAUtlb
         ntZVJBD/f2TnDO0w1oPVyzEr31epMwq6pM6ztezTv+TCiSsU+eke69BVVYQfiHT674gA
         Z/nP3cbTsdDI8osRSNv+ZaSnbXKgOv1Wbb/rNgFiN4aSbDExDP5lc91ox4DW58qNpPan
         HBpa1IZ08+PzgLUhgzesiPq/bGYlsDQCt0YOWRihBE3IVwIbvrTlW9XOlQTj8+Lnj4Ot
         /r5w==
X-Gm-Message-State: AOJu0Yw0XURlQt/3gNpOQ7OYkRoxLekAvAG3i+PSDkPz+iI94V6z+sB8
	BIYgh/ZMe8CUiG0AAWWn1xHC/kYU6KUKidnGAVHmDn5mMmEqFlEYLTylQMqWiRY=
X-Gm-Gg: ASbGncu50hUWfO5htIA0LNDc1hQ57yWJYVdxkM+0cU+ywHwK6nWvkQ6UKFw0sKn8SWi
	mP8D6OV/1AZmSOWzeHgO54Us+Nh8t1x+9TchXYZ6R+iondmvLSwJsVqA+I7QAi4hVkHN8AWVIP2
	T4MP6Y8GqnvZiHWO8sct4OWLZQ/XuDRAqUyi9w1zuzZm29UbElPm6yMbxwqN1hdNHfm60ASghNm
	7+S5W3GXGbaSP9f/dP9Ztid1gXlt0RxuD3dHHOAMFQyry97xE3CHwt6AUpMAs5sFDhYja0Mq8nL
	93PMu1OfN5gZiQWtEfNZlzl5cwR4PFd1aOjDis3FofJptM0OCb++FF2PCWJBvibrcTmQRPo4sru
	nKAxfCqBlp+lxbc+wcg==
X-Google-Smtp-Source: AGHT+IE9IxrEQndV7PtNABLrBikOF06TG2rz/qdA9+WaR/LH3kMB0rSX+0YP2PDCf8juRT8QFLptjQ==
X-Received: by 2002:a05:600c:46c8:b0:43c:fe15:41c9 with SMTP id 5b1f17b1804b1-440a65d8c6emr88097415e9.9.1745825529140;
        Mon, 28 Apr 2025 00:32:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:e2bb:d0cc:c4c9:4442? ([2a01:e0a:3d9:2080:e2bb:d0cc:c4c9:4442])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2e00e3sm149222995e9.34.2025.04.28.00.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 00:32:08 -0700 (PDT)
Message-ID: <20523c9e-f7de-4355-82ed-380ee03083f0@linaro.org>
Date: Mon, 28 Apr 2025 09:32:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: gxl: set i2c bias to pull-up
To: Da Xue <da@libre.computer>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250425203118.1444481-1-da@libre.computer>
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
In-Reply-To: <20250425203118.1444481-1-da@libre.computer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/04/2025 22:31, Da Xue wrote:
> GXL I2C pins need internal pull-up enabled to operate if there
> is no external resistor. The pull-up is 60kohms per the datasheet.
> 
> We should set the bias when i2c pinmux is enabled.

So, yes in some cases when the on-board pull-up is missing, the on-pad
pull-up is required, but the whole idea was to only add the pull-up property
when needed.

So I know the real motivation is again about the 40pin headers, where
some applications don't add a pull-up and still want to have i2c working.

So my question is: why can't the pull-up property be added in overlays ?

Neil

> 
> Signed-off-by: Da Xue <da@libre.computer>
> ---
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> index 2dc2fdaecf9f..aed8dbfbb64d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> @@ -214,7 +214,7 @@ mux {
>   				groups = "i2c_sck_ao",
>   				       "i2c_sda_ao";
>   				function = "i2c_ao";
> -				bias-disable;
> +				bias-pull-up;
>   			};
>   		};
>   
> @@ -576,7 +576,7 @@ mux {
>   				groups = "i2c_sck_a",
>   				     "i2c_sda_a";
>   				function = "i2c_a";
> -				bias-disable;
> +				bias-pull-up;
>   			};
>   		};
>   
> @@ -585,7 +585,7 @@ mux {
>   				groups = "i2c_sck_b",
>   				      "i2c_sda_b";
>   				function = "i2c_b";
> -				bias-disable;
> +				bias-pull-up;
>   			};
>   		};
>   
> @@ -594,7 +594,7 @@ mux {
>   				groups = "i2c_sck_c",
>   				      "i2c_sda_c";
>   				function = "i2c_c";
> -				bias-disable;
> +				bias-pull-up;
>   			};
>   		};
>   
> @@ -603,7 +603,7 @@ mux {
>   				groups = "i2c_sck_c_dv19",
>   				      "i2c_sda_c_dv18";
>   				function = "i2c_c";
> -				bias-disable;
> +				bias-pull-up;
>   			};
>   		};
>   


