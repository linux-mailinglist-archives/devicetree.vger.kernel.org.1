Return-Path: <devicetree+bounces-251976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34142CF92C5
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 424A230321D1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5189E3446AB;
	Tue,  6 Jan 2026 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eyytB+uV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TNvaF3MB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871AB33DEDD
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714161; cv=none; b=QWPmTxFn2KPA3yTeBf0LZjr6vJ8dQfpY8ZqKIPUcq9qBXnjTFIg1B+N4kItGZIg104eShzoEZd/8Ubn7z4rvKIvhLS86SxAFJ8kRYkz4Gkv8EhMcFCMDQ0VTWdND6kPMm0zVkdfkXP1g3C8oQH85bM/cVENlcd4N4ucHXkpKKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714161; c=relaxed/simple;
	bh=1VvOuhWjvj71xqQt5RYWXApfWEIxQvtC71cwobnVVu4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nxxOX45Bjp6x7ILsQmSoA58r7PDzwfYBkaeWRNLPGfdT2KXf1wiYxlLDi527D5TEnQestVMTtWryiabQ8ThS5t+Gy01LbDTVvwwk0npfKobCHvRNXRlltLPs+8fmtLPx+HtBUKdROsvtjleIdldrAiivFcHuCa0nC6i+NlKetv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eyytB+uV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TNvaF3MB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606BUlv62253695
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 15:42:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MLIJ2bjx/wd
	klJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=; b=eyytB+uVPnyJa9vFr/B8gLZaHT+
	T2qtPt5JgWioJOE0XxNRhDo4py8MOIifY0zujjXIZPo2va/iG9lZN5bH9lWgZJBV
	3/00mULF3N28foRaYxPUSrioP6UWDRG+QmrMcrcJC57JQCdfdfwfdtMRuSCH6Cyk
	1kqKAoRLnQRPGjQeBf35f+WgswbK0bgKN3Dx45u7cFSumANDFCpnYYTDxGdXFj7H
	NLKdsNn5H572jjyjPN1f3EnXOaXEzd09p/Qu7//Rbabchrtp0ze1m2B6FlUfzao9
	zUGKYIkZcMOnIjItolyrmmFicjvf4PgbQDdPs638atr/8x+rIt0XTpG9ztA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu421wq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 15:42:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0dabc192eso22645195ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714154; x=1768318954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLIJ2bjx/wdklJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=;
        b=TNvaF3MB4zN6oq+BROHVhGfVlc+ZpcthKUsoaO6Sts9UytjFZod/Ueh18baoqix2hV
         evhRHiChDM+zl94AkiZ4W0fS3T3aVuuwZCBG6cC3G1HegwZpv8YGskkGLOSMFNXcJwEy
         8og+PfCl7Li8lfRHRCix5CFCDeGpoJSFSq+Si2l6wmLQjkWQ2bGFOh5sSjKlAvCYgH14
         a8s3tCbGeeRNLlghnr8DGBwSe1kQ1JS0p1QwyI580Nbf+xsywVpT+METFCsyMgFthhAk
         QhAJ98AKw8UI2VxOI8CEvbWCOVmmOAbqpjOs+JH+RI4ju/BMoYxwhTkTy4dze1CsE0eI
         MdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714154; x=1768318954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MLIJ2bjx/wdklJkhrSWUlgRRBVAS9xQIXwyJjqZ7yCo=;
        b=ISjcwNaIzrp8RLjBej9EdlWkyzuIF84L+RGuo934bihZ9WKx5ZYXWxrYjMCuQLskfA
         lvrviBSbIbdJN6uu2B1AG2KmENSe/8jqqxhFHur1tvn6A35A4XO7a/s9QSE1h76r3C08
         zEIUjx9pt6qMF4J79ag2I03o3+ufJ+6aKYT3zY1JTIIlQsIWoHfVYHAt+eE05Mr+aJQc
         hqRJJWUiReofBDlMYZSP0UxMKgiNK+wO+JMbuXDhs8LTFjEpl1kanoof3eAlEcxveIX4
         dX9Xj9lGtk9acGHnomcuhvak+vsc2DqJLkU6DsQZt4fE5P0R4IT781GDvmMCP+RXbgjK
         dbfg==
X-Forwarded-Encrypted: i=1; AJvYcCUDdwFqgoIjZTLWV5a4RlHISs4SpHEsOLfdy+SrTsISehS9Qd9LcHAIlZ4mKSY95mP6aRfhbVN6sHaO@vger.kernel.org
X-Gm-Message-State: AOJu0YzrC0T5PlvdC1HazMwZlg09Zc/j0uHwyfTB2V26QHKg8dW3tyLu
	t1bH8ccsOuJM3nOKQWZAS15Pc1ElercT7L9AqRyk0dQLmgInyN9EZFn83eZ70AIvwMdJLsQSOLJ
	VsAjzJPOYwGVOTD3DFj4gSj+2F4HzdbAMqv0j1Xf2G1m+UfIxa4/ZJ4Q929e4DKCZ
X-Gm-Gg: AY/fxX7mELysDM35w4hpsky0hAxDIvLiMmzx/3jtq4yTgiQ5iKqWunEQAuEh7WilEcR
	8KaPU8iCj+p5tR0zCeYb8WO/lp8q8meCaQM8K9XwoiDZOItR3703NJTZIWAOw4EM5beHYOzuuZF
	uJQKZWJYb3Bwt/tsCO1KDI9Bh8B+rb+q/OxgdbW/vh+SEwHetS/jrfHQZeUDyETVwk4pqirsCNg
	oZAsxPEo+G3oOolNcLng2CXDgH4QZVkAuNgXKYpeytSY8RuIr1vX4lYM/XgbknQAOy+MIr81qeu
	0q6MJiyBDwhE6f4ciFEx+0GvtRjH1UOssAmbsdGVLLgOUVqigyScOQv7xydT9Xhdhwhjn9yYuLG
	2sS51y65q8GvaaowKMq3eEESVfkV1Ow+qx0GTsV/9TMrUbr6wrxDZ
X-Received: by 2002:a17:903:28d:b0:2a0:e94e:5df6 with SMTP id d9443c01a7336-2a3e2d50ee6mr31549005ad.50.1767714154450;
        Tue, 06 Jan 2026 07:42:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8z5h8zFxPhnIGTIfe++GibD1jOODn/FGkyxORNyREEj+xu/75UvgF1cMqHKzdEKJIebZ7MA==
X-Received: by 2002:a17:903:28d:b0:2a0:e94e:5df6 with SMTP id d9443c01a7336-2a3e2d50ee6mr31548735ad.50.1767714153970;
        Tue, 06 Jan 2026 07:42:33 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:33 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH V4 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Tue,  6 Jan 2026 21:12:06 +0530
Message-Id: <20260106154207.1871487-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695d2d6b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=-wAyGzpI3j0i2zLxvnIA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: bivToMffpFPTb8XF-e6ebyjB4B-HtHG8
X-Proofpoint-ORIG-GUID: bivToMffpFPTb8XF-e6ebyjB4B-HtHG8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfXxg68MN7HA2Gz
 zZACowEAWrRzoDTyCMA9+ce8vYqn+KbmtelwL2Szsa7u0/kpFzqmfzLuw7R7tm79AWxW88kH4u5
 3sd98G8jR5q2+6KTfVQR+wNuTX1lxi2PVSgNP+99akS9TzFhUjn1Fd52rFatb+334+sUzEFcHR/
 oPm6nC+WZg7lAPgo2FtuYfF7rGK2QUS00O/8NxIon00QDW7ewRfLP8R778ad+4cfM36maUQBVQ+
 UkPGeNKkvhnnC++N4rtSaWe/HePHTCOXJmsU6hOhjUa0p36uxo+vh0vEpv1t+DaJZSF8A6Mcmvx
 Ptd7EaCH+4EVR/Xgqi77AAxGD6e9Puj3YsaeAH0FUAgLVSyCWFi3s9T4OlOsdnxvXUZhWujSYH9
 MZOZW0k1jcdAtN6fn35SH69+AkBLDZ7ULSCUCGd43G9+4c+kcJIojY9kiSgVogI91UcyP3PdNKh
 kdxn3H2kBLntmXGmtUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136

Add UFS host controller and PHY nodes for x1e80100 SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 122 +++++++++++++++++++++++++++-
 1 file changed, 119 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index f7d71793bc77..25c838102280 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
-				 <0>,
-				 <0>;
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>;
 
 			power-domains = <&rpmhpd RPMHPD_CX>;
 			#clock-cells = <1>;
@@ -3848,6 +3848,122 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,x1e80100-qmp-ufs-phy",
+				     "qcom,sm8550-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,x1e80100-ufshc",
+				     "qcom,sm8550-ufshc",
+				     "qcom,ufshc";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_LN_BB_CLK3>,
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
+			operating-points-v2 = <&ufs_opp_table>;
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x1a0 0>;
+			dma-coherent;
+
+			lanes-per-direction = <2>;
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
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
-- 
2.34.1


