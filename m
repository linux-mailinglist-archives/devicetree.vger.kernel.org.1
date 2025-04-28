Return-Path: <devicetree+bounces-171585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5279BA9F1D3
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 15:12:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 599CC465087
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 13:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B683327057C;
	Mon, 28 Apr 2025 13:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i9eioiFL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9685927057A
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 13:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745845689; cv=none; b=b+d/JUXqpq345Orung82KNGv362phXmEc4d33T95r2f4e673LvZMLigBOWV6uz6aB8lGyhozDsjj6Ordq6rRWRisrLODMOwnUHj3eC6b97FB9hE0eG/fCoUcKte+ukMHq5wDMP9pwO0lMsJ5e6Ar8fiX3f9WuxMM1FGbUN+XI/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745845689; c=relaxed/simple;
	bh=mnAJ52ar/AYv9v6+Df6x52ikTOPL9XyTF25FkLX5Wyc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T5L7eb9MLIhAfQYT1z8pKVh+nm2nwUQc6+CXO8i1ikvF+1kcQQOdYV4s+Gix/JnmrU18HOv9VdiCGPpe1JSg3AiX6sZ2wRzFcosop2MMmD8TmZXzGQlIkLCr5ru2/wp4jLNgNOTWKadGwSB+AoYJqjuVp0I5otaIJafhXDUHfI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i9eioiFL; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54b0da81302so378095e87.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 06:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745845686; x=1746450486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rKI293OkNtSCRW2GiaUvxvB6LASuRfbVCog4wPqflw=;
        b=i9eioiFLmw5h43VogwenzwqeF/bl+PBt86aVZUAqn0Brir991RxjbXDmKTgOA/p1Dj
         r+b1igx2XOwhE3qDjgCNro5NTgwvkchw9Ayuc5qnqWWiBmYkkg4+qQ4XRZ0x+2MCU1cd
         bUv6Nbn8IGpKNFQReZ1NanNU2553S+Y42B/lIVm1CLgw1/mDcQEoYoQN1Xynq6nzBfui
         uKZM91ZpRTAJ6gkZhFSxKH6eKgvet8KtJnQXtUmV7nkst415gpUE05skRcOE9VwlN/h7
         8w390sWh3TeXzch1gSvCnhP6sXtOmapsNH+oPld5pQfDN2hh3tePQdTYXDRTNLUACJmp
         h9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745845686; x=1746450486;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rKI293OkNtSCRW2GiaUvxvB6LASuRfbVCog4wPqflw=;
        b=AJrTZKMS5H/B/nJZMGDhkX5YGkqXLLLmhBB9rw4HA6b5XYoQd3i3C0Vpnh/lDon9Ek
         EA1WNR+Zk6j5EUAnkMcoi76BTvhOJBSZzOj1AYCrNSroWmUMQpK2x0CNEmAuJDgX/XhK
         3MGDHxXxoUpl7IW5m9nospOefq5XNfVk1bWBq5LKTMvoWC4pPiXOoJB3TCB6cBE4NoYi
         0g4YARxZpnAfrj9Q+exHY0MyC6VL8hBu3UCkZKkHrY2I51711voNIsNJOiy5ndgsmz+N
         ZwiHkr4j+3KOp5+1aHS2eL9dBJvXz+PSqNUIANPe9R6B5/Hluc9TTlGXpzFQAhQ26ysd
         Ldkw==
X-Forwarded-Encrypted: i=1; AJvYcCWdCzGNf8rNiQSYoK3gytQp5+ubJJWShUaEonhV3tCK0ctDokR1f6+MYuBNJ9YH4Rt58lI0/Go9xQYn@vger.kernel.org
X-Gm-Message-State: AOJu0YwmqO6iGqt6ASIIUxA4wuSLuejDT37R8qFIs5EM0ZewZy0JBl9q
	XOetZQZ04woga5ndRBWPdxxDRPNDz96Qsk1oKKaD+EUgmG6of46V8+9agW+wooQ=
X-Gm-Gg: ASbGncu2D4II9biOp28RWm9MBW19qNrB7nsMmcvoCdosNdlwai9U9UzoX+n9cnbEffL
	jMLJWEC32YORF9QN/cJJUMslzjmaCxYMnDBwAIbcChjRPYP9unR/3JAB7/Ho42dtWBw0mTv0P78
	bMY27X3fAZdgaSVLasoLvZh+QGRGuLHUbSJD55tyg355OFVn2XUbreBhA0ZWc293/HjdIBPSuiE
	4DQ8aagDOm4IjVIT+liCKSgtP9QzwWF+dh2+uNAdjMlOq9oy25lF5xa1iGhCnZ82VQ4vfDYug6z
	6Pk1tnHu1lxVMXts7OB3jp0KZ2BtF583l7JCDD8AuBWzJOjqRcaItT6iLvyHzH68EqZEmdCHjTH
	xxJ4V//rJdlBNVCZA/Wg=
X-Google-Smtp-Source: AGHT+IHigrHmgJYNc7nLQZKoFasjeKXtn3RhBxEwzQXSKbVJgPgq1Au5kKKLuo2iHhmAFvJw3wh3Ig==
X-Received: by 2002:a05:6512:6c4:b0:549:8932:a1be with SMTP id 2adb3069b0e04-54e8cc111edmr1038151e87.13.1745845685451;
        Mon, 28 Apr 2025 06:08:05 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb39f1esm1632907e87.58.2025.04.28.06.08.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 06:08:05 -0700 (PDT)
Message-ID: <b80d500b-6203-4d83-8396-3ba579abd980@linaro.org>
Date: Mon, 28 Apr 2025 16:08:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/10] dt-bindings: clock: Add Qualcomm QCS615 Camera
 clock controller
Content-Language: ru-RU
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250424-qcs615-mm-v7-clock-controllers-v8-0-bacad5b3659a@quicinc.com>
 <20250424-qcs615-mm-v7-clock-controllers-v8-2-bacad5b3659a@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250424-qcs615-mm-v7-clock-controllers-v8-2-bacad5b3659a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Taniya.

On 4/24/25 12:32, Taniya Das wrote:
> Add DT bindings for the Camera clock on QCS615 platforms. Add the
> relevant DT include definitions as well.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>   .../bindings/clock/qcom,qcs615-camcc.yaml          |  43 ++++++++
>   include/dt-bindings/clock/qcom,qcs615-camcc.h      | 110 +++++++++++++++++++++
>   2 files changed, 153 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..2b811e66d406c16c70004bb3a9fce294422a5914
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,qcs615-camcc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Camera Clock & Reset Controller on QCS615
> +
> +maintainers:
> +  - Taniya Das <quic_tdas@quicinc.com>
> +
> +description: |
> +  Qualcomm camera clock control module provides the clocks, resets and power
> +  domains on QCS615.
> +
> +  See also: include/dt-bindings/clock/qcom,qcs615-camcc.h
> +
> +properties:
> +  compatible:
> +    const: qcom,qcs615-camcc
> +
> +  clocks:
> +    items:
> +      - description: Board XO source
> +
> +allOf:
> +  - $ref: qcom,gcc.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    clock-controller@ad00000 {
> +      compatible = "qcom,qcs615-camcc";
> +      reg = <0xad00000 0x10000>;
> +      clocks = <&rpmhcc RPMH_CXO_CLK>;
> +
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +      #power-domain-cells = <1>;
> +    };
> +...

Is there anything what prevents to add this clock controller dt bindings
description into qcom,sm6350-camcc.yaml ?

Apart of compatible values I barely see any difference between two of them.

--
Best wishes,
Vladimir

