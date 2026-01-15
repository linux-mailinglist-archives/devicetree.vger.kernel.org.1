Return-Path: <devicetree+bounces-255533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BEFD23ED6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 898763017F19
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF88536215D;
	Thu, 15 Jan 2026 10:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KXRwP1jj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E0C359FB4
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472728; cv=none; b=BogBLnqbWgRq4x9Xq0AGhWLbuKwabC1pPvKAQ52cKSmvjDWZSXoZfbBXR9GonmVu2+efY7LlSxte5xPpqSwMNVaG9vX0Ou25Y5eq+6oabEucNgpnE3wRG6en9VXFG2N0LMt2cG97YwvzKLNj9aO57C/O5HvUgl7MMTxoAVZz+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472728; c=relaxed/simple;
	bh=TGoH00lS6oQI7bQliAOrXfMYS6RKuJuUH4MmdPwn13I=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=elWfZkx84nSL8QumKqRH6XnZyhXVcPXuJgI1ZO0OU0uhxw7uNaJ0XSWXCpFuHSGei36VS4gulzm4dvZbZaK9S+n14vSRjaaKQ6h5PQyimE+vMydVstHNU+cD76neB2s3yZ+YWASdZB6PJ+SJvIBpWw3yUJgqw5JKCtP0FJLqSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KXRwP1jj; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee4539adfso6726005e9.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768472726; x=1769077526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdE2/EIh5PxxtCe8snCSpffsq8cE6agwihA3skxg3X4=;
        b=KXRwP1jjHU+uBy3dcs14H9zuPJjT+Yhzx1+0KAJ2pcwzspnx10XzauJmYf0dD4OKk8
         L2O6zQTMrt/+NBVA3NvEOKr8nTvFYPOduDpqImzosqx/wtF0UKCQk5Wb79yF5/cmS90g
         lqTodN4TA7oZ2UYDJlIT5REIWtoPzwzUsUQEvmCqABx3t1g4WqM9HKQZEjHdUL/BQCLM
         I93RXgrHEEV+Q3PvHETHguuqa++ELTpetcyI1M+ScQ8AnYJD4rHUifB2V82LYnwRBeK3
         bO5EbI6XR/DzAUuiOlqRIsj43XgzeUBbkN8kHdX0p391R59DKuDA6at3LdOGbmDjhBUY
         X3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472726; x=1769077526;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdE2/EIh5PxxtCe8snCSpffsq8cE6agwihA3skxg3X4=;
        b=q4Gl+vqhOAysXFRxqs5G7MW/vSw0Ck92WuLiX8tHjmH84bX5s7iF+rwA1uHtKPF7j7
         2XpSfq9GwrxG2eDLXkbD7h/zTV5/TU59/AzTtVsQBrco3V/o/08w3rtjF/GN4d3ymcGZ
         zbA+ISIEAejfpis7odT/NUitC/3SmVIWytyoaEgxylPEQoSz9I3DQN87ZFp3lUcoCba9
         N34aLf3V+UKj2vbF20iP27nCQ3inQLwTfYJipTM0DOUIG4okhkcjbYgOI9dcWU6L8hr+
         iufEaYL1S4hqFyuGrkWbeT4jKDWICeJwej1bAi1Z8fvTyZoGnSqrrCyCwmYSVLqxSG25
         uo0A==
X-Forwarded-Encrypted: i=1; AJvYcCVxml1UnNewEwDv7IIh/MPCdzfY4bPwUeF6fK0mOxqDAHVT73A89Ox/xjIa5mPCjxSXWIZ6VngwOsu+@vger.kernel.org
X-Gm-Message-State: AOJu0YwImY/kSm82IFRmaVdGtGle3kWXVujotpgW86AqsOVZY7BuAh8X
	NABkUG7qSPRE/auQcpiLQmpEmKRywEA2UEyPc4AxRcz2xyWrhE4ON/2pRCI3BKFDTpQ=
X-Gm-Gg: AY/fxX4vUI5XznaRHMZ7XxfcqVyl0SzM3m1tiYultCIrBAmhZmlWoSgceSpOJPjhvTy
	hCImuaDX6g+83SnKmHsH6zNdc0kyq9bwYqvJ+ooqfMvS4Mj7F6AJ1ImXKaE6/1eb29buTcK5YGa
	b87SktNAn0lzk8wpLtFzLjoUJuAg8fSNyPFuQjn5tGYmEV3Z7KFJT0+mE/W53t5Gv+pXyYZ/uVG
	haYv9nkp38nOJWKVj3q9esfabUWVITRSDoCLst/2n46Gn6j0Vz5FAJsypNcMOkRFZpc75i0LZtD
	7WWYM1OEgCCh7xZ+nQllhb7jOR8RlPx+cUX2Ulk+vXUqf4UB1S63gbMGUNIZf0YujUqe65JyOsS
	bZ77TlLflxRpc/wWOZ5u3I/Z4LHqDYHNSEjiUCzC+DH7I9fnqz5prRnSO7vBeSu1IEpoXP73jAT
	mO6N2L503P77HGLvIKeVEm72NZ712/RIdDYprs5EVpRveU+Nyws68q9Cs/kpThbqM=
X-Received: by 2002:a5d:5f94:0:b0:430:f718:23a2 with SMTP id ffacd0b85a97d-4342c503303mr6819283f8f.28.1768472725536;
        Thu, 15 Jan 2026 02:25:25 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a6c0sm5011446f8f.5.2026.01.15.02.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:25:25 -0800 (PST)
Message-ID: <6e72d279-e134-4920-a580-50b6ae5edb05@linaro.org>
Date: Thu, 15 Jan 2026 11:25:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 2/3] arm64: dts: meson-s4-aq222: update compatible
 string with s805x2
To: Nick Xie <nick@khadas.com>, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com, christianshewitt@gmail.com, krzk+dt@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, nick@xieqinick.com
References: <20260115030015.1334517-1-nick@khadas.com>
 <20260115030015.1334517-3-nick@khadas.com>
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
In-Reply-To: <20260115030015.1334517-3-nick@khadas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/15/26 04:00, Nick Xie wrote:
> Update the compatible string for the Amlogic AQ222 board to include
> the specific SoC compatible "amlogic,s805x2".
> 
> This aligns the device tree with the updated bindings which now
> differentiate between S4 family members (S805X2 vs S905Y4).
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> index 6730c44642d29..0a3f81ea0fb0a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> @@ -9,7 +9,7 @@
>   
>   / {
>   	model = "Amlogic Meson S4 AQ222 Development Board";
> -	compatible = "amlogic,aq222", "amlogic,s4";
> +	compatible = "amlogic,aq222", "amlogic,s805x2", "amlogic,s4";
>   	interrupt-parent = <&gic>;
>   	#address-cells = <2>;
>   	#size-cells = <2>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

