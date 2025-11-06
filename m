Return-Path: <devicetree+bounces-235676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D02C3B272
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 14:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAF5F1AA5BBF
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 13:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF22B32E6B0;
	Thu,  6 Nov 2025 13:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i3WQRV+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE943168E5
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 13:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762434507; cv=none; b=TGYU89YMmdidUBbdFXJKerrWy3e1DveOM+1BwlEi1s+eiJ5kNFZO5TRoW7B+91XdiEg7uc57sZGyQL79nC3kq0bnHpOmbXkKLoI40FhtRduthqGHSTi1oIp4o3OCF7Vd5RzuWmRB4txsvMULE2WH8Maqdfgp0/5Sgc57l/M9RlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762434507; c=relaxed/simple;
	bh=FpjDyD5udemX6kSlrZGCPy5Uq/yWi1b/5o2YnXPLmFU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=NHtk7dLaWOhESEAtH+bov62tZQ7MiVOh5INpzQB/ns3cOnn0V85g2ovNQW1OFI3raDRYcssCO/Gbo6QoXxrqd+Ut9y1EC9xnsb8yZuq7YKGELO1H6UFgI3UeKRHNPF/Xm9XH9xm0m4pPgGzT8d6I/6FOYCbflXgTabGET0giMrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i3WQRV+/; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-429bcddad32so717554f8f.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762434504; x=1763039304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQZIJ2xmoJurErGMsCLrLKrgFZo/Q7nS6WUoDhpVWxM=;
        b=i3WQRV+/jSDzNqRbkvNLdjjTzt/EDRHFLZQTtr0gY68Pam1EmWkz4mFP5survBDlsT
         LN0GQ8snkU8irn7DB20E9rVkaDR/+9azFt0Uw9MdDoAKBAUfAuQMY+Np4BvT3fS9eQBo
         XGiYCKq0FA2JgFlF+bU49v4JYhrPJVPfHcyWrmn7pv9BLJSpf1C8dv75A6o4RPOU5iRA
         IwwxVN0wKEsme0EjUVEJw/NEhDKbzb6YSxhvHVK56Z8Y03jKEZg0jn8O78WCP+ulWWqg
         0fjJ5F+/DTzEEXn+6fGio9uibBa9/g2O55sMLfmdiU7Se8mJY6dllVZiLwOE7fOwJdNl
         FbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762434504; x=1763039304;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VQZIJ2xmoJurErGMsCLrLKrgFZo/Q7nS6WUoDhpVWxM=;
        b=EakdpvnEuV2EwkM3P6JXY4wLAfnFAqAL+92Sna5QujulrMMDRbrXyfHNqD65LXRkTo
         Fx71IzvhpU/Wn/cv7EIkjW2BLSjKLwFRsydM5VoSclp05SE//9KMgpL/BrzWP9OsovWm
         wTb4UMpTOqSWEbcmY23hRp3VSZGqEq59BCle4ZMEld92Op7aYJu9SLPOB/ajH7LeJVcs
         PibZdFQJPFe8TMgQUenl1zsQlB0CcJ9IfObOgzlhFDi7O/0qWh6CwVFfM4ZhTLtFuIH/
         80waqQeOZ87qZwFFaYIMl5hDeQ31ekcDR2k0jNkOu5gpNuKCS41H8hvJQe2PTwQhTZRa
         a0Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXP0cLtqwE8xQqHWugiWWPfNqZzQhEGn2KUVa1bHiQBHNllF2jAurD6zR6XaM0ofycBrfMqbE2YkKWK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/bwAEn+f0uNmT0QWBE0emE/XLwV/N/8F2//lphJcS+njyAYWy
	odw42k0TTpsQFNUjJTmBZBzGhxSE9HWXr7uh8Ei1G7+Ge1cyXO6LxYUd8LWPApySMCA=
X-Gm-Gg: ASbGncs2exiQss96R1OXC+vsjFlc80+Zn4dJKCKwz7c4NMKMmKm+yaYfkDdv1Uj5S5d
	uIIa66yEcSpgd2DFmgu+1kill5872OKrP4i2c2RH/gwsBLs3jfm6uiI7HMKhHveZrGM/NnPtmeA
	RYwUTL7XE7VEvi3+i6aoaD1CJWkDPqJBn1/yWq2J+gke0PJepXQtAzdu2j8zNVGfgWv1aEUqBkc
	heMBUzG7ie7d70//4kUifJ5qV6KGK5ZFMkpFbjnv0FJCaAQj6yV/UdgvdyW5G11KcNsEedsuRsY
	GHghnWvCCDv3HICWIvX2tFor4Tvo9Fn0eIdCziUIDPT+jx/rkAzb2Ddq1Ob+AbR1sBtOfTBC4+v
	Q8JVnIXFnGN4b+Uyo8Ozaj5385Or1EDHRtE6h8280ilhLCc/32ElCWXAI2KijXpAx/aQ+I9OIvT
	2PH6zYYIQ9qZEO1EpFlW7j4ZYL4OSaEJssjw==
X-Google-Smtp-Source: AGHT+IF6rma8OU9HRh/m1faNu+JTKdeQ+7jkSzOE0//gI7xuL2wV4a8q3sJmgGwU6sR3gY3jWLa43A==
X-Received: by 2002:a05:6000:40c9:b0:429:dc9a:ed34 with SMTP id ffacd0b85a97d-429e32f482cmr6817722f8f.27.1762434504030;
        Thu, 06 Nov 2025 05:08:24 -0800 (PST)
Received: from [192.168.27.65] (home.rastines.starnux.net. [82.64.67.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb4771e6sm4956316f8f.28.2025.11.06.05.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 05:08:23 -0800 (PST)
Message-ID: <b40e91e1-589f-4c6f-ae22-feca5f292c75@linaro.org>
Date: Thu, 6 Nov 2025 14:08:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/5] arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
To: xianwei.zhao@amlogic.com, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
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
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/5/25 10:45, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add GPIO interrupt controller device.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> index f1c2e91ec6c5..74f98fae7dac 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> @@ -194,6 +194,16 @@ gpiocc: gpio@300 {
>   					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
>   				};
>   			};
> +
> +			gpio_intc: interrupt-controller@4080 {
> +				compatible = "amlogic,s7d-gpio-intc",
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

