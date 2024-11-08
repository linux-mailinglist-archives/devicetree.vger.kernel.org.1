Return-Path: <devicetree+bounces-120237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3B49C1CF3
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 13:28:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1C14B22595
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 12:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52AC41E7C2F;
	Fri,  8 Nov 2024 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nsUoRQjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751B31E765D
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 12:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731068913; cv=none; b=jEBR6Jsgnrko6lNOEaIOfu8PBkhfeE7dojCVP/suRxKvik2qiGbFzZmnR4jDevOzd/gMkn8FFeCjuMt6N1gOtnKUj+8ZnXJFNU5cHydANcr7AaibNY4SKoZm/5Ks3ic1gT4bDptxG1fe6gwaSdftCvPVew8CfjHIbPLU0xO0bFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731068913; c=relaxed/simple;
	bh=T3RAhCxZJEcvDRAbhNU88i5VYp+Nw02wibCuALcA4zs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c/91sN+8mn4UbxA41W2be3LCQUiVt9e6m3Bj84BSynJS5xDBURyYyzfgTGOu1xbzRs80KMs8ppRzPbXUs9fffIhGbpm/tLTTWvJmC3sMx2sirwPuCLFhnPSXGd2QWdostsRaQWZLGdfgB7md334GD4QdiCS6zpijUny7rCGsN+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nsUoRQjS; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-5c9ff17eddbso337971a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 04:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731068910; x=1731673710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AFd92mrT4vT9LbEkl123rvklE/FQdMhVq9EhkKWamEM=;
        b=nsUoRQjSm/v+7Eg9+cP1N8RjpR1OskwokQ+4ZcSHfFSOlo5pCgewCZbTBF0OYIDJlA
         lfSRawqwTkUUit2UdHt4xSNRYPWWLUcwP3gCs3T702YyzweYhntClLyr0pwb66aSR57w
         Q2uOPbhbR0/2kq0tllb8YzZcOPNbvIrLFmaVZStRhYM6EX1zKJuIz+7FTUYR1oaUVLwF
         g43A4U86JERlynd96oZse1DxVDFLYHHdQQKfSkvdl+PVHORKcJX34hsSR44WIBNFhcIk
         PtSY+uDcAhVLTHMwpogJpSuU4oZrOJXjV7ZMwGTC5ZwthkKEOYoO8jifV2Sx8GSIoCG3
         cwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731068910; x=1731673710;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AFd92mrT4vT9LbEkl123rvklE/FQdMhVq9EhkKWamEM=;
        b=dmC0/eBZqJwbsp7YVauiGxbA6YKzfQ/ugky8S8SdWADQq/l7FTjhy4Ekc3LKoscR+H
         rdh46iFl8uou6wbEP/g5ZJmPMulRGdPT/T4iFD8dAhSO7BtXkKG+syJoioRI6H/cHCfP
         YpLr00wSv36R8TgdTG9ybzA2Xst4miiy9jRDy8G52tVUMtfscU0IUep2hTGV7WJ/WyoE
         xbG73/JaHd3pICfmYxXhRFMWMMa1ArC9A35FEUfvDHaDDDSgeqQ+PNfakdNzLw2xmhd3
         5eRn+9xIj20iTUte8c41ZCqOE/guLl5NKxirwW+MPPGXCpCc/sqR/y9PmsTpNarsDDnx
         5q8A==
X-Forwarded-Encrypted: i=1; AJvYcCWTIpGOVBvZXADoNCfNqBxXTR8v7GIkqI9wQxCYfL3udPmLTK4jY62QIyiw3Ug6n1w8qgnq04UXuvRv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3DCnXuBzH3qh3TWaeU6A41COAtHszcTKmy+bOTaSbijE4GT0C
	6DEYLVwnlvIRqqrFm5YQU4zKpQNGApVCME04dfOycfMkrgqGLR0vrkcuUk6nPHs=
X-Google-Smtp-Source: AGHT+IGIMhp4vgQ0XK+8VV24sRm5sbYfxtPQ1MHg6R9lN8hVCGdLYosibCDtNjbQ8V9/MfUtaIBfxg==
X-Received: by 2002:a05:6402:270d:b0:5c9:879e:6998 with SMTP id 4fb4d7f45d1cf-5cf0a307a13mr889515a12.1.1731068909802;
        Fri, 08 Nov 2024 04:28:29 -0800 (PST)
Received: from [172.20.144.41] ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03bb72a7sm1912384a12.45.2024.11.08.04.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 04:28:29 -0800 (PST)
Message-ID: <a6926e47-0344-4996-b330-cfcf3e7b5f31@linaro.org>
Date: Fri, 8 Nov 2024 12:28:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/11] dt-bindings: clock: Add Qualcomm QCS615 Camera
 clock controller
Content-Language: en-US
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com>
 <20241108-qcs615-mm-clockcontroller-v3-3-7d3b2d235fdf@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241108-qcs615-mm-clockcontroller-v3-3-7d3b2d235fdf@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Taniya,

On 11/8/24 06:09, Taniya Das wrote:
> Add DT bindings for the Camera clock on QCS615 platforms. Add the
> relevant DT include definitions as well.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>   .../bindings/clock/qcom,qcs615-camcc.yaml          |  60 +++++++++++
>   include/dt-bindings/clock/qcom,qcs615-camcc.h      | 110 +++++++++++++++++++++
>   2 files changed, 170 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..0abd277aa3ddd2e1384d0af59699dc1deda5575b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,qcs615-camcc.yaml
> @@ -0,0 +1,60 @@
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
> +  domains on QCS615
> +
> +  See also: include/dt-bindings/clock/qcom,qcs615-camcc.h
> +
> +properties:
> +  compatible:
> +    const: qcom,qcs615-camcc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Board XO source
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +  '#power-domain-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#clock-cells'
> +  - '#reset-cells'
> +  - '#power-domain-cells'
> +
> +additionalProperties: false
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

would you find it possible to merge this binding into the existing one
qcom,sdm845-camcc.yaml?

Those two are very similar, sdm845-camcc requires clock-names though.

--
Best wishes,
Vladimir

