Return-Path: <devicetree+bounces-238643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B00C5CDD6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B4FD13517D2
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CF3A3148AA;
	Fri, 14 Nov 2025 11:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vs+Pe7vH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16462313E2B
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763119712; cv=none; b=o3veXdeeQmEcKyQLhQgNVl/ee0E6H0+mlhhyGoXhtgbdG9tK0ald+CvqgPsOPmJHjSOxfLEVnojYVIeZwlHLaLswTpmq5JvwKagjXylc7KTIfUMpj8xMg4QbFYBpAmY9yjrtK9lwuFRokb/1E49IGPSFQPiUfhdYFSUqXTAKoK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763119712; c=relaxed/simple;
	bh=gBE90KsqO9udgNoh6l0H/vdAFeTWNHHho9oSVUGbcHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rkCOGxP9ZRwDuLzwfkmdM/ewi+xsVx53Msuo8myR3yl6vu5KCsabTY4rI/LEmq4q4luNsWGDWswped0YTlYAnoM6e6F314YF0fwmNMGPf1ujWtJDR9MXy6fnWFFqeeVY0ESMtXLCESbUKB/AhEqNMDdSkJOlKzLiILELC4R6t8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vs+Pe7vH; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b736cd741c1so89157666b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1763119707; x=1763724507; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LPUQMKIKyKxDkLtmJMOUx+SilXCbirqpjhWROcwrmGE=;
        b=vs+Pe7vH0M9/x0UGBHmhBhh+FTUKSyqquLrPyz+sgOVVLXKLsZrF6ofG0VoCRjyBEQ
         pz+jDk9WCLefBWrqI/FdowZm6JUCA7jN9HS9d3YA58rCSvO5rb8TXCICAgK86pxBwnTU
         5fSZSWmwSZFAS8VD/UZgVWOF7Pk/1ehDU0IAdIMaAddgpfTiA+fNypLRRsNfs31q/zPx
         8sEfvd7qU+h+fw84KgH18h0W2mF/AM3C63tPKxudoKqYhZx2oC1A86s2xPRV9IxP+793
         6XcCS5B5WJeP5jDPnRKr3aPvsu0mtjMfIaLJjEqzGWlW8gCXclHPEnGo2hSXndngZkon
         qWxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763119707; x=1763724507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LPUQMKIKyKxDkLtmJMOUx+SilXCbirqpjhWROcwrmGE=;
        b=SAWY5ntO64JWYuejYfK8mZfu1RUXKPhH46WpF9Pc/7GUNFTuYozOApRIVfnJYMwT8L
         T1NdMvse4/HuxxU+A2sGz2a2ylQgBxwQrDAhc6NGTz+36ts1ot1e2D1sj/8F1SDxotgA
         GHhMwL89GaOYuLMRPYB/b7QOq4PMjPc97ZF4kKeJJ8GGLnEmGibspPjj1FuNl5pWSh+U
         6kA6uDD6DVL+xB2ZqKp1gQYbpNDjvnA1rHJFQ2za6l/3ZoQoUZKbe+kQTnQgLjOOPLnv
         GOHLqwJs0rrXOT6F70ROwGaT4C5swHOMOzo7YfETdX6D5siVxOVnqewDcxMbDR8gjSaP
         1OKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJpJJHSWsX/l6zz+Wwb7NpyfVnaSuQ33Vr01X0LuI9+rzTmfigd7xxjQ7yoL8X4dOEIrkVd0U4CEez@vger.kernel.org
X-Gm-Message-State: AOJu0YwJXubAdk9Rdx/vYxRIaaiUAg4xJQ8/BnUjHKA7uD3BAyrxlMa7
	gCvFT5unKENMz5WHTKBR//mUXxg1ypf/axlI/V3zPPKCnkDCVZWNgzjcXsiwwGIsdl8=
X-Gm-Gg: ASbGnctaVFlmr4nSeSiXv3v9l30tmCIBTZ4jaaukaX49Qfesk+bLto7p6nFq1sPlujh
	N4N2Mm2xHaxl4BMhG3I6Tt1DqWBWPaBmroylXeIgbZpXQZMcQTfuI9lFoC0TRUm819MNmPTaRWK
	hPQALrenH6OL729cIpBo57rc5hmSeBW1KObzTG3yt5tZpRVKa6VP5Xp5oTNyK85H2A5xI5LZlQq
	14nFVro4AsptSb3FQU+hrRnhICagwIossGKOeiO1wax+TfeauboL5u2vzfnFmV2HEqIJ5shqQct
	TXjlTAeKrApN9Cxp/3c5OAoelCqmQ7GJlI4+eCixtLNhvdA3wZPqLxsEPxR+F2wcUiTxkXKqcVZ
	48xViQM7irtZjxwvs6Imm/NIrNJrbPxR0h5iH/AqqHYes9BSftLvUyV0oxAQHFlk16ThX6fMDeA
	PNpWD1h338yCqx/IFt15ig2hNq5vZv/ejeqc6Iw+1T8pI7ycN5L71oZFF2pk5Z54CWgQaZVo3MX
	5NzfaGE/VWChYSo9e69dxLkx10KsohyAA==
X-Google-Smtp-Source: AGHT+IE/EVaUqt23NrvTc5V0byQdZaCOTc4rXLpeXcTxXLfRVGEB/MSyz6hoYU/euAVU4iGXT2hOFQ==
X-Received: by 2002:a17:907:874a:b0:b73:6f8c:612a with SMTP id a640c23a62f3a-b736f8c6f46mr133980566b.11.1763119707351;
        Fri, 14 Nov 2025 03:28:27 -0800 (PST)
Received: from [192.168.101.179] (2001-1c04-0509-ec01-156d-fa6e-7f19-0b67.cable.dynamic.v6.ziggo.nl. [2001:1c04:509:ec01:156d:fa6e:7f19:b67])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb91bsm366887766b.70.2025.11.14.03.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:28:27 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Nov 2025 12:15:26 +0100
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm6350: Add CAMSS node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-sm6350-camss-v2-3-d1ff67da33b6@fairphone.com>
References: <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
In-Reply-To: <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
To: Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763119703; l=5442;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=gBE90KsqO9udgNoh6l0H/vdAFeTWNHHho9oSVUGbcHc=;
 b=AJ630KJiKHC1BSFLaowd3ets2Hsi//75qdZ8WAuOm/5ywvMWlmInbediTUrngihF4s4Baovbg
 WCieRm4Oc8YB0M2AfeiFzp7cbhD5TZi2dHTIP0g5zO4iJwPA3aMaiWH
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a node for the CAMSS on the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 165 +++++++++++++++++++++++++++++++++++
 1 file changed, 165 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index ca6f65e8e267..2784b4541771 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2123,6 +2123,171 @@ cci1_i2c0: i2c-bus@0 {
 			/* SM6350 seems to have cci1_i2c1 on gpio2 & gpio3 but unused downstream */
 		};
 
+		camss: isp@acb3000 {
+			compatible = "qcom,sm6350-camss";
+
+			reg = <0x0 0x0acb3000 0x0 0x1000>,
+			      <0x0 0x0acba000 0x0 0x1000>,
+			      <0x0 0x0acc1000 0x0 0x1000>,
+			      <0x0 0x0acc8000 0x0 0x1000>,
+			      <0x0 0x0ac65000 0x0 0x1000>,
+			      <0x0 0x0ac66000 0x0 0x1000>,
+			      <0x0 0x0ac67000 0x0 0x1000>,
+			      <0x0 0x0ac68000 0x0 0x1000>,
+			      <0x0 0x0acaf000 0x0 0x4000>,
+			      <0x0 0x0acb6000 0x0 0x4000>,
+			      <0x0 0x0acbd000 0x0 0x4000>,
+			      <0x0 0x0acc4000 0x0 0x4000>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "csiphy3",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMERA_AXI_CLK>,
+				 <&camcc CAMCC_SOC_AHB_CLK>,
+				 <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_CORE_AHB_CLK>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CSIPHY0_CLK>,
+				 <&camcc CAMCC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY1_CLK>,
+				 <&camcc CAMCC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY2_CLK>,
+				 <&camcc CAMCC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAMCC_CSIPHY3_CLK>,
+				 <&camcc CAMCC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAMCC_IFE_0_AXI_CLK>,
+				 <&camcc CAMCC_IFE_0_CLK>,
+				 <&camcc CAMCC_IFE_0_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_0_CSID_CLK>,
+				 <&camcc CAMCC_IFE_1_AXI_CLK>,
+				 <&camcc CAMCC_IFE_1_CLK>,
+				 <&camcc CAMCC_IFE_1_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_1_CSID_CLK>,
+				 <&camcc CAMCC_IFE_2_AXI_CLK>,
+				 <&camcc CAMCC_IFE_2_CLK>,
+				 <&camcc CAMCC_IFE_2_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_2_CSID_CLK>,
+				 <&camcc CAMCC_IFE_LITE_CLK>,
+				 <&camcc CAMCC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAMCC_IFE_LITE_CSID_CLK>;
+			clock-names = "cam_ahb_clk",
+				      "cam_axi",
+				      "soc_ahb",
+				      "camnoc_axi",
+				      "core_ahb",
+				      "cpas_ahb",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "csiphy3",
+				      "csiphy3_timer",
+				      "slow_ahb_src",
+				      "vfe0_axi",
+				      "vfe0",
+				      "vfe0_cphy_rx",
+				      "vfe0_csid",
+				      "vfe1_axi",
+				      "vfe1",
+				      "vfe1_cphy_rx",
+				      "vfe1_csid",
+				      "vfe2_axi",
+				      "vfe2",
+				      "vfe2_cphy_rx",
+				      "vfe2_csid",
+				      "vfe_lite",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 717 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 718 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csiphy3",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite";
+
+			interconnects = <&gem_noc MASTER_AMPSS_M0 QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_mnoc",
+					     "sf_mnoc",
+					     "sf_icp_mnoc";
+
+			iommus = <&apps_smmu 0x820 0xc0>,
+				 <&apps_smmu 0x840 0x0>,
+				 <&apps_smmu 0x860 0xc0>,
+				 <&apps_smmu 0x880 0x0>;
+
+			power-domains = <&camcc TITAN_TOP_GDSC>,
+					<&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc IFE_2_GDSC>;
+			power-domain-names = "top",
+					     "ife0",
+					     "ife1",
+					     "ife2";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+
+				port@3 {
+					reg = <3>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,sm6350-camcc";
 			reg = <0x0 0x0ad00000 0x0 0x16000>;

-- 
2.51.2


