Return-Path: <devicetree+bounces-239652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 13601C681AF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1CE1435D68F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E286303A32;
	Tue, 18 Nov 2025 07:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xoCBZY8B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642F025B69F
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452721; cv=none; b=jbIs2Vuowoa6z8sKZbXDVUqqNUTldn8XKn/J5daUf+aYtkTZUFp4IHTomgQsXUjm+iEafMNF9b8JO7RBxRLVvIeYJOdSwOstYuDPLejEeoWLfKONO15nNEjYNncxhJSq53biFmBVKMkMTvHqgMrH05gAaD5KKqTXcj2cxjSAPlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452721; c=relaxed/simple;
	bh=vBqOXd94l12wj0qBqk/n0ENk8COc4RIj7BGv9RcJwkU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ugUTyT1MavvWZSNfPlw+4yl0NevSWVf093SIw8sCWVksxxYHQhoe34HYJf+9zGL9NBKKAByQt5Yd+oy4ayEbugPKFrdvJ+htslVXGibhyxBp8EmaoEO28MiXeOtwfoPZ2iWYV8E2VQJxMklrmZsjVmRxiyIsu8zdcyWS/fPjFCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xoCBZY8B; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4775ae77516so56976575e9.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763452718; x=1764057518; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bX/rwpSeSV2xaHQKCSrS8dfq2AEp8R4hePQzRfPkN5c=;
        b=xoCBZY8B8LNTYcRr2qZ07kR6IXjY1UOQ1wpOTem/cvrbai3kMVDcQzXtwmcIXCGqLM
         HkSZhmjLBEv98pTElSAoz3YThk09pzYNzv74u3pfPK8PDn8hNWiYzMWaq0+WTQFfQkzo
         RBAypdUgGedhcYhLu+iyvBJQ0sE9GUsPX27JeWgp7Q93g9sRued1AI1OD1AkI3q3EKkA
         kPpMAoahVsLOpa4/tmHOGQldNxzJPGbBDJ6k0FHr/T47gb9OpxysYUJ1KXAqARh41uF6
         tKk9CS0LhYuLp9zEXVmh4i0IcmJQB7W6zNpI00hyZ6gNH9Rzia4a+d2xQCF3EiLqLdjs
         uIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763452718; x=1764057518;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bX/rwpSeSV2xaHQKCSrS8dfq2AEp8R4hePQzRfPkN5c=;
        b=cW9WcXftT+hPwo0gfIlsp/laU/Pk+o+ecWfnksm76N510KE/mFfHhb0vHGP414m6qL
         HKKM9SDvVQLMjdhryJPZE7n2uXUtn6OI2AnsVUGEupGecMthRvhP1Eg4WMd4Qkr6k8E1
         qi62PbS+0tPrhRlmVrRapz5BkohEyZu7fmyE/Nm+F0xHN4Auyp2DU1719fjGUP2CIz0h
         ogxBpU8HAc5JnkNy5iIYzkqz0awGCyluEnGCC/t+61Q8PPUm8fIqlV31w61jRzCS8gSu
         yUnKzA9lfWdYWNIDZZLQUaswI0DZmOqd31hTsxFNbMro7q34v0XXcyR2lZguRMbmp9K+
         8h4w==
X-Gm-Message-State: AOJu0Ywdb58xEAwq2t60riuzLEGfJ6ccnHMMqiejzJ8UCOVjC3tddMOU
	i11+T1jUaG3IcT6UhtAGIayKxG+mqGbiBd6F0PSM0Fc5M3YzwaKiOnHUfrzj0xr09ycdSfQ6HcF
	DWS2D
X-Gm-Gg: ASbGncu294ymM0+KyTY2ViBcOwGvC5rFyRCQ09UoiI9YCCJGFcUnVCQwVWZ9QRwXEpw
	eXoYYstaVCBRgmthnGqQMJrOzIt+fpSRIDionBV09Zx9QIxEfq6zoKSWKQ6s75B/Tu2be1Qapdv
	2rv7hAxNu8wF33aqNDOgNSGceyi01cVusYAStmnp/k1hX9NyCJrTpxGbn4Q6ZkJlTeXqJLzAR4O
	j8QPsGquxatQGdv9+nNkBcUnnYtsViEyz16qqLkvoBincf2uL722FPJP2dYaXbBVKmkNocSrVLc
	9Lf3IOD8jAWDvbj8asfkQH42Xp1Vl6lkuVeFi697KRjL3YAU8xdWD+UpOZaJM99T8kHmGF3JI9v
	l13MJ4jpK3+EWhBXDLej4SpK+36MFyZCay24tslWNyvqrmPLKRHWxW5SDbDaAJo0SOM9h7ac0k0
	sATKiwsxOJ+GHSdBZQxp5LuO9vRpzjsNuhkV63zn9grXe8ZnGtsd0SPb+2Crxs3rubpQHYQtmUQ
	Q==
X-Google-Smtp-Source: AGHT+IGGMGuWR5iFvUAotvIf2624yfKAl5P4i/kOrg7Ysa5w1iKe5V5T2MxUIaMHspzvFrmXKuRKxQ==
X-Received: by 2002:a05:600c:3550:b0:477:76fb:ef18 with SMTP id 5b1f17b1804b1-4778fe9a5demr136227835e9.25.1763452717637;
        Mon, 17 Nov 2025 23:58:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787daab3fsm377307365e9.0.2025.11.17.23.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 23:58:37 -0800 (PST)
Message-ID: <d3f0e883-b580-4c75-8eb7-70a019fb5062@linaro.org>
Date: Tue, 18 Nov 2025 08:58:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] arm64: dts: amlogic: s6: add ao secure node
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
 <20251118-soc-info-s6-s7-s7d-v2-3-38e2b31a88d1@amlogic.com>
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
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-3-38e2b31a88d1@amlogic.com>
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
>   arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
> index 0dca64a2ef9e..da3e607aea85 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
> @@ -199,6 +199,14 @@ gpiocc: gpio@300 {
>   					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
>   				};
>   			};
> +
> +			ao-secure@10220 {
> +				compatible = "amlogic,s6-ao-secure",
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

