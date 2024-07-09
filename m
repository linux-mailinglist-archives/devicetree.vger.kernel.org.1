Return-Path: <devicetree+bounces-84148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7785592B2DD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E94231F21442
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 08:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C865C15383C;
	Tue,  9 Jul 2024 08:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PSUXXadb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3CD153824
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 08:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515518; cv=none; b=QWo7Ikrn89rYizGzGvXkyzcQGvVS9Kmg0wuAA2OQMnuC9Jsmqi2YRXwexA6hBgOSGZEPNN8dxLlk+5w/0yQWnO8y67E/AcizWBXiPaOF5cV5mi3Xa3rnrynCLNELqNYw1D7mSx70gaPJNDxPcMxl9B1HXW/22OlBMZl3cWzUKOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515518; c=relaxed/simple;
	bh=cDG7LCeKdCrSa1DArvFTZVp1gNiidpnRzBdKIn9Z++w=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gY5NXOsgX89lfH3KMJabe4KXFgtqZvVFs/NRJ0RFqWjc/fbrW+p2/7NvE5Ozd/0VQFC7EyLuZ+jG8W+hydavHNP8j9DpseB2IWKxOTN9rUbzg8zld3XvImqRcqdmmkwlNp3yOCZ+wSfin0L3YdzYUrNzT/DQiUSRLC3MhVkCjnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PSUXXadb; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52ea34ffcdaso4585534e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 01:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720515515; x=1721120315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5V/t+3meFrE06/A4Ix9ucw4QHhHNPHYbOa3q8Ar5d5w=;
        b=PSUXXadbPLxm32SmbyoaYQJ8HNdu7QAwj1vLUrHDSUji7ousXd5ofczGZ4ooiDrNDW
         3fP2v15eYx59Fj5Md05qcz2r7jdtaSWUyWVMXrc2COPtEtmcwm+6AHPVrwWVnoRxRUMK
         RqjbxNPY4lkiVdb7c+UVL4g12IRJVpJ8v6kNY6XnSnT3u6kDKr8op5KBSS/vtjPfL5jf
         6RgF4gWmyL5IfvXoGlaFdCrJ0itV9MIzWjS7XXF5Kz4liKz8vAq7PlCnSuyXsvvCVZap
         xIvwOeCnBCapvaur2k0WIr54iLSxrWXRI5bRzA94jzG3HKfx+QL9+HEWml02HYAQF7Wq
         ZhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720515515; x=1721120315;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5V/t+3meFrE06/A4Ix9ucw4QHhHNPHYbOa3q8Ar5d5w=;
        b=ggu20fWa9zDyJbhyEgZjRNHJmhVJjf5qfsh4RO/Z4OFhe+F2htaTXbzP5i/oetpcKN
         vu1LLeOE56b2QJn7xSciwst3TjBa7k/1jolRKysGJWuOFeKC65cj6OtAntJUpx7GJvD4
         7IJMbtwDBihPwm28ex8je7VAkAasNWpWc817CaPqqRKiAnlvYIHDJB6/x+m9z9AG0kqn
         dSQRcYPdAVI1DzcHmFxoYJ8j+u4K7DfYdnBvaGJ5XZ0JoCO6e3Mf9rVxLpDZkXD2UZL9
         T59R8l5wEw5qPDtVb8LRzT0qyews1nj1IlXXPhT62Q45/3mtLMj+Vg8aj5BzqnXRcICw
         lorQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyXHV22p8KIBhk+Yyksdva1vBhfFhh2RTtzfmnF9HGF/9/gXkH+Pc/+6ZsVLqotw+z74PeJ8u5uGxrYw2HMvDVMVvNlq0c4UFYaQ==
X-Gm-Message-State: AOJu0Yzr8luN++Z2UmNsHq40m+EJc2JsS9KLeInaBn8wy0IhkfFqZ8Lh
	djO1ns9clWWEz0WHMtmNFAmfi4hwDwRIXpTiWuOLqmM1j9d5ERAFp73zLXLCQ88=
X-Google-Smtp-Source: AGHT+IG17y+9eHvBGXXOKoXsteB+mAkpljn2ulSXpM2ij/uchHhlZVAGoRmkKWpsanM/2V5dS5uvTQ==
X-Received: by 2002:a19:a414:0:b0:52d:582e:8093 with SMTP id 2adb3069b0e04-52eb9995541mr832557e87.23.1720515514583;
        Tue, 09 Jul 2024 01:58:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:b12a:8461:5e2a:dfe? ([2a01:e0a:cad:2140:b12a:8461:5e2a:dfe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f7361b5sm31043765e9.29.2024.07.09.01.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 01:58:34 -0700 (PDT)
Message-ID: <595ae759-0d5c-4f46-bab2-91bf616acd5c@linaro.org>
Date: Tue, 9 Jul 2024 10:58:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add watchdog node for A4 SoCs
To: xianwei.zhao@amlogic.com, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, Huqiang Qin <huqiang.qin@amlogic.com>
References: <20240709-a4-a5_watchdog-v1-0-2ae852e05ec2@amlogic.com>
 <20240709-a4-a5_watchdog-v1-2-2ae852e05ec2@amlogic.com>
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
In-Reply-To: <20240709-a4-a5_watchdog-v1-2-2ae852e05ec2@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/07/2024 10:48, Xianwei Zhao via B4 Relay wrote:
> From: Huqiang Qin <huqiang.qin@amlogic.com>
> 
> Add watchdog device.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-a4-common.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a4-common.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-a4-common.dtsi
> index b6106ad4a072..496c3a2bcf25 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a4-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a4-common.dtsi
> @@ -52,6 +52,12 @@ apb: bus@fe000000 {
>   			#size-cells = <2>;
>   			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
>   
> +			watchdog@2100 {
> +				compatible = "amlogic,a4-wdt", "amlogic,t7-wdt";
> +				reg = <0x0 0x2100 0x0 0x10>;
> +				clocks = <&xtal>;
> +			};
> +
>   			uart_b: serial@7a000 {
>   				compatible = "amlogic,a4-uart",
>   					     "amlogic,meson-s4-uart";
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

