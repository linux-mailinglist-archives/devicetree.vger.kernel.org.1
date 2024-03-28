Return-Path: <devicetree+bounces-52182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D339A8859C2
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 14:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F0291F22A53
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 13:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A3884A23;
	Thu, 21 Mar 2024 13:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dEe6/ge9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2C55474D
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711026745; cv=none; b=r3E6pv2VmNdkKSAhMSgrzttr68zbKt+e1VzdyDzRj1YPEfSh/Ss0qZXon/1XwHLj6TTxyaL87YTmvHYGoWQAhDGnJbh1dyUxclrGpbZXj2Vb48bTwcQSCMNi3+7Lrn2GAHnFa4T2aHMrsqLqC4lJbQQEYVlIAW+zkN/Xa8lzZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711026745; c=relaxed/simple;
	bh=mKeiFDXt9LRB76MJgqp+7P/igmpVB0Jy2uhLKbD3CS8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OOM3WERalVWjkg0QFfej/+AaJ4advkjAnjy3IiDeO3wLeoqU1AMvVcsaVQ9KGNflOQ+m7VOA/xbRr11HpFCREU4X3rRFl0rjZxbwnbyqm5TpptGb6xFu7uPV7Jthi8Xd1jUrFpfDa21uydMaboM7ahbuXCq2qYVRGeK8R+KKrKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dEe6/ge9; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so1892761276.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 06:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711026742; x=1711631542; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v29bXK4pon5YnV6KRZLX8F0U2y6Zetkx5jYmH3BrOY0=;
        b=dEe6/ge9JPzLWzV4bvURypaKw597tAwUqF5rBIsw4RllXrI0WLjLW7i5NyiR7T1xfz
         1dNjh+MY4bFIChKJD9ItnzDe6x7Ink6NLwCal3qV5tLFh8CY0Glg8iyp3/8YEM/SIFbo
         1ufdKqxxD5Z9zLRJYPvLpYa7xEeaMcBRq9Nnm7OGfWKHBhH5pzNAJaVxUnlqPytyAD6J
         7ifJfJwqH7eLbFH8dFQUYAQI6a3YRsq7ahORuLAhZGgul5Of/dFXBqQNGVOGj9hCPriY
         qL5Pu+BN0HCFpfh6t50pQDEQFCrlAFrn7JKOM1XqxLtBdgJKfp1tIx5P1UAvzkAw/uZR
         6KSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711026742; x=1711631542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v29bXK4pon5YnV6KRZLX8F0U2y6Zetkx5jYmH3BrOY0=;
        b=xABuvRUj4Y2FaxtUyUuennTx9JKfMm2A+mTevvs0DzhlluNMxxkaiKtK/KMlbT+4dp
         mpPFwWRHRaM9sXYxaJta+ezFnhcXV6TOIU0Z4Hi4ZE459D8SVMYuqHpgbBa4hQRvmIf3
         VNfAkFV1I4bQo5yHT7mEPfuX+cwZwn5KlLn69I8vhp6srmHeRgKXV/j+i8fE1SWysJq5
         9EzgdoAXCwJfZvQVYbFL64hFdcnbntqOUw16XzWJhbw+Py6GGgW3dUn1mXaRb+A31PYq
         DHAcJArV7nhtlR1nh8JNo+Z6GVzWT+lt+IoO+oKEqNDKFJT2O+Sx2RZ0cqlhGJZoFiaL
         UkFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6Ff86wqTRpT4bKw3xA+cm3ut5PocVGr7Wa/y+k1EngSAhszaOJZTrgS4AEYjHlomYXxrYV74lQD+jEfHOBPijv5KqvWY1ocZPHA==
X-Gm-Message-State: AOJu0YzweHSG1E7wtRPepWx+FdoYs2EJTJ/W9aF59N+EyfzdMd5rOV6m
	lrxBFhh+mBTmxsRdiK3QCjlO3xD7VcLHEm6HdVxKLbCIQA9tfNCZHJawpsN55BtMwff2iEbOhl+
	GQU+T0420W6AKzp24pOxFHVocy9F1tzjfIetIHA==
X-Google-Smtp-Source: AGHT+IH+79l00As5HtUNzNAucLrJsiVMPHzZAF208Ssz1n44w+Gj7ocncPxl9w+5GgdeGwgRilpNfTshVBdm1cWjbFs=
X-Received: by 2002:a25:7208:0:b0:dc6:e7f6:254a with SMTP id
 n8-20020a257208000000b00dc6e7f6254amr1809732ybc.8.1711026742585; Thu, 21 Mar
 2024 06:12:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com> <20240321092529.13362-2-quic_jkona@quicinc.com>
In-Reply-To: <20240321092529.13362-2-quic_jkona@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Mar 2024 15:12:11 +0200
Message-ID: <CAA8EJppsMchthssctEgUf9q45j84cSLQ78Ur+vaA0Z7GEQi8+g@mail.gmail.com>
Subject: Re: [PATCH V2 RESEND 1/6] dt-bindings: clock: qcom: Add SM8650 video
 clock controller
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2024 at 11:26, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
> Extend device tree bindings of SM8450 videocc to add support
> for SM8650 videocc. While it at, fix the incorrect header
> include in sm8450 videocc yaml documentation.
>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/clock/qcom,sm8450-videocc.yaml    | 4 +++-
>  include/dt-bindings/clock/qcom,sm8450-videocc.h           | 8 +++++++-
>  2 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index bad8f019a8d3..79f55620eb70 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> @@ -8,18 +8,20 @@ title: Qualcomm Video Clock & Reset Controller on SM8450
>
>  maintainers:
>    - Taniya Das <quic_tdas@quicinc.com>
> +  - Jagadeesh Kona <quic_jkona@quicinc.com>
>
>  description: |
>    Qualcomm video clock control module provides the clocks, resets and power
>    domains on SM8450.
>
> -  See also:: include/dt-bindings/clock/qcom,videocc-sm8450.h
> +  See also:: include/dt-bindings/clock/qcom,sm8450-videocc.h

This almost pleads to go to a separate patch. Fixes generally should
be separated from the rest of the changes.

>
>  properties:
>    compatible:
>      enum:
>        - qcom,sm8450-videocc
>        - qcom,sm8550-videocc
> +      - qcom,sm8650-videocc
>
>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/clock/qcom,sm8450-videocc.h b/include/dt-bindings/clock/qcom,sm8450-videocc.h
> index 9d795adfe4eb..ecfebe52e4bb 100644
> --- a/include/dt-bindings/clock/qcom,sm8450-videocc.h
> +++ b/include/dt-bindings/clock/qcom,sm8450-videocc.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>  /*
> - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8450_H
> @@ -19,6 +19,11 @@
>  #define VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC                                9
>  #define VIDEO_CC_PLL0                                          10
>  #define VIDEO_CC_PLL1                                          11
> +#define VIDEO_CC_MVS0_SHIFT_CLK                                        12
> +#define VIDEO_CC_MVS0C_SHIFT_CLK                               13
> +#define VIDEO_CC_MVS1_SHIFT_CLK                                        14
> +#define VIDEO_CC_MVS1C_SHIFT_CLK                               15
> +#define VIDEO_CC_XO_CLK_SRC                                    16

Are these values applicable to sm8450?

>
>  /* VIDEO_CC power domains */
>  #define VIDEO_CC_MVS0C_GDSC                                    0
> @@ -34,5 +39,6 @@
>  #define CVP_VIDEO_CC_MVS1C_BCR                                 4
>  #define VIDEO_CC_MVS0C_CLK_ARES                                        5
>  #define VIDEO_CC_MVS1C_CLK_ARES                                        6
> +#define VIDEO_CC_XO_CLK_ARES                                   7
>
>  #endif
> --
> 2.43.0
>
>


-- 
With best wishes
Dmitry

