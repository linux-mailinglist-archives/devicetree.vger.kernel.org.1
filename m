Return-Path: <devicetree+bounces-73777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 793EB9009E0
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 18:05:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 624A41C21FA5
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 16:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF1619A285;
	Fri,  7 Jun 2024 16:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FKyilMZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B6315ECD6
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 16:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717776306; cv=none; b=db7DBhIaTf92BTONOxKew6eJR5vDt9Y15rvyhKi2BYqyWeLxtCpSg0oPMjAob5+ayvPJVx/Cjc+pJ3sV+45UIjEkndwVbk/GGuEtI8bLoNYc4mzmkEdrj6SrSRmLgw8d943vlDytskPEucERVBimsVFVHgKZQi+OCMYgTQhyZHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717776306; c=relaxed/simple;
	bh=Z3oJTka4Vnu4p24r/43x/jH7cJqjxGUr0Ejafh1qAY8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=ALztIZ+P6D36aPNq0hPEHx6YOjUwx/Lv0gYxo9lzCbyBKj0bthii26gBAVQCSlAc/PHDgH4jMm4Hyl0fmlGODO2sOiXHkJnea5R6biTocUCC2xEnCkz0Zzy0s0ihSC0BXnfphbQbFFHTY00UB9slk7UKGVJxAXbrrNCeEhm+fRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FKyilMZG; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52c32d934c2so5713e87.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 09:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717776303; x=1718381103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t+ERCTW4alu+cgTaHP2X1z+HqtWWj2kK39TpxNNGgZs=;
        b=FKyilMZGTOIzXgDQrGKzzneX+opmfZO9Gyn/1bY02n54AYvm3BASO3dXTPS0kyWJwL
         YIzjmJZ7mH//sAAJ7MRL06nrxQRAMQZ85xFxzA6EkybF8wb+OcR+kO3eUb5YpWk9fvys
         HIx1oPF5cfyl3eDLNZmuAmBJIWh0X7SCsoU6mrz8uPyKgBVtUP3EjI2M95NAh/oXkrKo
         hTxCTMFXtWbcaUzvbOjUEmx/Ox6WWrnd4WXbYdnlSUmzaP2C9ZbKxYOZhLc9glYF08tM
         cWU6TaDl/Uq4czWmpN09u5rJNGssWlcek2F5XnxACSsHnxySs62JXtgiBvr+YfnF/iuG
         D0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717776303; x=1718381103;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=t+ERCTW4alu+cgTaHP2X1z+HqtWWj2kK39TpxNNGgZs=;
        b=lmfw0ZS/3vBUnMM6kPwQE2HoU9Ss3lVCvlJF8Xb8PP1jB4s/f8ZmyJL919OvTYo+vo
         8hfxvYx1pqCC3avyKfNlH8xKtU22OYiLBaqNVOQmW61KeFaS5UdJ21CQrquuKfbWVqG4
         p0inUaskEVe0VtDLkF/j1NLlEGnrBrgBEMhAwXBeAkMsgdhgT7q23wM/sEI27xAQxBsB
         zkCyMdM4CHeZ3sjwDWwtszkSCIKqWuCBcjgmkh7E3RrQF7aGxV1do90CJkMs4heo9loY
         2lKTdglUqnH2+uLPy7kTHVls/NFSUslDK2COPqhslRAOyNuj4Z+vc2Sin2eEny61sqEZ
         5K1g==
X-Forwarded-Encrypted: i=1; AJvYcCU1nPxAd2wm5AFQ8tkm32Sw5Qm6JQ+a/F3hnbQBZhOSe4V5+lX0ubpS6RHnk30P0HwP793jBn7BUP64RrXqYMfyVJYh6MvYPULjYA==
X-Gm-Message-State: AOJu0YzIiQXML210/JlORPA8B3vcTS96bC7uezbM6SRMYEb6eywEMXAm
	zvZIkyAy8POpXkL2eDzeJWW7oqcJMb9e/UONlfDFozkNN4aDhjCB26cpK0XHgl8=
X-Google-Smtp-Source: AGHT+IEWSEfsueYptPbIG13f/kiC/uiuC1S6W/HOOZZfTghFpVzLYJTB6ysLPC5s/JDRGDPAkjFu6g==
X-Received: by 2002:a05:6512:2023:b0:52b:c192:c19c with SMTP id 2adb3069b0e04-52bc192c224mr940395e87.21.1717776303255;
        Fri, 07 Jun 2024 09:05:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404? ([2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm57967575e9.34.2024.06.07.09.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jun 2024 09:05:02 -0700 (PDT)
Message-ID: <ac14cfd4-64fb-4b98-b3cc-b29921606bb9@linaro.org>
Date: Fri, 7 Jun 2024 18:05:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: media: amlogic,gx-vdec: add the GXLX SoC
 family and update GXL
To: Christian Hewitt <christianshewitt@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240604051533.3312944-1-christianshewitt@gmail.com>
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
In-Reply-To: <20240604051533.3312944-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2024 07:15, Christian Hewitt wrote:
> The GXLX SoC is a GXL variant that omits VP9 codec support. Also add S905W
> and S905Y as GXL chips and sort the GXL comment.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> index 55930f6107c9..47dce75aeae6 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> @@ -31,7 +31,8 @@ properties:
>         - items:
>             - enum:
>                 - amlogic,gxbb-vdec # GXBB (S905)
> -              - amlogic,gxl-vdec # GXL (S905X, S905D)
> +              - amlogic,gxl-vdec # GXL (S905D, S905W, S905X, S905Y)
> +              - amlogic,gxlx-vdec # GXLX (S905L)
>                 - amlogic,gxm-vdec # GXM (S912)
>             - const: amlogic,gx-vdec
>         - enum:

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

