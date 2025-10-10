Return-Path: <devicetree+bounces-225427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E0330BCDCBB
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:28:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 73C424F031A
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 15:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8DA12F999F;
	Fri, 10 Oct 2025 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="baoY//RR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF3F235044
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 15:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760110096; cv=none; b=hcyerVykwKrZtd5XLKWDVUYJ0he81nGmebwEevC2fF6Uqg0snb8a/eEWp0IfxVnyxIR7lxKssdodSUrTf3agU/zz/Dvcy+2XPQ58YewgINFxIhJcgFWeCJbxtQe3zeu9e84+aU/RIRxK2OHzxJco4BRltcdB/mYYdc3poFfp+Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760110096; c=relaxed/simple;
	bh=Hf+PPZeJ3zExTDiEahzcjahXZhA5Z/KhRwEov/b+S/g=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FGIL7qYhBTYjAF+zt1t7r5KdrjdhcuWDWnhXlph7NzOdwrI0LNK4pPTvR2m8/gpf0bp0Wqoiheb9av4a7+Wphop335WgUPEpfDV5OLJj+40iGrGsuvBbZLUBCcm1oEW8Cl9fORJJuiVJ4Tp4A/tpuIoUyhrlbjWnTeezQ5gS/AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=baoY//RR; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8582a34639aso142218185a.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760110092; x=1760714892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=02ulIOF15u2TAsSXJa5XZYITsq/3fozin0D7AHbGChU=;
        b=baoY//RRP3u+di3D0pRdwxUAQ5HeRcCX/D74h1zSNbfLfHLs/CHfZloGWMwi5lqoCz
         eEfwtPfNWhz2KtnemRGDVsSnblnrMaObl9ybV9DWpfu5QSr+4uKsLiPBacb4s7JK2pH8
         JfSKnM2noT6lD3iNcMSgBmzUSmIECWfBcmDObGWaeZfbIgvgUEYA6POUHaf17uEBseaZ
         wS2NlVf06weUjqUZqZrJx83lara71ZEZRZGAupCP1ItLFSe2x3NPSj+58Q7WIkC5ZS9v
         WDqjAAeDOcYvZAFXCsmb25ZDYKRhZiVGVESuGbk/VYIBk/NW4Gh9WIfFajqLdBIHm1s8
         /wzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760110092; x=1760714892;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=02ulIOF15u2TAsSXJa5XZYITsq/3fozin0D7AHbGChU=;
        b=qdg9GOba8vXIWRZOQiiLwf74rzkVudd1YO4FD61I0TTyUyXKmPGOmDPhjaX3NXy8px
         bXEWqcj0CcLVOFe1elyhnUYSLgNjtKvkjmpzSZqQOyH/LzBlY6hoWPXKDlJoClPIRweJ
         Sn+bMIQkdpwaCSB99QWDJ48+qzeuywJVYkPxqPpAyII7GLyw7QdQXCQzRZ3Ze8e16xBl
         tu1HrLmQdRFvzTDB0Eq02R6RDen2hEOCgff5iAzSnTIf4DlYK4PLh/Nv9Z9KrUwQpE+4
         cqPbkUtelMJu6HIJI+JPd0J3aQFe2O44fBsu2nVFkRCviKKpGjjSkDT/4s+eVI1jBv/n
         cGmA==
X-Forwarded-Encrypted: i=1; AJvYcCUcbmEdaY+6O5MyetTkCggHBc90hAp6JKINwc95v6DZjxB2L3SuR7JxivfpmkQ9s6I6O9UWwXsiEwif@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv/sXnxsTSxrUxYswb9wsC+x2kxwdXuhrApqpi0yh0X3LEHIlY
	FjZRyYp19KeMzK9H4sMwgsfcUocGK48EsliaSCRGQbtWa92eBYzT7/kSykQ6TKu8OgA=
X-Gm-Gg: ASbGncvlKQ+Z1sDj5W4DczA533pDWYWSG4fSnRe2FWUNZzsn2sqvYn7tw+fStilX5Tc
	qumg7mZJ6Fbj98AKCnbYdVehvIdSiOib7oVf3Gq24G3jRFXRAKr1X3M1XJN+zyummhcp9IXKqWH
	BzAMqJxhXReYuwKqaSl9MXyXvmU3xKsanrOapfBNnzHJ4Xa2eaWn9mPiSAh4TRcexoRctlwY9ha
	L57nQ6u7ILD3uEmo4ELx/ryh8BtF6zONXGNPBo9nI1gP2vwhCDqXGkxOPf2qKqpgtTKv23OB4qu
	mJICgXzoxq0m5u9wbsn1ZFc0xBU2SZ4Sz6uc8kayrc3c0E9z1GGnN22opvo3EYvmgL6gA6AFRiX
	+ygeY78ulEo6E0DwS0SmSXO9q/8UypDlXU4xuwRPzwjyAXltGKbJDVs16ygOZoUrzSRE6Yzkqva
	HyToWgKP9Y9AtrB22YvkOgXQ==
X-Google-Smtp-Source: AGHT+IH8KzPKIJFpE9/fR16Mqofh25U6y+DeqPlrc1MYvlK/oGM8nbRNuChvN6UxIVc3BEBodh8scw==
X-Received: by 2002:a05:620a:198b:b0:810:98c5:5ed2 with SMTP id af79cd13be357-8835651732fmr1781892785a.44.1760110092256;
        Fri, 10 Oct 2025 08:28:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2a00:b5fb:c622:3102? ([2a01:e0a:3d9:2080:2a00:b5fb:c622:3102])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-884a1ca2061sm440735585a.35.2025.10.10.08.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 08:28:11 -0700 (PDT)
Message-ID: <cad1c4c5-d5b4-4f5a-8d97-3c31982a5a42@linaro.org>
Date: Fri, 10 Oct 2025 17:28:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
 <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
 <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
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
In-Reply-To: <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/10/25 10:49, Konrad Dybcio wrote:
> On 10/9/25 6:42 PM, Neil Armstrong wrote:
>> On 10/8/25 11:31, Konrad Dybcio wrote:
>>> On 10/6/25 3:55 PM, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> Get the lanes mapping from DT and stop registering the USB-C
>>>> muxes in favor of a static mode and orientation detemined
>>>> by the lanes mapping.
>>>>
>>>> This allows supporting boards with direct connection of USB3 and
>>>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>>>> USB-C Altmode feature.
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
> 
> [...]
> 
>>>> +err_node_put:
>>>> +    of_node_put(ep);
>>>
>>> __free(device_node)
>>
>> why ? ep is not allocated, it goes up to:
>>
>> static struct device_node *__of_get_next_child(const struct device_node *node,
>>                          struct device_node *prev)
>> {
>>      struct device_node *next;
>>
>>      if (!node)
>>          return NULL;
>>
>>      next = prev ? prev->sibling : node->child;
>>      of_node_get(next);
>>      of_node_put(prev);
>>      return next;
>> }
> 
> _free(device_node) calls device_node_put() without you having to
> add explicit gotos

Oh, yeah this one, of course. Indeed I'll use that.

Neil

> 
> 
> Konrad


