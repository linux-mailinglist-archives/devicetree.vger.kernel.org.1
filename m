Return-Path: <devicetree+bounces-251583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 246D3CF438C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 15:48:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38D03303443A
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 14:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438A0345729;
	Mon,  5 Jan 2026 14:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="okSFiEG3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dQRsYQjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C7134679A
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 14:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624441; cv=none; b=j8KTMNr0ZzWeWe8TP0IqzpCTRlC31obawCJsb3sRisuUISWnRMG79CdotygcHmnTleoKV2aR6iPdzUnhnaR7yksRk6aotUXYSHg2WCTdOs3SGBM6goD5yrp8HrN+Ju7+YUxz+A2RM/F0nEJ4T5peS5B0y8UzRtEzMns1DgwuFqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624441; c=relaxed/simple;
	bh=BtP3KJSTm/EaNl5zwyenM7VokSI6RXZKCbo/90GvcmM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BJ0K5hyWhnnX+cUaR3XJLnhCk3GSSdZXd4HAJM4PJXCgvOi1A4vw83FoTuitFmgT6So7byeXgAph/hwITIkyDKM7YEI+KMeq7jd8/pRsgytI7+dSPS++JeydphvJaMWYVQT0P2lK8tfSUJu8N9p4UVcqPDT6rL/t/44fuTzKjK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=okSFiEG3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dQRsYQjc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605A6DhD3541659
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 14:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V1SgzhIA0n/
	lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=; b=okSFiEG30LQSWOGkDuFOKMIJLZH
	ePJnXmAFozQE49DzKtVi+jOS2EJeI/UrK5SaIfP53l9e0iECp3ecMSA6KinX4Wd3
	h6i6oxBftPLI3KVqJHqcVRXDBmEmpGChiDzo5XK2tzYNRqz5ETfAID6uhhcb56iU
	5KTroax9qgQ7xfqsj5HQ2nCozNhkPQOOgtoGXtq/TOoXIDpdylR2n0Fxt+yen9l7
	GJjMeQGAdEPRAg8MKdGcFvRjkmCslovjcHH/H9d+ZUewcTOfCOFvGtkKcYFCAYwa
	lbP8pvbxfQqDJEQfs+XtTbwmuz7l6QuZNSE4cJIlvh+FqEtFlLHQ3CUxyOw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57shtqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:47:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c2f670a06so12928a91.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 06:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624437; x=1768229237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1SgzhIA0n/lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=;
        b=dQRsYQjco8JZH3W+nMCIjrzISHJ53ZnebBNyKrRMTsqIIJ97sXzzwVuUktFc7qs/sX
         Vr5kXxuki/dU0XyVWZFe6jY6XjF3FaSdINfOgYU0ffrltvdqFNoXnZxwVJVigRtal0hu
         U6M2bLDXuNDJhEx/GdDvYwNDYjzW5iVdOk0Rq/kc/N0gCc6mFeyqf4RGf5VNusza0mRt
         Sb7kFGNCq1s2E/l9ip562SSst1SdTaCztdWTxgM1Mcf+1fuUF0ZMCbdUWNh1dBt/iRFw
         QzKe6+5mAOxIB2kPOOnHM087czE2LszscDX8z2QP+BN6vxc2CtzC2B9w55bxauHRVsDd
         CV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624437; x=1768229237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V1SgzhIA0n/lH+e8c4NhHPbIxxfyBNFnqJV0Yv3DTIc=;
        b=NhZGieUDpbtpKfgpbFjx2Duha0iISCkx1+T53k+9EZg7bjCCrwHbKB0YMw18jrEiVw
         E3raMnNiZiwoSIZQGEm1ADA47JqS6rpWMBoVmyP9JCcipWUqclJ6gQH8Tp121Zyra11+
         10qlOBi5w/uUbo1rz8q8aLt/LBa+Ofvac1eDcaAahniF6+x9AArDCNz/kBADc2KBZ9t9
         Cebwkw0EqwnkMGtQnWvI0eE/2qz8hF1LN6jQtcNplIiYKHQMdzSsp7ntRHfhAfSNd+yg
         m2hw5DsdB9DG2zjPh298AGTi1pYiXvl8P4s9bSXEv3UMmVnK/DUz9loT57nr2MW23SVt
         84jw==
X-Forwarded-Encrypted: i=1; AJvYcCXrlbWIHWzXL5yqeyVkl9BcwDBYr5B670D+TxyZa/7OEdHs9nRyGWMZ9FH6wUSREckxEzrWoIbsB36j@vger.kernel.org
X-Gm-Message-State: AOJu0YzReKGv9V7ho0ELnRqaaL5U3iecsHUWWaai6yIE2FSAEvY54fnz
	cFRUzOueRAYwqK+ICbXoVMPfod5Zcz0AOaNZpHKkEhWr/KGXpGbSizevBk6MsR75p2l++ZD9v69
	TIijwlFXj9V7GEMzE/Ni0PcxNL9ILRE0GwQBx8++BG2ks/uaMOCb0YJRuaXvZWsj0
X-Gm-Gg: AY/fxX5YGNQifJrLxo5SK3mt8Eh67B0c5BQAiWbLyMZyqC+RtZxDnqYSDgrwzou2rOm
	zLsdVO1Vlr8BYaeWkUEGGia6cHsEMPfOvPJ9zhajafipAP5jbzfUQp7CuBJvq63vBEX1CXh5ZrM
	HrmpNZMjwhy5filHPozCjIRSN/DNekB8zhIYwB0b36QbU9MWbe/qbvumZUEt7GYt3PvmvQaN0G8
	uwFKdHbwRjcbScu38oLYLdo7omxulaqy68TpmJ+RDzWH97j3Bbx6ZI+pZbt/11ZI2fJWjnCxYgV
	yL+cFc5st4Z55uOtu/7ltjTRqj1ZZKCoi01SVxgnE9Oh6miXqG2RUWlsjzQqwX37nUKEKxrsrgL
	fCO03dNq/0RGBYdGjHIvFPlyJlqUAyxzHYqe/B4CFY1Wh/NN5Mbdq
X-Received: by 2002:a17:90b:54c3:b0:34c:2f3f:d27e with SMTP id 98e67ed59e1d1-34e92113230mr40041992a91.3.1767624436218;
        Mon, 05 Jan 2026 06:47:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEC0ntpKtEblnNYcl3KPIbge9nxcKn7exCL5e75nVmgyPbQLMaOfTGf4/gEXkYBasPUBxvShA==
X-Received: by 2002:a17:90b:54c3:b0:34c:2f3f:d27e with SMTP id 98e67ed59e1d1-34e92113230mr40041974a91.3.1767624435695;
        Mon, 05 Jan 2026 06:47:15 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:15 -0800 (PST)
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
Date: Mon,  5 Jan 2026 20:16:42 +0530
Message-Id: <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695bcef5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-wAyGzpI3j0i2zLxvnIA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfXyMcBtsZ3jm8k
 TFlPkf3YbU3tw8TDnLk9X6+S/SK4l1gunn8mww8jYLgndTrPB3QUQ5iicOC4U5MVeDakREXc5ss
 EmQEEznvu9vTTW7iZ0juPotQgYuq/UEfi/VqIKpTGanoEdVZzDOzJoIIEQLrdANRiaJc+yAwckh
 LkrdvPZ2t4/6+thhxa7kFOhsIzvmsJplNIN0b0Ye00ym/XEAOHmm/xzBRtuTlzCmmAODE9pfivc
 dYxsXbsqdSX15QiFHo+V/VawyuIs4Yr+/20Y6nXxrNXEfgJCSjeson1EqlZ5rVp1sp/oZ+osInh
 +pXvUf8z0rbCKUAeAObH/zsq9+rpSCfGpJwh3zTIZoK5DNGIQd+CSt5qL/W3YyUjULaaATi/oAE
 F3d4KOUqqVw9fDeeQqHZS/Vvq4F0tpU5bH4GFCF0AzBFdEqoQWQxTIiHLIwRaQ6sxtpajYYL0mC
 DgaPzWgO4kwCBaj7D8Q==
X-Proofpoint-ORIG-GUID: uLfIqrSvA1jBNlZmS5cAdOMoi5benj-V
X-Proofpoint-GUID: uLfIqrSvA1jBNlZmS5cAdOMoi5benj-V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050129

Add UFS host controller and PHY nodes for x1e80100 SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index f7d71793bc77..33899fa06aa4 100644
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


