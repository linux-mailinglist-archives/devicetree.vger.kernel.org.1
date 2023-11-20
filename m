Return-Path: <devicetree+bounces-17178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D567F1775
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7968C1F24F88
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351581D55A;
	Mon, 20 Nov 2023 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="E7Py74Pv"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A046C8
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700494605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i/pq20FpKEDkMWF6mczv+TQIrPVshe9FhaHWZG9axRE=;
	b=E7Py74Pv7AtMlpFmcsPm1pHkIKkmEmIgi2Gyb+wWa1BdH8pdTzE243UbZTuJIxybX3Gljt
	XQMeeHPHrg5hUiIm2zDntiKb/geK3jcvXbTWTLFgCz5zoVt/fyw3ktv3Vu1PUDfRFlSlCH
	NFVmfTMBIOj2tP5VQYD43nUT2kyIipg=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-N-SI6MnaMKGfZNfG26c9ig-1; Mon, 20 Nov 2023 10:36:31 -0500
X-MC-Unique: N-SI6MnaMKGfZNfG26c9ig-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-779f645c74cso533750385a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:36:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700494590; x=1701099390;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/pq20FpKEDkMWF6mczv+TQIrPVshe9FhaHWZG9axRE=;
        b=dKMNXZORx0HDVSGLGdyZukNdqJ3FGELCTc2uSs8qBB+0HZTOT/8VPPsaP3R8J+ptk5
         RpLRw2qB9wk0QhcDqZXE9XwhlWkvoNrvw5MFaxzVZmQ+347klZuXeKgqBEvleoOyB9cF
         XtuhYS3RHwntRBs5x2uhKQxVzxi0nn27iDqIFsWRJftbK73PKfpV2xfTQAWwaqm0eO2w
         kcdTKEecZf4TFNtyb9fRzwODMzcI52wgrOW4j+7VTqTV6ACy+I1VpevX5O36vDvIzgko
         bTdP0bAZuMKcfuGq8dfQe8JFF5cvlc+f+JgYVdv7bi9p/RX4rYhOzZzhH0P5NHyjHuyS
         oXLw==
X-Gm-Message-State: AOJu0Yy/7MmrN4uuxuR2lVAmo5OIg1rAbM0XC7BhKiFDs7BVA9DFp3vF
	PKzYrsmRNpuVAM5/u8Geaj7caM4oBDfw7unsmC3146fEBPau5L6cJ85RW/IUYe+OBiQClTjr1TB
	LbNUSQh+PkEI/XQao4koUBA==
X-Received: by 2002:ae9:f007:0:b0:779:cf09:2854 with SMTP id l7-20020ae9f007000000b00779cf092854mr7246798qkg.41.1700494590693;
        Mon, 20 Nov 2023 07:36:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJU92akWFbNdoe8uj5JJanhTdOw2Ezmo4/fkRHH8F2zU4ZoIjdJM6k0l4TH5jql8hCAuabSw==
X-Received: by 2002:ae9:f007:0:b0:779:cf09:2854 with SMTP id l7-20020ae9f007000000b00779cf092854mr7246762qkg.41.1700494590351;
        Mon, 20 Nov 2023 07:36:30 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id dt17-20020a05620a479100b0076c96e571f3sm2749361qkb.26.2023.11.20.07.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 07:36:30 -0800 (PST)
Date: Mon, 20 Nov 2023 09:36:27 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Georgi Djakov <quic_c_gdjako@quicinc.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_cgoldswo@quicinc.com, quic_sukadev@quicinc.com, 
	quic_pdaly@quicinc.com, quic_sudaraja@quicinc.com, djakov@kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: iommu: Add Translation Buffer Unit
 bindings
Message-ID: <4q56egm4g6df4wittfddcipsxhvqkffa6ytd7dz4f55godax6p@3gbobpu2mpzx>
References: <20231118042730.2799-1-quic_c_gdjako@quicinc.com>
 <20231118042730.2799-2-quic_c_gdjako@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231118042730.2799-2-quic_c_gdjako@quicinc.com>

On Fri, Nov 17, 2023 at 08:27:25PM -0800, Georgi Djakov wrote:
> The "apps_smmu" on the Qualcomm sdm845 platform is an implementation
> of the SMMU-500, that consists of a single TCU (Translation Control
> Unit) and multiple TBUs (Translation Buffer Units). The TCU is already
> being described in the generic SMMU DT schema. Add also bindings for

nit for if you respin: s/Add also/Add/ or similar :)

> the TBUs to describe their properties and resources that needs to be
> managed in order to operate them.
> 
> In this DT schema, the TBUs are modelled as child devices of the TCU
> and each of them is described with it's register space, clocks, power
> domains, interconnects etc.
> 
> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> ---
>  .../devicetree/bindings/iommu/arm,smmu.yaml   | 25 ++++++
>  .../bindings/iommu/qcom,qsmmuv500-tbu.yaml    | 89 +++++++++++++++++++
>  2 files changed, 114 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index aa9e1c0895a5..f7f89be5f7a3 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -231,6 +231,18 @@ properties:
>        enabled for any given device.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
> +  '#address-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#size-cells':
> +    enum: [ 1, 2 ]
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^tbu@[0-9a-f]*":
> +    type: object
> +
>  required:
>    - compatible
>    - reg
> @@ -453,6 +465,19 @@ allOf:
>              - description: Voter clock required for HLOS SMMU access
>              - description: Interface clock required for register access
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,smmu-500
> +    then:
> +      patternProperties:
> +        "^tbu@[0-9a-f]*":
> +          $ref: qcom,qsmmuv500-tbu.yaml
> +          unevaluatedProperties: false
> +      properties:
> +        ranges: true
> +
>    # Disallow clocks for all other platforms with specific compatibles
>    - if:
>        properties:
> diff --git a/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml b/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml
> new file mode 100644
> index 000000000000..4dc9d0ca33c9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iommu/qcom,qsmmuv500-tbu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm TBU (Translation Buffer Unit)
> +
> +maintainers:
> +  - Georgi Djakov <quic_c_gdjako@quicinc.com>
> +
> +description:
> +  The Qualcomm SMMU500 implementation consists of TCU and TBU. The TBU contains
> +  a Translation Lookaside Buffer (TLB) that caches page tables. TBUs provides
> +  debug features to trace and trigger debug transactions. There are multiple TBU
> +  instances distributes with each client core.
> +
> +properties:
> +  $nodename:
> +    pattern: "^tbu@[0-9a-f]+$"
> +
> +  compatible:
> +    const: qcom,qsmmuv500-tbu
> +
> +  reg:
> +    items:
> +      - description: Address and size of the TBU's register space.
> +
> +  reg-names:
> +    items:
> +      - const: base
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  qcom,stream-id-range:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: Stream ID range (address and size) that is assigned by the TBU
> +    items:
> +      minItems: 2
> +      maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interconnects
> +  - qcom,stream-id-range
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interconnect/qcom,sdm845.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +    apps_smmu: iommu@15000000 {
> +        compatible = "qcom,sdm845-smmu-500", "arm,mmu-500";
> +        reg = <0x15000000 0x80000>;
> +        ranges = <0 0 0 0 0xffffffff>;
> +        #iommu-cells = <2>;
> +        #global-interrupts = <1>;
> +        interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        anoc_1_pcie_tbu: tbu@150e1000 {
> +            compatible = "qcom,qsmmuv500-tbu";
> +            reg = <0x0 0x150e1000 0x0 0x1000>;
> +            reg-names = "base";
> +            clocks = <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>;
> +            interconnects = <&system_noc MASTER_GNOC_SNOC QCOM_ICC_TAG_ACTIVE_ONLY
> +                             &config_noc SLAVE_IMEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +            power-domains = <&gcc HLOS1_VOTE_AGGRE_NOC_MMU_PCIE_TBU_GDSC>;
> +            qcom,stream-id-range = <0x1c00 0x400>;
> +        };
> +    };
> +
> +...
> 


