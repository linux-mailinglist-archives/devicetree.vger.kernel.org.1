Return-Path: <devicetree+bounces-239654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B73C681C1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1731634CC14
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9343054D6;
	Tue, 18 Nov 2025 07:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lo1hPvYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CA9302155
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452732; cv=none; b=TA1/OXBbIdLKIaQ36bklciflWyRCyywJgRKM1K7aAGo3Ua+8ojMwdUymj359YEB/IsDwawi12et5DumT9187RloqjT+ZCp4mXYBQqyKxMjd/U1MO+lwsZQPciIG81QnAwtQZ08Scv/k4IZ+1v3XNC8smDgppKXmzzCGCoHT86Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452732; c=relaxed/simple;
	bh=xj6+H3VojpOLfI9JZ8sbhZG6NIzj2OUm02KThU9+fuY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=GuYC88ODpFOXKO/Xd8JUe8g/tyBqqZ6luq6SBJEXflKAMG6jbqaKLAUmcyoCAkyxnSj91O8QQzMiRpeJG5qor50gcPTHjrTx0KZPGHCIYPP3a6xox/HwV/xaxUxE3PEdY4nFxiGDWShvF+IR+tPRBs/qk6xLJV333SRwhpZU1c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lo1hPvYw; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so21590955e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763452728; x=1764057528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9ObVqClbbnCEqz8bXzqabp6JeM6PWWAaw5dtxMVdvI=;
        b=lo1hPvYwImSBpoWSBVbFBqOzwz74JRSUhnl63RXxcOSI/YJUYIXAUZZV1963Ewhqxd
         yosuSZOsv5PChegu/vuzj0iUiEEZwYVXhf/EF7vzi9Kj57F9Wp6kclfv6Y+bf3jctQ51
         j7anUdN7Xx8PJZ6z4HPCNFVAq+Lbq6fZFLW030pPaH8T/6Wzp7YQH7PLdMT85AmJO+tk
         twE6SI1Jo3NKYhJ8K529NjuikrkVMNcjKWu634bQNtzQSRqdsc6T0q0b/1DNrOupyJj2
         OzRb8dsEGWOUgs6vkIKizw8W9tS7J0HPA2C2DOv5ZfXc3HOOddfhIuhjeKg9p+8FdjJL
         l74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763452728; x=1764057528;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n9ObVqClbbnCEqz8bXzqabp6JeM6PWWAaw5dtxMVdvI=;
        b=lHyW6ZbjZWDIwkuL2k5iMDRTf+pjbsEms77xfMh6bQlmYkWcP4nAgdEiTtySNDEJUa
         d5eE2Ft0MKLGTCN4jYSEy3EuTmOQ9U4mNHMRnSEDGVkd1qMJ5HlaZENIxPPyXYc3FR4C
         lTEfe34oNTgQvUxZXwbB+j92948J4/covTTO/YucW8E1owCKj2xz5ysQulIrtYZOarvt
         sBCjzkqyUAA3FNRSWbD7Qa9hkc8yljHaalJWmRjCaTVQtvrDb7/egCdmR9ltLHhSrUgi
         CXFhEWfF5tsT3Z4F7x6ukrnDr+gV9+gTEZpHT4p6fCRiz6eGjiTQYb4En3EQ3UgXyz6o
         FXQw==
X-Gm-Message-State: AOJu0YyHV1eD26cu9chm4gijPT1b31C3rqBomF2DFiTxqlvMSAPlG4gM
	kcG714nT+WVfq2AemNWhEihn1PwkyKNBSQVZ3SeGSBjk9sIXxIgo6ho8JQdih2pwbKI=
X-Gm-Gg: ASbGnct3rgAQxWAd8Pcdn+6Uv3jYiwoi6nbtbDaxYWauP83+3YoRwWtaJrPfkZ+IwfQ
	Nz3EBK4jRHj3oNZH1qMvgw6LlYNDhos7fPHGgMkCJgmjo73e3AfmXGLtNbIIybJX82Cy/DA+KEv
	mTVgqLkwLBPE+zEDZTGaWphsMZ2KFq9cPB4+ga3A18bsznNy1hRrgIUhu4oPUnI3AAKyCrt+z+w
	4+LiER/h17t85At3KHiOziGr2tfGhQY5oM8dUPziO4+rD4XifKW2yDnASSXB4VMFkmttdYePuQc
	55S9CeNThPNTb0V3sShNBvqQ6RZUt6id+5A8Y0+Pa4yBpf3w+pSc30C+W0O2pdZfbD336woSViU
	vH5UsoYqEJ0WjHlcmfUdfbLK7V1mhfxa0EeOoL9XbzlaZsMZnGMesuVpuGG4S3c0FH1HSq3CJrR
	HtL0vZhZZ3ov1Nj+Yg8eRJTaz59Ktha2YTVSyAh4Bykx9xgI7SWmylTPfGAvy35kYbhGan3o7ez
	A==
X-Google-Smtp-Source: AGHT+IFAoNF3BK7VDc+szlg2LKY/XNpdmDDVaz3nmDf3hZz+gWKkGx6bQOoyTh5ZVxqOTyI2e1zvXg==
X-Received: by 2002:a05:600c:1d19:b0:46e:5100:326e with SMTP id 5b1f17b1804b1-4778fea835dmr132265535e9.23.1763452727698;
        Mon, 17 Nov 2025 23:58:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787daab3fsm377307365e9.0.2025.11.17.23.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 23:58:47 -0800 (PST)
Message-ID: <04efc6dd-f3e0-44b5-a043-dab423dec232@linaro.org>
Date: Tue, 18 Nov 2025 08:58:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 5/5] arm64: dts: amlogic: s7d: add ao secure node
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
 <20251118-soc-info-s6-s7-s7d-v2-5-38e2b31a88d1@amlogic.com>
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
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-5-38e2b31a88d1@amlogic.com>
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
>   arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> index f1c2e91ec6c5..e60167af0390 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
> @@ -194,6 +194,14 @@ gpiocc: gpio@300 {
>   					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
>   				};
>   			};
> +
> +			ao-secure@10220 {
> +				compatible = "amlogic,s7d-ao-secure",
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

