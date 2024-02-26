Return-Path: <devicetree+bounces-45812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0943E866C00
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C5C71F240FE
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 08:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB771C6A3;
	Mon, 26 Feb 2024 08:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bLH7DMvt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBA21CA83
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 08:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708935664; cv=none; b=aRUFE+XmsIUpMiXa0t/8S9Zbp8cl6ytXLcVc/uJPV8giUOQ9TsXclpsVIftfVvw8JI9J7lYeq179JUNda5xt4vQTzwkLBk43LRx9b2X7glehGMMHS72KECBmsVK9/Pd5Tmt+21sx2nqAv7+F8jG9gGmI+5x0CNNof5a0rpcpNGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708935664; c=relaxed/simple;
	bh=+toRCIuX6uk/ecaTIzYoB3xjmq5mQme1VH8zZGdq0Do=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=Mx3XKm6DQ3bQXGCWpVgfZEe8YmP6P43yU+8nyG+GsYd7agstupzPpf41BAbMOf7oCdkzn7M5V7e3ZAh+LBMi6Kze1WVoCSw3glBfWLGCvByhnqyo6NoBtt3ptmpNrS5scTAcA0iRLdHigYXMOe9q4qbQx9Fl9w2JJZT9wiJ0A3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bLH7DMvt; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-412a4055897so6271025e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 00:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708935660; x=1709540460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZY9bAr8HLq1HeXJYbRKkm16dfDwRF3U/KMWeM9nOeg=;
        b=bLH7DMvt0mnbKUrnay2bIKxn3LsyQeAjX5ronLG13TRT3k8IXnefWbf7aRgKIPazHK
         XLJJZrI+yTDrCYITf90w348r2CUQj2H7hNP2FW2IdOre7c1+jCbzDBlpTQtd5U5KUVDU
         dtPprIct/FFiUQ6PauvAYVv2IK5yNHD6Tb+xcCU/nXM0eCjrqHps4fRJlJVLOwagSDQO
         sJ48UjM2N6zqiMqaFHPwrj2yN9dYp49boBbALkdOW0ydunUdP9zeTpuNwW+2V/rjpjW0
         JyPtSrDBnC4eiEeA3VsqHvehQYAI0tlYoIjH6aKPydvE4T8zLpdRncMNqtYslAkTXauA
         8Mwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708935660; x=1709540460;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XZY9bAr8HLq1HeXJYbRKkm16dfDwRF3U/KMWeM9nOeg=;
        b=AYi3paG/z/1gSF0Rg+hQrIoOkuhEMk5rokmRjka5IDi7vNAK18V/HvPVgxA+YjiZwO
         baI6HLZEP9L7djt5TDlkE+xIc5yhtZmtkpkXGMTzjH6jimZZXok5SMTwxvrUk0o4bJc3
         rB8ES6h/WXK09pVv4uEZKp9zzIKvdAGGvmUm9l3PsCmU1G/VCYQH+QckZWZK/Wrrx/I4
         AABp5G/tpQ0wMd/f3qmfaDKnmYNjF7XgFqm6I9ylI6de7k2O21+BuBO1ZtCf2DRWnzPN
         Vbh84Le6HdyUqKugU+4YCpH4n/A4eg/W0FUUIv9R8RvAd35G5F9pGCx69XLYfcweImXD
         bmIw==
X-Forwarded-Encrypted: i=1; AJvYcCUMdOdK7iDd0+pzfReYea639qw1keKOFSJ33dt9dIqNLmO7Sez3OL02b2oTSpglau9fvB9pGjkKzXysZudD6Naw5tkdx2Un8Vk2IQ==
X-Gm-Message-State: AOJu0YwJq39js9be6pfq+R32iBAkgrlg/oNVWvheXR/NrzXnKqOWMVUY
	j3al6lGiRHUl97q8YkOKviHP9siT+yEfi0lmQ4Dxg+mspwfVmorzJLMY26wSiM8=
X-Google-Smtp-Source: AGHT+IFrIdlWNBqo+0PZyg0mwzmMd+bi9doX/IBE3ts5JFCZZOl7ZsXqTrK1QOz/u1os6aSj3joEwg==
X-Received: by 2002:a05:600c:474a:b0:411:f418:375f with SMTP id w10-20020a05600c474a00b00411f418375fmr4033817wmo.19.1708935659916;
        Mon, 26 Feb 2024 00:20:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:6109:4c61:11d9:ed64? ([2a01:e0a:982:cbb0:6109:4c61:11d9:ed64])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c249300b00411e1574f7fsm10999475wms.44.2024.02.26.00.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 00:20:59 -0800 (PST)
Message-ID: <e2cda8f8-4250-4ac5-b7ba-6069f37c1b98@linaro.org>
Date: Mon, 26 Feb 2024 09:20:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] dt-bindings: arm: amlogic: add Neil, Martin and
 Jerome as maintainers
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>
References: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
 <20240224084030.5867-2-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240224084030.5867-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

+ linux-amlogic@lists.infradead.org

On 24/02/2024 09:40, Krzysztof Kozlowski wrote:
> Add rest of Linux Amlogic Meson SoC maintainers and reviewers to the
> Amlogic board/SoC binding maintainers.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Entries ordered by lastname.
> ---
>   Documentation/devicetree/bindings/arm/amlogic.yaml | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index edbc21159588..949537cea6be 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -7,6 +7,9 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>   title: Amlogic SoC based Platforms
>   
>   maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +  - Jerome Brunet <jbrunet@baylibre.com>
>     - Kevin Hilman <khilman@baylibre.com>
>   
>   properties:

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

