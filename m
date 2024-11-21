Return-Path: <devicetree+bounces-123550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF7B9D5131
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D800F1F25113
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1471B1A3BDE;
	Thu, 21 Nov 2024 17:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L63LVHjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0D130E27
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 17:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208452; cv=none; b=O3xM07Ukz85bxHx9JC6YjEDSUviwffgcPzVoMxqWg7yt+ZKH7hxKHWDKUHyr/MDz0jQNC0zOFhf8sCsqTxvWL/xx9H6LmuY8TweJE/3hAef2u8qmMDZplnEngCVsFEbQ8+G/39n0hUXkY2maamWO5tUAPTvcOx8uHBAHw+aSUkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208452; c=relaxed/simple;
	bh=jzTU/z32x3hB0JfDrm8MmAyZ6G+T5pKSWXdt0ly+8jY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DiXhsA+wJxbNM7u4ChaqJiPiRRgvVv6238Oe+Yn6A+/kF6D0i+bg1X8qVVCJQbbuzg+BqEFP7k4sO+IzBwjB6bJPPQJwvfuEJ7FuNHUqJQyenWBeJDqRDA1LCdxIPbNYC8QBe16shJG3bvDg5Rcj499lBNj5hUah50bTagL+vk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L63LVHjP; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53dd1b4e01cso502907e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732208447; x=1732813247; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tTXid3Zut7ENV6u5lEywLtVroH0vN+GAHGKS1dMMtj0=;
        b=L63LVHjPHU791h+YKXmJCmR5Du5UeMwXxcy3Oangg5fsBdazuhST+klzqEjI4BUd37
         VCKL1hhApSfjju9vUqtvJoS1iNTlGZ8jgWB9c1a0Ki0/MWq/Hk2zgZBoOjHFxEllnr2T
         dleqlmsb4L94QZLXL9nbYYdR7enISgCVPjF7jmsycoItxl5b1vJDWON1Y/XZcB378I2B
         K3S6oH5g/UBWqEH9zlaZ8Vv4RvkvnL9iuU/JwvvjIcCIhiMgbHUMUtUtVkYpuCXKN8/k
         NZply0MBFOg2bljJ2k7piQm4zsba85IzpGCKYcoN9gc+bhLwPw8frLtLd0GWbdSUfxh0
         E0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208447; x=1732813247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTXid3Zut7ENV6u5lEywLtVroH0vN+GAHGKS1dMMtj0=;
        b=TEc5x171SKWmU4PMh5DsqzawhKLHT+vqGMobUeeAGKXBQ2uxCIFAu2YIWW1k+PP4O6
         MwqZrDHY6BNbxcAWv0+FWp6or7YyCsmOIAaRk8/YGmUzJl7mL9if1wct7cYEEry/bpqf
         rmvVaxaBbFiP6eWE16bl4hGnGqoBEqV/0N9vFh1/oKwYalxRFlXygCtSKqDAqzlahnJP
         WSG70KrIzgeMdigIGHMF1hNWVBc/gQaCsm+hHMCjaEM2qbO7AjfSdQakvRrTJ8TNhNC0
         97YEgMCH1HNDJmauvJ3ElKQGLXNumOItDczaInjHg0u0+rxl9Hm/5QC7GkeAHeePBBi4
         gyCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh+hEhruL+ZQeli/gE9dzsQ5ZEchh33VxpIZTm++SR4y4A13DvymKHfIBkz6G3Db7Hy0pQYNeT1mvn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi37CMCOGvPqKnmBOGGW7MKo6G8BRL5BgBabD97IhR7qNjO4f2
	EcKuGYc1ldT8J1yQPz7/tAVRmYUH/hkr8s1WP5Z+nixHpiJqhHgeqpBagaULL/9MGaWmWSp+kAq
	8
X-Gm-Gg: ASbGnctDrJ/1qzpWvXbhG/4gBTCUqCQqkllvt1/AZl8Ldx0PpNBCphtDbkLG8mBPHUk
	uoMICSWcysbt8sYVVss9NKMEYDZpC3RNeXaS+E5A5eimf+0liXSPOInefNZGd0BRH3YtZ8hIjNY
	ICOdun+8RE8oygpR39ncO9Grl8A9j+oAIvKQC/MRNVPJ826LqJqviFu5cpbu3x3MrCd7WMSEqsj
	h+XA/rEUsAd7A9JrvBd/T6Sh9gj317W8uf95BU8yAHqMbmxGauwUVG/ZQPLedYEZuggxLE8e8Rl
	3LhmwMyEYQugI5/P1PfbByaZfwO3WQ==
X-Google-Smtp-Source: AGHT+IHHxVFXWhGPPdA9ksqKTV8tWCXoqA5zp3uVM/KOFvDJ1Wc2NNeKT6Y5HEDYj4Oq06/7SimNdw==
X-Received: by 2002:a05:6512:32d4:b0:53d:cfe0:5937 with SMTP id 2adb3069b0e04-53dcfe059a2mr1179637e87.13.1732208445738;
        Thu, 21 Nov 2024 09:00:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24455e6sm16713e87.3.2024.11.21.09.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:00:44 -0800 (PST)
Date: Thu, 21 Nov 2024 19:00:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <45cb4thpg6mrtxiwdb333w2jxgtpw426akik2l3f7qv57dvwmm@kma6vrglbrjh>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-3-quic_liuxin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119022050.2995511-3-quic_liuxin@quicinc.com>

On Tue, Nov 19, 2024 at 10:20:49AM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 112 +++++++++++++++++++++++++++
>  1 file changed, 112 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 590beb37f441..ceceafb2e71f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -458,6 +458,118 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>, <0x0 0x01d90000 0x0 0x8000>;

Please consider splitting to have one entry per line (and reg-names
too).

> +			reg-names = "std", "ice";
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +					  "core_clk_ice",

Wrong indentation

Other than that LGTM.


> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk";
> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			operating-points-v2 = <&ufs_opp_table>;
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x300 0x0>;
> +			dma-coherent;
> +
> +			lanes-per-direction = <1>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			#reset-cells = <1>;
> +
> +			status = "disabled";
> +
> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-50000000 {
> +					opp-hz = /bits/ 64 <50000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <37500000>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-100000000 {
> +					opp-hz = /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <150000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-200000000 {
> +					opp-hz = /bits/ 64 <200000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <150000000>,
> +						 /bits/ 64 <300000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +			};
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,qcs615-qmp-ufs-phy", "qcom,sm6115-qmp-ufs-phy";
> +			reg = <0x0 0x01d87000 0x0 0xe00>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

