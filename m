Return-Path: <devicetree+bounces-171193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F319A9DB5B
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 16:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDA6D4A67C4
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 14:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B9225C6FE;
	Sat, 26 Apr 2025 14:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="axSbnKP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D211517E4
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 14:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745676215; cv=none; b=PxXnueSnLjxZ7xW6sKbclYSM/88002fCbNpqSdsRFXMLLgvNSCV34yF0qY/VUmgezG5weq0FSW2jggVarJi4310TGPrqKUmPd8wJ4SDVUMGUUeSaknGw3fGwfw6DGpQGf0Rkg0QP2kIQ/uIE9OcCAmNugyDC9hBamQsESck8REE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745676215; c=relaxed/simple;
	bh=+/XlGJ40QyLJ1yxLqAsymj/3uMv2LvI3xGqt6JlJRkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fcbh1wzYSKVnD0o87R4etClFitbeTbultqjc4tKf4ZXni6zj6/9J79949WFGSb90yFUtv8dk5jGR2tP9m1lJ1T+iZjQ1N6z/O8CHCnZGTFvTJ6ENuxdOJnBCLgqc9ZP4s74ApC1NV1k0lWLjDVlfw4H8KFXLongNo0MrPpLK0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=axSbnKP0; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54b010b79d2so435658e87.0
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 07:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745676211; x=1746281011; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vw+DsU15ptDiXJLxLZqHIzjz8lENUeO28XhBBnI/KzU=;
        b=axSbnKP0wzkqrG+zVQ4JMEx9nZm/UAJm+bWflfONPHvMKBEks3/n6M8P3IHkF1GTsD
         yRUGnayeerAJ4He7XxhCsDK+FWoel0bpLHpfILKT3nBBdzj0jenAfs65uYGGo6hHtZxS
         Ns6ZJ3SOC6pEvCd4Z8yDsAmIsbtaiEDyKWo3bSC4Xex9D2JN6nEhIk55D9+v3R7f5Xxw
         RrSqqMHpXjJXLBokbDwlOfpynUmtriP5IEjuUJNW5v+ZXM5tL7AzsmsDQz2MMLevGRuh
         Mz8K5kcC5kYuvM0U+zQDIhhqQzr8qDKj5CgehznFpK3/XCUhJJVvjypAYG4p0JADtGXH
         ZF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745676211; x=1746281011;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vw+DsU15ptDiXJLxLZqHIzjz8lENUeO28XhBBnI/KzU=;
        b=nAqLOGMnTQsJE7fPLYH9n8FLpa3EKLzAWkP2a9pk+0cXNlDMinmy23KuytprH3ccWU
         +RELn3uFgHVKWlKb2KvAWyYayesxDKe9AXv4iJaCvMBFwEPBU/Hq1fxNjkIjvH/Zddy2
         Pl18LEDfOfpJVYrH+T0rRG3JuPHAhjU6LrFwDbuKpcKchLVNlZo1n3p/QRYJAhcSFdCr
         Nue7oiaowZzZARIGhCBlm9CldhPjKGpYed9cP2b5Y3zz3YRq2jte5QqAs1suZH5jBvLV
         pgxuG4l4orAi+Vic8pwWrDKgKJeqNAnQlE5L/kUbX3wHXMHbHdEqtm+XhqOGT66HoLxa
         4CJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGW6+bDitls0/IZLioPn/R9qPxZDWXf8s7c8hSc5jttHBDNYcNDseKZdx8aSIaQ5Ki4sx2b8uoYT9C@vger.kernel.org
X-Gm-Message-State: AOJu0YysMWLv14ykIYdA+sRxmW2v+LUvZR/nSoVIrLLrtFfoB+PJxdI7
	F+SUNhb5CkU/xZpL8lP+1IjVL93dmrvZyDm2rn/ErWuqoonEr4tkwT20s8wyyrU=
X-Gm-Gg: ASbGnctfKaOKl7IBIHR9IhvjSyniRJo4ZSbwcOIG6lrol0TacElZl1YKD/L53kAzj0O
	Ha3Ix3p0nU52ajw6oYmcoHfq4xcO4Lr5fYvNDWPd4TxSvVcjaDgyk1Bxag0+Zffm9sSqCnj1VIY
	CwB9Lq5eWKrb/mJj2Ner45NbjwJ6nD3l4g9Hz3CRmV/qMpLlaxWkhbL8GdRHIPN77LT4Qqh10Qq
	4p589jS5OqvL8vVZgYuGtHkWaIHe+rDW7UaNfCySi35vv1CnOjWyE5LMrbScRHcpfVvoEnqFrOV
	qJuKiUsJiV8SDSv+L+LMF+Q7AQw8jBP1O6MIj66z5P4jZX1ohfUUjcto31oxxWeT/cpMX14ceQG
	ybIk7DcEdubjTh4FrxCU4qgklumqAAg==
X-Google-Smtp-Source: AGHT+IF1Ip7CcXoeKnygcwDIVwoNCBJjRB68C/jdSo6GKg66tIbe4aPB/aVZwdQypXq6CJVRBvutGQ==
X-Received: by 2002:a05:6512:3d9f:b0:549:8b24:9884 with SMTP id 2adb3069b0e04-54e8cbd53d5mr523947e87.4.1745676210813;
        Sat, 26 Apr 2025 07:03:30 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb2633asm1000722e87.10.2025.04.26.07.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 07:03:30 -0700 (PDT)
Message-ID: <a4149ac8-7e47-48a9-84ef-42aa367d014e@linaro.org>
Date: Sat, 26 Apr 2025 17:03:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: Add Qualcomm SC8180X Camera clock
 controller
Content-Language: ru-RU
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250422-sc8180x-camcc-support-v1-0-691614d13f06@quicinc.com>
 <20250422-sc8180x-camcc-support-v1-1-691614d13f06@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250422-sc8180x-camcc-support-v1-1-691614d13f06@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/22/25 08:42, Satya Priya Kakitapalli wrote:
> Add device tree bindings for the camera clock controller on
> Qualcomm SC8180X platform.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>   .../bindings/clock/qcom,sc8180x-camcc.yaml         |  65 ++++++++
>   include/dt-bindings/clock/qcom,sc8180x-camcc.h     | 181 +++++++++++++++++++++
>   2 files changed, 246 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sc8180x-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc8180x-camcc.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..b17f40ee53a3002b2942869d60773dbecd764134
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,sc8180x-camcc.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,sc8180x-camcc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Camera Clock & Reset Controller on SC8180X
> +
> +maintainers:
> +  - Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> +
> +description: |
> +  Qualcomm camera clock control module provides the clocks, resets and
> +  power domains on SC8180X.
> +
> +  See also: include/dt-bindings/clock/qcom,sc8180x-camcc.h
> +
> +properties:
> +  compatible:
> +    const: qcom,sc8180x-camcc
> +
> +  clocks:
> +    items:
> +      - description: Board XO source

 From sc8180x_rpmh_clocks[] in clk/qcom/clk-rpmh.c I get that there is
RPMH_CXO_CLK_A clock also, shall it be added to this list then?

If yes, and taking into account Konrad's ask for GCC_CAMERA_AHB_CLK, it
implies that the new dt bindings can be omitted, instead please consider
to add the 'qcom,sc8180x-camcc' compatible into qcom,sa8775p-camcc.yaml.

However still there is a difference, qcom,sa8775p-camcc and qcom,qcs8300-camcc
does not contain 'required-opps' property, it might be an omission over
there though, please double check it. The ultimate goal would be to get
a shorter list of different camcc dt bindings.

> +      - description: Sleep clock source
> +
> +  power-domains:
> +    maxItems: 1
> +    description:
> +      A phandle and PM domain specifier for the MMCX power domain.
> +
> +  required-opps:
> +    maxItems: 1
> +    description:
> +      A phandle to an OPP node describing required MMCX performance point.
> +
> +allOf:
> +  - $ref: qcom,gcc.yaml#
> +
> +required:
> +  - compatible
> +  - clocks
> +  - power-domains
> +  - required-opps
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-sc8180x.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +    clock-controller@ad00000 {
> +      compatible = "qcom,sc8180x-camcc";
> +      reg = <0x0ad00000 0x20000>;
> +      clocks = <&rpmhcc RPMH_CXO_CLK>,
> +               <&sleep_clk>;
> +      power-domains = <&rpmhpd SC8180X_MMCX>;
> +      required-opps = <&rpmhpd_opp_low_svs>;
> +
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +      #power-domain-cells = <1>;
> +    };
> +...

--
Best wishes,
Vladimir

