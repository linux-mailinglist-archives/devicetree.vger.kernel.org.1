Return-Path: <devicetree+bounces-24368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2CA80EDDE
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A220C1F21616
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0932675D7;
	Tue, 12 Dec 2023 13:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H0y18jh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D7283
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:43:43 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c46d6784eso20588685e9.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702388622; x=1702993422; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VaxH82QJraIFl4uUMJz9AaqNUeMrI8EkDXOMXTouMCA=;
        b=H0y18jh6zmK/Zpxnp4ERKGNOHQi/RtfkUVsAIuoMtgvdQEqjCWPymvmvCDEhXMzLVo
         OHRMu9H4M8B/ZRZ/o6tav43XuUR7ZZ8yOcj7grLGz4SGvAz0AeMZ6CUZEeKZ2J1v/N48
         UI+sMsnlR7ei0ycwT1+jGxbXDRMXofXx5jQBkFNY3gqWzD7D3It/U6BFsDqOvpY7Da8n
         7FNISLKwkj8snG/R9ArbJmynS1A266NiwK4t6m4iQfrd82aB5Ch80TkKWuvviY0yj+EV
         Cn5KxhkzLdbIPvMV6Xx7scTw4BfV+TGzShpH+MHQEfzB0Mu7c4vBO+LsM2Gppaiz3Ovy
         h9EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702388622; x=1702993422;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VaxH82QJraIFl4uUMJz9AaqNUeMrI8EkDXOMXTouMCA=;
        b=ehEDs0asC8KthbfpFKCiKH2wKT0ds3oYqhWtUnmpTRo77AmLR1l8xAa74Hiv1/eUJP
         Fk+/O98HSacbRfA1SYn0mOQDWfcUhQ4uGUZ7UXMeoOO2B5aiLAidL9uomGFN43x9bx6b
         uX3/+pJGksnIBr3ENPEDxFdDjCubdkxkteBGe6Uspwn1YiwL/3pqG+nqT0P7T0xj+ScK
         rAJgbYn23wY4xgsm1WNZCScJ28J9WXfzzDxOydAJZNrTeEVKhLQb+hS2OxWoAal0MtnX
         xEyuDtJrbmSnIQ4DtqitdtAahMfE4zyiiuo0QmEbYVI80wd2mRVyfEEdACLYNxqdzkmr
         fBug==
X-Gm-Message-State: AOJu0YxpAvRQbvI+qkkcrBlSw1+wuJtj55vnw0lJC8RlYBJBZoRx2KPB
	spuU/jLG8fGDr9CdF7OM+ihGvA==
X-Google-Smtp-Source: AGHT+IGfSJ5cgkBojQ+N489dtsiHyqE4LG+YM2Nfd6VjGyi7K9SyJpoEypDbi0e/JubU7cH5foyNBQ==
X-Received: by 2002:a05:600c:4fc7:b0:40c:3984:49a7 with SMTP id o7-20020a05600c4fc700b0040c398449a7mr3185542wmq.103.1702388621934;
        Tue, 12 Dec 2023 05:43:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5894:fa62:26b4:bf82? ([2a01:e0a:982:cbb0:5894:fa62:26b4:bf82])
        by smtp.gmail.com with ESMTPSA id a19-20020a05600c349300b004064cd71aa8sm16601998wmq.34.2023.12.12.05.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 05:43:41 -0800 (PST)
Message-ID: <6aefcc5b-aa25-4405-929c-f1a90d678858@linaro.org>
Date: Tue, 12 Dec 2023 14:43:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: drop unneeded assigned-clocks
 from WSA macro
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231212133143.100575-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20231212133143.100575-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2023 14:31, Krzysztof Kozlowski wrote:
> Review of v1 patch resulting in commit 58872a54e4a8 ("arm64: dts: qcom:
> sm8650: add ADSP audio codec macros") pointed to remove unneeded
> assigned-clock-rates from macro codecs.  One assignment was left in WSA
> macro codec, so drop it now as it is redundant: these clocks have fixed
> 19.2 MHz frequency.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 425e1e50d945..3d55d08649ca 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2773,9 +2773,6 @@ lpass_wsamacro: codec@6b00000 {
>   				      "dcodec",
>   				      "fsgen";
>   
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -			assigned-clock-rates = <19200000>;
> -
>   			#clock-cells = <0>;
>   			clock-output-names = "mclk";
>   			#sound-dai-cells = <1>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

