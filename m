Return-Path: <devicetree+bounces-161426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F0EA73FA8
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 22:01:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C106179DD1
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4EF1FA26C;
	Thu, 27 Mar 2025 20:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oq3mxkAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF47E1DE886
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743108907; cv=none; b=tLHJFknHm8A17Lv02kfvRHkGRrcxLGx0DYZw5DvtwLHO69m8m/BDjquYZJm1xyRg4WbpWrripIG0vL0SDyxYKRowU1FG2DmgAxAosmzsffsCZq/YAPO0Zum+AzrYm/Ps7yG021GMtHPnob3uc17glW+b+bd2hmJXu4f1A5AkJnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743108907; c=relaxed/simple;
	bh=cjSx/00TkaY6JHSIdCJGq7ciElAp4+vTvI56Ogev2ik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N7wijCL4gvxjY0TDeuV/3UQL5P0tCsbjT5LDq6L9wK0eSrz+3NthDAjetS4k3mlq8Ju32EYa/7rrjncXmf3G3RjGTQY9AbvgLXHBy8XebxNky/Mk2+/V8WtOOPjAn2y8VI1eJUELxweD2BxFrB1sUcBGVd/6J+ovw/IqebpRhuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oq3mxkAQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REuKBc013904
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bjZQKqLQsWFvjamm5g944vMMcoj461bRM5XmoRrjBwE=; b=oq3mxkAQNTgKIzod
	unxHYuj9L+GsuAAgyUmDRcuaZbSCatL1UeyeEf1RNgbcOfer5yrtK6Sf0cqsl6Ef
	gAFSjnZLEMGgnrtWoriyhIxY8FKCNTs262PJEcADunPYgrjhKAvP0Bol9pZYlvJ0
	M7e2lGncW3HPWq+//WUnlBVuNPWY08RMUYc5uiemhclM1PZxG4YobnRMr8efhzyu
	ADssnZH3ivze72/jZad77QjzG5dgGHr6q6wPN8ogr20N2MNd7lk8HfTtaKzQ/PuC
	Sg+pfM42NohYkEJxFcOiCVcfkMOd9SNpx9lGO71P45mmPGg8gJwCN7rysptsioPZ
	wLS9Iw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcn8gm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff69646218so3718061a91.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743108903; x=1743713703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjZQKqLQsWFvjamm5g944vMMcoj461bRM5XmoRrjBwE=;
        b=D+ijk9Dnlc/l/yU6iq6Zsu3TBS1639K2NihoGUy3LQ9fVNqdNYZiVKa1HzNvRVn41L
         8ipf0/EF89j0sLhCJqpjmuFNVG9K+40AJcSbudUF+IPdsB4O6f7N/pVS0UvY0kvq/QJH
         jWDiUkB1BABWEyPAhh3qRGNM8rV+GDVuB6XbfO48VXurteE9g5dE1zn6dxh5OQo7C0rm
         tI4aoeTesRzgE0kpZESqX1eYDXgtWOZnhte7lT5au7WRprBSJtlv8jC9pJl4g6hnW6Hd
         ihjPPeiqV2W7v/6QKTu7u5NiqA6Dyk2Xz0gqmDJhlUfddI7TNXH2DXylRSRL4YGzs9w9
         5o7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXtdI8abyWAMV9ncBHk7synNn3MGAGbviMw+r7mAlqf/FzGjCYN51HGU3wRQ/9ktRkJJlWyd+aJQgeq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz25L0QXIp3LBf9arsm4Q2rJuA8y5RVuvosQGM6k7GvaByrxDye
	1YmjJRrlFucjtTA0iTXnX5V0aJb8OB+mZKmkbCjcIJ0u9m5qScjCJ4h+Uqm0J2KDbZWbg6N+zBF
	498W/s6X+X8R4dGRPc/pt+phwVYVfvUWdbL1Tr8J/1hOzGb31Q9ZXowRYNW7fFsmWcAn2
X-Gm-Gg: ASbGncv/6lQUh+YbAPwo/IuFCkrAl5WlODRFg9jXu9rjREvDgIPst0nkNxe6Wzz2qD1
	5JEe+fPbJstf9BrAhta5xrorYReqi3NsiDyVeKOFbBa5l5Hd1PWEddc6y73j2FR173FD95H+RSK
	/dksu6C334qYGHnt68au8jlCYr7ZuU/5+0PbW+EaWJgZVlMMBKqSVydV5V22FA+fCJCuCCBYEB9
	JDoMpXjyh1/RyfDZmPkT3YznWFDWD+DN5gE3HzRXbrbZ+n1pqnvp3cORDlatTtsZMXbtDWeEEY6
	PEiPuKh8VWCuJTZIfLbMHTuM3GK5D5dT0ThBoBsauQmtD8zO3g23+f/bB8lgH/GakHaaW2c=
X-Received: by 2002:a05:6a21:512:b0:1f5:591b:4f7c with SMTP id adf61e73a8af0-1fea2d69eddmr8624018637.10.1743108902690;
        Thu, 27 Mar 2025 13:55:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXIBxuexUJBoXsWR0ttPAC4ro9DvpUwebdWEN/LkZnVVeEsc98tcNJa7kLY7kgNzuYH93FzQ==
X-Received: by 2002:a05:6a21:512:b0:1f5:591b:4f7c with SMTP id adf61e73a8af0-1fea2d69eddmr8623965637.10.1743108902183;
        Thu, 27 Mar 2025 13:55:02 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af93ba10da3sm330889a12.66.2025.03.27.13.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 13:55:01 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Thu, 27 Mar 2025 13:54:29 -0700
Subject: [PATCH v3 2/4] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-sm8750_ufs_master-v3-2-bad1f5398d0a@oss.qualcomm.com>
References: <20250327-sm8750_ufs_master-v3-0-bad1f5398d0a@oss.qualcomm.com>
In-Reply-To: <20250327-sm8750_ufs_master-v3-0-bad1f5398d0a@oss.qualcomm.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743108898; l=3908;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=aupm3BTR72idKP6mY4nPP3V9L9gZbHXhnPEYq5h6keA=;
 b=EHDIVNxlYy8pZLb66Z4nu6jGqkx/4csbTif+5tcuXlCa+7jSoH+A42PI6arb0rdkIc+rN842R
 FgXxYM8GV9mDM+pb2ejLv2cfcq0mU86K7YUKBVC6GW9LKU4FlEmBq6y
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e5bb28 cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=nvPRnQvScE_Ve3Vg3kMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: jyR4dDmhUPlrmKdcB1NRBkUhLS9auyHJ
X-Proofpoint-ORIG-GUID: jyR4dDmhUPlrmKdcB1NRBkUhLS9auyHJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=947 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270141

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Add UFS host controller and PHY nodes for SM8750 SoC.

Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 103 +++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 612b99dc3c55495d06b3577531ec6996554bbbb6..ee96a13dc41980da5e9d61cd69721b90dbe34936 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -3092,6 +3093,108 @@ gic_its: msi-controller@16040000 {
 			};
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,sm8750-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
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
+			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
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
+			iommus = <&apps_smmu 0x60 0>;
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
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-403000000 {
+					opp-hz = /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
 		apps_rsc: rsc@16500000 {
 			compatible = "qcom,rpmh-rsc";
 			reg = <0x0 0x16500000 0x0 0x10000>,

-- 
2.48.1


