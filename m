Return-Path: <devicetree+bounces-212089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B6146B41C55
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D2B77B256F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331052FA0FB;
	Wed,  3 Sep 2025 10:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="prIY2sMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1652F998B
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 10:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756896727; cv=none; b=mOV1B1AQBJAeZA/VDqxQ0tlNUklr+LP4006t2zDrAKnbh/1DM94KbsaqzA3FCl0wd77mwtYPzFg6ReLKjJt6ASS0GbCP4Xrp3AN27XOIh98Mr7qJ9RddBUY4cTzUbdUBWyy8cl3zd3gtU0MLxrda2uKpvdGVXbclYnVNcTVmW+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756896727; c=relaxed/simple;
	bh=nKzM8+DhB3mWRo1Uw19AVwyiwRjw8Y1noKAdLwZJkWQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sQXA/rst3/ngfsOK7JvhFUy0GgONh1uYaEUs9Obf4JYW4mNNfrfeaoyYt8VYpANG2553m93lZBrGnA7KC2vUOGJJOsL6AJXO9c+PJ7qOzc8c5GDFH2uQuURu/4f2J82k0e6X8LyieTiYjkWq1UXZKJlLsFRyVXPOLDQeWXmXHuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=prIY2sMy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AIpJ2025291
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 10:52:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0K02dLIrIWIN69se35x4CnkEpVg0hHnCCy6M9lvO6aU=; b=prIY2sMyZbKWgYwH
	GCsQ9fWpeHi++m9j7p4EAr0OQ7ac6bg8gv8N22jr8AUMwlswT+yn065udi/SJlBO
	Gn20Fo1Vw5ieHnEI8OKtw+p/E0Z1WPR1QNVSZlpDGjz8IxWAESeYipCwDaI6FtCg
	iHuzu2uCY42YgbLBOYMy3d1mX40pHY54nrRTvE3kfo+L5hnTdQNf7yHotv6qRE2g
	bIT9N+Vyde2LaNj9ekzjWCY/eC1mSAKZ8bPleTVGRLFK8E1YDesB6QcikgYYfQSJ
	gA0Fm9Y0f3huA51qgSuqPHlngoMZM9go95VSFXYVJX16qIeo22NIimnHnislbNrj
	4smD7Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv3g07-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 10:52:04 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b47173a00e8so4822410a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 03:52:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756896723; x=1757501523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0K02dLIrIWIN69se35x4CnkEpVg0hHnCCy6M9lvO6aU=;
        b=egVEZmN+t+oLHMzaWVooZIrd5Z7FjUHPx6d7Msp3j6jxCb/pukA7vUsGsHNwBPoIhZ
         mx7yKPeGhKRtu86xsN9Y65V5/j2yy0XcsIytYYWgDqadJvqRu4H7HYVMViwkvvkGXUH3
         7ywZ8FiuYyiGX75VG9lCpzgzHmF2zYwVtolC1OdhE0Ey0YlKl8b9CDNEBE/izMF0TIgG
         gSATBTLHp+IpS9/3eK/LIf+/xXQU9veFHcHEuOi9ZX9eZy3O53VPpOfIgrU4sMWkLBWj
         H9HC0Tyxc3nXvhHbPyaZnSGuTrLyZkNMa+h+KHRmw1dtjF5WwIuWT7RuX7w7nAtTkrry
         RwCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCsFR6UT0oDnGLQlywnB9M5rgHaILRZhnNCDclDmMzgWwcuaRAX9NV85Fdgt/9loHzDaFekKlNTz1K@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2hYEqqpliGQI4sVrLfRLBg5N1Y9Je5PdpleTc6VbNki26qlWh
	u4RIjlEgOimY7tOsIGtKJlb3sFnPA9Z359wTWeZ1Iulz5yH/8QvBAqdUXQWDueFfGqeUX/MX/2w
	ikSUT2phXMorLkqFHH3P8y8FaWQ1ykPDUK3Dp7Qx5nqJUSYShuEptVMIkgSIxTk+o
X-Gm-Gg: ASbGncsdfTusluPzZzf67ETg73YX1ItdBclmEZoKhoO12z7QQ2iqUKlyRjXOL0HglLE
	h4AL8cPZwYhBqBIOlc8tAV92xzlAs/mvjBRFUrY/O2QoF3CXU/yWyPWWD1EManXCBPQKg9BvFLR
	yZ6VaM8BGZ3GTTH2rh0tgex5CfPyx3aTeEB/cgv1TU767MfwHCAF+f/CQ6WqRTKq8IPNv0CcC5h
	umfPBmRRy3n0eBpUOxuwgu1HJEaTKPntdbjnmqZxvTE+m+KcVTKHPHMpTxb3e+L6v6APsZF715k
	gxq9m97mTFT2ISzMQ7C5ps49rw4YZSwYQ3fOMiBEGAeKOcY5Qin6D33UbWXRp7Q3UuWkkaSfdu9
	KU/i1RO2wMie03y12N2Qjavk0Bei6kPCSJH5qO91klRhyN3fj0k7T4Uet
X-Received: by 2002:a17:90b:1848:b0:327:6de3:24b6 with SMTP id 98e67ed59e1d1-3281541223dmr18814944a91.8.1756896722884;
        Wed, 03 Sep 2025 03:52:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHzZzZ6b8RjjgvGoFeQd4E+IrJe/7VCVvhzz++1+LGXDEpaAQ+0Bgxwr1THYhd550qoHz+tg==
X-Received: by 2002:a17:90b:1848:b0:327:6de3:24b6 with SMTP id 98e67ed59e1d1-3281541223dmr18814911a91.8.1756896722363;
        Wed, 03 Sep 2025 03:52:02 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-329e3a6720asm4856888a91.11.2025.09.03.03.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 03:52:01 -0700 (PDT)
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 18:49:28 +0800
Subject: [PATCH v8 1/2] arm64: dts: qcom: Add display support for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-add-display-support-for-qcs615-platform-v8-1-7971c05d1262@oss.qualcomm.com>
References: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
In-Reply-To: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>,
        Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756896714; l=5827;
 i=fange.zhang@oss.qualcomm.com; s=20250714; h=from:subject:message-id;
 bh=uXlwezLY7U3gqs8X4zeTpdCd9Lux78E+OqnciVI8/Jk=;
 b=nJMMlMxwmLRBPOm8DOtATHaZV3jr336k5oN3dKsp8USIFCY8D7t9Q2Bg+o/o8b1NgUhZCNBc0
 ThYkwUazfukDErkAalcbvZZb8ctAO1ZbyLXAF4qHodyLLWc2GJkgHVP
X-Developer-Key: i=fange.zhang@oss.qualcomm.com; a=ed25519;
 pk=tn190A7bjF3/EyH7AYy/eNzPoS9lwXGznYamlMv6TE0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX9KU1Aj5rBnhx
 PJdM5POOqOe2z5W+DVruGOv1EK66+FhRFsYLfkDN5IKnvz7zhfF+pU0bM2/tkGhmDDvXD+h6JdG
 sxjDEoIlgj+tFolMvYHfECMOnrCEGaCqpAYvN0bjy3TRdzjyzIH5xIa9IghTgOxbXYhYvevlYV7
 CEz4jHA3uhN1hF2pzaqdi0Qukcje2ipIZfg9WwbeJXALdPEnfJbRG5BZ0VmC4bPaSHecDQoQFht
 X4XfigumrMT0Gzha11+aHpkAwwtz+T8wDP2A0rIKwKE3DDi+2ihBYfUL3AvvfJEIjgDNMzsjcWd
 kEqEH9sUEkfImIVFwq1oAKNv5rvYb5hPOit8wUbdEZyI/nR8QJQ+Wyxo1jYHZBy6XBnt8rAW6Sq
 7u2jEm5W
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b81dd4 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=Roi-LC9FDB9nNxv02foA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: C3vjhBAuNV9FED0EG9VfXEsk-NRdEZmo
X-Proofpoint-GUID: C3vjhBAuNV9FED0EG9VfXEsk-NRdEZmo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

From: Li Liu <li.liu@oss.qualcomm.com>

Add display MDSS and DSI configuration for QCS615 platform.
QCS615 has a DP port, and DP support will be added in a later patch.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 182 ++++++++++++++++++++++++++++++++++-
 1 file changed, 180 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 53496241479a05fec7bffa893b96b2d12b2d7614..c0e6485c148a059f6c0b2d221a9ee34b0220ea06 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,qcs615-camcc.h>
 #include <dt-bindings/clock/qcom,qcs615-dispcc.h>
 #include <dt-bindings/clock/qcom,qcs615-gcc.h>
@@ -3579,14 +3580,191 @@ camcc: clock-controller@ad00000 {
 			#power-domain-cells = <1>;
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,sm6150-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc MDSS_CORE_GDSC>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			iommus = <&apps_smmu 0x800 0x0>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss_mdp: display-controller@ae01000 {
+				compatible = "qcom,sm6150-dpu";
+				reg = <0x0 0x0ae01000 0x0 0x8f000>,
+				      <0x0 0x0aeb0000 0x0 0x2008>;
+				reg-names = "mdp",
+					    "vbif";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "iface",
+					      "bus",
+					      "core",
+					      "vsync";
+
+				operating-points-v2 = <&mdp_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				interrupts-extended = <&mdss 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dpu_intf0_out: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						dpu_intf1_out: endpoint {
+							remote-endpoint = <&mdss_dsi0_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-192000000 {
+						opp-hz = /bits/ 64 <192000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-256000000 {
+						opp-hz = /bits/ 64 <256000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-307200000 {
+						opp-hz = /bits/ 64 <307200000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+			};
+
+			mdss_dsi0: dsi@ae94000 {
+				compatible = "qcom,sm6150-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0x0 0x0ae94000 0x0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupts-extended = <&mdss 4>;
+
+				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_PCLK0_CLK>,
+					 <&dispcc DISP_CC_MDSS_ESC0_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&dsi0_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				phys = <&mdss_dsi0_phy>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				dsi0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-164000000 {
+						opp-hz = /bits/ 64 <164000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+				};
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dsi0_in: endpoint {
+							remote-endpoint = <&dpu_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dsi0_out: endpoint {
+						};
+					};
+				};
+			};
+
+			mdss_dsi0_phy: phy@ae94400 {
+				compatible = "qcom,sm6150-dsi-phy-14nm";
+				reg = <0x0 0x0ae94400 0x0 0x100>,
+				      <0x0 0x0ae94500 0x0 0x300>,
+				      <0x0 0x0ae94800 0x0 0x124>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface",
+					      "ref";
+
+				status = "disabled";
+			};
+		};
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,qcs615-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <0>,
-				 <0>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <0>,
 				 <0>,
 				 <0>;

-- 
2.34.1


