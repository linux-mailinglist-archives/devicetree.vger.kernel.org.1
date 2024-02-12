Return-Path: <devicetree+bounces-40922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24873851B5F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59FBEB274CC
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52FA3D996;
	Mon, 12 Feb 2024 17:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EDWogOw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FFE3E474
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707758833; cv=none; b=iTE3UCf/m/37SUacX21/apK8ZBZn8jk/P7CukyIFT1h0tBFDxavNlxbjHb5aDUXsT4qTfuX0Wh8mzbpCxjgAGzTYWloMqUjgsKVpWf7UDk0lvExUmLtjp7FXNtWJn/HdzPB+8nfMQrtcUaH5yotdaVfxd4pNe/oIAvr5eNpiE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707758833; c=relaxed/simple;
	bh=KxPtmbNqzg+X3Kox/k8AsTVZ/l5zUOoiMM/DNt5qidM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=gQUvSbkxP+cdIzvchr9Kgn47sogxQR9hpjUODZsb3sJA3t8m15WbI25q1ckrwVx/AR/knZ51gKodaJeRP49d/oToIDfcVgOiUUDkgLlucBxQH2Z247+W4HjHbooDGeJanUX1+i9T2jHRQo8J659j39kojCPBfw8xu9OyVVi0/64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EDWogOw/; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33adec41b55so20226f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707758830; x=1708363630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYjc0rN2oy5Iawi31SzGuuK9CEloEvJ4EiiP7c6ODo4=;
        b=EDWogOw/X+EM0yViJKfIByQbgRGoKlQP3PqgK/t8jt+2S2ts1kA4jt347vZVoQ6n2U
         vQb9QFgW9MAEl3hvCovYgHaibU3Qr/QSV+RyEgU07zgmEj362Uw6tspep2D//hwtjTne
         6yAbCNvbj9ow4dUiYAIwrQDneHecuZEdXcaCH2BKXxH8IwEC6uLKIF5pHsNN2/87lOPW
         u9yOhaLBJLamlaM+8uMA5220HWOZOGDZhaoeL2xmbfDwGciLz1biLiuYGAifIVuW5fCy
         ZQ52rSUSEacmFRuRXd9FwRfa20vO4HiphJNXG0vr4ebH10zURjXy+tsH3sMmZCJhwtTm
         AQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707758830; x=1708363630;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kYjc0rN2oy5Iawi31SzGuuK9CEloEvJ4EiiP7c6ODo4=;
        b=Y4LLveIhfy2yg75mRcOCpFakR4OylW0Su99OGfqnHX2GR+Nj/JkiDS2b1uA+ebuRVf
         2ij85ne/EVaDprbBSnb9FfIQjpWuKF7pHR3gjH8ZsTaq1rGpbbiOpE8Qhc2lkw65XshS
         yioZBPFV2ABXXAAMFzmqLpSkRCI4KnsHb4ZiXfuaL86RRLYTPGO/j7kqigLeLjmPvOLQ
         93fw94M3sq6P/nQU32l3Tz3iBFxwiQL5Ph8M4GaH9XaCzCA6KB5Gaalvl+YtOfinm3ne
         3FgZ7qAFtA1bfml7ZiGlZOIDrnOfvRy2+x+azfPYiDeuMhroqYD2UM/t4RPnekmwZDcg
         IX3w==
X-Gm-Message-State: AOJu0Yz1S6BrAlejWEGTaBSC0F0Yf6oeedceBePIcEWIpl9byf4zcyr6
	WFAATYblQ2UsyzRpiLmwEL+JwBqhWPXalZOw5BdW/Tr/vPi7LbmmKbu9XXR6pov8LhRdyEr3Y3U
	tXd6o3g==
X-Google-Smtp-Source: AGHT+IHILAcSpATayGsasXwQ5W04VZO0L57jBbXvTpZBTKu3kWPqnm21x6PfspOzA7K4n1elJg9CLQ==
X-Received: by 2002:a5d:6e55:0:b0:33b:3c79:9182 with SMTP id j21-20020a5d6e55000000b0033b3c799182mr5386161wrz.3.1707758830284;
        Mon, 12 Feb 2024 09:27:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW+XLwEUEJvPjgiYu2JpM70xbmu2G56fpYSqUwsQWLnlhoossVxoMiG4l5MN72mxtVHAJrakFDLptco0Si/ZepSjh9d1AdTvvYrD1TqtPp1EacHzVeWMQYzitPT5tp8TngKFx+x3veGRuT31CkGKGPJLtmXy2t4Fjxc9RRtWoPTnm6HIJOQRLvIE/5y6B1LuOrPlBktx/QS8+XhzbTrfmTEboGV+eyDmTdxoSGmBkjV+Yj0CVAkbJ78HcDS2DFw7dDNkL83yffjhftXD8FKzy+8alfDqDPL+wIVoZpheqdjBg==
Received: from ?IPV6:2a01:e0a:982:cbb0:fcee:f026:296d:135f? ([2a01:e0a:982:cbb0:fcee:f026:296d:135f])
        by smtp.gmail.com with ESMTPSA id k14-20020a056000004e00b0033afc81fc00sm7266685wrx.41.2024.02.12.09.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:27:09 -0800 (PST)
Message-ID: <bd37b6a2-d2db-4183-b667-2c3ef3590d8d@linaro.org>
Date: Mon, 12 Feb 2024 18:27:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] arm64: dts: sm8550: correct DMIC2 and DMIC3 pin
 config node names
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240212172335.124845-1-krzysztof.kozlowski@linaro.org>
 <20240212172335.124845-3-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240212172335.124845-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2024 18:23, Krzysztof Kozlowski wrote:
> Correct the TLMM pin configuration and muxing node names used for DMIC2
> and DMIC3 (dmic01 -> dmic23).  This has no functional impact, but
> improves code readability and avoids any confusion when reading the DTS.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index ee1ba5a8c8fc..a6663eefd3a3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2507,7 +2507,7 @@ data-pins {
>   				};
>   			};
>   
> -			dmic02_default: dmic02-default-state {
> +			dmic23_default: dmic23-default-state {
>   				clk-pins {
>   					pins = "gpio8";
>   					function = "dmic2_clk";

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

