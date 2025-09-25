Return-Path: <devicetree+bounces-221270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D621B9E2F4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B0371BC2A93
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E649E266565;
	Thu, 25 Sep 2025 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IanQIRNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD054A3C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791091; cv=none; b=dOPlKFiiwFjuhNSZ4MtqsL7z6UM8k/tVt5wsu/7LkNhZhen2cJTeoIaaclkclTB0kW9NYgUT/FqCsU+s4MbJXIYt++A/bl3SoMWtyh56CwVgHCH2WrFh6Mu0y+WjZoECv7mkZRCGh/CVsbcgaQu8nlWklseIWOoT+r0o5X0Xa94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791091; c=relaxed/simple;
	bh=GiwBbWtoB2tfwoPzjKROuEEggM8W+m2R48BbdsJ/qW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DemYfJb5DZbEItyvuowFiavb/lH6mOn4BvzP9CboQ6FePXcZOOX5ZvGGIyLvHUeh/lrAyvIE4FL+M7CbyW244cVY3/T6XKQOaObJ57YLI5VYWgxkRVHseCvwcOd50bNBh/+vm83ITDk3o/eU5DHY8/wFZFodvm5TPhfQ2Wq4LZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IanQIRNM; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46de78b595dso3373645e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758791088; x=1759395888; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=52cJq27fTrRB0shrC+OriI/jG8WLskY0nr0nR3oM2xU=;
        b=IanQIRNMwJ+YzYUAvzhZ0ZP0Q6vA5t/zs7D+UFw0RElRVvHyBz42ptgBmZgsBpCR0b
         5WAwxzeoihbknb/6xyKg2NKO2jRWP52ED3kef/0wzaM4nBTvEHnZiUxQIEFIru2JsaaV
         WBMPH1a8aP3uzFipNfxSV3T0C8tn5qZiTgcoNIDoVXL8Ed+XDwkI9xN5asN3Jmup7f9x
         iF2NPAO1yS1p9ywqN1fSG1pUiOoe3tpcecuhmC+GGYINSRUo2BOy1vQ9tzrMwT5Q/Zfh
         4pdHcs3gJywA6Hk/7EW+06JKCJQaSR9+uIgfGwLlCPutdXQihpMobPySGmzMTumrrkDK
         9dfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758791088; x=1759395888;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=52cJq27fTrRB0shrC+OriI/jG8WLskY0nr0nR3oM2xU=;
        b=iurltIFRi7wGOiKqnOEt5fna1T/p+yaf71aFh8aeNlGxtgjSedFh0YOHLoRWz2n3ug
         mvbQIaxCSbQotKtsmtDKvU0xUxwto5lhmmgbNPM2GzfnuGQO7WBENVWIutH51UDMLJCf
         rdEAcKjdXSc2up0o3U6+2J9IX5ervexoWwLKEGNn2enduG3Uu1dtEdsHLUXPzp0gDZWl
         /6f9zg9amSIp7+393FgDncPIfdxXs+fWDeNvuYq9SOzFdXavmlWRRbU9zikLCscHoBOk
         AA3YRUnyHN44CgAcs6un9GGmYyQlvG9vKgpmPfkFSbh4R0dIpeqAesdjdCCg/6P6jSUN
         NWMA==
X-Forwarded-Encrypted: i=1; AJvYcCVo0aopcfY+2nCO3mWDIopgNlpzBMe8peRHzH9XPt5urvy7gcPNjeYpsx75pHs9fuQmHJO6U3XfWEom@vger.kernel.org
X-Gm-Message-State: AOJu0YwuhnsYERgi94Zqi7MXTTtYr4EwFw32+Ve+p2RNbQlT5qB5YJfO
	wP0d2zg/yDujJVyCpyJJ12PHAEofPohJuP5qTNsKJfbckbpwaySiIUl4GrCdC914NEk=
X-Gm-Gg: ASbGncufNCir0LS/2ccFfhEPg0+lpn5Ciiyjv9goElNNlbwO4rYuobiThhdpttvM8To
	FXE8kwDLQ2Gwm/18Vjfa0iJi9Iaop9CNvry7/S8zjQQNFKi/0MajK3zawkUWDmMXuH2he364bbq
	UPDqtVCDfak3NsuZ2HfycI77UppnWdTyeCnf2GTb3qJaYjTO9NWrM/swfBGLFJq8c+A5O0+1lPi
	mhGLTmr71uZhM656Cq8eAMCb+O6RxCFj+FaNbXZCOOlFj1J23bZP0F8EWiO94MVHpHgJI1K4qrC
	e+y+l0UqSw/Dj1aHuuxHSUEEJrvq6fdFbYXdqQyMbB+QUZtFUXVIxk5xnomPpgceK5MjCWIXnmf
	xdH9OXWK2caRjgMmUJvyyK9IqCSf7rnxwm8a3RYqkmXOxvC4NtERPBbVNFXA3P7TMrFW/fp/rVY
	00w4XAH+w2HvtsekGfAPBV
X-Google-Smtp-Source: AGHT+IErNyAgA6Qo/uMNdIgcGBbOskM97JAo4kEppskCvZUmBIRp8NL7i5asdGJupVwWIHvszpenhQ==
X-Received: by 2002:a05:600c:a43:b0:45b:7b54:881 with SMTP id 5b1f17b1804b1-46e329a0e5dmr26627875e9.1.1758791088108;
        Thu, 25 Sep 2025 02:04:48 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac5basm80767955e9.7.2025.09.25.02.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:04:47 -0700 (PDT)
Message-ID: <19c66c0e-e784-4403-abae-c4cd92f4a150@linaro.org>
Date: Thu, 25 Sep 2025 10:04:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] dt-bindings: clock: qcom: document the Kaanapali GPU
 Clock Controller
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
 <20250924-knp-mmclk-v1-5-d7ea96b4784a@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250924-knp-mmclk-v1-5-d7ea96b4784a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/09/2025 00:56, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add bindings documentation for the Kaanapali Graphics Clock and Graphics
> power domain Controller.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>   .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    | 63 ++++++++++++++++++++++
>   .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
>   include/dt-bindings/clock/qcom,kaanapali-gpucc.h   | 47 ++++++++++++++++
>   .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    | 12 +++++
>   4 files changed, 124 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
> new file mode 100644
> index 000000000000..31398aec839d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,kaanapali-gxclkctl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Graphics power domain Controller on Kaanapali
> +
> +maintainers:
> +  - Taniya Das <taniya.das@oss.qualcomm.com>
> +
> +description: |
> +  Qualcomm graphics power domain control module provides the power
> +  domains on Qualcomm SoCs. This module exposes the GDSC power domain
> +  which helps the recovery of Graphics subsystem.
> +
> +  See also::
> +    include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,kaanapali-gxclkctl
> +
> +  power-domains:
> +    description:
> +      Power domains required for the clock controller to operate
> +    items:
> +      - description: GFX power domain
> +      - description: GMXC power domain
> +      - description: GPUCC(CX) power domain
> +
> +  '#power-domain-cells':
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - power-domains
> +  - '#power-domain-cells'
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        clock-controller@3d68024 {
> +            compatible = "qcom,kaanapali-gxclkctl";
> +            reg = <0 0x3d68024 0x0 0x8>;
> +            power-domains = <&rpmhpd RPMHPD_GFX>,
> +                            <&rpmhpd RPMHPD_GMXC>,
> +                            <&gpucc 0>;
> +            #power-domain-cells = <1>;
> +        };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
> index 44380f6f8136..6feaa32569f9 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
> @@ -14,6 +14,7 @@ description: |
>     domains on Qualcomm SoCs.
>   
>     See also::
> +    include/dt-bindings/clock/qcom,kaanapali-gpucc.h
>       include/dt-bindings/clock/qcom,milos-gpucc.h
>       include/dt-bindings/clock/qcom,sar2130p-gpucc.h
>       include/dt-bindings/clock/qcom,sm4450-gpucc.h
> @@ -26,6 +27,7 @@ description: |
>   properties:
>     compatible:
>       enum:
> +      - qcom,kaanapali-gpucc
>         - qcom,milos-gpucc
>         - qcom,sar2130p-gpucc
>         - qcom,sm4450-gpucc
> diff --git a/include/dt-bindings/clock/qcom,kaanapali-gpucc.h b/include/dt-bindings/clock/qcom,kaanapali-gpucc.h
> new file mode 100644
> index 000000000000..e8dc2009c71b
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,kaanapali-gpucc.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_KAANAPALI_H
> +#define _DT_BINDINGS_CLK_QCOM_GPU_CC_KAANAPALI_H
> +
> +/* GPU_CC clocks */
> +#define GPU_CC_AHB_CLK						0
> +#define GPU_CC_CB_CLK						1
> +#define GPU_CC_CX_ACCU_SHIFT_CLK				2
> +#define GPU_CC_CX_GMU_CLK					3
> +#define GPU_CC_CXO_AON_CLK					4
> +#define GPU_CC_CXO_CLK						5
> +#define GPU_CC_DEMET_CLK					6
> +#define GPU_CC_DPM_CLK						7
> +#define GPU_CC_FF_CLK_SRC					8
> +#define GPU_CC_FREQ_MEASURE_CLK					9
> +#define GPU_CC_GMU_CLK_SRC					10
> +#define GPU_CC_GPU_SMMU_VOTE_CLK				11
> +#define GPU_CC_GX_ACCU_SHIFT_CLK				12
> +#define GPU_CC_GX_GMU_CLK					13
> +#define GPU_CC_HUB_AON_CLK					14
> +#define GPU_CC_HUB_CLK_SRC					15
> +#define GPU_CC_HUB_CX_INT_CLK					16
> +#define GPU_CC_HUB_DIV_CLK_SRC					17
> +#define GPU_CC_MEMNOC_GFX_CLK					18
> +#define GPU_CC_PLL0						19
> +#define GPU_CC_PLL0_OUT_EVEN					20
> +#define GPU_CC_RSCC_HUB_AON_CLK					21
> +#define GPU_CC_RSCC_XO_AON_CLK					22
> +#define GPU_CC_SLEEP_CLK					23
> +
> +/* GPU_CC power domains */
> +#define GPU_CC_CX_GDSC						0
> +
> +/* GPU_CC resets */
> +#define GPU_CC_CB_BCR						0
> +#define GPU_CC_CX_BCR						1
> +#define GPU_CC_FAST_HUB_BCR					2
> +#define GPU_CC_FF_BCR						3
> +#define GPU_CC_GMU_BCR						4
> +#define GPU_CC_GX_BCR						5
> +#define GPU_CC_XO_BCR						6
> +
> +#endif
> diff --git a/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h b/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
> new file mode 100644
> index 000000000000..460e21881c4f
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_GX_CLKCTL_KAANAPALI_H
> +#define _DT_BINDINGS_CLK_QCOM_GX_CLKCTL_KAANAPALI_H
> +
> +/* GX_CLKCTL power domains */
> +#define GX_CLKCTL_GX_GDSC				0
> +
> +#endif
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

