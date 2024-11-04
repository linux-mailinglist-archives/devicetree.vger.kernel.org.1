Return-Path: <devicetree+bounces-118805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 811F99BB944
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12AF51F214EF
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4B01C07DD;
	Mon,  4 Nov 2024 15:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N+zZ1j05"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5D1BD03B
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730735103; cv=none; b=I5+ctJ/H6Tetu1PpLvgnPjmGcQpir3WR0euJgpsrzoCB5lzwbUWnuX3CK++i34LyYWhYWYD7JuY/NysvtrXDyRf5v+rcdk+flazUvz9GCpkR9jU1bo0nDiSl3az5yYr8JpFZszvdoFDq9fJnP/101Z6XV6Mx2O8lIKi2ZDciw5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730735103; c=relaxed/simple;
	bh=ZImVIlkdahA1BEn/O7w5yhYnv0OQtgKBmXJEhQFwCgs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oEPMvVSAShM9YX0oNkXUunBUHSfiXF2CnBO3CuvAVquJcc2ZnspmHTWqSE/SivuXxHCAmbK5rUtiJt/5P6Uk9atf5l3Py/L/hLsBo1BjLZimsUSaOZkL0R5cWjEqfCfvn1Mq+5L7DJ549TMku/cYOlkHLwyuxet8EK2Py8sQo78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N+zZ1j05; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-431ac30d379so35971735e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 07:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730735100; x=1731339900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ftipUFfbQyrbYTtkBKFzCTCmVmhbNpyQ5+49w8VdR7M=;
        b=N+zZ1j05mJfgzs4ALMsQePW6aocYibv0ErBsoDiWek4tBlkLK/JNV8Utb09bRzsLiF
         O9hF7javQEluU5lfujBeSKe9USF2kV416Avgz/gfEg9d2o654oel0SPy8z9+AyJCAmWK
         pAMr8kjEBO0KFY8/vUtMlRnQvQupOabHfWCMjug5gplvyA8gC6VYx1FU/pnAgjRwlr5l
         5DO6aYClpqYqJ4dctJYXXDfutw8DWs4E1wc87qRXkYaVsJzaplFjaV5XCquEYw9lU2Vv
         TAe3S9u4/v6owi1zvkvRZLni1rh0WPpJRZGr9OW0tbidO949+3PatTlTlq3zY9kZrFKD
         JMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730735100; x=1731339900;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ftipUFfbQyrbYTtkBKFzCTCmVmhbNpyQ5+49w8VdR7M=;
        b=BcncM9fFPF2/sBNNsRCaGpLPVif6wmeH+lJ7oIZ2FpVFYsVyXwu7l+C6SJ112T9Dyc
         2xVlZn9hClsIYzwihPntQ7cf6bjzF5amSclowDar/xTWo9btN6AiKtHoFy+NPc4YtHQe
         Qz9eESUEeTtuSpu0WXVirxUdfQXnULJYUT7zJfaGeQD83tLdDo2lFACO2lU5lQeg0Sb7
         oX64q9fSLW/Dsxz3t0AXNWf1xsxpKNPirMIhq2sh3fkrH+wv8T4tdxBAiK7e+u7Tnqnc
         y1rrQ5B5WwUCot7Z76PiFo1RQu/jEJAK5GySY0CbjMnwXwuHUjOhMdQuPRstmwTCxlio
         mdGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlJzaT5M7NTGf4DeJhI2gwSYbWx/30FrtrhSE/TsH9IKuLsGsMK8a8aSiIF7xolDKxXYN0qlTE/nkj@vger.kernel.org
X-Gm-Message-State: AOJu0YyhWkk/9pbKPz9cRdASSmHTdIvu0a+o7B1QqTZIw7lqP4/6NJfW
	NvjdcLm4nUr0FFm3OgmuOq97WKr7o7PhKDrjcTsKgTJKpOZK2TA+b0+YDx/rNu4=
X-Google-Smtp-Source: AGHT+IEt227mWEkJ2KUldJ6cNcu5CXzPjyiwcrBv4UbMZfjjnIxrvAGFeU/8XnhL8EXXaevw1ExOPw==
X-Received: by 2002:a05:600c:3c8c:b0:431:4fa0:2e0b with SMTP id 5b1f17b1804b1-4319ad146b1mr263095595e9.28.1730735100145;
        Mon, 04 Nov 2024 07:45:00 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5b00:c640:4c96:8a97? ([2a01:e0a:982:cbb0:5b00:c640:4c96:8a97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852c3sm157054515e9.38.2024.11.04.07.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 07:44:59 -0800 (PST)
Message-ID: <4aeec9f1-720b-400c-9582-d02847db2ac7@linaro.org>
Date: Mon, 4 Nov 2024 16:44:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 1/3] drm/msm/adreno: Add support for ACD
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20241012-gpu-acd-v1-0-1e5e91aa95b6@quicinc.com>
 <20241012-gpu-acd-v1-1-1e5e91aa95b6@quicinc.com>
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
In-Reply-To: <20241012-gpu-acd-v1-1-1e5e91aa95b6@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2024 22:29, Akhil P Oommen wrote:
> ACD a.k.a Adaptive Clock Distribution is a feature which helps to reduce
> the power consumption. In some chipsets, it is also a requirement to
> support higher GPU frequencies. This patch adds support for GPU ACD by
> sending necessary data to GMU and AOSS. The feature support for the
> chipset is detected based on devicetree data.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>   drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 81 ++++++++++++++++++++++++++++-------
>   drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  1 +
>   drivers/gpu/drm/msm/adreno/a6xx_hfi.c | 36 ++++++++++++++++
>   drivers/gpu/drm/msm/adreno/a6xx_hfi.h | 21 +++++++++
>   4 files changed, 124 insertions(+), 15 deletions(-)
> 

<snip>

> +
> +static int a6xx_hfi_enable_acd(struct a6xx_gmu *gmu)
> +{
> +	struct a6xx_hfi_acd_table *acd_table = &gmu->acd_table;
> +	struct a6xx_hfi_msg_feature_ctrl msg = {
> +		.feature = HFI_FEATURE_ACD,
> +		.enable = 1,
> +		.data = 0,
> +	};
> +	int ret;
> +
> +	if (!acd_table->enable_by_level)
> +		return 0;
> +
> +	/* Enable ACD feature at GMU */
> +	ret = a6xx_hfi_send_msg(gmu, HFI_H2F_FEATURE_CTRL, &msg, sizeof(msg), NULL, 0);
> +	if (ret) {
> +		DRM_DEV_ERROR(gmu->dev, "Unable to enable ACD (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	/* Send ACD table to GMU */
> +	ret = a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_ACD, &msg, sizeof(msg), NULL, 0);

This looks wrong, in this exact code, you never use the acd_table... perhaps it should be acd_table here

> +	if (ret) {
> +		DRM_DEV_ERROR(gmu->dev, "Unable to ACD table (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   static int a6xx_hfi_send_test(struct a6xx_gmu *gmu)
>   {
>   	struct a6xx_hfi_msg_test msg = { 0 };
> @@ -756,6 +788,10 @@ int a6xx_hfi_start(struct a6xx_gmu *gmu, int boot_state)
>   	if (ret)
>   		return ret;
>   
> +	ret = a6xx_hfi_enable_acd(gmu);
> +	if (ret)
> +		return ret;
> +
>   	ret = a6xx_hfi_send_core_fw_start(gmu);
>   	if (ret)
>   		return ret;
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> index 528110169398..51864c8ad0e6 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> @@ -151,12 +151,33 @@ struct a6xx_hfi_msg_test {
>   	u32 header;
>   };
>   
> +#define HFI_H2F_MSG_ACD 7
> +#define MAX_ACD_STRIDE 2
> +
> +struct a6xx_hfi_acd_table {
> +	u32 header;
> +	u32 version;
> +	u32 enable_by_level;
> +	u32 stride;
> +	u32 num_levels;
> +	u32 data[16 * MAX_ACD_STRIDE];
> +};
> +
>   #define HFI_H2F_MSG_START 10
>   
>   struct a6xx_hfi_msg_start {
>   	u32 header;
>   };
>   
> +#define HFI_H2F_FEATURE_CTRL 11
> +
> +struct a6xx_hfi_msg_feature_ctrl {
> +	u32 header;
> +	u32 feature;
> +	u32 enable;
> +	u32 data;
> +};
> +
>   #define HFI_H2F_MSG_CORE_FW_START 14
>   
>   struct a6xx_hfi_msg_core_fw_start {
> 

Thanks,
Neil

