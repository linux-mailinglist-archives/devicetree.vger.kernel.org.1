Return-Path: <devicetree+bounces-86292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0DD933891
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 928CCB20C90
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 08:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE63F23775;
	Wed, 17 Jul 2024 08:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2aY0evG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66BB21364
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 08:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721203762; cv=none; b=DoqD/dROXIRyrRSjAuaDP/bDHnLNA2RghJf7SMO2afBHlX4fWrL1qlOBo4esHFcCTvBiNaOpv0tOUsnj8LhDu5TUBqjej7Sa1pVTqE2va95nEIH0aLbcGQGuUpmm8EoX+a4KUNheYImGXExV2W8Rk+ttZ+GXfsBYT7zKwgtsJII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721203762; c=relaxed/simple;
	bh=2o0dVat0evgmjKlmJB64OfeWmLcQ1n4aYQ0d+bRARXE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=j9+TpPS7csOEv9hu8GFWzvuLPfEpiokIvzRnnrJJ3WdYkdc0RD76IlVy5fvvErxwipBNI3slXHUOTWk7K6r5J5vKlSqc6UHi4TgUMGTP2SaHoPbL4at1EDaUV2LVB76UzVtd6TndaBDvnXTZicrhFfcHGPw9QzEazFQkQoug9t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K2aY0evG; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so90978051fa.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 01:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721203758; x=1721808558; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOXoNQosPE8+srYjmMs5eTAgqs7D713FND3oFcQySbY=;
        b=K2aY0evGcv6D4xrnVabDTeMbjWL44RdANbiugppY/fehDBT2UN97n2vqWsSueASDLJ
         2waDMQqqTUrv0PwQBOAa02RZoMLGqDDKqou6Piv9DEEJBu2vG35I6OfmHQBMEH62Fesz
         weZ0zgTeWmeAr+Hhqrrw3Iz63XeNCkyzF2bL39VFhpKOG81D40X6u9uqQ4DHth6L3N0d
         MpQ5JoT3FkzxvCvsE9AILl/LzFreToSyt4beq7yxFl+QK98Dfe/ESNOtxutb/XW5LCkc
         U0W3tPM4y+IhaNVSYgGZX4LLAMdT7Ous/6WWyvvFeKb8OPUPYto5oNhoixhtlG0ng9kk
         T7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721203758; x=1721808558;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OOXoNQosPE8+srYjmMs5eTAgqs7D713FND3oFcQySbY=;
        b=Cc6OvRBRnLFxGGTny/KIxVkNreYfVY8w/kZq6plTBUzp6FovAeVkh/TRmroaiuw/Yp
         WP1rw4poAoTfaHPx/RXdiv5RfpSMZXZgvSO0jJCudogXOXup0g5LXL8jkIB31Yets0WI
         F9NQio0qLHbYwsEqy07b7noMkWzSiXnTPQvhOcTv4trug0GmqLnUGPWtyl9pxT2AcJJM
         B8aMb6e0WD84Up8Y7iTgPeuSPkwS3pbpfMikIfTzK3a7gvn2zPVU7+nSS5P+UKXoQ6oP
         XzNTRphIQ/mL2w0JvijEvvGP+r7Op6FsZ3Fw1eDoDiuBgHhQmMOIPaJurlsWHgMyJgOF
         AlxA==
X-Forwarded-Encrypted: i=1; AJvYcCWR8z4bGAhZ21CLPf/iBN4i/2Vc1ejjxJItScYvb2NXr74pYhtjCutYYbL8DBay1CwbN86VwD5ApHaAih9Y5hay591F7eXxxjSDJg==
X-Gm-Message-State: AOJu0YyLJm8l83BL4JZm1KExKcUh6CuXvXuO2t+AF8sTgSgW0GA+r6ix
	cUbrb9UHuGadFoubMBo4uYhgoOsZhp0ZwcKiUiVZvCz+qeXZkGF7ZueuRcu4g28+NqqgBu/9uSB
	l
X-Google-Smtp-Source: AGHT+IFSbAldDNTRKoNcY0RV7ixvmgdkFTNvrkyv921DOFtSKdgDd80Di9g13/eZj8F9UBty/s8wrA==
X-Received: by 2002:a2e:2a01:0:b0:2ee:bd1b:84c with SMTP id 38308e7fff4ca-2eefcdfd545mr7085201fa.0.1721203757366;
        Wed, 17 Jul 2024 01:09:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c5b9:9b90:b1c4:1a1d? ([2a01:e0a:982:cbb0:c5b9:9b90:b1c4:1a1d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5edb50fsm161597715e9.38.2024.07.17.01.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 01:09:16 -0700 (PDT)
Message-ID: <ef1e4d78-7e94-4853-90c0-73f0b80f9a63@linaro.org>
Date: Wed, 17 Jul 2024 10:09:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/7] clk: qcom: dispcc-sm8550: use rcg2_ops for
 mdss_dptx1_aux_clk_src
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240717-dispcc-sm8550-fixes-v1-0-efb4d927dc9a@linaro.org>
 <20240717-dispcc-sm8550-fixes-v1-2-efb4d927dc9a@linaro.org>
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
In-Reply-To: <20240717-dispcc-sm8550-fixes-v1-2-efb4d927dc9a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/07/2024 23:13, Dmitry Baryshkov wrote:
> clk_dp_ops should only be used for DisplayPort pixel clocks. Use
> clk_rcg2_ops for disp_cc_mdss_dptx1_aux_clk_src.
> 
> Fixes: 90114ca11476 ("clk: qcom: add SM8550 DISPCC driver")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/clk/qcom/dispcc-sm8550.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
> index 09e4b1e40e20..8ceeb17bbb37 100644
> --- a/drivers/clk/qcom/dispcc-sm8550.c
> +++ b/drivers/clk/qcom/dispcc-sm8550.c
> @@ -400,7 +400,7 @@ static struct clk_rcg2 disp_cc_mdss_dptx1_aux_clk_src = {
>   		.parent_data = disp_cc_parent_data_0,
>   		.num_parents = ARRAY_SIZE(disp_cc_parent_data_0),
>   		.flags = CLK_SET_RATE_PARENT,
> -		.ops = &clk_dp_ops,
> +		.ops = &clk_rcg2_ops,
>   	},
>   };
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

