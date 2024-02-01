Return-Path: <devicetree+bounces-37611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A54D8845977
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 14:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAB811C20A56
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 13:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472A95D48A;
	Thu,  1 Feb 2024 13:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YjjTvuXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D445D46B
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706795982; cv=none; b=VQm0yBYfynmrROy74UcQsGLHsKf7LPgwSayXHfbdKHMgi+y5mvyquxqs9ZcSFxfRM5is4gU788OYw2ety45QosDZWBIKNyhiC3ZQbpYLHRdGUA8zFdvdbS35eL0TOnJRHpbvBi7U16j6n2AhphePc4CcBs/3j0pBGxrKg1jvIus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706795982; c=relaxed/simple;
	bh=/TanjX0ls+2d9VS5aORID8aw8bmRlMZB4HWbPt8Yr6c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=o7ovh5aUH8sgDUzwFek/6UPLr67FpxqcH6XtsCMXGmPPgdQBSDHfmGrEgMdGlnOqaid2A0G/GUyW295zpA0tjBtUzSsiOIBQr84V1gp7Nt4Vqdp8naK4dkRBU87RH8S65BL87kFR56Dn/efHvCW2/h32RSl6xQ31geIPUn3RmLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YjjTvuXz; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5111c7d40deso1446754e87.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 05:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706795977; x=1707400777; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UFqKBFx9916FRrB9+w9LQlnhGJJKgZ+US7vE7hHv4do=;
        b=YjjTvuXzdEvtvxdT+n30v9T1Bxi69nC/ngLKeAubcU15Sd2BPTj54JDByBZgEfavO6
         H4ls83yQPhtlQikepIeKWooNfEeorPJfi6Ai/YeEVIRWM0oP5/yi7RBSxY/jUki8kJik
         xSTXw6mmw/2m2fOFYTOyyHz+EztJYMZZE/NrhG9jkS32SRlSyey7nnP9YsBJSPeocBgf
         F13nJHlZUVkD8K0THHq+MnG8NQpZNJ8opAhmWkShMkmLSyldq44+djgXu7Ic7zcXBMg6
         loiI4csUx4Cb/shM1wjvgB1YtzHQAgGlnLIOH3Z12el/QWLuYrLdUzcnFNYBVX6uRZ4O
         W87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706795977; x=1707400777;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UFqKBFx9916FRrB9+w9LQlnhGJJKgZ+US7vE7hHv4do=;
        b=g6o9qi5o0aJ9Py4JhC3eAH2zBKb92cJ6FPGCYtmmgAZmABDzYwaL9YC/v3Y+yjiNIz
         mnBYBx+M6lUSKabnsIiYlkj+oZl3wtNeTA81i3ieqR7WoVUjMel13APY79mR2fB21F02
         PRt1HsxxCouA8OVDRJXlLhX2xC2MFEM7GvCH1WOa5O6F8Eg60X03nEkr0a3x6G6jpVlW
         n6pygSEF9lOgcbEIrKi5/Xmdh3C5udYhlRONNaQryS77zZYdqQybKrIUNhDVMxLLSIjf
         wWJ0g3v1Gaac0jkFe+3X9rAjiwSejWiV8tjj5qExxnt/9nJHnHhvQR+QB1UcH7or9py/
         Y5lQ==
X-Gm-Message-State: AOJu0Yy46nIpnqT3pXnyEIRSL0Qu1XhCyNmzrgpfMQPh+ncc0yBnDCh5
	L7BggmBOFtTPfnPqNid286MkWC9Zzo5jDEoo9HpB/J49k1XeD242L8dHLOvhboo=
X-Google-Smtp-Source: AGHT+IGUfYuciXztX1ROTZ8aWR1m2TWyKWPDYYmZU/9mTZ01QoA0mDd84pARFxV8qA8w2ptcojpqMg==
X-Received: by 2002:a05:651c:1cd:b0:2d0:6eff:6e38 with SMTP id d13-20020a05651c01cd00b002d06eff6e38mr3795058ljn.39.1706795976622;
        Thu, 01 Feb 2024 05:59:36 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWLyIsxBDsE2B0dXMqRm6wtczTF1NBWRF64AAabsGaeRxyluNS74tM2RaiEMGm4qoqoU3xyTBZ1/fJkF4yGNhKI2PfuFFiFV+ul/a54NxGlLAxUtedGYwTUMPTx1aBRdivipMHqtSLysUCQAB2+HPccvJIR1zB/gqwphNd18UbpeXg5rSLKhrmtwZaBjVoPDsY3JNs0y1zhbSCPx6kussx3h1mD/uDYtoGot5E77YSwyYqB8Ifkgt9XfSs2b4LWdpJmA9LHk6YdhvuKMJEcofiTXARMhsoWjUCUSkKBgitCe1GtfYhW6gNmbu0J2Ij0RFJW/Ay1aJCKAIomdPPSynzslKP2GfFpmZOEcjOd5Ivd9dCLQv7irwf0eUM0/Fp2jXvuUy1CpDt9o+rZah+NZ9rEaUs33MjQJZg6FpK0fAcNLJOTodZ0bnlq3FfVvjIaogm92Hn5/37sqPT4SwtxzgfFlZ9Pwx7kjhgK55m1NHg+ouqOjmaYoMWEgGYPKxPsgiI2koPdqdPgylRWAp/Ro5uZG9ZxDGbhUgXUoajoEftShAnwEkbDlpDqN7xSJQhqfIA4B44i6BIP9dcYKt7fB6/5sIMDsVy8Gt+8XFqVnBYI2IckbnuCsLHxgZSGiKpsbchlvG+wbPYJEe0/h+6ZSpwA+Pg9/8fJvvMbgJgMTem3u+U//6YkYgCrpn5q5iv41XN7MApiVIkqNIto7g9Xi92yjXZS1OMJgWF0LyMhAj2Ps9JoCYZ0FKL5/jRgAMsCUHVT8J5J1OIcjMqaUzLoea6Okwi1ja7anEi1NAw+yNGv1bD5YLVjKGzGirxmcb03rIxFvVY46vMqaATZ8OakPS8=
Received: from ?IPV6:2a01:e0a:982:cbb0:cfdd:eab5:fd8:5436? ([2a01:e0a:982:cbb0:cfdd:eab5:fd8:5436])
        by smtp.gmail.com with ESMTPSA id bh23-20020a05600c3d1700b0040d5a9d6b68sm4533841wmb.6.2024.02.01.05.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 05:59:36 -0800 (PST)
Message-ID: <24dbe013-60d2-49dc-8568-3277d721366d@linaro.org>
Date: Thu, 1 Feb 2024 14:59:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 15/15] arm64: dts: qcom: sm8550: add hwkm support to
 ufs ice
Content-Language: en-US, fr
To: Om Prakash Singh <quic_omprsing@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Gaurav Kashyap <quic_gaurkash@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 andersson@kernel.org, ebiggers@google.com, srinivas.kandagatla@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, kernel@quicinc.com,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 quic_nguyenb@quicinc.com, bartosz.golaszewski@linaro.org,
 konrad.dybcio@linaro.org, ulf.hansson@linaro.org, jejb@linux.ibm.com,
 martin.petersen@oracle.com, mani@kernel.org, davem@davemloft.net,
 herbert@gondor.apana.org.au
References: <20240127232436.2632187-1-quic_gaurkash@quicinc.com>
 <20240127232436.2632187-16-quic_gaurkash@quicinc.com>
 <CAA8EJpr5fLYR1v64-DtjOigkUy3579tx_gwHpFWr9k0GyGajGw@mail.gmail.com>
 <a0bcca80-e91b-4b97-a548-b53ea2fe4cb5@quicinc.com>
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
In-Reply-To: <a0bcca80-e91b-4b97-a548-b53ea2fe4cb5@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/02/2024 10:55, Om Prakash Singh wrote:
> 
> 
> On 1/28/2024 6:31 AM, Dmitry Baryshkov wrote:
>> On Sun, 28 Jan 2024 at 01:28, Gaurav Kashyap <quic_gaurkash@quicinc.com> wrote:
>>>
>>> The Inline Crypto Engine (ICE) for UFS/EMMC supports the
>>> Hardware Key Manager (HWKM) to securely manage storage
>>> keys. Enable using this hardware on sm8550.
>>>
>>> This requires two changes:
>>> 1. Register size increase: HWKM is an additional piece of hardware
>>>     sitting alongside ICE, and extends the old ICE's register space.
>>> 2. Explicitly tell the ICE driver to use HWKM with ICE so that
>>>     wrapped keys are used in sm8550.
>>>
>>> NOTE: Although wrapped keys cannot be independently generated and
>>> tested on this platform using generate, prepare and import key calls,
>>> there are non-kernel paths to create wrapped keys, and still use the
>>> kernel to program them into ICE. Hence, enabling wrapped key support
>>> on sm8550 too.
>>>
>>> Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> index ee1ba5a8c8fc..b5b41d0a544c 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -1977,7 +1977,8 @@ ufs_mem_hc: ufs@1d84000 {
>>>                  ice: crypto@1d88000 {
>>>                          compatible = "qcom,sm8550-inline-crypto-engine",
>>>                                       "qcom,inline-crypto-engine";
>>> -                       reg = <0 0x01d88000 0 0x8000>;
>>> +                       reg = <0 0x01d88000 0 0x10000>;
>>
>> Does the driver fail gracefully with the old DT size? At least it
>> should not crash.
> When adding  qcom,ice-use-hwkm property, DT size needs to be updated.
> Without any DT change, there will be know issue.

This must be fixed in the code because new kernels could be run with older
DTs, so it should not fail with older DTs.

In this case, simply disable the HWKM if size from DT is too small.

Neil

> 
>>
>>> +                       qcom,ice-use-hwkm;
>>>                          clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
>>


