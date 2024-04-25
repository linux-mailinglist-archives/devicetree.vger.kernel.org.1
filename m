Return-Path: <devicetree+bounces-62715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7478B2298
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 15:26:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD8B81F27999
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 13:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F206149C6D;
	Thu, 25 Apr 2024 13:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vo9XqYqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FA3149C43
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 13:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714051421; cv=none; b=KneDbO2cgB/a0uVmgJhHMrp6aLFkwdRQ7qcI63sV6+gTtjuqWRUUJjygs6p0zbTN5tAd+W4pwkUoYL3yKezkgl9vtHPnIlFjsPLM6fxbxLkzTGhxv0/M+dFLb6qti+q/QiWfQLWPS67rL3yfMCfDiMDTSxyWlYOVJ5P5wojjCc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714051421; c=relaxed/simple;
	bh=2BTXCw+6vC31dUTeKdIMEsyHikhtPpKJtrh+xSZfBw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CzOtdPpt23KMSVVweIUH731u7v0RWaU1Kr9hkiCm22gntKSwsGxmeP9D/ld9g2RfjNaAfy6qzDe6gIlB7qHVGVCpqQwBqUWhLzp32k0ZUhhtZueuyBYEKUBE3OqHCOPoBU4ei7DeQlWBZUG1deskK8HYJxwriTlk2P3YsUe5o3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vo9XqYqo; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1e3e84a302eso7434695ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 06:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714051419; x=1714656219; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4rnjNjenfTwjulfe8NiDD/HuQ2B2O5By8Tzxa2258wk=;
        b=Vo9XqYqoAROOZqvz61KFpl+urz4JiLx956pPWW4FPoxDEG4H3DvcHq0UAnfwhSNEtd
         AyXrI1brYqlRXtBFRWHwdAcxRL8IqfIX1s1iWk1WYzs1e9d5gkC0SWtRdlPXMuG0sIIT
         FiaY8+zsSmJeBg24kNUE7cj2nDFp8b9HIEiE7cDGrDzp6C/OgM1Ps0BHu85MMQOIWcv4
         oHTQrP/goYXTHj8xNc6hWZtn1ZNL8nwOuzoO0UAbYVMxhXF9zZ1Vm+egZSMxSt9+POwp
         mQNFoOcYwsmJlNVaECahwu05OpzI9x1GJbsLtdX2hw3IPHtpzz738DPHKfjtdmrHVM2K
         ojyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714051419; x=1714656219;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4rnjNjenfTwjulfe8NiDD/HuQ2B2O5By8Tzxa2258wk=;
        b=cnVAjBM1n1fD3iNYQEApAz/dKY4rOQP6xXeuaaeBp2A8B6eZTMppETYlvhxqBKZx6q
         Qi8xKZlev9q7FL+LyKG1LhnVUPq68fDDjtTrOMI4cmfominNoRossBq6oyP/S6H7gGsH
         5ontqHAoWeQgmqh69Yo63Xot0uJqsgL4TIKrrswfwrVUYvlUBzXEDL6q/vTT2fIbx4dx
         /ysdnK3cID2nGdX5+57TnoNsz0YTI3Ckox4vIkPARWsrJcpPyi5vqDzPTxRpNQMyeBN+
         fxZI5gcDpLa4o82U1KTwUUXQ5vXqiy0iYSRM3cRzBol+Ql6mpmRH9TNra4tIYU9fnmlE
         ZWrg==
X-Forwarded-Encrypted: i=1; AJvYcCV5ouZ29X+QJni6oHJxeZYntrxs7/kfN4ywFdzPI9cqSfhIouBlS8DaiK1zhIgKSYJpoELfQIsEraFKeToQgf20DITWm4QJe2vjtA==
X-Gm-Message-State: AOJu0YzB5SaxYuP0biSs8m/3LCFuQgyHoG+a55gkGCaTK5NvDyIZnUnV
	Tkc7VSDEr8BV7Pk+paWcZyTdkYLyYb9N3D4ql73K3g1EDauRqUm2lft52cTHVQ==
X-Google-Smtp-Source: AGHT+IGQgE4up32nxXIDaz9S5N6qgK3mFXrWlujwJLi1C9Z9wCvM86apKS3py4JfB6t9GkbA4djMvQ==
X-Received: by 2002:a17:902:edd0:b0:1ea:2753:2b9f with SMTP id q16-20020a170902edd000b001ea27532b9fmr5225787plk.20.1714051419049;
        Thu, 25 Apr 2024 06:23:39 -0700 (PDT)
Received: from thinkpad ([120.60.75.221])
        by smtp.gmail.com with ESMTPSA id d8-20020a170902b70800b001e4fdcf67desm13749895pls.299.2024.04.25.06.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 06:23:38 -0700 (PDT)
Date: Thu, 25 Apr 2024 18:53:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, johan+linaro@kernel.org,
	bmasney@redhat.com, djakov@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	quic_parass@quicinc.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH v11 4/6] arm64: dts: qcom: sm8450: Add OPP table support
 to PCIe
Message-ID: <20240425132330.GD3449@thinkpad>
References: <20240423-opp_support-v11-0-15fdd40b0f95@quicinc.com>
 <20240423-opp_support-v11-4-15fdd40b0f95@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240423-opp_support-v11-4-15fdd40b0f95@quicinc.com>

On Tue, Apr 23, 2024 at 02:36:58PM +0530, Krishna chaitanya chundru wrote:
> PCIe host controller driver needs to choose the appropriate performance
> state of RPMh power domain and interconnect bandwidth based on the PCIe
> data rate.
> 
> Hence, add the OPP table support to specify RPMh performance states and
> interconnect peak bandwidth.
> 
> It should be noted that the different link configurations may share the
> same aggregate bandwidth, e.g., a 2.5 GT/s x2 link and a 5.0 GT/s x1
> link have the same bandwidth and share the same OPP entry.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 77 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 615296e13c43..2e047aba220b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -1855,7 +1855,35 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie0_default_state>;
>  
> +			operating-points-v2 = <&pcie0_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie0_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 3 x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +			};
> +
>  		};
>  
>  		pcie0_phy: phy@1c06000 {
> @@ -1982,7 +2010,56 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie1_default_state>;
>  
> +			operating-points-v2 = <&pcie1_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie1_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 2 x2 */
> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 3 x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +
> +				/* GEN 3 x2 and GEN 4 x1 */
> +				opp-16000000 {
> +					opp-hz = /bits/ 64 <16000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <1969000 1>;
> +				};
> +
> +				/* GEN 4 x2 */
> +				opp-32000000 {
> +					opp-hz = /bits/ 64 <32000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <3938000 1>;
> +				};
> +			};
> +
>  		};
>  
>  		pcie1_phy: phy@1c0e000 {
> 
> -- 
> 2.42.0
> 

-- 
மணிவண்ணன் சதாசிவம்

