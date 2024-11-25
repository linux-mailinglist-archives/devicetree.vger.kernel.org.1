Return-Path: <devicetree+bounces-124391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC479D8A03
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CDA4285171
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B2B1B414E;
	Mon, 25 Nov 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTHwYXF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831961B4125
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732551143; cv=none; b=rq6miK/yv2bBSk79F5ffw5JSVUcjXC0Knrii6cg+sFanJGbk58KPI4mrEky3EFWXeqHg2Fk4howhKfO+P3YC8dBl2lSZ9rXaTWuiBAsi6toKYCRS3Um3M4bJTfa5fZQ6ofZEI+jORpXOYmB7hcCQ1MRHaHT5zVMm6CT/6Xi9tX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732551143; c=relaxed/simple;
	bh=vxAP4GFIepgJNHz+fQvS0YIIG2Ymh4S7ejVPX9wigo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=redd0aoJD+UxRw53rdFUufr3Hl0FMqCqLuxwEZmeBdCn3LlCMoJVfmyExZ3+Zklxteik0dpLOkRkq1yP3mVJykmjuXEb8qJ4YucJh6ZQwm6TMDZnRNO+LHtcgKUXB4D6tfhdaxZDffUWec/Q8RK0V3gww53Vw1tN/ZtQU27BCSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTHwYXF2; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffa12ad18cso51962401fa.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732551139; x=1733155939; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Aw321NaS6TFeLiwFEJugD6+ze9ed51yxaQsv+2sqRFo=;
        b=mTHwYXF2wP6vssquM7cWNaDGXPqpHY1NcylmdoeOImW3Sf1SlgG803dTRV4molkn6R
         fhDuTg65CK74lT4/+ZU7i1hzwZDgWrqv3RtbqtXiy1R6NO+T7dc8riT4WICWFK5Ek1oh
         mRHwoEiw009q9+iebfTQLpbJ7QuPDVKqo7DVVdShZ3EYz8n3Su6b2bLjYb9bp2zLRKGG
         smX6NwuX3bcsRLm1ZHcDXkmPYPRwSd3gDssr8KFiAc54VbYbbZd/ks0x4pPylB03OIm7
         8HbTz26YtYMlTefiiopja5BDvr6o1w5LkfFsAihlPeO4gughxGEC41T+z9Nmjm5zH0I/
         0KPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732551139; x=1733155939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aw321NaS6TFeLiwFEJugD6+ze9ed51yxaQsv+2sqRFo=;
        b=YWd0hNoLCzTfbo/KTfGYGqBp3DgWOGSX5WKGQAbk54/uKkHg5jaoDePpbWv60Fh2Bq
         f/POD7uj+tlvEneMo903fk5MsW3xD1Gs5WLzgUwArXC/naXxmNCdmvGqJHNODU2wNtla
         8au14hoO4j45Om3Snh5JC8ayb1rVCdls/oSxX0AnmshDvEIiz2FOX+qg0Uy6M8u8+cRp
         l8ATip2H8ZQQ1dHyAjlHbW2x41niS4S5MovVh7mSgoviefm2hVQghcFBFkX9sSClk5rO
         7Wdl8Bk7J43UBhAzBbN7wctT8qngvVXTmt6LkI3INLXbqoFiG/0+Q8W+Ve3YpLU9s+/S
         AiJg==
X-Forwarded-Encrypted: i=1; AJvYcCUEUqnsdVhyZ0Cb1ser+KxZio8f7AYNcNMpT5EJ7JjdYAaVjUp+1/YQNJdJ0o670kQVKYdzFOz0aa6M@vger.kernel.org
X-Gm-Message-State: AOJu0YwEtONGz+vwyQoMLfhNhZLqWnUeZWjvz3caFfdcalwo9BUvkW1U
	t5X9RMfUGtxTsCYQe86Mc160YBQLwrGG0FH86AeoiFwjQ4ftvYbaNuz+SJoDV1wV5LUAK1rM/IX
	5
X-Gm-Gg: ASbGnct8Iz9dNnUJpSllYjbM/AOEw70x6SpZ4lFV6Pd2GdZTwQrE02hOjCMbDybxtFL
	33PC9WTxw8roGm53JWF0VC3TcDGNG/jS5XHFfOrRgXCAxta0SNr4+WQQ3HAFE+b95S0gJW+xHv/
	clNYbLdrdSqbTAY80M46x/TnmrpVBmh24uG4Ir3EuURnQepFv13e8g58cPigySJy1Y4Yjq97Qkz
	lRIBqGyr8GVNNPVnVtCHV4zlUbGG8QgHDl8ltsylmBe7HfcRIaRw2xg1pqnN5iXLkyKPmFHYhdV
	f+NFEYilmEkbj67qOomfr4rMUgTA1w==
X-Google-Smtp-Source: AGHT+IFPfB7a5nwGjr6HKgeHJL/mwlPVXqaOjY4l1GKSJmoWf81K1sAoKuhGr5xOMGSjUBo1nMjr3A==
X-Received: by 2002:a05:6512:33d6:b0:53d:dc3a:ed92 with SMTP id 2adb3069b0e04-53ddc3aeddcmr3261522e87.37.1732551138747;
        Mon, 25 Nov 2024 08:12:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24811b0sm1743109e87.162.2024.11.25.08.12.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 08:12:17 -0800 (PST)
Date: Mon, 25 Nov 2024 18:12:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: qcom,qcs615-venus: add support for
 video hardware
Message-ID: <kdyhkb3tt2lgfuopz7twxjwpfur6vuezaqlc7s7aozkz6ek2as@m2nvqcb5ww4u>
References: <20241125-add-venus-for-qcs615-v3-0-5a376b97a68e@quicinc.com>
 <20241125-add-venus-for-qcs615-v3-1-5a376b97a68e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125-add-venus-for-qcs615-v3-1-5a376b97a68e@quicinc.com>

On Mon, Nov 25, 2024 at 11:04:49AM +0530, Renjiang Han wrote:
> Add support for Qualcomm video acceleration hardware used for video
> stream decoding and encoding on QCOM QCS615.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---
>  .../bindings/media/qcom,qcs615-venus.yaml          | 182 +++++++++++++++++++++
>  1 file changed, 182 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,qcs615-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcs615-venus.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..7a3a01ff06d8b62bc2424a0a24857c86c6865f89
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,qcs615-venus.yaml
> @@ -0,0 +1,182 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,qcs615-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCS615 Venus video encode and decode accelerators
> +
> +maintainers:
> +  - Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
> +  - Vikash Garodia <quic_vgarodia@quicinc.com>
> +
> +description:
> +  The Venus IP is a video encode and decode accelerator present
> +  on Qualcomm platforms
> +
> +allOf:
> +  - $ref: qcom,venus-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,qcs615-venus

Please extend sc7180-venus.yaml instead. No need to duplicate
unnecessary things.

> +
> +  power-domains:
> +    minItems: 2
> +    maxItems: 3

So, is it 2 or 3? You don't have legacy here, so you should know an
exact number.

> +
> +  power-domain-names:
> +    minItems: 2

And this one also can go away.

> +    items:
> +      - const: venus
> +      - const: vcodec0
> +      - const: cx
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: iface
> +      - const: bus
> +      - const: vcodec0_core
> +      - const: vcodec0_bus
> +
> +  iommus:
> +    maxItems: 1
> +
> +  memory-region:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: video-mem
> +      - const: cpu-cfg
> +
> +  operating-points-v2: true
> +
> +  opp-table:
> +    type: object
> +
> +  video-decoder:
> +    type: object
> +
> +    additionalProperties: false
> +
> +    properties:
> +      compatible:
> +        const: venus-decoder
> +
> +    required:
> +      - compatible
> +
> +  video-encoder:
> +    type: object
> +
> +    additionalProperties: false
> +
> +    properties:
> +      compatible:
> +        const: venus-encoder
> +
> +    required:
> +      - compatible
> +
> +required:
> +  - compatible
> +  - power-domain-names
> +  - iommus
> +  - video-decoder
> +  - video-encoder
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,qcs615-videocc.h>
> +    #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    venus: video-codec@aa00000 {
> +        compatible = "qcom,qcs615-venus";
> +        reg = <0xaa00000 0x100000>;
> +        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +        clocks = <&videocc VIDEO_CC_VENUS_CTL_CORE_CLK>,
> +                 <&videocc VIDEO_CC_VENUS_AHB_CLK>,
> +                 <&videocc VIDEO_CC_VENUS_CTL_AXI_CLK>,
> +                 <&videocc VIDEO_CC_VCODEC0_CORE_CLK>,
> +                 <&videocc VIDEO_CC_VCODEC0_AXI_CLK>;
> +        clock-names = "core",
> +                      "iface",
> +                      "bus",
> +                      "vcodec0_core",
> +                      "vcodec0_bus";
> +
> +        power-domains = <&videocc VENUS_GDSC>,
> +                        <&videocc VCODEC0_GDSC>,
> +                        <&rpmhpd RPMHPD_CX>;
> +        power-domain-names = "venus",
> +                             "vcodec0",
> +                             "cx";
> +
> +        operating-points-v2 = <&venus_opp_table>;
> +
> +        interconnects = <&mmss_noc MASTER_VIDEO_P0 0
> +                         &mc_virt SLAVE_EBI1 0>,
> +                        <&gem_noc MASTER_APPSS_PROC 0
> +                         &config_noc SLAVE_VENUS_CFG 0>;
> +        interconnect-names = "video-mem",
> +                             "cpu-cfg";
> +
> +        iommus = <&apps_smmu 0xe40 0x20>;
> +
> +        memory-region = <&pil_video_mem>;
> +
> +        video-decoder {
> +            compatible = "venus-decoder";
> +        };
> +
> +        video-encoder {
> +            compatible = "venus-encoder";
> +        };
> +
> +        venus_opp_table: opp-table {
> +            compatible = "operating-points-v2";
> +
> +            opp-133330000 {
> +                opp-hz = /bits/ 64 <133330000>;
> +                required-opps = <&rpmhpd_opp_low_svs>;
> +            };
> +
> +            opp-240000000 {
> +                opp-hz = /bits/ 64 <240000000>;
> +                required-opps = <&rpmhpd_opp_svs>;
> +            };
> +
> +            opp-300000000 {
> +                opp-hz = /bits/ 64 <300000000>;
> +                required-opps = <&rpmhpd_opp_svs_l1>;
> +            };
> +
> +            opp-380000000 {
> +                opp-hz = /bits/ 64 <380000000>;
> +                required-opps = <&rpmhpd_opp_nom>;
> +            };
> +
> +            opp-410000000 {
> +                opp-hz = /bits/ 64 <410000000>;
> +                required-opps = <&rpmhpd_opp_turbo>;
> +            };
> +
> +            opp-460000000 {
> +                opp-hz = /bits/ 64 <460000000>;
> +                required-opps = <&rpmhpd_opp_turbo_l1>;
> +            };
> +        };
> +    };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

