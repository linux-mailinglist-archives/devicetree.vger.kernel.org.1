Return-Path: <devicetree+bounces-134695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F39FE4FA
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA8EC1882AF8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33EC41A38F9;
	Mon, 30 Dec 2024 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tsvCu2i0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0741A08A8
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735551771; cv=none; b=MPFxlVPVTVdUqodjWD9650rplvf16ShwL+Y70cQaIaGX4r1HW/pHyuhWBVO3AYPMcOTXYBlbubRE0Q4K6Rh/ykxBazhJ3wGTUTcLriUfkidC5kXkPile/EPji2S9V8qGVUfwE+/UMXYV57LEflCdAvNpj+txR5MWN9wLDOzfjEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735551771; c=relaxed/simple;
	bh=TYw5/8pt4THh3BFTurLzjjHnZD60iZd26cq1X0rOU0Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hioPt95TYKfxvEJ/PLgjX6GDoGs2tt1LxEorNlZI++wYDZv1tOtiQuSnVizppRKIJ8KtCyVR2EsSReD9Jkra7iIgGD50Xl6dqhbBYDVUWOZbmW9Wrtmw3tO9mjYJbjK6smAH9miWg6bKd/RA/gkpUYC1f1Hu1w7PmJk2RKPLimk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tsvCu2i0; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862a921123so6163282f8f.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735551767; x=1736156567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KMwQvIGyVkCUyV/IpsYbuvCQSMiHiTDiiE+Z7EPnTw0=;
        b=tsvCu2i0YiPPUmW1PyYj1d+hXkXf/CGCc1aDiA88DlLVHN8XsET0IuKPH1KsGZn6T+
         ObM7FjGhU1P2CfO5yV1ns5iw5eSu5sug4b1TG9NoL7yQzyDN2vz0XdmYGX1FVIhKrzBh
         +dKxzaN5OBDatAm5VyQX4T5L5i06fgBfbY0z8YMxJY92eAqczLwmN5Kv/7IzoUtevqhf
         bMq0s0Obe7Uq5w0vrQPrNLkBVFpkNaN9sG9ca6uOs1UobmdI3dRlDlJzqTa1tpZJs3o5
         BQaDLmapB3vj5vcAcx1ts40RogqzRwrZQclZrsdOfPQVSzlRpXDruBLb9QfSbYPkjg61
         YG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735551767; x=1736156567;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KMwQvIGyVkCUyV/IpsYbuvCQSMiHiTDiiE+Z7EPnTw0=;
        b=Wl3QLGd65AkgmsfExprhFaaCWbTFc2QXpjoLDyjRuGnfKeOSTAh7HGMuMaBrQJ/hgt
         2DWEMfI37Pao0pYfhLHbWtYtthALvMrjvfh99ovyjzWF1dH5hFCOzxO0L17GHGYXqvHA
         P2Ez8xTRCnXgogLDeJPdunK4FZkjKUfdzbmU7J8mrRPcc5oDEqgPR+aQiC8JpxKnAFnX
         3BWd7pD+dMD46RCbjqjSC8zaqCka7aSRMDIeRwVe5kJ3etfL4wzdexcBxb5f6oiQMi1D
         qooPnXPwk9Ow/taUdwA+GaH5OamYiPvUzVYZx/obTq/1XLJsVdTNpmWzv2ya0q/f3noc
         /2kA==
X-Forwarded-Encrypted: i=1; AJvYcCU9aRZM+0PHSzZ+/wr9aMerWoNX3ZOmznXjHYWgJQM7yRngh8gO1F368iKEtpU0KlHxSRIi+tNscK22@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3lO4O0JaCOtds0xxH+t4FxfDk9cAYWUeeAAGwbvC3AbZoFwva
	P7vViawF0zCtBC7+Nmzd9u4wNEIsbdeBCE7sJT3kngOcmc2pe/QOCGHz+e5mGb4=
X-Gm-Gg: ASbGncsjcgArPiTStiG8IKCg9zNtX0ZRpPSKdIeLfkJfdlwMJyJX5Edt+FtV9t06dRr
	720pzCiCbTXmWGi9B0OQ71Mw86X6doP7fL4LCHcswqvL3wenkTd6KFjHn7vATSd2mios66gmjLi
	M7MJTmWC5/GWIfJSXNKrvuVwhyAn0YVat1SWStJxT1qit9ncJg4sEtfbOv+QdXSrfOBfWKqHd9S
	pfQjRjEey4zerqAfIxUffrLHeZZi34RseYriXOBorz6Kg3cEpJbRBwITfLGKrH/iiF35oCBzCh2
	t9LleUiagSxRN5fAmX425J1FUQ75awTukw==
X-Google-Smtp-Source: AGHT+IGPIXYF0sevQ5D8W2iWMvwqdjetefwVRPrdv5IQdeYecck/HKi8ZIZb2Ho7ItZHOXvkJNA7aw==
X-Received: by 2002:a5d:5e09:0:b0:385:e3c1:50d5 with SMTP id ffacd0b85a97d-38a223fc3d0mr34907681f8f.48.1735551766740;
        Mon, 30 Dec 2024 01:42:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:883b:3c16:2465:ad55? ([2a01:e0a:982:cbb0:883b:3c16:2465:ad55])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b4274csm385758175e9.38.2024.12.30.01.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 01:42:46 -0800 (PST)
Message-ID: <77649497-8b78-48ba-9a30-64485b6ddb07@linaro.org>
Date: Mon, 30 Dec 2024 10:42:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8650: correct MDSS
 interconnects
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Rob Clark
 <robdclark@gmail.com>, Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org,
 stable@kernel.org
References: <20241026-fix-sm8x50-mdp-icc-v2-0-fd8ddf755acc@linaro.org>
 <20241026-fix-sm8x50-mdp-icc-v2-2-fd8ddf755acc@linaro.org>
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
In-Reply-To: <20241026-fix-sm8x50-mdp-icc-v2-2-fd8ddf755acc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2024 19:59, Dmitry Baryshkov wrote:
> SM8650 lists two interconnects for the display subsystem, mdp0-mem
> (between MDP and LLCC) and mdp1-mem (between LLCC and EBI, memory).
> The second interconnect is a misuse. mdpN-mem paths should be used for
> several outboud MDP interconnects rather than the path between LLCC and
> memory. This kind of misuse can result in bandwidth underflows, possibly
> degrading picture quality as the required memory bandwidth is divided
> between all mdpN-mem paths (and LLCC-EBI should not be a part of such
> division).
> 
> Drop the second path and use direct MDP-EBI path for mdp0-mem until we
> support separate MDP-LLCC and LLCC-EBI paths.
> 
> Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Cc: stable@kernel.org
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 173e092b15e2..4b54063c0e0c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -3455,11 +3455,8 @@ mdss: display-subsystem@ae00000 {
>   			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
>   
>   			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
> -					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
> -					<&mc_virt MASTER_LLCC QCOM_ICC_TAG_ALWAYS
>   					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> -			interconnect-names = "mdp0-mem",
> -					     "mdp1-mem";
> +			interconnect-names = "mdp0-mem";
>   
>   			power-domains = <&dispcc MDSS_GDSC>;
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

