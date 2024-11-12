Return-Path: <devicetree+bounces-121143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2929C590D
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 14:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06B351F231BC
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 13:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57C018A6D7;
	Tue, 12 Nov 2024 13:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kTZHxdJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CF7188580
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 13:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731418012; cv=none; b=IHZQ1RtbxbSqyrBYpy1da0JbZH3uwx3QWoXJdg1UKGDcIgzuoDgQqz0+1wvz+WSJfpoxtHckLJerGnteo1MeH/mFE+OFecobGsRofEnjAEpLgp+PMXrx3XGjY9ZHG/OklBiuQZmJ4PE0o1HgxbHLo47uLhnEWogIjioO0Y2lZNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731418012; c=relaxed/simple;
	bh=tRnACknh/1EhHRTAz3cx2wXfmMECs90wmR2MIdzMzUE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Twfu3G30ZzhAsVdrRKMuIpPeELWtP1mECoZKauGOR1aFTctFmO5HW0Y3G6tSbS7uckgsGVKgaZmdt5Ptiyg86Fwrl2t5zMPP1SnY57Ah4nvzDlFPcn04jt0uwB7OJ9kBscmtAZ6CfMSpwcIAvUWZd8NHBlnKMkJBfwPdjgI+owM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kTZHxdJt; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4315f24a6bbso44810465e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 05:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731418009; x=1732022809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dRmLbf/bz31mm/eeVY/iGKbUEcxPetAbKwSG1URLvJ0=;
        b=kTZHxdJtUdGSuIEXQCVn9K03tYIzi3oadEzCKoygNbjRrQlvKZLj9BPFK841Aol5j0
         bYLZi3gshr9FD7mPXtGzZV9mN4pX44OD04hjo/Fu/azkxv1lobLR5iCJW1V7OHstnMmy
         lA971YAqm5ve8ReKIm2ItucLRMns3hr8R16OfopxwHqnkXYMNoIrDNXaYwZRkkupAg2c
         GdAQWqUyGZwxbRn1dxlX/Amu8LugZEBMuT0rm2/8poujWyRD5v6L2iOC2QIrANmBo8MR
         kF5J7nflDuPOf+LrXP5iCamdLAMBtXGMJ7pwXZ2FyRPVz5uXP8VJ/HplfCEP87yrMQCi
         sqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731418009; x=1732022809;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dRmLbf/bz31mm/eeVY/iGKbUEcxPetAbKwSG1URLvJ0=;
        b=uReAQjfjt1BRSn0T6z20tZw+Kfkfaz1+KDJfyhXQnKyJCG0aWtQlp2QhFvgRuV1tgj
         HHb86I2EBbEvRby44ABUVXMmPbvSQGw8YUb3PDraR7vK7mA0zBl/HfAHSTQ/471ZQ+Wz
         PrgO1Lf3c2BvKiCP+BzNXETe2y5D1mK6d0w5oeBFQfiKwwZsf4lwO2uELBKW4EvNR4qy
         haVkTIVGW7tJm/zJNKlo2U5mdZFvq5Z1M76QsP4oUEz6Xxbk3cKb3Y0vVF7AdhTE7ZUN
         mDuz6yFr1OdZzNV3iWaab2ZelLIHvgt3qikcb7XWJ7GjOwWsGGOobUnmyXEwzJaZu5iK
         CJPg==
X-Forwarded-Encrypted: i=1; AJvYcCVUcS27z1oNEez/zqtRvFiOsDSa62b48FFC28IzXY5PbvHJq6LpDXJTT8Dsyf46OgiW0JCt2NghOeGR@vger.kernel.org
X-Gm-Message-State: AOJu0YwPK1TXHnZUGilncDE2BPlEuQ6gv+1i3GmyM4OFhxLV13LEd1Aq
	OE6/u0ZHFuH6E6ijKhQWqOt4g5VS82Bu1cKOBlslL2AP/ggtVTfnK68/L00XnqY=
X-Google-Smtp-Source: AGHT+IFTQlXSukq+djtZ02mrwHjUmWSAl2HtnKbbzOayDUOl3KycAHIOi0rl6/yfP9eUPu5iRkh9QA==
X-Received: by 2002:a05:600c:3514:b0:42f:4f6:f8f3 with SMTP id 5b1f17b1804b1-432b74fde60mr137847665e9.7.1731418009251;
        Tue, 12 Nov 2024 05:26:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:860c:aff4:d0e9:9db8? ([2a01:e0a:982:cbb0:860c:aff4:d0e9:9db8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b0566544sm205123355e9.24.2024.11.12.05.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 05:26:48 -0800 (PST)
Message-ID: <e1b810f6-b5b3-43aa-9cc1-e9601589ddf5@linaro.org>
Date: Tue, 12 Nov 2024 14:26:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 1/5] dt-bindings: pinctrl: modify gpio-cells property
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
 <20241112-a4_pinctrl-v5-1-3460ce10c480@amlogic.com>
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
In-Reply-To: <20241112-a4_pinctrl-v5-1-3460ce10c480@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 12/11/2024 11:26, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Extend the value range of #gpio-cells property, including [2, 3],
> to compatible with Amlogic A4 SoC and later chips's pinctrl module.
> The early GPIO parameter number is 2, and the later GPIO parameter
> number is 3.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   .../devicetree/bindings/pinctrl/amlogic,meson-pinctrl-common.yaml       | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-common.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-common.yaml
> index e707c222a07f..6b53577dea59 100644
> --- a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-common.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-common.yaml
> @@ -36,7 +36,7 @@ $defs:
>         gpio-controller: true
>   
>         "#gpio-cells":
> -        const: 2
> +        enum: [2, 3]
>   
>         gpio-ranges:
>           maxItems: 1
> 

This is not what I expected, this allows 3 cells for all Amlogic pinctrl,
which is wrong.

Instead, remove "#gpio-cells" definition from amlogic,meson-pinctrl-common.yaml
and add them in all amlogic,meson-pinctrl-XXX.yaml with const: 2, and then when you
introduce A4/A5, add a new amlogic,meson-pinctrl-a5.yaml with const: 3.

Neil

