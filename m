Return-Path: <devicetree+bounces-51658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FC087FFB3
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77597B222A6
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 14:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FDF200D5;
	Tue, 19 Mar 2024 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ffQYXG8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49AE46BF
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710858930; cv=none; b=g2SZbKHaik/oyn4xhkeyHcPIZtSMFjrSuMWXcv89Ovi3iiRe+OlEUEsRSKluIHZ968E3uEkIyQTfxydH4pykd4tiuMN12uBAd50kA8UNZyeLc9Xh+v0v+zjNCA1HEYZRuvHv6S8OA+OfuA3ogz7hU8kfnl0MksxTJl2XDKXaY9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710858930; c=relaxed/simple;
	bh=zwEYhd8dI9DccVQqCAaPZfzZab+bsUwgaHwJ/ROlfNs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=EpCA0AJ3U4Wo05Z7UkTDasUsRQlskHw4VkBuNl9zQqkJgrqnTyHElELViqWeV1+eiKk7vAlrk1knOlLphyN8YxXOvlo9rgxxK5drVG3z6iq+VQ2KjvhM3KIXY6qLOxnXewu0e2Yf7WS2XuMMcCmGyMIZ0e/9W51yc1relnBjvC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ffQYXG8l; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33eee0258abso1497475f8f.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 07:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710858927; x=1711463727; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cQAG9rC2xpXTSJPk2UtPGZo3wVxTlSoZrxNYoeZfhlo=;
        b=ffQYXG8lHF6hKTaykxbUTh7ZgHHWff/F+3kF9COWrf8wl5jkhv34f3jerrWKQ8NE9e
         JCsA/cVXGXcZnlBLJk5L34fwsi1oTiKNa/EM1k2Xz6b8FAowmMuQT2OSii5EwRndsUnQ
         k2/SumHgqT5Cr9d5KLoaLDsn5PyqJkedIAFJrUlMzSMciVdkXenP9xQecMHd7eCfF1xJ
         8rMS/blqyYSe4jo6cu3+IxfpanBCNEUBLopLigh2qkIv6gcytEn0hT1uBsk9MiRVz4SO
         i3SEsYzqKBxqjhScFzhBk9z6+8sSDzE5wN+hqN7i7OGcnYL/GreU/qRnUZiZqWMPW84H
         G7Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710858927; x=1711463727;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cQAG9rC2xpXTSJPk2UtPGZo3wVxTlSoZrxNYoeZfhlo=;
        b=WET/kAE+DXlViYW/9zRg7CFyYyRynCLzxTJ6bDQVFLm+9MFLHVI6PJ2G8vAu9eFw6H
         PJHRoOwyal5WFeU6tyU/vdLpk6h4p05ZURuxsDNVVLexELfBDWvVqdvQHXjBQ7n8Din/
         GgvCkYBAULdFGPuyiqRV6PlKwkvacJlNDBjOoqsEbsPr8+Tn8ia9DNk5oapHjILbEulw
         TRqfNiGPBlrHDaL6Ws0VvSyM8PKjEDJNYB21kTjjtjHpKK3w+tuGj3JUdDX0+VNxfCMK
         tlruO4TU/HukVNlIXV1VPS4d0x2f0NAZHG+pVYFGjSO+xNqzLUaURQ9nfgG6i+fkJDBH
         HH+A==
X-Forwarded-Encrypted: i=1; AJvYcCVEj1ekZrXU4AvApndtn2aYeSQcltRGOfoOBZPj9qOtn+uJBIfOTk/0KIpTvi6F2j8ZZXvNTOdfg/H8VXIVKyVDiOQ+a1um71l0bQ==
X-Gm-Message-State: AOJu0YzPL3vSdYkED270mPA7g2cHDVSUm2Q08jT0fpJ7baP30SapUkMX
	zGEPDrp86g6t3YdTv3l7SWclJHFbGaSoCh2k0BxsTmBWVDjb2MtNVFJfP5LoE6o=
X-Google-Smtp-Source: AGHT+IHO8h3UXWZ5sW8MS/aJVvWWP7N8bh1icyA06qdNRdE8dgzo6vSmpDYQIEqWuk5wSfE2dl0YnQ==
X-Received: by 2002:a5d:6110:0:b0:33d:24af:9153 with SMTP id v16-20020a5d6110000000b0033d24af9153mr7926582wrt.20.1710858927102;
        Tue, 19 Mar 2024 07:35:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e? ([2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e])
        by smtp.gmail.com with ESMTPSA id bs18-20020a056000071200b0034181bea3b0sm2928949wrb.3.2024.03.19.07.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 07:35:26 -0700 (PDT)
Message-ID: <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
Date: Tue, 19 Mar 2024 15:35:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX
 clock
Content-Language: en-US, fr
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
 <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
 <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
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
In-Reply-To: <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 19/03/2024 11:59, Neil Armstrong wrote:
> On 19/03/2024 11:55, Dmitry Baryshkov wrote:
>> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>
>>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
>>> add the code to register it for PHYs configs that sets a aux_clock_rate.
>>>
>>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
>>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
>>> IDs and also supports the legacy bindings by returning the PIPE clock.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
>>>   1 file changed, 70 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index 079b3e306489..2d05226ae200 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -22,6 +22,8 @@
>>>   #include <linux/reset.h>
>>>   #include <linux/slab.h>
>>>
>>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>> +
>>>   #include "phy-qcom-qmp-common.h"
>>>
>>>   #include "phy-qcom-qmp.h"
>>> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
>>>
>>>          /* QMP PHY pipe clock interface rate */
>>>          unsigned long pipe_clock_rate;
>>> +
>>> +       /* QMP PHY AUX clock interface rate */
>>> +       unsigned long aux_clock_rate;
>>>   };
>>>
>>>   struct qmp_pcie {
>>> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
>>>          int mode;
>>>
>>>          struct clk_fixed_rate pipe_clk_fixed;
>>> +       struct clk_fixed_rate aux_clk_fixed;
>>>   };
>>>
>>>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>>> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>>          return devm_clk_hw_register(qmp->dev, &fixed->hw);
>>>   }
>>>
>>> +/*
>>> + * Register a fixed rate PHY aux clock.
>>> + *
>>> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
>>> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
>>> + * by the PHY driver for its operations.
>>> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
>>> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
>>> + * Below picture shows this relationship.
>>> + *
>>> + *         +---------------+
>>> + *         |   PHY block   |<<---------------------------------------------+
>>> + *         |               |                                               |
>>> + *         |   +-------+   |                      +-----+                  |
>>> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
>>> + *    clk  |   +-------+   |                      +-----+
>>> + *         +---------------+
>>> + */
>>> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>> +{
>>> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
>>> +       struct clk_init_data init = { };
>>> +       int ret;
>>> +
>>> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
>>> +       if (ret) {
>>> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
>>> +               return ret;
>>> +       }
>>> +
>>> +       init.ops = &clk_fixed_rate_ops;
>>> +
>>> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
>>> +       fixed->hw.init = &init;
>>> +
>>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
>>> +}
>>> +
>>> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
>>> +{
>>> +       struct qmp_pcie *qmp = data;
>>> +
>>> +       /* Support legacy bindings */
>>> +       if (!clkspec->args_count)
>>> +               return &qmp->pipe_clk_fixed.hw;
>>> +
>>> +       switch (clkspec->args[0]) {
>>> +       case QMP_PCIE_PIPE_CLK:
>>> +               return &qmp->pipe_clk_fixed.hw;
>>> +       case QMP_PCIE_PHY_AUX_CLK:
>>> +               return &qmp->aux_clk_fixed.hw;
>>> +       }
>>> +
>>> +       return ERR_PTR(-EINVAL);
>>> +}
>>
>> Can we use of_clk_hw_onecell_get() instead? I think it even should be
>> possible to use onecell for both cases, it will look at the first arg,
>> which will be 0 in case of #clock-cells equal to 0.
> 
> Let me investigate if it's possible

Ok, it would work but it would require building a clk_hw_onecell_data a runtime,
while we could simply provide this qmp_pcie_clk_hw_get() and avoid runtime 2 allocations.

I'm not sure it's worth it.

Neil

> 
>>
>>> +
>>>   static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>>>   {
>>>          int ret;
>>> @@ -3689,6 +3751,14 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
>>>          if (ret)
>>>                  return ret;
>>>
>>> +       if (qmp->cfg->aux_clock_rate) {
>>> +               ret = phy_aux_clk_register(qmp, np);
>>> +               if (ret)
>>> +                       return ret;
>>> +
>>> +               return devm_of_clk_add_hw_provider(qmp->dev, qmp_pcie_clk_hw_get, qmp);
>>> +       }
>>> +
>>>          return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
>>>                                             &qmp->pipe_clk_fixed.hw);
>>>   }
>>>
>>> -- 
>>> 2.34.1
>>>
>>>
>>
>>
> 


