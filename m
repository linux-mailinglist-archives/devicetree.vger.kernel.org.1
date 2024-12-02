Return-Path: <devicetree+bounces-125959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA19DFC63
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 391CD283B68
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12111F9EA6;
	Mon,  2 Dec 2024 08:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zb2yPi8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68AA1F8EF5
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733129270; cv=none; b=WcOfEQPwiQG5PQdbzsqC0Or9GGknHSK18RcSdxBQVDzDUdoEncIVeq2tucxmcRuirWbii/SoESx1C076KY1Gi1pQfVr2S+L88LHL9y5+vBo0ffEZQRKkCzqrB5GDiMl+oa6X5kpTyNtfyhlRMBVZRALKy4IXVQVearsQ7U6YYRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733129270; c=relaxed/simple;
	bh=iQswkUcZqkc3rR4ZXaPjtScTrAFdnuNfZ8doDQQU5jU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=eC3pcXqV2OojGWRsLUWglNlvZDQyaodaPweA0IxajKpqevynPEps2LWoIcdMwV4zLf9FfSD8tOyDAw8TgYHd3Mxjrl3Iei0ckRHCuqJER8DPPzOmtAA1jSMqaBnQDxevK1zvoAj+dVtY8oFvP8Uh8+arxmpeOXtEeDG8jk2ZMhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zb2yPi8A; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a9f2da82so33838475e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733129267; x=1733734067; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=868g4RybWVTONYV+5WNJ4Psz8+PDv8VmyMXOni0Et/E=;
        b=Zb2yPi8ACqP9AgTihZD7sit1rkGQU9Eq/kkTAv/aXe0KDMv/pZg955arVNi0ALiUp/
         tqXlUomr6UC4R8A7cByVcB/D4Qj//hWa/HWLsg5mly5f+sSyg6C++AxcwhbfWQX5YLD5
         tJ1PThhKpXAtYDi/tl/QMArnSEqMjpkKQeaX/47DlXcdo8CMuU8Ri3P34H3LqA36jjwJ
         yasCGSV9psfWgd3//YzNCHpGDo3MUGNCbH6bhoQRaiafko/gxXo9n0R7QLvn+Jlmd6Px
         1BY2dG5b9cV7NktVqOW6Av15WW5ofkYy2H4UCGEIJkgNOAw9UVyPT8oJ+YZygKlic3/4
         ckfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733129267; x=1733734067;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=868g4RybWVTONYV+5WNJ4Psz8+PDv8VmyMXOni0Et/E=;
        b=jbQELMbZtmq+7lUpYQ+GLZalSLY6icRPY2LKIvO75fwnHAhavPGcBS5Y+b1j/MFLwz
         VtdwWZLN5LutblB1upudZymplctk27dTYaKvVVEgBxy/ke9MJ6vKlVrH+Z0MAUlBuGLU
         /Sl5nLgLpA9IVLeiCk8mAGzKKqDqBdaeywSwgHZXQisl7oDAohq340riJw/imawNkuqp
         f+VE09pE0X+Msaw6rBENreVN0qjDhhoTv5skll4vrVRUKkxtdoaqj1Hq+wHTVI5jb3Z7
         08Nvv/cVC8tKrabqXfhTlpYeczILRaGbzfAwPzgR9Lp39OZDHcEIlv7Q+7VsxXA09VWq
         TzYg==
X-Forwarded-Encrypted: i=1; AJvYcCWbLBcScwVXjB9h20qkdOx38tQD+gEN0q4615frTOf9ehRXuTCZPS/B8r7ReGfuwfx4ORkdTmYy53Ef@vger.kernel.org
X-Gm-Message-State: AOJu0YycddEGDbtKC7kTNiF9ugEqfkTy4bIHZDUvFjSVXi7q1DPZZ4zv
	6ZCZz764n1o+IRRCZ4OVGulsb/TRjfQKKu2xQ3B/ufNwmBoDxYLrbncaO2SKvBw=
X-Gm-Gg: ASbGnctr2wDUrlPmxszPvZYKAQ4g+Xb7GOWdDuWT9vRmfZC2j/lVeSpTeNBCProHrVF
	TYs+VWQNw1cKuFPT1O9+OHzsb4oRh6eZTiaqU1IeIlGykgiHMVHvLPzkbxN35qQfemB1GDiX2Ng
	lsr0luhwcpgAey0huIQJ3mtsPASenmJtpDExIlxoak1Rn820FD5BbpsSwxlp58gscwts2JSRs/+
	ianCOr5dzUvbvHY8yhpEbMSRAqMfYioVK7ape3Se6p891sDtLphgaNuS3GknEKHJ1c7lEc0v/Ou
	v0E+akPPqy6N9f1iC4YA90RQm6E=
X-Google-Smtp-Source: AGHT+IGJHbzNJoBprBMkButUw4pIj5gIiLHg+0YoFuF1r/DNY4OA1vmPgg66dYl398uyPtEYyLRRXg==
X-Received: by 2002:a05:600c:1d9c:b0:434:9ef2:f6e3 with SMTP id 5b1f17b1804b1-434a9dbf66bmr188026545e9.8.1733129267215;
        Mon, 02 Dec 2024 00:47:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1485:2a78:787c:c669? ([2a01:e0a:982:cbb0:1485:2a78:787c:c669])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385f0056637sm3156494f8f.15.2024.12.02.00.47.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 00:47:46 -0800 (PST)
Message-ID: <9add2288-36eb-43cd-a591-68f1819fb911@linaro.org>
Date: Mon, 2 Dec 2024 09:47:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 5/7] drm/msm: adreno: enable GMU bandwidth for A740 and
 A750
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-5-81d60c10fb73@linaro.org>
 <5fc71011-7a67-47b9-b372-b5e52ffea757@oss.qualcomm.com>
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
In-Reply-To: <5fc71011-7a67-47b9-b372-b5e52ffea757@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/11/2024 16:25, Konrad Dybcio wrote:
> On 28.11.2024 11:25 AM, Neil Armstrong wrote:
>> Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
>> is in place, declare the Bus Control Modules (BCMs) and the
>> corresponding parameters in the GPU info struct and add the
>> GMU_BW_VOTE feature bit to enable it.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..edffb7737a97b268bb2986d557969e651988a344 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> @@ -1388,6 +1388,17 @@ static const struct adreno_info a7xx_gpus[] = {
>>   			.pwrup_reglist = &a7xx_pwrup_reglist,
>>   			.gmu_chipid = 0x7020100,
>>   			.gmu_cgc_mode = 0x00020202,
>> +			.bcms = (const struct a6xx_bcm[]) {
>> +				{ .name = "SH0", .buswidth = 16 },
>> +				{ .name = "MC0", .buswidth = 4 },
>> +				{
>> +					.name = "ACV",
>> +					.fixed = true,
>> +					.perfmode = BIT(3),
>> +					.perfmode_bw = 16500000,
>> +				},
>> +				{ /* sentinel */ },
>> +			},
> 
> This is not going to fly the second there's two SoCs implementing the
> same GPU with a difference in bus topology. I think we could add
> something like drvdata to ICC nodes and use it for BCMs on icc-rpmh.
> Then, we could retrieve it from the interconnect path we get from the
> dt node. It would also reduce duplication.

I don't want to go into that, we can optimize this when adding topologies
for other GPUs later, as-is this is a pointer so we can already share the
same table between GPUs.

> 
> Konrad


