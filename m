Return-Path: <devicetree+bounces-100949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 473AF96F8E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 17:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 476D11C23D8E
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 15:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B2F1D3652;
	Fri,  6 Sep 2024 15:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="quFOWuR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F1C1D3648
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 15:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725638189; cv=none; b=Ck+OZonpzRJqvnVh0PUCMloNhSgH0Ri24o02121ikdrqHq/OEdv9m57njbOk5jaODzLe3hKZrWH898i/+K40gdyMquzPyRltafDYsKK6Sg5mMiTkyEq9lRFFnkldb9kfrIw4KEK7j5H6QLVuo48a7HnUAZzUZZFNDrT/RcErdQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725638189; c=relaxed/simple;
	bh=4cg8BWc+R6nIy9hv+UKxy2CN9dth+ZpDiVs7xRNz7MQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EUUVaQWDO5+G4mG8EUAfru3H+CVQaCognoQ21Pi7HSRpEimQZ2EIO8NgjUdzNV/VUTLw1IEREka8ZCuI8/nn0HyZwBtofovKXZ0yGq8/2zTyrZEcCPM7BCg79fF4F65t6NquxiSqV1SGc+g5O7ltGOsByLG+vKMMwJNBoIgBPeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=quFOWuR9; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53569e624a9so367930e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 08:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725638185; x=1726242985; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dWoWkKXcwQY4B/OesPC+cf/kmi3mDig7H7BN4yK6Ob0=;
        b=quFOWuR96oVuiGT6QPl5Fr1IccZaJkv+FM70KKebhGP3PQLR375amyVUIiWwbPI4vz
         inxECC2M1YPFf5nJkg2xprsjfEZpcSGSi0NK7rxrjhgxrGXZeOyvrVxf9GyIJBszDsFx
         Ks5EUrKMi8Me8DT2P2rJbwaODj1FZjJH8pRcwbe4iXuB5DFGgcRUFqOlM+uHeQzDu0mF
         YAg4rK5bDWRgaEs061eVfi8I8HQosWZGHa7yHj28WaKS6KR0q/KTlPYFuZ+xpaFQIVKE
         C6twBFTQZy/YVH7/hMzwTGN/Mgmh6uHk2NEnZQLMtUhDhs+hObHkNOdG6SZ60ySsK4C+
         xAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725638185; x=1726242985;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dWoWkKXcwQY4B/OesPC+cf/kmi3mDig7H7BN4yK6Ob0=;
        b=J3A9iMLK/jle4NQNGhqjSmeMkACXe++ttGkzmDskHNae1Ob0eIzQLtUYHnivjh5KSi
         1qTZ4I29x3kozCTvkqUf7NJ6xBKPwg6ZsVrKsIImwN5kQMoIsbGPKuM+PsEMlz5OxCXo
         p5kV0ZYD6QFS36vcxl3yw7IMbEcv1fmtacbTcJ7B4dS18h1ZvR/myE19fDs56rUpxHrO
         a7l1RmLlQIl6bL+3duwu6MCwBFHjTqKf33m//BDRs0EStslwELWEaxWl4wWNQCjw1sZs
         6tybFxa0yEVMqNI6RwS/imvMVcEba6S6kMUaPdi/Ws2LqgObeWUQSQx/i7Da0QhSBL0H
         nuRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuDBB0KYJGSRV66Mthr6NdG67UMP+JcAR5qhYfd9Wa1fMLw+lmk0PwEviVvymlCSUyCmqhVM0JZ5Xi@vger.kernel.org
X-Gm-Message-State: AOJu0YypLYN7wHWSZbzNg601IHqwy7OBs9OqJJ9MLkmO7l9FfnPoIEJ0
	WQJ32oImYOcq/lCmNSjqzccrKXDaDcvA+70kmDMT1E3b7i1MDNMcS/tPa/bULwE=
X-Google-Smtp-Source: AGHT+IHh37EyeaRel9WOT+5cYxUN6vbPMzhO5ZvdhSAMl9nsZgy9x61BK3F6TLnHqCmkvobrxQ92oQ==
X-Received: by 2002:a05:6512:acf:b0:52c:ce28:82bf with SMTP id 2adb3069b0e04-536587b3f3amr1186678e87.5.1725638184796;
        Fri, 06 Sep 2024 08:56:24 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53569471e85sm679367e87.139.2024.09.06.08.56.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 08:56:24 -0700 (PDT)
Message-ID: <9ed92660-5f42-4a1a-9261-b8800133972a@linaro.org>
Date: Fri, 6 Sep 2024 18:56:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-8-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240812144131.369378-8-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng,

On 8/12/24 17:41, Depeng Shao wrote:
> Add bindings for qcom,sm8550-camss in order to support the camera
> subsystem for sm8550.
> 
> Co-developed-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>

there are a few more things, which I noticed.

> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        camss: camss@ace4000 {
> +            compatible = "qcom,sm8550-camss";
> +
> +            reg = <0 0x0acb7000 0 0xd00>,
> +                  <0 0x0acb9000 0 0xd00>,
> +                  <0 0x0acbb000 0 0xd00>,
> +                  <0 0x0acca000 0 0xa00>,
> +                  <0 0x0acce000 0 0xa00>,
> +                  <0 0x0acb6000 0 0x1000>,
> +                  <0 0x0ace4000 0 0x2000>,
> +                  <0 0x0ace6000 0 0x2000>,
> +                  <0 0x0ace8000 0 0x2000>,
> +                  <0 0x0acea000 0 0x2000>,
> +                  <0 0x0acec000 0 0x2000>,
> +                  <0 0x0acee000 0 0x2000>,
> +                  <0 0x0acf0000 0 0x2000>,
> +                  <0 0x0acf2000 0 0x2000>,
> +                  <0 0x0ac62000 0 0xf000>,
> +                  <0 0x0ac71000 0 0xf000>,
> +                  <0 0x0ac80000 0 0xf000>,
> +                  <0 0x0accb000 0 0x2800>,
> +                  <0 0x0accf000 0 0x2800>;

Please sort the list above in numerical order, this will change positions
of "vfe_lite0", "vfe_lite1" etc.

Another note, since it's not possible to map less than a page, so I believe
it might make sense to align all sizes to 0x1000.

> +            reg-names = "csid0",
> +                        "csid1",
> +                        "csid2",
> +                        "csid_lite0",
> +                        "csid_lite1",
> +                        "csid_top",
> +                        "csiphy0",
> +                        "csiphy1",
> +                        "csiphy2",
> +                        "csiphy3",
> +                        "csiphy4",
> +                        "csiphy5",
> +                        "csiphy6",
> +                        "csiphy7",
> +                        "vfe0",
> +                        "vfe1",
> +                        "vfe2",
> +                        "vfe_lite0",
> +                        "vfe_lite1";
> +
> +            clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +                     <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                     <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_0_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_1_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_2_CLK>,
> +                     <&camcc CAM_CC_CSID_CLK>,
> +                     <&camcc CAM_CC_CSIPHY0_CLK>,
> +                     <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY1_CLK>,
> +                     <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY2_CLK>,
> +                     <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY3_CLK>,
> +                     <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY4_CLK>,
> +                     <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY5_CLK>,
> +                     <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY6_CLK>,
> +                     <&camcc CAM_CC_CSI6PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSIPHY7_CLK>,
> +                     <&camcc CAM_CC_CSI7PHYTIMER_CLK>,
> +                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_0_CLK>,
> +                     <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_1_CLK>,
> +                     <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_2_CLK>,
> +                     <&camcc CAM_CC_IFE_2_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
> +                     <&gcc GCC_CAMERA_HF_AXI_CLK>;

Could you please put the &gcc provided clock as the first one in the list?

> +
> +            clock-names = "camnoc_axi",
> +                          "cpas_ahb",
> +                          "cpas_fast_ahb_clk",
> +                          "cpas_ife_lite",
> +                          "cpas_vfe0",
> +                          "cpas_vfe1",
> +                          "cpas_vfe2",
> +                          "csid",
> +                          "csiphy0",
> +                          "csiphy0_timer",
> +                          "csiphy1",
> +                          "csiphy1_timer",
> +                          "csiphy2",
> +                          "csiphy2_timer",
> +                          "csiphy3",
> +                          "csiphy3_timer",
> +                          "csiphy4",
> +                          "csiphy4_timer",
> +                          "csiphy5",
> +                          "csiphy5_timer",
> +                          "csiphy6",
> +                          "csiphy6_timer",
> +                          "csiphy7",
> +                          "csiphy7_timer",
> +                          "csiphy_rx",
> +                          "vfe0",
> +                          "vfe0_fast_ahb",
> +                          "vfe1",
> +                          "vfe1_fast_ahb",
> +                          "vfe2",
> +                          "vfe2_fast_ahb",
> +                          "vfe_lite",
> +                          "vfe_lite_ahb",
> +                          "vfe_lite_cphy_rx",
> +                          "vfe_lite_csid",
> +                          "gcc_axi_hf";
> +
> +            interconnects = <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_CAMERA_CFG 0>,
> +                            <&mmss_noc MASTER_CAMNOC_HF 0 &mc_virt SLAVE_EBI1 0>,
> +                            <&mmss_noc MASTER_CAMNOC_ICP 0 &mc_virt SLAVE_EBI1 0>,
> +                            <&mmss_noc MASTER_CAMNOC_SF 0 &mc_virt SLAVE_EBI1 0>;
> +            interconnect-names = "ahb",
> +                                 "hf_0_mnoc",
> +                                 "icp_mnoc",
> +                                 "sf_0_mnoc";

Just a note for myself, interconnect names lost "cam_" prefix, and it should
be fine.

> +
> +            interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 431 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 277 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 688 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 606 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>;
> +
> +            interrupt-names = "csid0",
> +                              "csid1",
> +                              "csid2",
> +                              "csid_lite0",
> +                              "csid_lite1",
> +                              "csiphy0",
> +                              "csiphy1",
> +                              "csiphy2",
> +                              "csiphy3",
> +                              "csiphy4",
> +                              "csiphy5",
> +                              "csiphy6",
> +                              "csiphy7",
> +                              "vfe0",
> +                              "vfe1",
> +                              "vfe2",
> +                              "vfe_lite0",
> +                              "vfe_lite1";
> +
> +            iommus = <&apps_smmu 0x800 0x20>;
> +
> +            power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
> +                            <&camcc CAM_CC_IFE_1_GDSC>,
> +                            <&camcc CAM_CC_IFE_2_GDSC>,
> +                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +            power-domain-names = "ife0",
> +                                 "ife1",
> +                                 "ife2",
> +                                 "top";
> +
> +            vdda-phy-supply = <&vreg_l1e_0p88>;
> +            vdda-pll-supply = <&vreg_l3e_1p2>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;

In case of a single child node #address-cells/#size-cells could be omitted,
if I'm not mistaken about it...

> +                port@0 {
> +                    reg = <0>;
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;

Same as above.

> +
> +                    csiphy_ep0: endpoint@0 {
> +                        reg = <0>;
> +                        clock-lanes = <7>;
> +                        data-lanes = <0 1>;
> +                        remote-endpoint = <&sensor_ep>;
> +                    };
> +                };
> +            };
> +        };
> +    };

--
Best wishes,
Vladimir

