Return-Path: <devicetree+bounces-144253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E83A2D92A
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 23:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDF617A1AB1
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 22:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D52224395A;
	Sat,  8 Feb 2025 22:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lBfo0zTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B05243949
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 22:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739052402; cv=none; b=W0A7MUyF4CZrSfhzt39WyF3IXsMa891JwaWBlgXi+Vtq7JZ8icHgYGSksFNbOzNWRifR8VeUq0MK/12TwKrFuZy4CV6iq3QoChUUnepmgjkEcKO7egOgMRH1AB9ozmLxTrc5Tg+YkmBHYiZrsSoOluxFFI/o/QNjyKGvkWjRWFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739052402; c=relaxed/simple;
	bh=Fo+ykbDTPpT4mrrcDExrEmKP6wtEHK06fgU4k2k8QUs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILw88m44QEWPCHrrfPKHJcVeS1gtixoSYeolooCmhlQFVrYa/tK10C3e3GYuxexY3jC3uXQ9RvdDeilKxwqekmF5zQVwvdQSeDDLA1kaYaVPq6xAMCju7KU1k5P9Zh86zJD4HpOCab5sc/WtOe+lGLPSI3rIbME8ghnkWScO/Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lBfo0zTM; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30227c56b11so33907631fa.3
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 14:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739052397; x=1739657197; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LrS7fwaYNFpy0Tlho86QxjG6trr99uIwcC04J7bzN3U=;
        b=lBfo0zTMDuy9U/YrG7wXFksKEKICrL9lcthVy+U/QSuLVBhYS8CWvKzvUiqBnEGXH6
         X32Cu5GYxHcgxAzHN7nH63T6f5c647VIRTOKmH5xsWu5hblmndXUvHQo36j4eldLEo+X
         pxfGdswh4kUrMscePJC5oBwpdblJ6KHii0xjCnzRYksQyDOsqeNuLFB/duqwZdjsmCMA
         3OvhmqPGXcDc/StLn9ysjBufsroOw9RDVWJlDBvcMImPyK7xzrzlVLV2zagaJ162f5Oz
         oNPuIU8N0PX5UZTbS7rsXv3KHJkAXQEe3Hsvg7YbVP3+xMdzlibvg6ld/0ZrNBOXAiGe
         CnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739052397; x=1739657197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LrS7fwaYNFpy0Tlho86QxjG6trr99uIwcC04J7bzN3U=;
        b=CgRfKXnLcLlpUNGfRe7k1fRe6i7/Sbktsm9kpe5JmjX6rjfavse0OpBc6ZWDxFHgN+
         42/Zh0+ZgGgiUfzIrXvdbmFip1yOXS2/N6DiLGbQjBrgHS6CJ/tL4vSTlkMCyb5pe9zA
         zYl5nGYxyzjoe8nbYLX1jfJvbFX3yjvnkdwkLrmUtS3IfbnzMeCIM4Hvm6dAjewDCSiZ
         78y9oDy+afNTVROwGUSBlh8dN1LgHJ7BdOJKtJuufrpl1zqPkT93QcMGUdm1fSDXH1jk
         toJc3bOMxHoepCrP1mGvn3ulVCgLVl8LHTBDWro1UoPqdw6/9cAR9sMl84GV98CXfFnL
         1wjg==
X-Forwarded-Encrypted: i=1; AJvYcCVODHwMZkbxSj6vBQ25FE02lEhNKcqCl1ZDRn4IKTGI6emRjymxMfkPwG1jvbDKF/xcI/FDdlb7UdVX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmsq1yIpDggQ/4Fg0VmbAknDeVfURWgCaE8HCgk+wzQwSucRzd
	cK7zyYVco/638QJgfloEkN+HkxOQptz3+1CcGt04XS96rbHktnBpu0w/yFmcvqQ=
X-Gm-Gg: ASbGnctc2AEoD/VUdmYPumJMhtat706CsmC/8KXxr6fzG7YfYyO91wPhB4pH9w7P/My
	9hJkVwy1ZKiK7k1IC3wo91e3gpDPE0+LDnpv7g3LA/lhl5Y0zY0dsJhboHdgvZUWBo1MU+lR9no
	HqrwIDtBoTfuPPdDOb0UeokbFuD1LPRrgUNuUpWgMYM3Bq+S+SyLdWMLPCt2r6MHo7SCEteUz2K
	9FbsfEm6T17/BqQxk8CdCfpFs0mW/D1DGKvN1SWG1Zl+5cIhha5w54aEXJoFk4jYEZ7/m3k1tgD
	vwE1kyyOlAPq3vJitkaivp6vMZDcL+kENCPiOuyAzH2BQDnKbYLha3+eLxT/92kuAER70q4=
X-Google-Smtp-Source: AGHT+IHD3w+RD2uIY/nbdfmmcQb7IkradBev5VfMYzeQzDJnvkdElXfAgc+erv7xrm5uRwc1zCnFQA==
X-Received: by 2002:ac2:4ed0:0:b0:542:9883:26f with SMTP id 2adb3069b0e04-54414aee2c3mr2164430e87.50.1739052397255;
        Sat, 08 Feb 2025 14:06:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54508f5617asm43871e87.170.2025.02.08.14.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 14:06:36 -0800 (PST)
Date: Sun, 9 Feb 2025 00:06:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson <andersson@kernel.org>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Message-ID: <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
 <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>

On Sun, Feb 09, 2025 at 12:47:56AM +0530, Nitin Rawat wrote:
> 
> 
> On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
> > > From: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > 
> > > Add UFS host controller and PHY nodes for SM8750 SoC.
> > > 
> > > Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> > > Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> > > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sm8750.dtsi | 81 ++++++++++++++++++++++++++++++++++++
> > >   1 file changed, 81 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..20690c102244b337847a6482dd83c37e19746de9 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > @@ -13,6 +13,7 @@
> > >   #include <dt-bindings/power/qcom,rpmhpd.h>
> > >   #include <dt-bindings/power/qcom-rpmpd.h>
> > >   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> > > +#include <dt-bindings/gpio/gpio.h>
> > >   / {
> > >   	interrupt-parent = <&intc>;
> > > @@ -1939,6 +1940,86 @@ mmss_noc: interconnect@1780000 {
> > >   			#interconnect-cells = <2>;
> > >   		};
> > > +		ufs_mem_phy: phy@1d80000 {
> > > +			compatible = "qcom,sm8750-qmp-ufs-phy";
> > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > +
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > +				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
> > > +			clock-names =	"ref",
> > > +					"ref_aux",
> > > +					"qref";
> > > +
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
> > > +
> > > +			#clock-cells = <1>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_hc: ufs@1d84000 {
> > > +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > > +
> > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> > > +
> > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > +				 <&rpmhcc RPMH_LN_BB_CLK3>,
> > > +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> > > +			clock-names = "core_clk",
> > > +				      "bus_aggr_clk",
> > > +				      "iface_clk",
> > > +				      "core_clk_unipro",
> > > +				      "ref_clk",
> > > +				      "tx_lane0_sync_clk",
> > > +				      "rx_lane0_sync_clk",
> > > +				      "rx_lane1_sync_clk";
> > > +			freq-table-hz = <100000000 403000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<100000000 403000000>,
> > > +					<100000000 403000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<0 0>;
> > 
> > Use OPP table instead
> 
> Currently, OPP is not enabled in the device tree for any previous targets. I

Excuse me? ufs_opp_table is present on SM8250, SM8550 and SDM845 (and
QCS615). So this is not correct

> plan to enable OPP in a separate patch at a later stage. This is because
> there is an ongoing patch in the upstream that aims to enable multiple-level
> clock scaling using OPP, which may introduce changes to the device tree
> entries. To avoid extra efforts, I intend to enable OPP once that patch is
> merged.

Whatever changes are introduced, old DT must still continue to work.
There is no reason to use legacy freq-table-hz if you can use OPP table.

> Please let me know if you have any concerns.
> 
> 
> > 
> > > +
> > > +			resets = <&gcc GCC_UFS_PHY_BCR>;
> > > +			reset-names = "rst";
> > > +
> > > +
> > > +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> > > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > > +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> > 
> > Shouldn't cpu-ufs be ACTIVE_ONLY?
> 
> As per ufs driver implementation, Icc voting from ufs driver is removed as
> part of low power mode (suspend or clock gating) and voted again in
> resume/ungating path. Hence TAG_ALWAYS will have no power concern.
> All previous targets have the same configuration.

arch/arm64/boot/dts/qcom/qcs615.dtsi:                                    &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;

It might be a mistake for that target though. Your explanation sounds
fine to me.

> 
> Thanks,
> Nitin
> 
> 
> > 
> > > +			interconnect-names = "ufs-ddr",
> > > +					     "cpu-ufs";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> > > +			required-opps = <&rpmhpd_opp_nom>;
> > > +
> > > +			iommus = <&apps_smmu 0x60 0>;
> > > +			dma-coherent;
> > > +
> > > +			lanes-per-direction = <2>;
> > > +
> > > +			phys = <&ufs_mem_phy>;
> > > +			phy-names = "ufsphy";
> > > +
> > > +			#reset-cells = <1>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > >   		tcsr_mutex: hwlock@1f40000 {
> > >   			compatible = "qcom,tcsr-mutex";
> > >   			reg = <0x0 0x01f40000 0x0 0x20000>;
> > > 
> > > -- 
> > > 2.46.1
> > > 
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

