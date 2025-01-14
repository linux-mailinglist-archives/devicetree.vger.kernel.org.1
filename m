Return-Path: <devicetree+bounces-138415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B9BA104A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACEC21888A91
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB9A284A64;
	Tue, 14 Jan 2025 10:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="olauuDOy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E5E22DC3A
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736851946; cv=none; b=fs2iCVNYmQJHb2AEQasMlUd67EzYB0Ash09WN3LDG/zJ+tYLg+qhI5RtzfgS3Z1jwRJwpPCnnA9EeaIK2813IVZyPufoa51mC2fBf+jcvhBJ98YOaGSYGuc1qFKzcLYXMiRLC71KVs6CnQyN8zYjps+sdAisTXOyLCjqfsjCz/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736851946; c=relaxed/simple;
	bh=pIVuQyr+4FOCAnhM9xbxHM68aNV1hy0VoQRwSL1iAyw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ioWG36eM1rHULRSfGGstpegu3I18wPerGDrPc0zoFMndA3eBY8Rx7sveSu/nVTIybup7E2EERbbChoFFmXgy/SGRZpgLl+B3aLloZSxAfASizB4y8dKWenQqxdkcCv0vYxDOGeZjSqd8d5q5kxwkdV3TE3ivLGBsQczgVK5dfxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=olauuDOy; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53f22fd6887so4551451e87.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736851943; x=1737456743; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rN4m3NQ5n5N7wtBEgakYpYBKKXw32xM8SaDJsWoHWYE=;
        b=olauuDOycZKssbYAkae0khnYnwJ3EDwvRbPWIXtdbjsfo6LC1TVFO61v7uFYS4fhCx
         EC/530Xji9GVI512b7d/z4GZav66mMEiHP2uY3UQ+nCiKdSqYdT/Ca7gz9G20yzdt09c
         pF/oQJBgyAdDqoOZLfDtWxZqYqwLdWhD3vsPHf9lQtdULKiG6heqjL4mpL1xOH9SN/GQ
         vg4olu0hHi/Yse7rBG85zzVE4PBOIseyLIKZGsqvKuVA+MG6rKesntTcdYMSCWS1pUCs
         VoYBWMlDfVFELcgCzL7STjlicREMmaHDM2ItIvP1wNaCQKUnpQ8SU5CkY/lGWS3DGX4I
         g7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736851943; x=1737456743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rN4m3NQ5n5N7wtBEgakYpYBKKXw32xM8SaDJsWoHWYE=;
        b=INei9ZGpnpVWiIuYgZahP2ickrwc5Cu3ed2TvhHcNtuskwspYvqeCuXsvOfRbcX/6m
         qXkxa7Yp1vTcbuUXpBjZm1An0xPpn4v41pSGd7ijhEH0Ag+2hnZ9L8vef4tf+3AOXQXN
         geCMbB+lW7EzrH+DTT1C5SHYoKv1sGraAWHzndNARn99RWBIA+Xvo/76AmzlnCIHMb3v
         wFjRbrbsFWagn4VwDJIeFKvgdqX8B0OTId8p011nv9rK6+7jXnebi948k3ycavFwY1N8
         64vTtjE6BGU+oU1+8em6rM74OBi49+oUXlsVH77AhWSFNnUdH4QdVOnaV1//iaPSOwSp
         RPmw==
X-Forwarded-Encrypted: i=1; AJvYcCXvN/AZWCd7jt+4XEvMgZkXJ+4AuFeO3+cSiMLDkt5UPyAlFZ2BhIZCIvwhPxUbKim9t22HY1wpUMjS@vger.kernel.org
X-Gm-Message-State: AOJu0YxPMeUbK9+tshBtM8S0hqa1eXDBuYe2J/WtZhN7ejU8IYd/bpn5
	wqb6nLm05Prv+g78Hyb4riZEnM0X9Nl5voo4zM0MJL5P1Q0ohDB68qAZ/30E6lQ=
X-Gm-Gg: ASbGncuRjSD4Xc6SCavOVak8nvAdhYn3dZeK1RTdgK28LgpgFCHeGsPHqYeLX5bVCkR
	EJnJ4npZxKn6V38zJv2eexXQ7yIDhWA+dARMYENKP7z9tyvuUNJVB7fDBzsmPnO20W7r5Y51eS7
	k3G9gDdxBP75AIScCz1Zxq9zJzHD52kD5KeW6KzNoNLzyPVb1SHWyNnHXoAJivSotJYoOBhuH9N
	rD8F0AK4q5Xa1cucVBqqPfeHFL/q/Wx2bRrTx9epUZOwy4fzIYG487NfwdMITE2hUs00Ly/mvts
	DOXeJ+bffiYSD+qm29x2if+tPkeQQt0/7Guc
X-Google-Smtp-Source: AGHT+IFXNDZ+6CVMWolZf+t30Za37hYF2mQh5sPd0zYDKOS8PyTtXOJy3bJAdSC7lS3KwvFjETHcXA==
X-Received: by 2002:a05:6512:3d22:b0:540:2022:e3b7 with SMTP id 2adb3069b0e04-5428481c05emr6867029e87.53.1736851942720;
        Tue, 14 Jan 2025 02:52:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be540c6sm1677395e87.71.2025.01.14.02.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:52:21 -0800 (PST)
Date: Tue, 14 Jan 2025 12:52:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>, Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Message-ID: <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>

On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 81 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..20690c102244b337847a6482dd83c37e19746de9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -13,6 +13,7 @@
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -1939,6 +1940,86 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,sm8750-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
> +			clock-names =	"ref",
> +					"ref_aux",
> +					"qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_LN_BB_CLK3>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +			freq-table-hz = <100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<100000000 403000000>,
> +					<100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;

Use OPP table instead

> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;

Shouldn't cpu-ufs be ACTIVE_ONLY?

> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x60 0>;
> +			dma-coherent;
> +
> +			lanes-per-direction = <2>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			#reset-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

