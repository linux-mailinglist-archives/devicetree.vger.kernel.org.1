Return-Path: <devicetree+bounces-64235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1B98B88AE
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 12:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F32EC2835EB
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 10:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D1554669;
	Wed,  1 May 2024 10:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wYXcL8zx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5786E33CD1
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 10:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714560093; cv=none; b=I8XojZkxUeIUNs6t/ujoAEwAcmz/zpLfMnYesDMzPHn76dQcw/sTRitbm/suP7hOs3uywlXAFNLGYLk/GPTru3QqoZOLc1+OgvXvi8N76HaLgglQVGnGVxZf4twSOr976Bv93XZhvDjt5oHCkeneA8jSzGV1EW8h5oeOtpuTXBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714560093; c=relaxed/simple;
	bh=/ZQIG/3uaLNNMu+Jaq1pWiCGUFBqLdO9PicLaF6MvLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NKMCFWjbFwzv6//UQ3d0LGgFEo82KWhAeY8ikaWJDyMkxdelIk2mfDUPBOJb5hWF0hQg1mAJXgTIoUBulLzknYe1EIwWnmPylhfVzt1vH3iG3knyFlRYmA4e/g3D48NWzeAP8CKq8FfiUAU8TPzcvf0lUgZTnjj5WDNjKY8isDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wYXcL8zx; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-418e4cd2196so51832865e9.1
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 03:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714560091; x=1715164891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tnAXwpnJCfyBMxb2ERCfc2sWQTd2dlZbEzR3Sps3cGc=;
        b=wYXcL8zx8FZQPqbO9RvL1JXAfm4RWFrs5VIluI3eq4BM1lHNiYM20BOy8QoQvkz21B
         ZZ67Vz0Ll0sk3yMP5psrVEKU0bcf4Yg+KvZJ9ZxfW4sPgpnrzd/yxXEWSs0t001VTfkP
         Ctdbp90ogzAv96hGo62lEX/XYr8sBIGR2lUZnwWw0TvX3pn+Q/u4srDbng6iyWQ1NNX0
         mBUy3B+l2ASUa/oH3+Bfk2HOq+LFlNJKW41o/2P9bwvkXx/Oj7yfmvP3AKbmyDVWcNpp
         KQo1IKSBNUKsTP7EtjFkzjW3qXM1QtoWzBZT+SSZTex3FSO3+6PsbxgAenXISlPtFStY
         bSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714560091; x=1715164891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnAXwpnJCfyBMxb2ERCfc2sWQTd2dlZbEzR3Sps3cGc=;
        b=mEBXgd9TmLjQusbpd89nntGQFDTWav5QQdddGB6QGoD6jUTvog1FQ5FrBkRSCSknwu
         yvh0EgOJscVfY+7YbpU0wzUpmNI/pGBc0byxpPRb7VfT2Ya/yligKX82qrEeXqzKgskO
         dJZXq6R7DcEzi6gYf4jMj6/S8xZEqnMujYW0HSouSQuA5hCaOQpvB/5jVjq9GUafJDUy
         oh+novOJXwqsWgbMfw9t8L6zRCaJMook21Rn13exgpySuV/pyUmnA9DEXY9zAZJpTxlL
         B6oggXqicPfex6qOprWhlZt1Bh4G1zJ0z94v6SOEuqhVrAp55BH82W0MTFysWQb6dWVt
         ZWww==
X-Forwarded-Encrypted: i=1; AJvYcCWiddZB70lVNTnm+HYEmJgCp8ezwAxv6/0k32zJOEzQcp/iimAWXY83A9LYA5Gltn+JrhMDwqCo17PmocQIqknCeaLztLIZCdIStg==
X-Gm-Message-State: AOJu0YxGF7t4PM2LclkduRk1D+ERRbTVqp1+70wP99U0J0f4q0C8lui8
	3LoUOeJj+x2pxt11bPx4ckAUY+udrqwkPVMm6MPIMWI8623yvPKAKsd2uAmC9IA=
X-Google-Smtp-Source: AGHT+IHji7usLVWIknIEKSCSQW1rplXvuNFa5Fj/xKexpEet4LiizDosHcaq8CZihdGZp2qmPdKChw==
X-Received: by 2002:a05:600c:1384:b0:416:6af1:27af with SMTP id u4-20020a05600c138400b004166af127afmr1596783wmf.35.1714560090610;
        Wed, 01 May 2024 03:41:30 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a5-20020a05600c224500b0041aa79f27a0sm1775807wmm.38.2024.05.01.03.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 03:41:30 -0700 (PDT)
Message-ID: <c55b7cdf-5ff2-42fb-8611-d9492f37d4b1@linaro.org>
Date: Wed, 1 May 2024 11:41:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/8] dt-bindings: clock: qcom: Add SM8650 video clock
 controller
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>
References: <20240430142757.16872-1-quic_jkona@quicinc.com>
 <20240430142757.16872-3-quic_jkona@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240430142757.16872-3-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/04/2024 15:27, Jagadeesh Kona wrote:
> SM8650 video clock controller has most clocks same as SM8450,
> but it also has few additional clocks and resets. Add device tree
> bindings for the video clock controller on Qualcomm SM8650 platform
> by defining these additional clocks and resets on top of SM8450.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   .../bindings/clock/qcom,sm8450-videocc.yaml   |  6 ++++-
>   .../dt-bindings/clock/qcom,sm8650-videocc.h   | 23 +++++++++++++++++++
>   2 files changed, 28 insertions(+), 1 deletion(-)
>   create mode 100644 include/dt-bindings/clock/qcom,sm8650-videocc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index 78a1bb5be878..922e95c61778 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> @@ -8,18 +8,22 @@ title: Qualcomm Video Clock & Reset Controller on SM8450
>   
>   maintainers:
>     - Taniya Das <quic_tdas@quicinc.com>
> +  - Jagadeesh Kona <quic_jkona@quicinc.com>
>   
>   description: |
>     Qualcomm video clock control module provides the clocks, resets and power
>     domains on SM8450.
>   
> -  See also:: include/dt-bindings/clock/qcom,sm8450-videocc.h
> +  See also::
> +    include/dt-bindings/clock/qcom,sm8450-videocc.h
> +    include/dt-bindings/clock/qcom,sm8650-videocc.h
>   
>   properties:
>     compatible:
>       enum:
>         - qcom,sm8450-videocc
>         - qcom,sm8550-videocc
> +      - qcom,sm8650-videocc
>   
>     reg:
>       maxItems: 1
> diff --git a/include/dt-bindings/clock/qcom,sm8650-videocc.h b/include/dt-bindings/clock/qcom,sm8650-videocc.h
> new file mode 100644
> index 000000000000..4e3c2d87280f
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,sm8650-videocc.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8650_H
> +#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8650_H
> +
> +#include "qcom,sm8450-videocc.h"
> +
> +/* SM8650 introduces below new clocks and resets compared to SM8450 */
> +
> +/* VIDEO_CC clocks */
> +#define VIDEO_CC_MVS0_SHIFT_CLK					12
> +#define VIDEO_CC_MVS0C_SHIFT_CLK				13
> +#define VIDEO_CC_MVS1_SHIFT_CLK					14
> +#define VIDEO_CC_MVS1C_SHIFT_CLK				15
> +#define VIDEO_CC_XO_CLK_SRC					16
> +
> +/* VIDEO_CC resets */
> +#define VIDEO_CC_XO_CLK_ARES					7
> +
> +#endif

Extensibility +1

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

