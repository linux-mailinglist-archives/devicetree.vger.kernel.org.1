Return-Path: <devicetree+bounces-7869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 895B87C5D2D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:55:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E6BE28280D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16F23A299;
	Wed, 11 Oct 2023 18:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k9EF5CFa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF34F3A290
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:55:54 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D5F4B8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:55:52 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-405361bb94eso2996385e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697050550; x=1697655350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nweWobJWJBf+E3jMJor/bM09luKRlFeXTfeRgH/BAFs=;
        b=k9EF5CFaYuvgCm/9gG2zY4OXlqlMaDpCbTGRzANwxmMlWOAt4MzTW/gQC6zESQfqrb
         cdlnW3cWf/FBJmocM1+PZ2/8UtFdOB9l9+pAH7qsAGH5oEiXAEm8pxxMslg9ZnQc/c4g
         RFIhl8dQtIgrh27SMohFOge46UBccTjHPgjiCmVWdbOZdteUDG7wYrcpIS8HqhJuDSGP
         MTJ4XGS95R7aC+Cpp0QcXP5EL0rnXilfzCW0ZxNEX6kPb6V3KFp8sp6OneGdtRSR2DZZ
         P/5OYg8rxsepcj17i+OUa9DYt93C1oVzb2uZAgdRao/GG9GHbDqPhtXpLg4sxbm6EOZJ
         UjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697050550; x=1697655350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nweWobJWJBf+E3jMJor/bM09luKRlFeXTfeRgH/BAFs=;
        b=Q8sJvo+zEyQ5/D0wqm+Oh31FLr1clmU5tJLBbpzLVjzrMxaW+5bmIfG4qWXQlbP9HD
         PoISV36U2NgfUzTmg3grkPF2gbtOcBbXYx8hcNgLKDHQBZ1E7LM4idmwPhyI58unCF+c
         hq2mHwYUj+z0S11xJDV3SBJmiLt2dSi1ZH2fWr5D33ELodQxiiwxeriVWLa9N/pQVySP
         /oHphDwwmiMOoCGYm2vdj+UWANZpUn5LO2mYrcOhM+R7rh8h2CdRTE+Fc8NeNq5aYfgW
         GwizaCTOzPO7jlXto7JL+Z2CXq2xSLEnmm2O6Hv+RXca41rWBaKhTHTaSjV5sQxbn0qW
         IX6w==
X-Gm-Message-State: AOJu0Yxfx/hK5TeKVHU186FPA/u7cCr2yWiRx6Qk9YA/8e+q7S8xqe0R
	E0pKsmk3JfBmRFj0bB+8dE8B6w==
X-Google-Smtp-Source: AGHT+IGfHfH/T8MhiI9Ttz/dhNl45IakVprsMIJoQxF3tsmX8wkQ9iJ+WswjOGxHMIe7xA+tb7TlGA==
X-Received: by 2002:a7b:cd11:0:b0:405:40ec:415d with SMTP id f17-20020a7bcd11000000b0040540ec415dmr19302522wmj.39.1697050550452;
        Wed, 11 Oct 2023 11:55:50 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id n22-20020a7bcbd6000000b004060f0a0fdbsm19928294wmi.41.2023.10.11.11.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 11:55:49 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition
Date: Wed, 11 Oct 2023 19:55:40 +0100
Message-Id: <20231011185540.2282975-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231011185540.2282975-1-bryan.odonoghue@linaro.org>
References: <20231011185540.2282975-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add CAMSS block definition for sc8280xp.

This drop contains definitions for the following components on sc8280xp:

VFE * 4
VFE Lite * 4
CSID * 4
CSIPHY * 4

This dtsi definition has been developed and validated on a Lenovo X13s
laptop.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 285 +++++++++++++++++++++++++
 1 file changed, 285 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 22e9671af0e9..c1fac3e872f4 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3615,6 +3615,291 @@ cci3_i2c1: i2c-bus@1 {
 			};
 		};
 
+		camss: camss@ac5a000 {
+			compatible = "qcom,sc8280xp-camss";
+
+			reg = <0 0x0ac5a000 0 0x2000>,
+			      <0 0x0ac5c000 0 0x2000>,
+			      <0 0x0ac65000 0 0x2000>,
+			      <0 0x0ac67000 0 0x2000>,
+			      <0 0x0acaf000 0 0x4000>,
+			      <0 0x0acb3000 0 0x1000>,
+			      <0 0x0acb6000 0 0x4000>,
+			      <0 0x0acba000 0 0x1000>,
+			      <0 0x0acbd000 0 0x4000>,
+			      <0 0x0acc1000 0 0x1000>,
+			      <0 0x0acc4000 0 0x4000>,
+			      <0 0x0acc8000 0 0x1000>,
+			      <0 0x0accb000 0 0x4000>,
+			      <0 0x0accf000 0 0x1000>,
+			      <0 0x0acd2000 0 0x4000>,
+			      <0 0x0acd6000 0 0x1000>,
+			      <0 0x0acd9000 0 0x4000>,
+			      <0 0x0acdd000 0 0x1000>,
+			      <0 0x0ace0000 0 0x4000>,
+			      <0 0x0ace4000 0 0x1000>;
+
+			reg-names = "csiphy2",
+				    "csiphy3",
+				    "csiphy0",
+				    "csiphy1",
+				    "vfe0",
+				    "csid0",
+				    "vfe1",
+				    "csid1",
+				    "vfe2",
+				    "csid2",
+				    "vfe_lite0",
+				    "csid0_lite",
+				    "vfe_lite1",
+				    "csid1_lite",
+				    "vfe_lite2",
+				    "csid2_lite",
+				    "vfe_lite3",
+				    "csid3_lite",
+				    "vfe3",
+				    "csid3";
+
+			interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
+
+			interrupt-names = "csid1_lite",
+					  "vfe_lite1",
+					  "csiphy3",
+					  "csid0",
+					  "vfe0",
+					  "csid1",
+					  "vfe1",
+					  "csid0_lite",
+					  "vfe_lite0",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csid2",
+					  "vfe2",
+					  "csid3_lite",
+					  "csid2_lite",
+					  "vfe_lite3",
+					  "vfe_lite2",
+					  "csid3",
+					  "vfe3";
+
+			power-domains = <&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc IFE_2_GDSC>,
+					<&camcc IFE_3_GDSC>,
+					<&camcc TITAN_TOP_GDSC>;
+
+			power-domain-names = "ife0",
+					     "ife1",
+					     "ife2",
+					     "ife3",
+					     "top";
+
+			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_CAMNOC_AXI_CLK_SRC>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CPHY_RX_CLK_SRC>,
+				 <&camcc CAMCC_CSIPHY0_CLK>,
+				 <&camcc CAMCC_CSI0PHYTIMER_CLK_SRC>,
+				 <&camcc CAMCC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY1_CLK>,
+				 <&camcc CAMCC_CSI1PHYTIMER_CLK_SRC>,
+				 <&camcc CAMCC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY2_CLK>,
+				 <&camcc CAMCC_CSI2PHYTIMER_CLK_SRC>,
+				 <&camcc CAMCC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY3_CLK>,
+				 <&camcc CAMCC_CSI3PHYTIMER_CLK_SRC>,
+				 <&camcc CAMCC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAMCC_IFE_0_AXI_CLK>,
+				 <&camcc CAMCC_IFE_0_CLK_SRC>,
+				 <&camcc CAMCC_IFE_0_CLK>,
+				 <&camcc CAMCC_IFE_0_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_0_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_0_CSID_CLK>,
+				 <&camcc CAMCC_IFE_1_AXI_CLK>,
+				 <&camcc CAMCC_IFE_1_CLK_SRC>,
+				 <&camcc CAMCC_IFE_1_CLK>,
+				 <&camcc CAMCC_IFE_1_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_1_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_1_CSID_CLK>,
+				 <&camcc CAMCC_IFE_2_AXI_CLK>,
+				 <&camcc CAMCC_IFE_2_CLK_SRC>,
+				 <&camcc CAMCC_IFE_2_CLK>,
+				 <&camcc CAMCC_IFE_2_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_2_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_2_CSID_CLK>,
+				 <&camcc CAMCC_IFE_3_AXI_CLK>,
+				 <&camcc CAMCC_IFE_3_CLK_SRC>,
+				 <&camcc CAMCC_IFE_3_CLK>,
+				 <&camcc CAMCC_IFE_3_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_3_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_3_CSID_CLK>,
+				 <&camcc CAMCC_IFE_LITE_0_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_0_CLK>,
+				 <&camcc CAMCC_IFE_LITE_0_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_LITE_0_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_0_CSID_CLK>,
+				 <&camcc CAMCC_IFE_LITE_1_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_1_CLK>,
+				 <&camcc CAMCC_IFE_LITE_1_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_LITE_1_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_1_CSID_CLK>,
+				 <&camcc CAMCC_IFE_LITE_2_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_2_CLK>,
+				 <&camcc CAMCC_IFE_LITE_2_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_LITE_2_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_2_CSID_CLK>,
+				 <&camcc CAMCC_IFE_LITE_3_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_3_CLK>,
+				 <&camcc CAMCC_IFE_LITE_3_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_LITE_3_CSID_CLK_SRC>,
+				 <&camcc CAMCC_IFE_LITE_3_CSID_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>;
+
+			clock-names = "camnoc_axi",
+				      "camnoc_axi_src",
+				      "cpas_ahb",
+				      "cphy_rx_src",
+				      "csiphy0",
+				      "csiphy0_timer_src",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer_src",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer_src",
+				      "csiphy2_timer",
+				      "csiphy3",
+				      "csiphy3_timer_src",
+				      "csiphy3_timer",
+				      "vfe0_axi",
+				      "vfe0_src",
+				      "vfe0",
+				      "vfe0_cphy_rx",
+				      "vfe0_csid_src",
+				      "vfe0_csid",
+				      "vfe1_axi",
+				      "vfe1_src",
+				      "vfe1",
+				      "vfe1_cphy_rx",
+				      "vfe1_csid_src",
+				      "vfe1_csid",
+				      "vfe2_axi",
+				      "vfe2_src",
+				      "vfe2",
+				      "vfe2_cphy_rx",
+				      "vfe2_csid_src",
+				      "vfe2_csid",
+				      "vfe3_axi",
+				      "vfe3_src",
+				      "vfe3",
+				      "vfe3_cphy_rx",
+				      "vfe3_csid_src",
+				      "vfe3_csid",
+				      "vfe_lite0_src",
+				      "vfe_lite0",
+				      "vfe_lite0_cphy_rx",
+				      "vfe_lite0_csid_src",
+				      "vfe_lite0_csid",
+				      "vfe_lite1_src",
+				      "vfe_lite1",
+				      "vfe_lite1_cphy_rx",
+				      "vfe_lite1_csid_src",
+				      "vfe_lite1_csid",
+				      "vfe_lite2_src",
+				      "vfe_lite2",
+				      "vfe_lite2_cphy_rx",
+				      "vfe_lite2_csid_src",
+				      "vfe_lite2_csid",
+				      "vfe_lite3_src",
+				      "vfe_lite3",
+				      "vfe_lite3_cphy_rx",
+				      "vfe_lite3_csid_src",
+				      "vfe_lite3_csid",
+				      "gcc_axi_hf",
+				      "gcc_axi_sf",
+				      "slow_ahb_src";
+
+			iommus = <&apps_smmu 0x2000 0x4e0>,
+				 <&apps_smmu 0x2020 0x4e0>,
+				 <&apps_smmu 0x2040 0x4e0>,
+				 <&apps_smmu 0x2060 0x4e0>,
+				 <&apps_smmu 0x2080 0x4e0>,
+				 <&apps_smmu 0x20e0 0x4e0>,
+				 <&apps_smmu 0x20c0 0x4e0>,
+				 <&apps_smmu 0x20a0 0x4e0>,
+				 <&apps_smmu 0x2400 0x4e0>,
+				 <&apps_smmu 0x2420 0x4e0>,
+				 <&apps_smmu 0x2440 0x4e0>,
+				 <&apps_smmu 0x2460 0x4e0>,
+				 <&apps_smmu 0x2480 0x4e0>,
+				 <&apps_smmu 0x24e0 0x4e0>,
+				 <&apps_smmu 0x24c0 0x4e0>,
+				 <&apps_smmu 0x24a0 0x4e0>;
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_CAMERA_CFG 0>,
+					<&mmss_noc MASTER_CAMNOC_HF 0 &mc_virt SLAVE_EBI1 0>,
+					<&mmss_noc MASTER_CAMNOC_SF 0 &mc_virt SLAVE_EBI1 0>,
+					<&mmss_noc MASTER_CAMNOC_ICP 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "cam_ahb",
+					     "cam_hf_mnoc",
+					     "cam_sf_mnoc",
+					     "cam_sf_icp_mnoc";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,sc8280xp-camcc";
 			reg = <0 0x0ad00000 0 0x20000>;
-- 
2.40.1


