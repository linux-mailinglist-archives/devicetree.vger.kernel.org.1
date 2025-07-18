Return-Path: <devicetree+bounces-197684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EEDB0A495
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 14:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCD5E5C052F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 12:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766262DAFDA;
	Fri, 18 Jul 2025 12:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qp+EGjum"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A172DAFC3
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 12:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752843444; cv=none; b=HquwI0Z2vbbajxktgEok9t9FWTog/EYfrXwE8GF4ByrGPqjPOOVBNcBWLl9UFiQMg8VH6bavuKGIibrb/Lk0kLNhG41QNwMPjRi7/1jyucortxgWdWd3g4/O+U58dFExPnekCTXuQmqJvXK9JGQ1lcYMetln3wZLfLE43Ct1iLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752843444; c=relaxed/simple;
	bh=sY4hvu2GcRD9JlPfPDYK6bfFw+1SisQpcipKRiQz83A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bx0Y2Hj+exTdTJcfq2gjIQ19izpGqyAXNWVqPWXOG33FhvSelpY07U22qfh5uGYLoxz+imuHCb6EjJRTSvoSbrfXH5vdSPZT9otOk7vlAEdgwf4ITJSSBTcmzmubDOLFM+2qHf12ZwGfzd/guNGPEF01Qs3JiNqlsynxcL30ltM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qp+EGjum; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I75KsY015664
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 12:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WsM38v6Fwsc1Hgt9jdRyopUN4k2SZgG2IQhOnpcJ54E=; b=Qp+EGjumBVQcc3g7
	KSwBbHI5Q0fCxPmvVe1+OTgcR6mgLx1RpCe2Y5oyM5jgzkRRRu8oX+IEQAISM+Df
	atFqVtFcPPFUtpVgg3PF6E2K99Fv+GxwR6Tbq4dx0krXEFkzTsvwjNp+E9j1lwun
	bPnVL1fY93XP8dQVZfzmk64FbgDNs+/O8R1WoTQGTFC/ROFISxlMWZJwgl085CoU
	UOOWHrFsAeg0w+5UCBlCl8LGU+9W8AEq00bD68TLc+YikQyPF1oJBji7xYzQ2xLQ
	o5xQ16lJrcYh31pM6kDVio9oAIPtuQxge7qLJ2/i04U+4nwL0b6kvh0DMoZAHFVE
	BeVYCg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyxg8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 12:57:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-234fedd3e51so21484145ad.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 05:57:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752843441; x=1753448241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WsM38v6Fwsc1Hgt9jdRyopUN4k2SZgG2IQhOnpcJ54E=;
        b=wwOq8G/Z3MkslYH9ED3NJp92mc5a/rRw4MSycmyYxLa6cppjBw8aIFluWoy43tAkoD
         j47Q4d37DIB+rFQ/lzhGvmJezQZgUb+rmFUNXv9CTu9HEhat/G3EIJ0hOx+V0XLnYP8A
         WFdzd36tjdi0BL2Cd0nMf+RDMgc9dn0+6Xdt2chIO7RQ2TRgqmjSIkhr0ChvMjL9Coz2
         Szg29rO6dmsMUL6T6juOwQIIkki6QmO4xSsihOxjzq08D1BNMLEIc8ad5gYHgcAwUadw
         b9wyDqcXlNpPYdZpkqczy2mMVnctEaL6BPizSzzLJBHXXY3CV07HDEmzhwaoWJon34tc
         q9og==
X-Forwarded-Encrypted: i=1; AJvYcCUVejX5xDR6Y/9f13sDFfBaJtRyUyDHzp6uJB4SCzk80TB+i8Z/1+CZyrGLJ4hK6R8vcw5GEYL0qkIs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn5fx/51h3/RlZXWfq8LPjvwV/Y/shuKiviUE8mrP9+qh9q4VZ
	8oBXsDxHIvc6gn8mxIicQzI/xpGXlE4/2GQrMsXvm5tQr125N3jq/0aJA1Lng2rFzcfwbbxeM8R
	5QxUC8PiaRoFXL4RtmvbQgTssJoA7GwiPdY3OBgt4q6BXeVhaGn6FSNPVoVFJDTYE
X-Gm-Gg: ASbGnct0FqRAfP/Wog4eb1eUt5J8oCpgbJYJyffBxtUb1IFV0PeATffDudS5nlRL1kW
	pkcdbj0WUdyaxnQrZeYctXP7WdliPEizy/yghZKpyKL9Sj7BJwozMDFnGy86/GEpg04PJP0um6M
	JABbk4q/5DeVwbuwc8Op0Tu+3Uc51/L/IZUFr1xHWoEda+BlMXbN8p5ttgJjLfnkh1c2cow3n7C
	+jmldvO08k/cmAOpLctSgoWnYgAqQ3jGJMJj2vFDT/tpl/VchRBzrfblNeXKsEykwMpfmVHw1s6
	MxnKT8cHxuxYHJv9q3AoUxwxPfHWe1Bf8mw4R7qN2q5383POIIV4IFWbA6dMldAMipk5S91tWQO
	Qb/hG4aT2eQi/Mg==
X-Received: by 2002:a17:902:ef06:b0:235:6f7:b918 with SMTP id d9443c01a7336-23e25730014mr174823905ad.28.1752843441226;
        Fri, 18 Jul 2025 05:57:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6cTV6uXesNEd/NDsJfhZ4GMfER8Qqa8r3m+S7J738FdCuOoVqNgvLgSGmKNAe0G2RRJ4wDQ==
X-Received: by 2002:a17:902:ef06:b0:235:6f7:b918 with SMTP id d9443c01a7336-23e25730014mr174823475ad.28.1752843440777;
        Fri, 18 Jul 2025 05:57:20 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3bdfe68csm12332435ad.183.2025.07.18.05.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 05:57:20 -0700 (PDT)
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 20:56:32 +0800
Subject: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
In-Reply-To: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752843427; l=5941;
 i=fange.zhang@oss.qualcomm.com; s=20250714; h=from:subject:message-id;
 bh=Y0kUzUp1jhosfUEcJmsrjw6BzXMKsI9M2efaqbDjh9o=;
 b=GpSeC0K0a8mu2j6nbnxu7cX7kNHnUZO1bStLp8QotN8TgG5417jH50UnyMCcguyUcR4RjoKf0
 sBsBntmniFyDzCLEexpzmi0DuXTopVhso6DjNfVsasj3hSwms8Bkw6X
X-Developer-Key: i=fange.zhang@oss.qualcomm.com; a=ed25519;
 pk=tn190A7bjF3/EyH7AYy/eNzPoS9lwXGznYamlMv6TE0=
X-Proofpoint-ORIG-GUID: 4qDe41ZERYdKq5DbWFCSZP29mStGZ7f7
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687a44b2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=Aruvlyb1f0gT_6RMG9AA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA5OSBTYWx0ZWRfX11uzzFXQRqh5
 Vt6skIhejujiUofHprGdcPRa9S4nmjqTWWKftl8CjjuSZpDvaCBZMTNvaEJGLDZBfekJwkpfWXE
 YHfS0DqoSCpclAs069d9KfqqzRg9XIBl1at7pRPzb/0FGBGuRMo7JhQjL37cvZ/WdzGFbXn7mZl
 oSfcNhGCG/jAEXOFMlzkIZEeXU5FxJnwAUvCezZ3VHGddlrEAjKbsHej0dv7eQoku/vaAX42slo
 7PGWkzH5Tm4I63f1tlVIuSVbsqnoXngV8oEuJVS6Hde5YLTr9hzjM1H249UFz0VCuPEeAxCeBAA
 tg1So4KuLRTB7Bw35fZujY73Q+24Ht+ehDU68oF1DeBbOH4hVJz6O0zKgbttEGpBfYf/YFZ060Q
 SK492iZDlJlv4vw/RQws/KfBWAsrwUBNIdG+6TgHpW9+OMIV4PWv5njD+8n8T8OTj5SkbNNy
X-Proofpoint-GUID: 4qDe41ZERYdKq5DbWFCSZP29mStGZ7f7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180099

From: Li Liu <quic_lliu6@quicinc.com>

Add display MDSS and DSI configuration for QCS615 platform.
QCS615 has a DP port, and DP support will be added in a later patch.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 181 ++++++++++++++++++++++++++++++++++-
 1 file changed, 180 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index 142338069a74cc6c263e17d84efa22ccd0c26813..24299430b195026e896c365d80a0036713f00d35 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/qcom,qcs615-videocc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -3372,12 +3373,190 @@ camcc: clock-controller@ad00000 {
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
+				reg-names = "mdp", "vbif";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "iface", "bus", "core", "vsync";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				assigned-clock-rates = <19200000>;
+
+				operating-points-v2 = <&mdp_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				interrupt-parent = <&mdss>;
+				interrupts = <0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						dpu_intf0_out: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						dpu_intf1_out: endpoint {
+							remote-endpoint = <&mdss_dsi0_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-19200000 {
+						opp-hz = /bits/ 64 <19200000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-25600000 {
+						opp-hz = /bits/ 64 <25600000>;
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
+				interrupt-parent = <&mdss>;
+				interrupts = <4>;
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
+				assigned-clock-parents = <&mdss_dsi0_phy 0>,
+							 <&mdss_dsi0_phy 1>;
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
+						mdss_dsi0_in: endpoint {
+							remote-endpoint = <&dpu_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
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
+				      <0x0 0x0ae94800 0x0 0x188>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
+		};
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,qcs615-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>;
+				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
+				 <&mdss_dsi0_phy 0>,
+				 <&mdss_dsi0_phy 1>,
+				 <0>,
+				 <0>,
+				 <0>;
 
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.34.1


