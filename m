Return-Path: <devicetree+bounces-11803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2393C7D6A7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7A5DB20CB4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E3C42770C;
	Wed, 25 Oct 2023 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E6kgvLGS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91AC11732
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:55:32 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3AD129
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:55:31 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4083cd39188so43425895e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698234929; x=1698839729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Alg4i0gH9PXr1TGV+fA0FCfzKId/6hEAlZILlc+mD3E=;
        b=E6kgvLGS7CrmLzBfCbzqOWti9/JY2cjZ7dAS/vgYJrbUfRF0nTs3HAQJmgGeMbmKCh
         yMAzvczw1E7b4Ly0VUHmbSoiamSGtUMEwcl6vuNQBli0T0Bn1uPTU+T5QGyY0s3eYQtL
         F5UuHxfNOekEGGazunkomyeNfdeiVcf3HIFQyH3RdjFq9LESuqu0GwE1E5N0HRg8dSma
         n0uiMpNd6HGBWThYfX0w8j1gcOn3ySzReC/oLHjJpec/qvnr3/KBijAzCuykof/YPVfj
         /0gplo9iyIYJWy2W4s4mUUrwBMD66jvB1l4KtCrE60lSSBhQRnhMkz5fxpvhAlGknCmx
         ohVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698234929; x=1698839729;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Alg4i0gH9PXr1TGV+fA0FCfzKId/6hEAlZILlc+mD3E=;
        b=ZLwNNyWFSnKtJOpVlMrhj1VfaRADIQc7zAmELMYa21yyIkMPLTrqQU3du/eWukZUeE
         NcdQf+qzORt3i/t71mXxLojA4FsXq4aHTqcSWsE1zWO0XjATRtPwJUiq+eqAPqJnZC2D
         WoCqqmNaham9apCnk0LG1XmmFTYKkkfTh0mf3tSqAZfAxNiFgl4bv4Cp+EVWLe0HXVlo
         WelKhoy7vXRLAOT9ws3/wUGL0TzLlhfZvyL+rQ7hiE+NABBEnalHLD9dRMR9Jfc7uFjU
         CIpDwvfer+65SrdCNdEggMR85LQ0pnAbGpH60flyroCU2IZZmvg8kxfUTlrTdlo1t4UN
         Z9xQ==
X-Gm-Message-State: AOJu0YyBgoHzWKZm/0fKDjIfjJ/pjYpjVCBYkcwC9Si0p4u1zwl1LnSF
	PGNUrCMvzbD/+VAQHkP90ymtkA==
X-Google-Smtp-Source: AGHT+IEee67aesTqxKXBMA71FMuuoTtlC0PdBqIhvDE0yruMbzW0K5fa11/lGTonLR+jVVrohxEx8A==
X-Received: by 2002:a5d:6851:0:b0:323:37af:c7c7 with SMTP id o17-20020a5d6851000000b0032337afc7c7mr12028749wrw.69.1698234929356;
        Wed, 25 Oct 2023 04:55:29 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id t13-20020a5d49cd000000b003176c6e87b1sm11797593wrs.81.2023.10.25.04.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 04:55:28 -0700 (PDT)
Message-ID: <6e9feb75-386f-4bd2-a78c-75bee665a77b@linaro.org>
Date: Wed, 25 Oct 2023 13:55:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <691f1781-906c-411f-90f6-e1cc71062253@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/10/2023 11:01, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 09:47, Neil Armstrong wrote:
>> Add initial DTSI for the Qualcomm SM8650 platform,
>> only contains nodes which doesn't depend on interconnect.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---[...]
> 
>> +            CLUSTER_SLEEP_1: cluster-sleep-1 {
>> +                compatible = "domain-idle-state";
>> +                arm,psci-suspend-param = <0x4100c344>;
> I think this parameter signals the AOSS to attempt system
> suspend and CLUSTER_SLEEP is a shallower, separate state.

I have a doubt, I'll double check on this,

> 
> [...]
>> +            qcom,tcs-config = <ACTIVE_TCS    3>, <SLEEP_TCS     2>,
>> +                      <WAKE_TCS      2>, <CONTROL_TCS   0>;
> Is <CONTROL_TCS 0> the correct value?

I assume it is, I'll double check.

Thanks,
Neil

> 
> I think it looks good otherwise
> 
> Konrad


