Return-Path: <devicetree+bounces-185553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42CAD85A4
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 10:30:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA50D3B96B6
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 08:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3C126B76D;
	Fri, 13 Jun 2025 08:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nv5VzOI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9158124DCE8
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 08:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749803357; cv=none; b=FBxnNztDsmlQqd+dCeJ2hmVtO0fGOl6XEEFyP546plHUJHBLrdZtA/8hN8DOrmpdHHy8UoID//zwhnQ4UGQpAS/0g7azte8f7HgqcfdgOYrXSA+x/CYfP0gakgrM810T/HK3kfHSnzcU5ma8NzM7nnPj07sYdtgOLwo/A2kz2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749803357; c=relaxed/simple;
	bh=Vi0J4BWVo4/yZAh4O85rz7hQS/0Ru9uo6RUM0lQSxIQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JzKT1b7VSM6nG3euQxOv/X/yr62jDwAzugSbI/3fy/MWzr8za/iyHs5K95O6DNwV8cMzQ6RyCSXAc15zggivcTOM7xKDGIkAPzikyv/w1Ga7E3+tter061qSyZAaF39ZOE7pl/fabQf8Cbl+2AJTnqiQQOl86mik8PkD9YCk5rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nv5VzOI8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-450cfb79177so10984455e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749803353; x=1750408153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E7k/xsir1wVQr9r0KZkIIKRxBUWWN+0FYHXZ4USuT9E=;
        b=Nv5VzOI86ADdr/sMIMD0HY9zRipv6CgwPIVINKOolwPtc+WqB7liDtUvKcuX5+ofFQ
         AHXa4GG7DpdEv1smNtA44kKAl3m1DhpNLHg2nlWRrrSzlrxoqAvC3fHN1H+wa5ntiHsb
         +VsqYPcZsF7Fnhb/mAlk8EJkt3GcTHaUWu44YcgBhD4THAZ8ZQz+Tbldn+J82w0RD80m
         LsFyXs81Udo/Pfq/E8MuIqNLK6fXxKmLxK+My0ZYy4urMI0VJdMhLlccpB3YxGKkROqH
         ZTlXb4anmMs1/LEaKT7s1DXceVp78tx8OtTV4gh2WyHU6whzu0aphpwJXmAChxJ7Io/H
         qNHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749803353; x=1750408153;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E7k/xsir1wVQr9r0KZkIIKRxBUWWN+0FYHXZ4USuT9E=;
        b=Z4Q78rRrdJ7Nuu9q2ALQR/a7HsWJtK1aTA3aESpaM6ruWsc3zsEpy3KbR9Q4JsdS/Q
         x381EMmyU+Hf67JvMQDHySWapS862S0OCd1Ep8aoPMSw6o3OQbwKg9mRUbjCDRbwc7Lk
         QvJFF1TStmTNA0+Stu7Oj0t83EcijQnzntjJ9yrGB2dcFhYKZBOYfPIWmrsYyolMha33
         Snd+6d14Lto+u7fwoKrZB5nO0JyVxW9EHBAcIkcm2aluw3UmErodfGH1XoXEtDzgyUEL
         kSHrJs4/6JK8vRRSMz+JpHf6EpQ//rEpQNvpQZxPVS9FS3AomT4eRg+r9gWazA6j3H4z
         uKOg==
X-Forwarded-Encrypted: i=1; AJvYcCWeMbxkNZneOuNu6d9B71UUCOlFcJ3sZ0Sp/8Jf8zIk0t2fu+YnZ/M4iFdVP1zSPEKwKyVo0iSlh6ba@vger.kernel.org
X-Gm-Message-State: AOJu0YzyOyAnwYFFbmyWFXQ9zutXUxtheFcUPViUzvYYpbVwcz098EKY
	xGcEzKYTmNNpEOjde9Q0VM5CIbBcO7QMcSZqMrL1K4bz/UsbTr6XksLouXOD2P3ZCVSE27vjhfk
	L0SUL9cA=
X-Gm-Gg: ASbGnctNAcH/C8kCNTyIGmHL7g0nCxVTJ4Rv6Mvt3SLc/Q3fjqNsC+wohJw9CPzSDjK
	9TKtOhj8lXSDa2febSCIvLIGAvLyTdvlabZuoLEkcszcwVS4thgeh7AxOvWMIu6A0sHWaYcfkHv
	tZkHytoiKIJgW/usicCfzrnmsbN4AJcZ6d7ph6TxOTfeSNXK7JUf3AxlT0NJVnXffM9XIOYwWQg
	oZ3UQMWhMLBx6/YDulQE6NjUMbBBfjCb5z3GljSdE851WrkTN3iQP0M2Y93peI1/Mm9VtakVNxI
	0BixISnvuDFaI2IsdjdQFHaUXTq6zzFJ/xR5iEjzpWC6nWVKR9MCS9zuIEHpwtFVN11TCoqkbdo
	0kxeptvTmtNaJ/vH+T3zz0xFrsJg=
X-Google-Smtp-Source: AGHT+IEZOXL3CgHF0n7GTP+G3NCxxNOm9fw0HqRF5HC4682dzPgI/R7gazsLuY96P9WAU0XN4HhRTg==
X-Received: by 2002:a05:600c:4fd6:b0:450:d367:c385 with SMTP id 5b1f17b1804b1-45334ae6432mr21678585e9.16.1749803352868;
        Fri, 13 Jun 2025 01:29:12 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532f2ca228sm42833945e9.13.2025.06.13.01.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 01:29:12 -0700 (PDT)
Message-ID: <ed1cb7f2-493d-471e-9fab-ba10462b8977@linaro.org>
Date: Fri, 13 Jun 2025 09:29:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: media: Describe Qualcomm SM8650 CAMSS
 IP
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250423221954.1926453-1-vladimir.zapolskiy@linaro.org>
 <Gg_cB8nN6ZFBd8h0pO-uksSnWqFk5ICQdbub8-lPxKxNBGc8puChvSwKU4psL0V1NTjZokEnT5uWM1iK3vfVmw==@protonmail.internalid>
 <20250423221954.1926453-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250423221954.1926453-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/2025 23:19, Vladimir Zapolskiy wrote:
> Add device tree bindings for Qualcomm SM8650 camera subsystem.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../bindings/media/qcom,sm8650-camss.yaml     | 394 ++++++++++++++++++
>   1 file changed, 394 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
> new file mode 100644
> index 000000000000..2a7c243993c4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
> @@ -0,0 +1,394 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,sm8650-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SM8650 Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,sm8650-camss
> +
> +  reg:
> +    maxItems: 17
> +
> +  reg-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: csid_wrapper
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy3
> +      - const: csiphy4
> +      - const: csiphy5
> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe2
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  clocks:
> +    maxItems: 36
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi_nrt
> +      - const: camnoc_axi_rt
> +      - const: cpas_ahb
> +      - const: cpas_fast_ahb
> +      - const: cpas_vfe0
> +      - const: cpas_vfe1
> +      - const: cpas_vfe2
> +      - const: cpas_vfe_lite
> +      - const: csid
> +      - const: csiphy0
> +      - const: csiphy0_timer
> +      - const: csiphy1
> +      - const: csiphy1_timer
> +      - const: csiphy2
> +      - const: csiphy2_timer
> +      - const: csiphy3
> +      - const: csiphy3_timer
> +      - const: csiphy4
> +      - const: csiphy4_timer
> +      - const: csiphy5
> +      - const: csiphy5_timer
> +      - const: csiphy_rx
> +      - const: gcc_ahb_clk
> +      - const: gcc_axi_hf
> +      - const: gcc_axi_sf
> +      - const: qdss_debug_xo
> +      - const: vfe0
> +      - const: vfe0_fast_ahb
> +      - const: vfe1
> +      - const: vfe1_fast_ahb
> +      - const: vfe2
> +      - const: vfe2_fast_ahb
> +      - const: vfe_lite
> +      - const: vfe_lite_ahb
> +      - const: vfe_lite_cphy_rx
> +      - const: vfe_lite_csid
> +
> +  interrupts:
> +    maxItems: 16
> +
> +  interrupt-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy3
> +      - const: csiphy4
> +      - const: csiphy5
> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe2
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  iommus:
> +    maxItems: 3
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: ahb
> +      - const: hf_0_mnoc
> +
> +  power-domains:
> +    items:
> +      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +
> +  power-domain-names:
> +    items:
> +      - const: ife0
> +      - const: ife1
> +      - const: ife2
> +      - const: top
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports.
> +
> +    patternProperties:
> +      "^port@[0-5]$":
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +
> +        description:
> +          Input port for receiving CSI data from a CSIPHY.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +            required:
> +              - clock-lanes
> +              - data-lanes
> +
> +  vdda-csi01-0p9-supply:
> +    description:
> +      Phandle to a 0.9V regulator supply to CSIPHY0 and CSIPHY1 IP blocks.
> +
> +  vdda-csi24-0p9-supply:
> +    description:
> +      Phandle to a 0.9V regulator supply to CSIPHY2 and CSIPHY4 IP blocks.
> +
> +  vdda-csi35-0p9-supply:
> +    description:
> +      Phandle to a 0.9V regulator supply to CSIPHY3 and CSIPHY5 IP blocks.
> +
> +  vdda-csi01-1p2-supply:
> +    description:
> +      Phandle to a 1.2V regulator supply to CSIPHY0 and CSIPHY1 IP blocks.
> +
> +  vdda-csi24-1p2-supply:
> +    description:
> +      Phandle to a 1.2V regulator supply to CSIPHY2 and CSIPHY4 IP blocks.
> +
> +  vdda-csi35-1p2-supply:
> +    description:
> +      Phandle to a 1.2V regulator supply to CSIPHY3 and CSIPHY5 IP blocks.
I think we should just do this

+  vdd-csiphy-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to a PHY.
+
+  vdd-csiphy-1p2-supply:
+    description:
+      Phandle to 1.8V regulator supply to a PHY.

and loop back to add multiple rails later.

Please consider doing a V3 of this along these lines so we can unblock 
this submission.

---
bod

