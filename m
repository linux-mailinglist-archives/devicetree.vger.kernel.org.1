Return-Path: <devicetree+bounces-239653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC6C681B2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3C59E35E71D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B1C3043DA;
	Tue, 18 Nov 2025 07:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J7k9032P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C9F3043DD
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452725; cv=none; b=T9sOVjHtmkfBGUqmafvnID6GKzgpLINJuUCFEGwjChMEaij6PWUNDz9CLUYyEX5qsxCm5NrtG9c/Q02RQmUvi0yIaBaYrEA/+n0f3nhz0J6tS7/bjUrOpMj2vZ/y3zMjjlZpu3fPTNfZIRBX5I2tg1j6COKCn8hNcGpBWmRpSrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452725; c=relaxed/simple;
	bh=ZL3f2AtYfhnRBWo6CRyavK5aeD3n5vwjytGNCZjiEac=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=X5zdXM6sGleGoifQI3Bs0/la/ffItBd1s/wZN669f6jXihE47DUCSzjHqN3/5Zh1Q/ej0NaVb61z8WofT6JW+ddQv3RF4BknK5rBULThx9WgBZzuOSmOHnX/bJ7TCrLNhSge+LSNn+UBWtK4sUugv8FD0MOIK/n6Stp3WIx/ask=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J7k9032P; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779d47be12so20441915e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763452722; x=1764057522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+I4/4+TloAXBh6SukgFWKCWV0M4BbdYTXgavls713hw=;
        b=J7k9032POnFm28ll43I3llxTDR09qj1XXeGs37bKkMiBAJLd+J5bG895AdUceKxjQz
         v0bh/UVrkPWO4flEAQ707wiSR0THNMjvHRwHQ5GXN/HqWBEjMvzmoO7iTin3K0v85+Xe
         8E1ck/0CqQVj26VGgsG1hoNzTu2BzREAS8SRclnKrU+lVxE73AGZa6/M4S++aiRhK0xm
         bAgmIdIuxhz12DNJBiHr53yLqfPKMPiMRH5ptX7HBbKbEv4YPerdVX22anMlU8qLHz0q
         htio3AuU9Wwi7s+W+WM1a7AxMO61Ydokxz4u6i3tLqxcvzDCPCNorTeVuPo6i6vqI/F5
         Chmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763452722; x=1764057522;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+I4/4+TloAXBh6SukgFWKCWV0M4BbdYTXgavls713hw=;
        b=l6Q+aQQ/FBcr/136JXuWvw3qNhxo9yTQ0RtN3Cf3EMWfQXtYooNi3k7gZZt/y58vxz
         UsIDq5ZaOgopUSF3KMISadQFwep4u1HSpU4nNjvpRhzELPGphh+DnWHfq/JeQ59baxw0
         oHw1wUQj8yW5iMWuK7io8RH0+1WswKZ9aLRcAHX+mcIp3TOrffzKxoMEYJwfvP9M5z5r
         zPZHBXKkQ14KXHCh4BNbS4bgcKDHNn2IpEjl5Vr4V5YgQBlPs2SSjE8tZTVRYtiG3cG5
         PjGpmkfNHedqhD95b1eYznhnxL8PUGkpWFEzJfUve5JYnfq6mBYo1lM8GawEBhnI+SBE
         LIYA==
X-Gm-Message-State: AOJu0YwRynwG6ksNUQS9JTKdNckmO/uci7s9vnftLBx/H09sldH+U/LM
	XT6MnP+3O6+zJrpCxA2U6O2s4ABUKw+FLI+wfzlx1I3aFRq2FkshVhqcxwFwiLQze5k=
X-Gm-Gg: ASbGncuWGlFb/OL2zNOxQM34BDdM6nk3NRHZcCxGqV8oRg91crgZqsipuoYkaE2YDZI
	Te96Ar0dVhxNazZJI5+jMz/VkbfoIfCVktXGYhhZSRGUDs1o0+/SVfXyQEqXZLWwNRIoHJZRP99
	PDo1Cc4qslwERYkTGPmgLLYvcgRHfGDJ1dmC7EO/3LeDCT1/fzVnrZFcSAWOGbMiiuApwzlN+ok
	u5uRGkiDCg71IEt3HpFMdPY2DHgX9YHwUr6dJ42VmJZf2dDDHzKPn3YKSFGaYFHxMDGM+3k6nc1
	MYV71B5DRv4gH/F4b1L+UXTn+F2+S+YU8gj1vycBpSAnwJibfjDUObA3/hIF/SJPox+QRK14hlF
	OiqTaM+/SBT1nKJ+m8wtvmplRRHiK20eTHOVNTo2cYw5PVMM2r8IV4gNkYkNYcdlwZwGilCluoK
	95IgILvFm/dtdlGF0RwqiJfVuo5FtIUkzqunM/JWqGIul3RWhPz6zUKam0omP+SCxC5YHFPeoX8
	g==
X-Google-Smtp-Source: AGHT+IEho2aZMvWABNUWllGMghjBwr4zPQeV8ovJTRmRn0fea2EtKq3PlexeEPnAvGJvcAH1r36AHg==
X-Received: by 2002:a05:600c:45c4:b0:477:df3:1453 with SMTP id 5b1f17b1804b1-4778fea7493mr130718505e9.28.1763452722114;
        Mon, 17 Nov 2025 23:58:42 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787daab3fsm377307365e9.0.2025.11.17.23.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 23:58:41 -0800 (PST)
Message-ID: <d6db1166-ea2c-46aa-beeb-218a54e65eb7@linaro.org>
Date: Tue, 18 Nov 2025 08:58:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/5] arm64: dts: amlogic: s7: add ao secure node
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
 <20251118-soc-info-s6-s7-s7d-v2-4-38e2b31a88d1@amlogic.com>
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
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-4-38e2b31a88d1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/18/25 06:59, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add node for board info registers, which allows getting SoC family and
> board revision.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> index d0b63d3fc953..dd7e3de2a53d 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
> @@ -221,6 +221,14 @@ gpiocc: gpio@300 {
>   					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
>   				};
>   			};
> +
> +			ao-secure@10220 {
> +				compatible = "amlogic,s7-ao-secure",
> +					     "amlogic,meson-gx-ao-secure",
> +					     "syscon";
> +				reg = <0x0 0x10220 0x0 0x140>;
> +				amlogic,has-chip-id;
> +			};
>   		};
>   	};
>   };
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

