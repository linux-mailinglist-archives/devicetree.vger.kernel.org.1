Return-Path: <devicetree+bounces-126141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6599E0591
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E255828A7CC
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D3A20CCF4;
	Mon,  2 Dec 2024 14:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iFUMtdVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F3B20D4E4
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150709; cv=none; b=djodVm/7Wu45EpftyO0uC0DZifR/n+1C0IXW7ZmIOZOBZ1qFQm/CFVCipf5uM0LVAtyliTU9wCelndKB5pNicw1cjKwQf6G+8PLqhmjiC4jQUVo8G2wHti4C8/YuZU17tTxzz7efjZb8NpcWdZWPbBYoi4JTXdwVK6wDprqv+Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150709; c=relaxed/simple;
	bh=LAR2OPaTHuw75CmRdL3urd56d1GQCR1zzyVJwcom4AE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=afSgYsp1l7W0TBjj5QtQGAGwTU7FUgwFH5TYqWOz2/l+DWAQv8aH4BHtWPyTE71IckYTXVI6UitriQ3TQx17q1a5j8WJGaIE3/4+TWhM2FkqFcsMOR+iPeWuMA9oc4F+dIfrbOBPnI9+Vppvc5Rtr2ZlZyRbzIecHP5jUoeAqqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iFUMtdVP; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20cf3e36a76so39958935ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733150706; x=1733755506; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZPr+rqxrsBrYoMzAPXWAODr8cERzCFOtYTMVsGmGlwM=;
        b=iFUMtdVPq/0ShCe8ovuiiuE3sHpvs2rnG6x3FfQe7fY08poq5MUtbyAGkjl2qgHMbu
         Ot2q7Brkvo4zMpMnhaItm+Yah7lae+WWrwTI7/29+vIcEHRA6S+5LdUaYOEs2FhepSV5
         KQ5DqvKt4IAw/EXnIcY7IA1DuksthfwLyFNqcWWH57vxu4/E9Q0KuP85TW5vQTpxXhVm
         kSRbFGcNBwFtSTQQ0WsAJbWDAekWWJqnOW94cbe7z6gBHSqloNUr736Iuc87CDXZ3ISN
         XQd6AEGjx22BF8b56p0ioE9VpFMit8ggibYqlZpjXlTOGJUWp12y2Cc/dpfc3xGUdrlu
         MJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150706; x=1733755506;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZPr+rqxrsBrYoMzAPXWAODr8cERzCFOtYTMVsGmGlwM=;
        b=DcqAC6irfkkkx4TqNZdgYL7w5R2J1HpNl79YyKnhDfuOT8J5iVKpAcOCFXS3s36QqB
         NU5WyFIy8+blSOEbmRSdyiK54dk/YE0f/2+DY2QBLwBK3oRxTWJY89TXGLdns5yIVoLS
         gvRCUC5TuHlDHfG50JJ366mAoO56NXiZ2q7Ky70teer3Gt9v28Y9Gk07w24gmvbuVyop
         uYLUfMsu8kNoGEUmhgFyzb3/P89vY1ucPnb3luT/+9aPjCrFDcQms4ParWg2hX1Ukhlb
         ph3uWj0OyYBBcnpVoH3nSx8DbSE93VMVSfRUo5nLq1t3I7rzEpgmGeyk74j/iN1H8cDa
         PQhA==
X-Forwarded-Encrypted: i=1; AJvYcCXcLn4nOH0Wh1EqoLUZTjbdP94IPyys1mRV8szy0kVU7snIjwUh99XruFzw4AKNv+7/lHWMwKZMvd3n@vger.kernel.org
X-Gm-Message-State: AOJu0YzWhvuLHorJ98cR9cL5VOad1G9mPZ5MxkSwmEkVkMn/K2kb29GR
	L95OWj8faNyVjj2H0itNksGcMZvNQMzpKzQxUEj/nHSZTOjvaQhMxJ5vBIXGhQ==
X-Gm-Gg: ASbGncvBhWYrMh7Hp/hM1DuA48Kggplp2jkqqqsv4Mp4vCZ61kMtXwijgru1Yvh9fiA
	3aHgltW/24xBg++lIO7raWjsnXlNXGxgdLbm9PKBFqZTos4ugDpqAcwSZJdO4IxzVdx4BI0+O0i
	RMhcYsJ4shX8RkzJ9VhQvuC8YDqEMZnpgCyiy8dQKr5mBV49rD/tRVFbgAoyuSCyvDwAAa4FYpZ
	onGAeET5ept5SpdYU075xAFMWKF7DwCPwdhI0IoB8+UhZfvyYO4fTnJVlylnA==
X-Google-Smtp-Source: AGHT+IFVCODuAccsYt/2/80+IXDxhd60+2Yn4zsceONDv9zG3hdrKNerpQeL5Z00zmSVyrmEYMEANw==
X-Received: by 2002:a17:902:ce92:b0:215:7ce8:1363 with SMTP id d9443c01a7336-2157ce815f5mr100011155ad.19.1733150706219;
        Mon, 02 Dec 2024 06:45:06 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21530f1d769sm71106335ad.81.2024.12.02.06.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:45:05 -0800 (PST)
Date: Mon, 2 Dec 2024 20:14:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <20241202144456.scq5d2orw4d3dbxg@thinkpad>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241122064428.278752-3-quic_liuxin@quicinc.com>

On Fri, Nov 22, 2024 at 02:44:27PM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 114 +++++++++++++++++++++++++++
>  1 file changed, 114 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 590beb37f441..5e501511e6db 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -458,6 +458,120 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>,
> +			      <0x0 0x01d90000 0x0 0x8000>;
> +			reg-names = "std",
> +				    "ice";
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
> +				      "core_clk_ice",
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

-- 
மணிவண்ணன் சதாசிவம்

