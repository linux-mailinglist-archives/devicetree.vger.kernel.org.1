Return-Path: <devicetree+bounces-13984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B57E1BE1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:22:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8882280F6D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE63D111BB;
	Mon,  6 Nov 2023 08:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DCC3iFOf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D4FC1F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:22:13 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A9BB0
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:22:11 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-409299277bbso29496675e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699258930; x=1699863730; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/s4WaicY3zcmDpasJgFxCNVTufL2PCvIDsFygw7p9Rg=;
        b=DCC3iFOfrjwQQAUvTy+eClsmYYsvrujqVGcY6saN9L/lc/vLhG5NDnW5czUvoCDx5r
         Cqk1+qqn9AQ0ahjd75qUvfHwROPU5C1r0NaHWLTvpOVOqlDP1CawBqN5IHzY9cMwW1jy
         PICyKDOQz7gr4iam/aiSv6J/XsAaUBa7QvJGFJ0HnVBK07NXGwxuEnJpiHm455VZZNjZ
         audyA1CrJFiiyX7Fw4YOfp1Mu8SPHaTcrXjF7aZ7L6mdoB8mTbC0ZnPDKxG8ldiiU0ot
         Fw2O6DdLhdoYMu/WD9N6eJ3QLvO0tlp/CEHfE7f+dylD96HIajku+EYTKGg1V4LzAj3S
         0gjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699258930; x=1699863730;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/s4WaicY3zcmDpasJgFxCNVTufL2PCvIDsFygw7p9Rg=;
        b=vg5FSsvHs+ZxIRWzjyE70SNfF9gg3/qZcLlrxBGoznw43mUMeIcbiUmlhoL6wUj5+z
         VrLZOE4KfuvKtpPetWpJCXQE1zmWWli9d99xJkKLxoTkUW/i41ZStZ6iKCAXnhU/TdKo
         pLLpOZNp/6o01JKXY61Hh9LBJQ0QmUwxphfMvsiLNI5z9slFUtAiv1a0V/FXx+ZQuQhZ
         Tj6YPxVt0sapXO2+xp+aZ3Keirshpzxsz997GEWAXlIDEHnudrtaZ72RfWZZLJgYpNxh
         Y3oBuYWoBDOXsxmkx5CaHGnlL1NSzVQu+hWoeULbDKR9bnC+TjJWLCU4SuObVCBn41l+
         yZkw==
X-Gm-Message-State: AOJu0YzIb9HuBEJn021lI0wiViE6Jr7YCWAZwrbKaMnSL4eN9iOcNy1c
	Gt8x7mCbI1uUc1kLAJ8+oY/adVC9B5qLuXfhwKGlRQ==
X-Google-Smtp-Source: AGHT+IHGIutU89DMAyPjuX6YzPJhPUpKjZKrTeyeB6DH5gewWgxNEUAqJ+POwfZVryYnI7yGSoY/fQ==
X-Received: by 2002:a05:600c:4f02:b0:405:3885:490a with SMTP id l2-20020a05600c4f0200b004053885490amr23464392wmq.0.1699258930105;
        Mon, 06 Nov 2023 00:22:10 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:7a54:34e:8001:fb7d? ([2a01:e0a:982:cbb0:7a54:34e:8001:fb7d])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c4fcd00b0040588d85b3asm11305092wmq.15.2023.11.06.00.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 00:22:09 -0800 (PST)
Message-ID: <9f5f317a-4f3a-4bdd-b640-b75858bd79d4@linaro.org>
Date: Mon, 6 Nov 2023 09:22:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 2/8] arm64: dts: qcom: add initial SM8650 dtsi
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-2-a821712af62f@linaro.org>
 <691f1781-906c-411f-90f6-e1cc71062253@linaro.org>
 <e86fa7b4-635c-4fd5-9b3c-ade96ddf5c0f@linaro.org>
 <30b4c424-39ee-7ae6-faf2-c5ba32dda07f@linaro.org>
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
In-Reply-To: <30b4c424-39ee-7ae6-faf2-c5ba32dda07f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/11/2023 14:32, Konrad Dybcio wrote:
> 
> 
> On 02/11/2023 11:54, Neil Armstrong wrote:
>> On 25/10/2023 11:01, Konrad Dybcio wrote:
>>>
>>>
>>> On 10/25/23 09:47, Neil Armstrong wrote:
>>>> Add initial DTSI for the Qualcomm SM8650 platform,
>>>> only contains nodes which doesn't depend on interconnect.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---[...]
>>>
>>>> +            CLUSTER_SLEEP_1: cluster-sleep-1 {
>>>> +                compatible = "domain-idle-state";
>>>> +                arm,psci-suspend-param = <0x4100c344>;
>>> I think this parameter signals the AOSS to attempt system
>>> suspend and CLUSTER_SLEEP is a shallower, separate state.
>>
>> OK, so downstream call this state "APSS_OFF" and the other state
>> calling 0x41000044 "CLUSTER_PWR_DN"Well, the name APSS_OFF suggests that all clusters go offline so
> that would be a bit more complex than a simple "cut power to this
> cluster"
> 
> 
>> On sm8[345]0 and qdu1000/sm4450 there's both states called CLUSTER_SLEEP_0 and CLUSTER_SLEEP_1,
>> and referenced into CLUSTER_PD cluster power domain.
>>
>> I assume this is the same as SM8550, so what's the issue ?
> It's just that we've been naming it in the most generic way possible
> and that it could be more descriptive, especially given its
> correlation with different things

Ack, will change the naming

Neil

> 
> Konrad


