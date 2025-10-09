Return-Path: <devicetree+bounces-224754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 517D2BC78A0
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DD823A6203
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D922BD034;
	Thu,  9 Oct 2025 06:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bQQ2NLKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37832BCF4A
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990774; cv=none; b=Nlj3g9lxhPVH+FIIgLU1jYjjVZY3EcwtGeaiu6VtdvqPJt+ZnVMBBjNDVlPWyuF5TBIrR6PmA+de9h9oAtGMYaXCQc2eWeJvGEl6URRvCxtCRv7adHKwYNpc86LF5YNV3GwTbNVaZqgGTrLQFMMqZmN2FJPOZsQU3wkDUWx7/xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990774; c=relaxed/simple;
	bh=ykBQ7u8ZSIReYiJMLWNXe+5gYOOlY9SgqHAlyMhV+Go=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ff7YTA1Gvyq9Y8ppzJubish3PNiJPZBkhaW+WuPIX/KGkfRrupzMFxog7xKnbPpirrTwaDRrCWwFqg6hiIlcKT2urBgAH2XVMm8pvahQMo0qz2ByrIp/tamqu9EHJwgtv4ziySzxbVvF4feopTJxxj9uGvTqAw7RsqcCF3+M7sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bQQ2NLKr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EZTe028652
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:19:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pANp4b5IxkjtlSbfF4Du1EXVAPUD9mR7LOIuI+ihGic=; b=bQQ2NLKrMRKPEJpv
	gFqa7HjhlMaqHLmX33Hd5kyRvLP4QmWXr7Rph2KjrSLxkBh6wndQd5wkdW/vt/+V
	q42eTFHvOLQdP3w9NE5UYdj8/3dqd7TCvrCrHAT06D1XYRjkRUsz06YAhJJeZHv5
	0xRZ5yMW55YKftCb71/KYmSV0iyV+rIte/V0fIzW+VDPdohDCq1ExDcYKzp7Wp6u
	cggiKp3Y+VKUNPO/KCtgVCMj2G+EkmVwaa1oXBQrJ5gjeBHOTXjJV/HjwIzAYlwA
	BDD4tFnDVbUg3EcXqFhZ8rHilC2ehURdaoq3EinVN5yyW5mBXz+VJUi8IBaf8kxR
	rQVvMg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ksnvc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:19:31 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630753cc38so1521921a12.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990771; x=1760595571;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pANp4b5IxkjtlSbfF4Du1EXVAPUD9mR7LOIuI+ihGic=;
        b=ZKx4anvHFlOd4XKcFhKEuJVbFM0hysYtMeDZOpidDeyrAKXkdeuGkHXHzwcMYh9AQ5
         tVtE4cAIBfVhECuZD9VPJXKyHcFBpTU083anW5a4544RahsXFM5NA65jwemOIjZUNepG
         fQ/BEmI8mplEQKdI2U6VVM6XmOEtMt4fCITQHZYAXYTuIPjM8VkXQu4hHT6JFYUXmJ3J
         1pxCYKqYU0b7celKyp20fZQ9Lf0r7ixgJSPMPuGRV/YknvYA9N1YCRo32LKCXKeXuvt8
         Tmogxx1dCPjTV0LvTzjTvsLI3/uDyqNmRz2Gn6BrVzPTgnl4ypA7vApvXyF7b0PMPYuZ
         iXSg==
X-Forwarded-Encrypted: i=1; AJvYcCUYip6emJjKGFCkRQlnJ9iUFGCYNTlnNoMowa30nOB7BmDgk3DCvzxNFxdmpvkF2zRg6o+kmaG4CrSp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6VL8t3y9u3MWMurY5Kj1GiQoXUkzF8GaDNVUN/Xykip1yIgqh
	4tqO4AdAZMZZSUG6WmCxJhvaJlrKbUGyEwfaWdkxRAPq8LUEmaEXl6IkCILdHo58fMkIHauqGIS
	OP2FOyNfdz6S5S0+hkzxx5JJRNgpDZgB8gCN2cIWIimGFD/lk28k5gLAugRoR7tX2BYzMnqA1
X-Gm-Gg: ASbGncvUXUGiXY6fZqkkgM1614opatHNqA7lYMCO72aO/hwICQOLCc2ay5sIMTfUDEO
	b9ke3ONZBwS46zOU9fI0QCZ6fCVTMnFP4AV2dzfxIdYI0oqc0v94+fJdEiDp5Zz3rPMRDQvAsfc
	NJEvn/+FMJepQqSJluq0mU5sFz5HF7phhc4FGJPPlIcQi4CgDWvQBxWQ6Ldn63OvJ151VVD5J5K
	DEUtDbySAs6BrMFNd1NHZL9U8zJ64gUlLR4kfKhJLJ0zhBSGdVZIIfDn625LWp2chxY/f3i/9nt
	AJNcUn81XQhZhiy3KRM5Yr/SJa+JpFAS+sPAlk36ZVRcZvlbfANCzJFmdmEx+JqAuj1cIkQ4PrZ
	uH5uVpkk=
X-Received: by 2002:a05:6a20:158c:b0:309:48d8:cf31 with SMTP id adf61e73a8af0-32da83de278mr8455140637.32.1759990770805;
        Wed, 08 Oct 2025 23:19:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDDZMlxBEo8TNnN55hF6q2KHziI2Auqcmlg2+THc18Zu5AlzTesyPqOaZr4RuS3lQvYIxUuw==
X-Received: by 2002:a05:6a20:158c:b0:309:48d8:cf31 with SMTP id adf61e73a8af0-32da83de278mr8455084637.32.1759990770047;
        Wed, 08 Oct 2025 23:19:30 -0700 (PDT)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm19239671a12.4.2025.10.08.23.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:19:29 -0700 (PDT)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Thu, 09 Oct 2025 11:48:54 +0530
Subject: [PATCH 4/5] arm64: dts: qcom: qcs615: add ufs and emmc inline
 crypto engine nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-4-2a34d8d03c72@oss.qualcomm.com>
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX92DZDr4beXhv
 jKkAfXS4FpUiO/Ths2YVCotVfAmlK1i5zDpz1lpoxWgMhfiuPH5NFw2TUKzr6flqy9vGZbTYRu/
 XHf3DDTYLhdXf/KCw9UVSTLulzR13igVKuhW8A/mPslTaLGWTtm/3m8vISOHKkHlo3BdoKGZ8++
 RQRV/SGG4ng8t1y55JhEv90LOX2cptxSYZmt9R00KdPe7QoawQS0X9QUt1mR5Ijo2IjLB+RKozX
 a6FgmBkOZWrTIJrpafH0x59zkkC6++jyRD09JTsG1IUC8HPLrbqE/YHzn9wztURbOOFa1rrWRf0
 C4GmGkIBT+mXq3o+0SixlbmgS5ehavoLRsTj97vT/mn7duMq5bePov3K/FHCl3xDNWFvyo98xM5
 3ObFdsHajxZir2pNCQeaAmHGCxDU6g==
X-Proofpoint-GUID: V148rVi4GQiTv1YTJ1lQjTcq6OG2EsiS
X-Proofpoint-ORIG-GUID: V148rVi4GQiTv1YTJ1lQjTcq6OG2EsiS
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e753f4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=IdboCmTcumTcOcSitEMA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Add separate ICE nodes for eMMC and UFS for QCS615 platform.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 51 +++++++++++++++++++++---------------
 1 file changed, 30 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 3d2a1cb02b628a5db7ca14bea784429be5a020f9..bc1167b86e3896b9a54290e6a55ee2fa75a48c27 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -549,11 +549,9 @@ rng@793000 {
 		sdhc_1: mmc@7c4000 {
 			compatible = "qcom,qcs615-sdhci", "qcom,sdhci-msm-v5";
 			reg = <0x0 0x007c4000 0x0 0x1000>,
-			      <0x0 0x007c5000 0x0 0x1000>,
-			      <0x0 0x007c8000 0x0 0x8000>;
+			      <0x0 0x007c5000 0x0 0x1000>;
 			reg-names = "hc",
-				    "cqhci",
-				    "ice";
+				    "cqhci";
 
 			interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH>;
@@ -562,12 +560,10 @@ sdhc_1: mmc@7c4000 {
 
 			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
 				 <&gcc GCC_SDCC1_APPS_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+				 <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "iface",
 				      "core",
-				      "xo",
-				      "ice";
+				      "xo";
 
 			resets = <&gcc GCC_SDCC1_BCR>;
 
@@ -587,6 +583,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			dma-coherent;
 
 			status = "disabled";
+			qcom,ice = <&ice_mmc>;
 
 			sdhc1_opp_table: opp-table {
 				compatible = "operating-points-v2";
@@ -613,6 +610,15 @@ opp-384000000 {
 			};
 		};
 
+		ice_mmc: crypto@7c8000 {
+			compatible = "qcom,qcs615-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x7c8000 0x0 0x8000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+			freq-table-hz = <75000000 300000000>;
+			status = "disabled";
+		};
+
 		gpi_dma0: dma-controller@800000  {
 			compatible = "qcom,qcs615-gpi-dma", "qcom,sdm845-gpi-dma";
 			reg = <0x0 0x800000 0x0 0x60000>;
@@ -1249,10 +1255,8 @@ pcie_phy: phy@1c0e000 {
 
 		ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
-			reg = <0x0 0x01d84000 0x0 0x3000>,
-			      <0x0 0x01d90000 0x0 0x8000>;
-			reg-names = "std",
-				    "ice";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+			reg-names = "std";
 
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
@@ -1260,7 +1264,6 @@ ufs_mem_hc: ufshc@1d84000 {
 				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_UFS_PHY_AHB_CLK>,
 				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
-				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
 				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
@@ -1270,8 +1273,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				      "core_clk_unipro",
 				      "ref_clk",
 				      "tx_lane0_sync_clk",
-				      "rx_lane0_sync_clk",
-				      "ice_core_clk";
+				      "rx_lane0_sync_clk";
 
 			resets = <&gcc GCC_UFS_PHY_BCR>;
 			reset-names = "rst";
@@ -1297,6 +1299,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			#reset-cells = <1>;
 
 			status = "disabled";
+			qcom,ice = <&ice>;
 
 			ufs_opp_table: opp-table {
 				compatible = "operating-points-v2";
@@ -1308,8 +1311,7 @@ opp-50000000 {
 						 /bits/ 64 <37500000>,
 						 /bits/ 64 <0>,
 						 /bits/ 64 <0>,
-						 /bits/ 64 <0>,
-						 /bits/ 64 <75000000>;
+						 /bits/ 64 <0>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 				};
 
@@ -1320,8 +1322,7 @@ opp-100000000 {
 						 /bits/ 64 <75000000>,
 						 /bits/ 64 <0>,
 						 /bits/ 64 <0>,
-						 /bits/ 64 <0>,
-						 /bits/ 64 <150000000>;
+						 /bits/ 64 <0>;
 					required-opps = <&rpmhpd_opp_svs>;
 				};
 
@@ -1332,8 +1333,7 @@ opp-200000000 {
 						 /bits/ 64 <150000000>,
 						 /bits/ 64 <0>,
 						 /bits/ 64 <0>,
-						 /bits/ 64 <0>,
-						 /bits/ 64 <300000000>;
+						 /bits/ 64 <0>;
 					required-opps = <&rpmhpd_opp_nom>;
 				};
 			};
@@ -1360,6 +1360,15 @@ ufs_mem_phy: phy@1d87000 {
 			status = "disabled";
 		};
 
+		ice: crypto@1d90000 {
+			compatible = "qcom,qcs615-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x01d90000 0x0 0x8000>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			freq-table-hz = <75000000 300000000>;
+			status = "disabled";
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x24000>;

-- 
2.34.1


