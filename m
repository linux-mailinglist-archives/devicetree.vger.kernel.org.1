Return-Path: <devicetree+bounces-253948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9662D12F60
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04CE930D3AD5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABAB35C182;
	Mon, 12 Jan 2026 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xbrejhcD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60B435C180
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226007; cv=none; b=L1EMaObhrc5lE3/IKMtHnuUQz2I3UVS/UzIwst4aAAnh/lYXHxa1mrKsHMVuHE6Ob1WnhLPWTiP1U7wrmPAQzo4AOjRuK2/ryPimbq9RHGeA5DyCJ14kCL1Uba+W0O0JGFuVK1QE0aq6kxNZQnxvSOY+zPHdRxRgp5v+u88KVKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226007; c=relaxed/simple;
	bh=CUg9RtlgmTKAudwK4F/5CcUGQgOlVJhlba1HTU9ItqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LqKad7QYddm/UUQnAJL/cqRJ1TrY7xl090/k+gKMw0REEQBcVJSueGc+LzssijwlBzmRO9x25CiSUlQjcNtB2a4KN3mJvMS07Sf3a0/dHrM4xpPYypF5Vh9XtDbf+W603h3RtcGYTbbqxfJA44ANVYkcKYEqvEHIU41fm2SM4LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=xbrejhcD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b7ffbf4284dso927506666b.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768226001; x=1768830801; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WWPfLmZoRs9e9HhXu15SJ7NQdaAV3N8zf0i6m2MJpE0=;
        b=xbrejhcD0L9yC++GyaS5RgDRRI2zQPXMPkf6PFm9Cw/Vcs38dchwBUhTMXTGpiXWLF
         qAz76gIoiErdd1tGWbT4dK9el/ficVB5TzbuahmnOXveK/yvrJ/o6MgYNz5/XklBl4Nw
         vS2XJj99I2Mad20VHsSX6KTZUwBNBzzBz1heb8RuLuTHu7JrlVbyUeeh9QHinMNKHBSh
         OqAw7T3wZ4RdGtYe4ETgES3Avf65256BPMF9sKWaoRYxItM6zaWyvHjeJ7sdJ4p3evdy
         MbWSGQCUqqzMJv2GFC/SKiyWnT2C8CdRsgvIYhqU/owykoxxHUSdiX9yZS6psLqBY2Ej
         jTbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768226001; x=1768830801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WWPfLmZoRs9e9HhXu15SJ7NQdaAV3N8zf0i6m2MJpE0=;
        b=RqdbBwJsz5zvEvSquoHJo7hCfFsPdLgI+nTqssnBDnt+wPlY/plwcuQvyi305Q0aZU
         DCKWJFCktke776sZeo746G+bLm1iPZZDvFbdkiEabpdqnYpw2PsszBxfMBw4IEsYOJlI
         44EOn7f4iZJN35ZH51ZsrlZ9XxiYo0A/HlE2V0b4tgPhsJM0jMXi1TQp9Fe1uG8KNqLx
         a6f+PZgxBXOMy/QH5NXhw729cIudBiX8g0fFJ27SAhnbLhUOqQ5Cc08CV7KExi6qPlFq
         XzMkfCd11YTC2Qkpbz+Hh5T3Pf8A+9WsnNzMm1pNIJ916KGjz3neiASZR9zhCU2wX2OD
         NWOA==
X-Forwarded-Encrypted: i=1; AJvYcCUl1qOnAlLlaOFVfMklUEAXCZvNw/dyFAhdruLqOD4PbY+A+gpO3/ZF9hZvFArqgeNmf/wyoK+QMw4A@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyo0RbqtmxQiYoyqZJKimMrvnRT2MDHcmfOFYyQp4nAz8vqdJF
	M0jbsBoOa+FwvLOztX/zVYDoT5NdxdAJ7872vS/n9CVeEMwOSeiwLXihYA1G4gwSuGU=
X-Gm-Gg: AY/fxX4JbCT/E8cH+T2woVDeKlMN0OL+j7Tg4Vg2SQppUt60UqtRBsXe+hI7uVALPbK
	Tw50L2x1TY+Gqi3zCutTgsNe5khHeeEijHRUa3bhm1ovp7iehVUECf2vyPuGqxG0j2os6N+oxyq
	2woovgGXyR4rUn/B52UhD6bMhtwwz4gsyUUT8xOafzM0JW77Azu0JTUfcAQMz04Dk5XaCDsYGlM
	z5SH6VyuSvctSz+diSqEAbu9sI8Byy9ZSZ0YSfQJObHaUeV+QR8yT4uZCjnBaBC/48sd7lNvTjL
	gvkJ9rstSpVA9U7YC5LhNzyJfgFZMriMQrLOXrKv98V3lFjSB/8g83kVjkKBiwk3TLqDYA8aPNy
	ngxicD0S40mSOAK3dwUsXRGt50nBt+NbNDHqPj8nclQ1ybBVXvwglowuhK8YWrkWVqdIaUF+MpY
	EXPkqKpx4ueYkrfUJGDDKGkmbLdgd9PfpHhEKn5RGykS9C/EuXTIsNLeSU3A4TPlWx
X-Google-Smtp-Source: AGHT+IHo/SgZTpXi092MWQdzw3Mh3q7aWX3FCIQ5HQG66gZ3V+BycBgpDyYQd2eNtV28CNmM83lI4g==
X-Received: by 2002:a17:907:96aa:b0:b87:2f29:2062 with SMTP id a640c23a62f3a-b872f2938fcmr90697166b.19.1768226001088;
        Mon, 12 Jan 2026 05:53:21 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:20 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:18 +0100
Subject: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=4488;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=CUg9RtlgmTKAudwK4F/5CcUGQgOlVJhlba1HTU9ItqQ=;
 b=RQ6deTnI/3+rRHNUFcgGtLLU70SWfA3Fva/Z/K6kIe2KRwZzfV7I7f+oKi4y6aUHbF+0iGjQt
 1ESFhFt+hz7CwwvzsLsu5vweg2wkRqD6PkYnTLcNYGAyK7sMIPomtAx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the nodes for the UFS PHY and UFS host controller, along with the
ICE used for UFS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
 1 file changed, 126 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index e1a51d43943f..7c8a84bfaee1 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -797,9 +797,9 @@ gcc: clock-controller@100000 {
 				 <&sleep_clk>,
 				 <0>, /* pcie_0_pipe_clk */
 				 <0>, /* pcie_1_pipe_clk */
-				 <0>, /* ufs_phy_rx_symbol_0_clk */
-				 <0>, /* ufs_phy_rx_symbol_1_clk */
-				 <0>, /* ufs_phy_tx_symbol_0_clk */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <0>; /* usb3_phy_wrapper_gcc_usb30_pipe_clk */
 
 			#clock-cells = <1>;
@@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,milos-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_cfg SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			operating-points-v2 = <&ufs_opp_table>;
+
+			iommus = <&apps_smmu 0x60 0>;
+
+			dma-coherent;
+
+			lanes-per-direction = <2>;
+			qcom,ice = <&ice>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			#reset-cells = <1>;
+
+			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-75000000 {
+					opp-hz = /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-150000000 {
+					opp-hz = /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		ice: crypto@1d88000 {
+			compatible = "qcom,milos-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x01d88000 0x0 0x18000>;
+
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;

-- 
2.52.0


