Return-Path: <devicetree+bounces-235675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE84C3B27D
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 14:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 403161AA74B7
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 13:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7E932D0ED;
	Thu,  6 Nov 2025 13:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ojUN0BZF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36A430F932
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 13:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762434494; cv=none; b=ModrAmRcBCQ2BYpKP7BZMxJHJi03ucDBangsa+mM5TqHiGBPnlgXfpvqDtBHdIUY5CUv4FeRSMTt80HQS5XXeu/LW7o/kq0dCSHDvbK6qCIccGNT8XrlJidCGx8wePtnk/I7Tzj++gIpPYNms3a+pTw6mniezwIokofrdaUvD/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762434494; c=relaxed/simple;
	bh=IzQHDeCIoSxak2Cuxm0YNNAhGAdV5jsYsG6mrRHcYV0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=S8QZ6cVKPx3DsMt5CSKmqIGem4KHx0BpGYA0S1e5SCDWLdpi92j8JI5ghphaOWZUbMu9eNicS3/COiImgJx6NpxClo3FD5APPtpKIlH6KFVnKWWIQZLyM5OgnHooeBLZADOa0OTnz/wNQnqA/Jgc8ie42zQ1hrPSmUepSHRJO+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ojUN0BZF; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-429b9b6ce96so707241f8f.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762434490; x=1763039290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xM6GMXLJyNdCfp1spw3gFkLCPiBNpoRjwTrxljsiMiY=;
        b=ojUN0BZFbNO7UWZ45F7W4Sjhty74fMIl1zEMwlZGLxL5e9XiXOW9rHQLEAvM0AnJN3
         eT4dH43MTx73tFVUXRcYBYiTmebR2uKEov35siw8Pv1JQGp0cSfGGvSLK4iBfV51FQCX
         aOtwMPJCAMPsUYn7I8kP+g7DLcjB+iLOBm7euEE7tQxyhZq+9vuWD9tZWavpakbZewdC
         ROynOiTRJGso52a1ChIKIaemSW3gtp0pm+4Ne+h1LtfTIBUTQm3Gfl+UOKouEMa2+/Kg
         JuJshzmKIKRKRwqsirRUwkWAHIDd8kGsMQDkss0yBlCWk3AnFhUnhGquDp9i0w3DF3ku
         JgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762434490; x=1763039290;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xM6GMXLJyNdCfp1spw3gFkLCPiBNpoRjwTrxljsiMiY=;
        b=oRfrTvSNFiPM2IZmkAId9drvf77m1Z3gOGAGp8t+quSGdOE8bRMrO/dFAf2haJC0EG
         nRi1od8ooLDBYqGvAB3/+uXnJ3BAfL3ICEBDn/V272WVu0Q9Fsjxluvv7Z2vcbGaaQEF
         1Mu8/aYf72wfHJBpyB1s3gEL2Ixu9SsZ5aQjgBUnMTJ6YWMK4LhvEgKjbo9/mdZPvQTG
         LeBfbDjJ4eloyGggTlKGYdjAUTjNe32BszAWYXrKgWvcDkeJxcDFjLiNCWYvJBaQkbAM
         fDPfICnXSyAT66T6hQBfXNLpjHhTtI0AOLXhZz/KW/XHC/thuAWnpr0KYkvFWIlAFnLN
         QfQQ==
X-Forwarded-Encrypted: i=1; AJvYcCULcQ9wsIgeDbIB66HPQzEAgIBYESyhDTRr9pvSJwI493B2NVJyPo1rEAjG3vmWLRtSR4XRIGoLblnu@vger.kernel.org
X-Gm-Message-State: AOJu0YwmYDPfqeyQzj2bkYzRcH/7tGCqTW5Rvp5/XJd4Yxnrpnl5U7bp
	dW8GNOyk25h3fRhExJujIT+8puVVZd2MetLMKCv32PeO+AlKAy3Pz3QfSIkKKmR8rDE=
X-Gm-Gg: ASbGncsBafWCVWBI8tPVvkoxUCRPnuhvsVhVpoo9XUl3WgRkGdEirzAy4wYiaW44RSy
	023nwzoOtgO+azl3v5LARujsItuZ7fpYN5dL4zrtZk8dgdQ6IzWyiqdX/cfDVbbCXnbKV8blEX6
	2NEGhIYQP+iwDOBqDkL1x+c4jHhYGFnDM1Qnr/9EWVBrsiAZa/1iSMDyP2V+ViN7hf13pHkN+5k
	gFWYgPn5r+1GLE3x/0PhRFsBqAIGrESXIMnFeKcuiChfBp8VEk6R1Ijr3XttAk3SsqVw1i5TLoR
	odryDYKC8eLEtd1nliXdC6fKVvXmXEA3g5+yN8k8XHJwiEZk9OAKkPfazxt8ydgm29BFd4b1Axu
	q0gGu/jIrgW05fkOGXNcH2OJHA33WdayI8u/Z+otvVgr0lsLdeQUI7DFymC1aIo4VWBPu0tHTnb
	wujsvNlS+n
X-Google-Smtp-Source: AGHT+IEy7P24juH5NWkGNhcb6f0zLE3X5b1IWrue/unb+8l1A51kZb+NzLO5Aj+QJDEaQfeiJrvygw==
X-Received: by 2002:a05:6000:657:b0:427:a05:2ff with SMTP id ffacd0b85a97d-429e330788amr5626816f8f.33.1762434489827;
        Thu, 06 Nov 2025 05:08:09 -0800 (PST)
Received: from [192.168.27.65] ([82.64.67.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb3951c6sm5150893f8f.0.2025.11.06.05.08.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 05:08:09 -0800 (PST)
Message-ID: <efdfbca7-d1b5-4b7f-a657-af4386cf0037@linaro.org>
Date: Thu, 6 Nov 2025 14:08:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/5] arm64: dts: Add gpio_intc node for Amlogic S7 SoCs
To: xianwei.zhao@amlogic.com, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-4-b4d1fe4781c1@amlogic.com>
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
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-4-b4d1fe4781c1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/5/25 10:45, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add GPIO interrupt controller device.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> index d0b63d3fc953..aef7aad95667 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> @@ -221,6 +221,16 @@ gpiocc: gpio@300 {
>   					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
>   				};
>   			};
> +
> +			gpio_intc: interrupt-controller@4080 {
> +				compatible = "amlogic,s7-gpio-intc",
> +					     "amlogic,meson-gpio-intc";
> +				reg = <0x0 0x4080 0x0 0x20>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				amlogic,channel-interrupts =
> +					<10 11 12 13 14 15 16 17 18 19 20 21>;
> +			};
>   		};
>   	};
>   };
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

