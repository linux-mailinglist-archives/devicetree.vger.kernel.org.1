Return-Path: <devicetree+bounces-14037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2B7E1D2A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBB93B20C86
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B4015AFB;
	Mon,  6 Nov 2023 09:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z6GZrXXu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF5115AEB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:26:50 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C08AB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 01:26:49 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4083f61312eso32835095e9.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 01:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699262808; x=1699867608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NNMrL//ufF3IVIJkNoygI3qKns7bPW7N2J4mliKhUow=;
        b=z6GZrXXuoHlEU6KQujMHJ+GN2t6vPm2Ehh6OVbw3G9o/sEbctRUbV64xQsEaKw+Fmy
         lGA1hKitq2UT9EeRNgNiXM5cDSpuF/l9YEEjMumrvairsLmrMPHkGf8DT6z7sa2QJD+5
         wdBEEK16nbGWxbXPdsV+ef/8S9Q6J78Mo8lBSPyCpai3Qa5pUXKna4mfqVSazuhnY1h2
         JsWruc1wnz0SbJJcfoep8RQfj7WhPuRFBKiQHW6RMPhTSaSwbN+3jSBO+PgMZmVA0SaJ
         2K2Scc7fAyn+HrHsVP0mhuDi3JRo7ojeDRsvq29hxCDCDs3HmdqcOdsK/Rgkl9a9iPpj
         p2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699262808; x=1699867608;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NNMrL//ufF3IVIJkNoygI3qKns7bPW7N2J4mliKhUow=;
        b=kmhAlLB8+NRYL7910E2f613iu8TdHu+z6edoWmbwhkB4dH6q2VwKu2xNulxi+896jE
         N1AM7s7a1c9j9tcwDiGLRzMSIb4wN1g2KENnunJRKgFwvfCd725xWT5BWe1MjCnEwUrh
         RAflvTDOSUQsGwYLEPZBlPUovYqXaLRyVNERvVlwqlwnuv6ptymD674Rl0kfcLKBKkOO
         BLxZmjwarTuQwYX7bjfqaN8FDzuzUnOdi0Tnro5S3fRrpJIiIiXMCullxw7lJ1RGjwpE
         TStHBy5wE5ZzerpSG1UR4eBOYEKxXKUtd7i7S8cNouRa6AXA4iyXDDVN5O26dbkxMhEH
         roNQ==
X-Gm-Message-State: AOJu0Yzg+yAqcbPK7mp6RIsH8IJnbyS/8cMzSelRsgC3K+okP06L4m3N
	O1eAAUSf275Xg9YM0WPAJdzRYA==
X-Google-Smtp-Source: AGHT+IFB5D/MB+A9Df6YvuC5v141ODVPI7Hcwf+eULv+lIgNOuMUDA4MMWb9MgKsjXqWN4qL8ChVgw==
X-Received: by 2002:a05:600c:46d1:b0:405:3a3d:6f53 with SMTP id q17-20020a05600c46d100b004053a3d6f53mr23317637wmo.3.1699262807625;
        Mon, 06 Nov 2023 01:26:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:7a54:34e:8001:fb7d? ([2a01:e0a:982:cbb0:7a54:34e:8001:fb7d])
        by smtp.gmail.com with ESMTPSA id je3-20020a05600c1f8300b004083bc9ac90sm11609349wmb.24.2023.11.06.01.26.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 01:26:47 -0800 (PST)
Message-ID: <569e39a0-b91c-46f1-b55d-c9324d66339b@linaro.org>
Date: Mon, 6 Nov 2023 10:26:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RESEND] arm64: dts: VIM3: Set the rates of the clocks for
 the NPU
Content-Language: en-US, fr
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, linux-kernel@vger.kernel.org
Cc: Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>
References: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
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
In-Reply-To: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/11/2023 10:22, Tomeu Vizoso wrote:
> Otherwise they are left at 24MHz and the NPU runs very slowly.
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index ff68b911b729..9d5eab6595d0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2502,6 +2502,9 @@ npu: npu@ff100000 {
>   		clocks = <&clkc CLKID_NNA_CORE_CLK>,
>   			 <&clkc CLKID_NNA_AXI_CLK>;
>   		clock-names = "core", "bus";
> +		assigned-clocks = <&clkc CLKID_NNA_CORE_CLK>,
> +				  <&clkc CLKID_NNA_AXI_CLK>;
> +		assigned-clock-rates = <800000000>, <800000000>;
>   		resets = <&reset RESET_NNA>;
>   		status = "disabled";
>   	};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

