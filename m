Return-Path: <devicetree+bounces-149867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9347BA40A5C
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7867B18914BC
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63196204694;
	Sat, 22 Feb 2025 16:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UyyOOHxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94EB1487ED
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 16:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740243227; cv=none; b=NW5LcmIkIqCNpSWr3jqwtEFt90JZ6QksWQYG3FzfuxZxf3Eun73F56bYlYr35yyOBZKJHIjAS55YGokgFtEeoGhX43Cv+1DP80nx19zIR5P3gMYxI84DiXrS1p0Pg88FTg5r8dCMs1GJSAAbWqbC1nwSBS6Z4xqzYNTIg0odBDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740243227; c=relaxed/simple;
	bh=oBv+tlg9GiYsoONeeRdW7AslFMIO5QJEVmpgDjwJmc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dA45C8t3FIGrm5IcXbXYu3VZAYSHbaexbMLdoObG+OCYhK/z8feTqpHIT27G3L6PnA9tCxtu6jg/CEMH79wksL6dC3TRQCtbdWsXCcK5HOJlR2pF8af8/NRE7kYt6PtNklV+9nK7IZ5zL78Cw4Jljv2Upo+2LWF1opVWgE3BqQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UyyOOHxz; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2211cd4463cso61858295ad.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 08:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740243225; x=1740848025; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8ivNrLGUA+/d37ElkamWeFCb8ka1YsgzGOwciXXog6g=;
        b=UyyOOHxz3PA+F2yMtF5ehomgFVZVva5SWra1KnHuI+pzH2HaOwjWAjMyaQluWSvP43
         /kbxb3xTZWaaIh+tFZnjj0vQfHTCgDY8Co+gXcky4H7jiNvIKJW53gXku+i3Bd9MPYv7
         3WpueyvIggC9y4g+LPHPjNVbC9BxqSlJZgBAn5RbtI0JBqH7fT3x5qLUNBWGgNbWTW5w
         J0nrE0u7NYInfcy5bRzTiEI0krtD9hVzQ67AD//JQqFOaiICARfTnxwaOQO8+mJQvadB
         kGUDBtZjvFXy9GKBFMyust7Iv8/n9gqqB3LOOhamFb7dzV/19Yw8ZvGjGQSXNDMkRvbJ
         gxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740243225; x=1740848025;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ivNrLGUA+/d37ElkamWeFCb8ka1YsgzGOwciXXog6g=;
        b=w4yw38B8Hs6Uf4+5rn9ojo7N/6GBbno41tTjP3rnIz1xqguDRVdF7NRQAs3C4ylDUZ
         XByX1mLw/LjIsrdKY0VwWxHy8bQzNEYLZ+7ck6qsvz8QvaPNiUXfnoIORMU7KmVOpJLw
         ldB7qoSsUOheXpSs47P+KKNtsgKphcqozpFr5Sua/8WaP14yvodG9t8shevDG742RbvQ
         SLZC8cavO0QodEMpCwIMCqniw0Rb7VXDWp2EUqw7Q7vtSogabnHIurNOFdtt0fIW18zi
         rr/YNJ3E/vAXCO8phsbLroaJ14PYvN2N8VwpfqFq0eqQ1StkRk0vreRNX6s9ue3tlWST
         vQjA==
X-Forwarded-Encrypted: i=1; AJvYcCXGhhLDlynnbcjjoHAMqMO2zK4zctsUUoyr/AqYD64Okw9hBWK0Xi7wIMJrvNR4uz22Uz0gG8fKsxlZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwpRbRb7a2gNCai2Uy75QLTcuN26JNq5Nj5YQ6ki9PlGPIIWeVa
	mLNJ6k6oLQxsm0OW9sUipYNsj9NeXvHOm8KmG5An1jk3NZI+XQ5gXN0IzssIAQ==
X-Gm-Gg: ASbGnctiBD7uUp4CRUqeU5c8w6dYweZcxC22Dw2MRZ2qhfC4dtpEn8UwTNKdMwQAlgd
	cbpX0IRLtrQSRfLKFAJ70vrTNIdOBr97H0G+2GeMOB1+he79y53oZSKzfmXxZBDqDjsKyBUGAA1
	ieJpMBhYk/QEEN8djLz0S2Xi36fUPuHvCwui4ZsCrmO3Zjx854ie8i+c6zz5hgUJnpCVwEIUEHq
	lQn9kGzFrOYj33rpI4tCxRCgWM2CqRXLq3q4Z+EpI4hY7calhxBG9jMbzBJz3PIpd4GJntzDaHU
	j/Qi5o98hMmTSDR1vgQ0pKwCkno6RrXZWGuHtw==
X-Google-Smtp-Source: AGHT+IE7FLZPo+Ma+N1F3NmGoxoA/bCHud1Y21Z8/QxeoATe5u21D1vdPBAkZwGc/+Tc08xFw55W9g==
X-Received: by 2002:a17:903:41c8:b0:21c:fb6:7c3c with SMTP id d9443c01a7336-2219ff56500mr123579655ad.17.1740243224960;
        Sat, 22 Feb 2025 08:53:44 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d556d6d2sm151661135ad.177.2025.02.22.08.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:53:44 -0800 (PST)
Date: Sat, 22 Feb 2025 22:23:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: sm8450: add PCIe EP device nodes
Message-ID: <20250222165338.oox3d63ven2kokez@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-8-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221-sar2130p-pci-v3-8-61a0fdfb75b4@linaro.org>

On Fri, Feb 21, 2025 at 05:52:06PM +0200, Dmitry Baryshkov wrote:
> On the Qualcomm SM8450 platform the second PCIe host can be used
> either as an RC or as an EP device. Add device node for the PCIe EP.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 62 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9c809fc5fa45a98ff5441a0b6809931588897243..3783930d63a73158addc44d00d9da2efa0986a25 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2262,6 +2262,68 @@ pcie@0 {
>  			};
>  		};
>  
> +		pcie1_ep: pcie-ep@1c08000 {
> +			compatible = "qcom,sm8450-pcie-ep";
> +			reg = <0x0 0x01c08000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf1d>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x1000>,
> +			      <0x0 0x40200000 0x0 0x1000000>,
> +			      <0x0 0x01c0b000 0x0 0x1000>,
> +			      <0x0 0x40002000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "addr_space",
> +				    "mmio",
> +				    "dma";
> +
> +			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ref",
> +				      "ddrss_sf_tbu",
> +				      "aggre_noc_axi";
> +
> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global",
> +					  "doorbell",
> +					  "dma";
> +
> +			interconnects = <&pcie_noc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "pcie-mem",
> +					     "cpu-pcie";
> +
> +			iommus = <&apps_smmu 0x1c80 0x7f>;
> +			resets = <&gcc GCC_PCIE_1_BCR>;
> +			reset-names = "core";
> +			power-domains = <&gcc PCIE_1_GDSC>;
> +			phys = <&pcie1_phy>;
> +			phy-names = "pciephy";
> +			num-lanes = <2>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pcie1_default_state>;
> +
> +			status = "disabled";
> +		};
> +
>  		pcie1_phy: phy@1c0e000 {
>  			compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy";
>  			reg = <0 0x01c0e000 0 0x2000>;
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்

