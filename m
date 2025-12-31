Return-Path: <devicetree+bounces-250781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8935CEBC6D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E4694300C1F2
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40033101DE;
	Wed, 31 Dec 2025 10:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PljmhoSi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WvnbZFVt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378B5275AE4
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176467; cv=none; b=PhJWKn89eXO2VxXj5GS2ULVMLZ7/tB+O/Fn04UVVCtvwq8JSwd4BREFsDyoAtrsry0FTbYQ3S5+uqQk9AavOy6PrJ/U3bidyGeTBC2q7BuBVmEh06OFRLZ3mZxb7x3YCe8YRPzsXJMlkVkKIsOrPX2Ezwkc6sYiDLRQod5+Tq0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176467; c=relaxed/simple;
	bh=DChnZ1yeSzwmLeOIvBY+Ieih50FRBwTtV90FenSJu0k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j/aK5LRydYUHwE0yFDOaMbLULVlRmGLDil1BeWg4Gu68BLp08ThPZQ8A9+H3Hti5fweVbimRHL/qNIWbkz3CdWAHy6tEbXO098374bNdfmjOs90WmvWWGoL5OItPGKl89uUzIu9bEmx11yxLeoy7B8DtZgVazrEOJGswTesyDi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PljmhoSi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WvnbZFVt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV0R78s949868
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CjJ/9Ca8Asz
	CWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=; b=PljmhoSi68Y/c1ES+jx15Z5QgRW
	JjluJY69qP5jjKZdbbLXa4NTi0EC0YS5k26HyUlq6AwFMkT8NGlNGjaCS9HTE8lD
	vXnpez478bmsaZTvHpeWnFiFgM53tzA4NXSN1l4x4/AegiPYDtdVpDf3Dxx8ikLA
	0OqzArsgQKGLF693ZcvKj3sJArq3gcyzMLavfz3lAgoZ7N+Gw43aZ1kjI74VJ15Y
	IUX6uEtFWfIqLG3UnE0ZpxgyE4sUJ0Sn46oyTkXG4bLtiuxMOMO2ahEf4NAlJ8rA
	KnS9m8c10JuYedZhk25xkijJfubsVPFlW8kL5gHAg2mzYcebYipE2X+dOtA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgv4ad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso22688922a91.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176464; x=1767781264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CjJ/9Ca8AszCWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=;
        b=WvnbZFVtRDGsb/K7QW+wo3sGEgKLi5jiqLLu49dWF76UrbHHvfziNkOFde6vaFqmsq
         wFOYpo9J+LrEfhIjKY3axNA99ALkDtlO8hPwq8BqnlK3BmESYM5h25U7x1H0eF29QOgC
         boIgMM1P/Xel3Ix4M2YWC5+uGn8NaRe0h2wGixB1zy48JK1jdomaX/cRk6OeqMnnmpe8
         aiOmGqBxtWrX4KP9o3QYXMRZc+GtbtKpPGoVkzk4jaJSFf7ugUetY3mEWESwSZCO7K+P
         OLWJuzu8NDTOgYhbIQQ1QuSl+xNjH0Wt9OOwNRhTr3t91osJkrB8Hyl8Y15n/0t5IARh
         0O+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176464; x=1767781264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CjJ/9Ca8AszCWwY+bHi0v9FGw9X5NdekDNCSIdTJLpg=;
        b=fQD0tJAXvbFWZ6C/8Pa3AtOp/ljiRhynwVwyqzTi+xA7L0Km81NBLvxXu7A1wlfUrh
         Wd2nEwIpdbyGjkU2Pa+iXhFg0A8TryhzDW0w5wgvcfw79ne9BAVQU+7CeYxtTQBPZ3Nb
         Exu1CxZfo6DuYaJEyshQGasSOQrc6B4JW3LN/RTQLWPryxeIwRe9Pvj0DM/KFkrUMFhb
         CVbSTeHLAZa2IBysPQJ0P9WMFsPmXxdBGu1KiVHfJdeMzvoiR/2Mw8A0AOvCg5EGJdJb
         QZMnxMoFiAZDVORzGElmWEh3DbPhWFdx1zqOBHZKFBsVQE4BKyDyXEmEd/2MEKMp81uN
         piLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVycmNx13KVTNYHFFUDANp1WrsbeLlDEoICZ87AwjFQMSvfE57VqtJP6TdbgicVE/nkF5EX88gIndu0@vger.kernel.org
X-Gm-Message-State: AOJu0YxzBKLEPR5fdQp6D7x+Qy9k76XPhRgmZuNTKwvp3Cl/HCREFpOW
	6pqLbGMH+jIsF3/Y4153W6AhDBfzW/5q3mtTUTpnIgI9td6HkjTqDeZZxUAI2ezNPeJb0Df+L2T
	edk6QjTAikS2KmQGuZtM5d/Qfmhw3UeIcVPfSjEU17Pv3yZNQKRK0YzolVo9bu0Jg
X-Gm-Gg: AY/fxX7Z2b2Hk8AzU6p2FLWx6aJAuXOzeNhbEWNK351WkZnQ2gIQMoEph4I7NW2izv4
	WdujQ118MYEMKmSp4CUU6tqgSHeQngKurP0R5Hi/264eKygewJKKuEateAitp9/02IEK2FYynHB
	JYvHfP3EwNOsVxxbrc/7eqhoO5rfgwUruGFQ3i3glflxfYZFSB/xCAJr13hsmdp40Yp/HinEheY
	DjCkPLY8qnDbuLh7sH/o1qm9nQv+FraIlCiLJeeGfkZeIZ/fXKTMIOc3kpV8OETgYk7sGpAmOzm
	chBvMCmP+DyMB9nnk6i1tKARRWyGTwEfUkG/+7yzZKA6LqTIbovsriiYAyutivSSSS6BJ1uC0sB
	3WxsbxH+mwT2I36M5xnnaZu8N8EsHp+2iXMdLLNk7BOlkdivbZIPo
X-Received: by 2002:a17:90b:37c3:b0:338:3d07:5174 with SMTP id 98e67ed59e1d1-34e9211e556mr26888371a91.5.1767176464304;
        Wed, 31 Dec 2025 02:21:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZJ/hDlYxya0cqVXGmcQC02sSHhRiMrAWcToJnpayDLGrTdoVYDAVXVJ800qL+pvzDhowI8g==
X-Received: by 2002:a17:90b:37c3:b0:338:3d07:5174 with SMTP id 98e67ed59e1d1-34e9211e556mr26888361a91.5.1767176463835;
        Wed, 31 Dec 2025 02:21:03 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:21:03 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Wed, 31 Dec 2025 15:49:50 +0530
Message-Id: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXw6aqGLE68mA7
 JDL0BfxVUUeWH5rQfUKxrjpWAOditR8i54v621qAs7/E7psbv+BBxX/sHMQveybpmjzyiolupq6
 roaNKxNgw2c/mPBGxXbi7QgIrAl9zxfo0IoX95NS4G2plLc1J54TYpxvac5+69R2v9kAJNGZr0X
 mBeunZ1smyCI/RhfSRTl1961opeDTssCpNUmN9nN98i455gONaq3nJCbZ02VlBYSaeIZPM7qr7E
 yTsQwN91EJ5bpFszdHrtmHQSuRcZ5QoWBv/2p7d9tVM6KQ99M/Vx8d3FFqSMlZRnJT6xDn3RgMM
 D+QwIfbchMYzn00JklC/wu3HV2EQQNUtuA7S+m5U79/2a5rUKhJhqMcQehKJJn9h64SSURyCbqb
 PZf3wADzTsem3vIlS6I7z2lk3PArbujcCguLu0T3YN7/q6En2iDJeEpXs5X3l/AaLLBqkv0oAgs
 Agvu6M78i8rQeovmJ8g==
X-Proofpoint-GUID: BykPJX9W-p4TZ4FdU_tkvKWpKUGaIlJD
X-Proofpoint-ORIG-GUID: BykPJX9W-p4TZ4FdU_tkvKWpKUGaIlJD
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=6954f911 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=t4k6GlNMiQNeD8J6t2QA:9 a=RCcOOarnl-q3lznF:21
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Add UFS host controller and PHY nodes for x1e80100 SoC.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 21ab6ef61520..cd7e2f130fe2 100644
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
@@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
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
+		ufs_mem_hc: ufs@1d84000 {
+			compatible = "qcom,x1e80100-ufshc",
+				     "qcom,sm8550-ufshc",
+				     "qcom,ufshc",
+				     "jedec,ufs-2.0";
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


