Return-Path: <devicetree+bounces-11807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3DC7D6AAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A0FD1C20973
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340DA1CF95;
	Wed, 25 Oct 2023 12:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2wuTPmc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CCF11721
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:01:00 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2747D181
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 05:00:58 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c54c8934abso78751361fa.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 05:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698235256; x=1698840056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNgCQybAeaDPw8MRhe+EaoWqCuSQBipbolyjdBq0HvQ=;
        b=b2wuTPmc/CtObG5yZZ7z81g9xRQFn5HeA6zOyp1szLTnB+JHjaH717AVgpCLew/La/
         /b1AhlUMWPTwFRBxgJsGd6T7+bMlyaoWyy/DB/r3qYNiRJt02nCKHHvDSH26WwjyPvf4
         I3gGF6u8H5/t2VZ7MBeP6DSuflbcoc4kI/UxlJIILJcaLOMFIo7A3Qn7lcBXl1F3NVag
         Iy7O+3cgQMxzrM4NEhh3hFpT4Pniyi2fkGrtUuVqWJHxBgE0CPpMQpSa82g6FRiWqLqa
         oHLBgnKW2Emx0LW9LGWjpxAmQ9D5sR6hViKxHLAxeR4Q8QqOblVz1Ygs1yG3QehePIzI
         JpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698235256; x=1698840056;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DNgCQybAeaDPw8MRhe+EaoWqCuSQBipbolyjdBq0HvQ=;
        b=Vi+rRg7jWXm5er/BSeft6ejxU/grpz79UOiRPOjyK+j+UhFwvEKyB3YabLsG+zdQFB
         y58EZp+pfN/BBqohrd6LkDij1/jLDI7ATuGxaLtWSBhFvP1xlx5euZQWS/wHfFpDJ2QK
         o3oW31S4Y9bOXxSynCLVYGv+ESuYdhSNid4oNj8qQG9/V0N1t+K5g3lsKbVC3gizqrvK
         LJuEbgNM82mM1sPaZrTzeLGDCoObwmVL+lhE2M24qFy1xYYmCzzvvQdNcLiZnjE2/8lN
         Oj8dOjWmFrL7/H/eoRt7DpXKfHJXyVn+kJSHgSolMgNwJf461q7aXYBxNcMKGTYqGgkf
         +jKw==
X-Gm-Message-State: AOJu0YyqrHMzi/99irTAeGxT28h4o5Kq3WhbmV2S//li7y9znEriv7Rv
	17DIETJGAUZtwHOq7BE4aeKj2A==
X-Google-Smtp-Source: AGHT+IGuYVpJbsG7mwwHhRKd77IPAY88N7+uHsNMvKmjG5P9vwqO9AlGHUVL9kaPJGjVV2TSTjLJYw==
X-Received: by 2002:a2e:b044:0:b0:2c0:1c32:b4e1 with SMTP id d4-20020a2eb044000000b002c01c32b4e1mr10665572ljl.27.1698235256185;
        Wed, 25 Oct 2023 05:00:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id az15-20020a05600c600f00b00406447b798bsm19400325wmb.37.2023.10.25.05.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 05:00:55 -0700 (PDT)
Message-ID: <be119e71-0456-4806-8c0a-e77732553f70@linaro.org>
Date: Wed, 25 Oct 2023 14:00:54 +0200
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
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org>
 <467bc514-1cff-4bc5-a553-fd1ef0886ee5@linaro.org>
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
In-Reply-To: <467bc514-1cff-4bc5-a553-fd1ef0886ee5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/10/2023 10:47, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 09:32, Neil Armstrong wrote:
>> Add RPMH Clocks for the SM8650 platform.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> [...]
> 
>> +static struct clk_hw *sm8650_rpmh_clocks[] = {
>> +    [RPMH_CXO_CLK]        = &clk_rpmh_bi_tcxo_div2.hw,
>> +    [RPMH_CXO_CLK_A]    = &clk_rpmh_bi_tcxo_div2_ao.hw,
>> +    [RPMH_LN_BB_CLK1]    = &clk_rpmh_clk6_a2.hw,
>> +    [RPMH_LN_BB_CLK1_A]    = &clk_rpmh_clk6_a2_ao.hw,
>> +    [RPMH_LN_BB_CLK2]    = &clk_rpmh_clk7_a2.hw,
>> +    [RPMH_LN_BB_CLK2_A]    = &clk_rpmh_clk7_a2_ao.hw,
>> +    [RPMH_LN_BB_CLK3]    = &clk_rpmh_clk8_a2.hw,
>> +    [RPMH_LN_BB_CLK3_A]    = &clk_rpmh_clk8_a2_ao.hw,
>> +    [RPMH_RF_CLK1]        = &clk_rpmh_clk1_a1.hw,
>> +    [RPMH_RF_CLK1_A]    = &clk_rpmh_clk1_a1_ao.hw,
>> +    [RPMH_RF_CLK2]        = &clk_rpmh_clk2_a1.hw,
>> +    [RPMH_RF_CLK2_A]    = &clk_rpmh_clk2_a1_ao.hw,
>> +    /* missing RPMh resource address for clka3 */
> So, the downstream driver suggested it's there but CMD-DB disagrees?
> 
> Can we get a confirmation whether it should be there?

There's a clka3 on the PMK8550, but it's undeclared in CMD-DB since
unused/unconnected on the MTP & QRD platforms.

Neil

> 
> Konrad


