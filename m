Return-Path: <devicetree+bounces-168482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDACA93332
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 09:08:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A93C3B385D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27DE26981A;
	Fri, 18 Apr 2025 07:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lkOUrKN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF49226983B
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744960087; cv=none; b=Q9s2fQs788YH3fTgbbc2h39h2VIAKnnIuCrAEpqpWilScJGNlKxQC2A4WZFrTH4/nZJ8VJ59l6Fpq34G+U4OrQJOGzPSxt9boZ3In77bsM77ho+C362ti4jxaBPBvDEttySTMNkhh8pWUIX2h6GaM50QQGZU8s7OVARZHgv9bao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744960087; c=relaxed/simple;
	bh=MjTcnivbppFuWDxiJMyMXQle7rxti96tn0uQEqxDf6I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p+Rsqt1xtWoYMetJPECmWpo4emgHTP/cdkOncNtEZdG5DmEtJcvYNsBsTZytmtX3+7pUjS2urVpymedNfrWAEh4pJVmxyzQi+HDRw6/rDA+XD2crQyKJJ7qRLpRx5fOGmiSxvuWIfNphRj7InM1Q+/33iEeZ2N1KoEjtWD19YDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lkOUrKN6; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39c0dfad22aso1028005f8f.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 00:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744960084; x=1745564884; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HWjp8y8vFcOu+OSEBcB4uctMZzi0CJU4vWPxTMamQ/Q=;
        b=lkOUrKN6oVbIv4nKYBD0yYQiDqytiez2cv5X5pNkwD+jLIdkNe5VWDJSEj5Bbo/hzR
         RMAIVwIkNLCWs9f9HRkBKJn7Y6GreRx+gVhi/ETP+NYDCiv7mr1Um9nAix9RxFncAWaM
         cZv18m6IIQK2Vd5Gex+iMHJoJhC5O1nN42TE8zeq+4grNQzCmhBM96eQSWa7P/fR4BsA
         MG7Ojemy8dSeAf2ZaJc+lxPN8roJ7/4jIkdggytmn0+j34Ll45zYMwWUIBkUwbJHCymD
         5UZ6Ef7qoJw0Me2MW7QjonJZdE6CC54f5bjsvjBVfl5mJerGd51RYDQRZePHZgehklsa
         pjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744960084; x=1745564884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HWjp8y8vFcOu+OSEBcB4uctMZzi0CJU4vWPxTMamQ/Q=;
        b=JS6/qJDiSxCkV1XDjB/4M8ScG9WyY6z2r9iVqkSu4tTfSZV4ZFrgOo/f/w9K1PFRvH
         nacqv0O6ApmYY6h0O2uv2slDSzYkb5rkkrLsMTKDLd23rYMJ9nn54XiMt0+/da3IqSDY
         WBI/LZM9futvpqZ3rgkJhVFG0ADl3Bc9bU9CQVjE4AbggwfF1f4TkeZ/hj24KrvKKPpN
         OnJFG5J/RvLvMtGPmiLxVH5iQI0iXikyqlbgRgtPxhPkMqyRq8TGw8L3sim2OdT8XJKy
         h/Ik5HuxGKcCQ4S2dmwKLvhNOcPffs57Q2Ksz3VlBJiwRWUvMUX3JlVkTAdNRreMh6AW
         jMfw==
X-Forwarded-Encrypted: i=1; AJvYcCWQZ0aS8dBVjocaE9EBdDmzouPpHg0XYHmrt4AwE3e42jaSPChhwYpKrSH0aI5XP5A1bCNKuGyaqqyb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjs4q5ZvssFPv88BJMmnxCUkT4iRQlXgbZO0EGpU49fBfgWrra
	XbieJENGnm9AvCe8+yWwtC/ZgiuEdB8loSP4yv62E8vNOf/7JrLdbv6rnAkoX/mae/IC8dNbeb2
	Vlj9izQ==
X-Gm-Gg: ASbGncsYX6sLm9NXgxISaAnyjEfbwEYuqWeOly7HoLXWbAm0tvHjCRMgtNtfIuhAu9E
	hrdnorRvhIjG7lPtrjo5WF/Z4cbucAIliKqwQDVi6LBTzTG2nH45B34YrI+zYLqKTBVLAd1Mqi5
	z9gebxEiStBrw8+6OhUqUwMSynvGwAFB5jpTyGQcqxfuOnuJK9sBohFMb2j7kdp7YsybAJ1mmzQ
	RXnpvCg+c6X5JGb6AN/aGUIQ7cyoVyphGklp2o5+RYllRM+L0Umu1pnOOj7s3JRfWP0L0aIoJdI
	Ycmg3x4otn6icdk4qIAWwBFoZczYvhrjzO3dPE/as4YzFUKB0bwluKnjrBA0QhRMesffd7N+bhP
	IF0AzdQ==
X-Google-Smtp-Source: AGHT+IGnTH5vOZF2u4It+TIDbYVDJ9lOX/4CXNAQQY4+Sw+Dr3UKWjzq+JbcKdHZOf/M/NXavbawLA==
X-Received: by 2002:a05:6000:40df:b0:39c:1401:679c with SMTP id ffacd0b85a97d-39efba4e291mr1224722f8f.21.1744960083940;
        Fri, 18 Apr 2025 00:08:03 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa43315esm1856612f8f.26.2025.04.18.00.08.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 00:08:03 -0700 (PDT)
Message-ID: <ae4492fe-1b1b-444e-a4f3-4b99258a1ee0@linaro.org>
Date: Fri, 18 Apr 2025 08:08:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] media: dt-bindings: media: camss: Add
 qcom,qcm2290-camss binding
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, rfoss@kernel.org,
 konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250417145819.626733-1-loic.poulain@oss.qualcomm.com>
 <20250417145819.626733-6-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250417145819.626733-6-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2025 15:58, Loic Poulain wrote:
> Add bindings for qcom,qcm2290-camss in order to support the camera
> subsystem found in the Qualcomm Robotics RB1 Platform (QRB2210).
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>   .../bindings/media/qcom,qcm2290-camss.yaml    | 261 ++++++++++++++++++
>   1 file changed, 261 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
> new file mode 100644
> index 000000000000..1af6ed298c66
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
> @@ -0,0 +1,261 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,qcm2290-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCM2290 Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Loic Poulain <loic.poulain@oss.qualcomm.com>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,qcm2290-camss
> +
> +  reg:
> +    maxItems: 9
> +
> +  reg-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: vfe0
> +      - const: vfe1
> +      - const: tpg0
> +      - const: tpg1
> +      - const: top
> +
> +  clocks:
> +    maxItems: 15
> +
> +  clock-names:
> +    items:
> +      - const: ahb
> +      - const: axi
> +      - const: top_ahb
> +      - const: csi0
> +      - const: csi1
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy0_timer
> +      - const: csiphy1_timer
> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe0_cphy_rx
> +      - const: vfe1_cphy_rx
> +      - const: camnoc_nrt_axi
> +      - const: camnoc_rt_axi
> +
> +  interrupts:
> +    maxItems: 8
> +
> +  interrupt-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: vfe0
> +      - const: vfe1
> +      - const: tpg0
> +      - const: tpg1
> +
> +  interconnects:
> +    maxItems: 3
> +
> +  interconnect-names:
> +    items:
> +      - const: ahb
> +      - const: hf_mnoc
> +      - const: sf_mnoc
> +
> +  iommus:
> +    maxItems: 4
> +
> +  power-domains:
> +    items:
> +      - description: GDSC CAMSS Block, Global Distributed Switch Controller.
> +
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a 1.2V regulator supply to CSI PHYs.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to CAMSS refclk pll block.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports.

patternProperties would be nicer here

https://gitlab.freedesktop.org/linux-media/media-committers/-/blob/next/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml?ref_type=heads#L129

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - interconnects
> +  - interconnect-names
> +  - iommus
> +  - power-domains
> +  - vdda-phy-supply
> +  - vdda-pll-supply

Similarly we are looking for the voltage level on these rails as part of 
the name.

https://gitlab.freedesktop.org/linux-media/media-committers/-/blob/next/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml?ref_type=heads#L173

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
> +    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
> +    #include <dt-bindings/interconnect/qcom,qcm2290.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        camss: camss@5c6e000 {
> +            compatible = "qcom,qcm2290-camss";
> +
> +            reg = <0 0x5c6e000 0 0x1000>,
> +                  <0 0x5c75000 0 0x1000>,
> +                  <0 0x5c52000 0 0x1000>,
> +                  <0 0x5c53000 0 0x1000>,
> +                  <0 0x5c6f000 0 0x4000>,
> +                  <0 0x5c76000 0 0x4000>,
> +                  <0 0x5c66000 0 0x400>,
> +                  <0 0x5c68000 0 0x400>,
> +                  <0 0x5c11000 0 0x1000>;

Recent guidance is for <0x0 0x5c11000 0x0 0x1000> i.e. using hex for 
both values instead of mixing base 10 and base 16.

> +            reg-names = "csid0",
> +                        "csid1",
> +                        "csiphy0",
> +                        "csiphy1",
> +                        "vfe0",
> +                        "vfe1",
> +                        "tpg0",
> +                        "tpg1",

csitpg0,
csitpg1

alphabetise the regs by name too please

https://gitlab.freedesktop.org/linux-media/media-committers/-/blob/next/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml?ref_type=heads#L213

https://gitlab.freedesktop.org/linux-media/media-committers/-/blob/next/Documentation/devicetree/bindings/media/qcom,sm8550-camss.yaml?ref_type=heads

> +                        "top";
> +
> +            clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +                     <&gcc GCC_CAMSS_AXI_CLK>,
> +                     <&gcc GCC_CAMSS_TOP_AHB_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_0_CSID_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_1_CSID_CLK>,
> +                     <&gcc GCC_CAMSS_CPHY_0_CLK>,
> +                     <&gcc GCC_CAMSS_CPHY_1_CLK>,
> +                     <&gcc GCC_CAMSS_CSI0PHYTIMER_CLK>,
> +                     <&gcc GCC_CAMSS_CSI1PHYTIMER_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_0_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_1_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_0_CPHY_RX_CLK>,
> +                     <&gcc GCC_CAMSS_TFE_1_CPHY_RX_CLK>,
> +                     <&gcc GCC_CAMSS_NRT_AXI_CLK>,
> +                     <&gcc GCC_CAMSS_RT_AXI_CLK>;
> +            clock-names = "ahb",
> +                          "axi",
> +                          "top_ahb",
> +                          "csi0",
> +                          "csi1",
> +                          "csiphy0",
> +                          "csiphy1",
> +                          "csiphy0_timer",
> +                          "csiphy1_timer",
> +                          "vfe0",
> +                          "vfe1",
> +                          "vfe0_cphy_rx",
> +                          "vfe1_cphy_rx",
> +                          "camnoc_nrt_axi",
> +                          "camnoc_rt_axi";

here too

> +
> +            interrupts = <GIC_SPI 210 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 212 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 211 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 213 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 309 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 310 IRQ_TYPE_EDGE_RISING>;
> +            interrupt-names = "csid0",
> +                              "csid1",
> +                              "csiphy0",
> +                              "csiphy1",
> +                              "vfe0",
> +                              "vfe1",
> +                              "tpg0",
> +                              "tpg1";
> +
> +            interconnects = <&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
> +                             &config_noc SLAVE_CAMERA_CFG RPM_ACTIVE_TAG>,
> +                            <&mmrt_virt MASTER_CAMNOC_HF RPM_ALWAYS_TAG
> +                             &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> +                            <&mmnrt_virt MASTER_CAMNOC_SF RPM_ALWAYS_TAG
> +                             &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
> +            interconnect-names = "ahb",
> +                                 "hf_mnoc",
> +                                 "sf_mnoc";
> +
> +            iommus = <&apps_smmu 0x400 0x0>,
> +                     <&apps_smmu 0x800 0x0>,
> +                     <&apps_smmu 0x820 0x0>,
> +                     <&apps_smmu 0x840 0x0>;
> +
> +            power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
> +
> +            vdda-phy-supply = <&pm4125_l5>;
> +            vdda-pll-supply = <&pm4125_l13>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +            };
> +        };
> +    };
---bod

