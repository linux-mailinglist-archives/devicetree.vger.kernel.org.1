Return-Path: <devicetree+bounces-12161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8886C7D8266
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 434BB281FA2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3FD2DF68;
	Thu, 26 Oct 2023 12:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v+Ih7oHS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872212D7B4
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:17:44 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D852111
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 05:17:42 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507e85ebf50so1072213e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 05:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698322660; x=1698927460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UIJ8r1GTveUOiJEd9EHc30x42VDmXXdsAXSSm1d2J8E=;
        b=v+Ih7oHS/qDTiVLXEsTKfSpl2bbY19d23idsakMZnZaHNxpUXED36007ikTmWeWyPN
         5J06G1JuS3/663dRgUQq6LCiSe+6GIxBKd/N4jKo5Pne5EUrWVWPfThmLCZzCRs25iK3
         QRrWLOP01cPbvQv6oJLg/aziDgCj/c3fCNN1RNvyfEwgUgThxrGc6IDJDAmhKZ5XYkN5
         gqoRe6Q/dMtePGHIElggvo2rrnDTcOrMo9pJrYN9RWHXqvJjDedD7dlSFt0Foum03VNX
         WwTWW+jsjlfXedfTtai3JDgDXWLps5+hUAjwiS7eDpGCJVLePtmI/n6ZDRk4mkq7xo+W
         XFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698322660; x=1698927460;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UIJ8r1GTveUOiJEd9EHc30x42VDmXXdsAXSSm1d2J8E=;
        b=t9b8ZxGsWrHOZzfXMRtYgdMIdEoa/2bfhrMaM7DEepYYDoZ1wjviK7d/Z04rE4Dxng
         FNqFU8W71+GGYNznfqFHc/UdkMWPWz64WlgF3Ro7VbmLcYIHkNiPhn/Ol04UPA5b3YEv
         FZBiOz475NW69SVtMO9dn3ADCnSMrEemLPICugxhQ0A7c3GLYCIhZoq2XdawB/Svw6Yz
         TXYhwGBdP9E1h7Muiw7krSLCZcJZ8XpAqd0RDekfMX0MZCjfDlbcXNCcg1p3fdNxFV1j
         /Bx7xtp0Gmr/p5wEtwwakEJxKoVjs5vTcC582B1uEMF6THThg3PCOMxK4dahdvKwSma8
         6CIQ==
X-Gm-Message-State: AOJu0YzXzOX2R5S6sfbVKsjYV3d+Zx9CU47j+P9Htr+OUL6m2y0boY7b
	RakdIqWaHQiiSUW/Cf6tj40dcQ==
X-Google-Smtp-Source: AGHT+IF4wqqOTnDOCQH24p/qEZ3yZoC5jOb0et/QmAyhAqKrY3rEral0P1VjLUA9CpYek9pZ4dVW3w==
X-Received: by 2002:a19:910f:0:b0:507:a0d6:f178 with SMTP id t15-20020a19910f000000b00507a0d6f178mr11876718lfd.35.1698322660257;
        Thu, 26 Oct 2023 05:17:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f57f:eb08:d29b:8c9c? ([2a01:e0a:982:cbb0:f57f:eb08:d29b:8c9c])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d6987000000b003232380ffd7sm14154060wru.102.2023.10.26.05.17.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 05:17:39 -0700 (PDT)
Message-ID: <4c823259-bf4d-420c-bf4d-5323506491c6@linaro.org>
Date: Thu, 26 Oct 2023 14:17:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 10/10] clk: qcom: rpmh: add clocks for SM8650
Content-Language: en-US, fr
To: Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org>
 <467bc514-1cff-4bc5-a553-fd1ef0886ee5@linaro.org>
 <be119e71-0456-4806-8c0a-e77732553f70@linaro.org>
 <5f157c65b07eee357f7682be0945d638.sboyd@kernel.org>
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
In-Reply-To: <5f157c65b07eee357f7682be0945d638.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/10/2023 23:47, Stephen Boyd wrote:
> Quoting Neil Armstrong (2023-10-25 05:00:54)
>> On 25/10/2023 10:47, Konrad Dybcio wrote:
>>>
>>>
>>> On 10/25/23 09:32, Neil Armstrong wrote:
>>>> Add RPMH Clocks for the SM8650 platform.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>> [...]
>>>
>>>> +static struct clk_hw *sm8650_rpmh_clocks[] = {
>>>> +    [RPMH_CXO_CLK]        = &clk_rpmh_bi_tcxo_div2.hw,
>>>> +    [RPMH_CXO_CLK_A]    = &clk_rpmh_bi_tcxo_div2_ao.hw,
>>>> +    [RPMH_LN_BB_CLK1]    = &clk_rpmh_clk6_a2.hw,
>>>> +    [RPMH_LN_BB_CLK1_A]    = &clk_rpmh_clk6_a2_ao.hw,
>>>> +    [RPMH_LN_BB_CLK2]    = &clk_rpmh_clk7_a2.hw,
>>>> +    [RPMH_LN_BB_CLK2_A]    = &clk_rpmh_clk7_a2_ao.hw,
>>>> +    [RPMH_LN_BB_CLK3]    = &clk_rpmh_clk8_a2.hw,
>>>> +    [RPMH_LN_BB_CLK3_A]    = &clk_rpmh_clk8_a2_ao.hw,
>>>> +    [RPMH_RF_CLK1]        = &clk_rpmh_clk1_a1.hw,
>>>> +    [RPMH_RF_CLK1_A]    = &clk_rpmh_clk1_a1_ao.hw,
>>>> +    [RPMH_RF_CLK2]        = &clk_rpmh_clk2_a1.hw,
>>>> +    [RPMH_RF_CLK2_A]    = &clk_rpmh_clk2_a1_ao.hw,
>>>> +    /* missing RPMh resource address for clka3 */
>>> So, the downstream driver suggested it's there but CMD-DB disagrees?
>>>
>>> Can we get a confirmation whether it should be there?
>>
>> There's a clka3 on the PMK8550, but it's undeclared in CMD-DB since
>> unused/unconnected on the MTP & QRD platforms.
> 
> Can you add that comment here so we know why the resource is missing and
> not just that it is missing?

Done,

Thanks,
Neil

