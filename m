Return-Path: <devicetree+bounces-31266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6158E82A8D9
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 09:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 156F11F286E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 08:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89338D534;
	Thu, 11 Jan 2024 08:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FmTCRzPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E315FEAD3
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 08:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e60e137a3so1717755e9.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 00:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704960962; x=1705565762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ucZYjQafMIKHoLE/R0AnbQMYTAjIxNebYPWwbqvXZWA=;
        b=FmTCRzPy44n6ROdW4WY8EvwDwrmrzFeOt3B2Pt6QcddPjY2mxTFYuR8B5RQ310t+vH
         43D95wA0ytFQ8UjyR9vIceJqM2KW2asaaBesFLsELTFqb7DNPNFXqraY5Ql6T/0SniBU
         J83dkePVATvUD0fsE386p6eWLpUOdTebTjN6d8uz60MoU9wkp7RPvtQJ0HO4XSjXQbi4
         zY081izGcXNOW1rawUscc3J6MDjsEXLVDI+zcb+cQfQgSlpH94Fz8QIDcp9QGGzPZ+2f
         w7oHX0eu1xJI3DehReXp79qw0rOlxuN+b+dN4xu5gmli1K5leJZ0Kc7xDl7GtZ1lQojH
         wb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704960962; x=1705565762;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ucZYjQafMIKHoLE/R0AnbQMYTAjIxNebYPWwbqvXZWA=;
        b=CqzZMIgqY6pM4jmi8QstNFN2kmAT/0kJLdbkz20+GGSRg4M9lC0UbTczzhfwI2zqKv
         BFNvl5JkKx/KmodNFla9gnrGHcm+h/U1z63isqskrtskaGF5sZzYFyEc1EgPdmIr8uMu
         inbl1kFoAhoyjyI9i9xh1YDeK1Bw8M35vKnrrwkj1PRHK7qntfj+9fEU/innEE9x7/g1
         ZEsBkWvYVstSa2i+lb3g1LoO9FWsLRjPEOn7NVLaOZg0NDO3OZE0cJc995eTVXBvWQFT
         BHSyYBaEcd/PN+Y3icMIpJ+X8sJFD1J1LrnG87dGqcYESC9hx7ch5SMQ3fSQDGqDAmfL
         OTkg==
X-Gm-Message-State: AOJu0Yzzz5YFBxov9vfz+f7Z34jQ9NKWfam6aywD/KYRp74RDtR8eVtR
	IC+E38GNNM+z1fL4f5MW2o5y3xC017odPQ==
X-Google-Smtp-Source: AGHT+IH87WgS1yK9VKo2iOZzHy0Ibve5OOd1/gKkKchhicjR8afbKzVMmi3wCXF9AUr8mS7ZTrYrTw==
X-Received: by 2002:a05:600c:5199:b0:40e:61ff:1d52 with SMTP id fa25-20020a05600c519900b0040e61ff1d52mr16310wmb.128.1704960962098;
        Thu, 11 Jan 2024 00:16:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a5aa:e466:ae57:5a26? ([2a01:e0a:982:cbb0:a5aa:e466:ae57:5a26])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c4fd500b0040e34ca648bsm955660wmq.0.2024.01.11.00.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 00:16:01 -0800 (PST)
Message-ID: <2fcf851c-a39a-4471-a705-6bfe9f4b975e@linaro.org>
Date: Thu, 11 Jan 2024 09:16:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 17/24] arch: arm64: dts: meson: a1: add crypto node
Content-Language: en-US, fr
To: Alexey Romanov <avromanov@salutedevices.com>, narmstrong@baylibre.com,
 clabbe@baylibre.com, herbert@gondor.apana.org.au, davem@davemloft.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com, artin.blumenstingl@googlemail.com
Cc: linux-crypto@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@salutedevices.com
References: <20240110201216.18016-1-avromanov@salutedevices.com>
 <20240110201216.18016-18-avromanov@salutedevices.com>
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
In-Reply-To: <20240110201216.18016-18-avromanov@salutedevices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/01/2024 21:11, Alexey Romanov wrote:
> This patch adds a crypto node declaration. With the
> Amlogic crypto driver we can use HW implementation
> of SHA1/224/256 and AES algo.
> 
> Signed-off-by: Alexey Romanov <avromanov@salutedevices.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index cf150f568335..879e0ce0b2ea 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -653,6 +653,14 @@ sd_emmc: sd@10000 {
>   				power-domains = <&pwrc PWRC_SD_EMMC_ID>;
>   				status = "disabled";
>   			};
> +
> +			crypto: crypto@6000 {
> +				compatible = "amlogic,g12a-crypto";
> +				reg = <0x0 0x6000 0x0 0x48>;
> +				interrupts = <GIC_SPI 120 IRQ_TYPE_EDGE_RISING>;
> +				power-domains = <&pwrc PWRC_DMA_ID>;
> +				status = "disabled";

Why disabled ? Usually we always leave the embedded HW enabled by default.

The comment is valid for the other dtsi changes,

Neil

> +			};
>   		};
>   
>   		usb: usb@fe004400 {


