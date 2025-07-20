Return-Path: <devicetree+bounces-197910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93506B0B414
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 09:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17BAD3A80D7
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 07:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1AB1C6FFD;
	Sun, 20 Jul 2025 07:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FVPP6r+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC461940A2
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 07:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752996112; cv=none; b=mPdSFxYGLp51Osbt2v/I/kjc0YvanzNMZKlkvVh2kQWSnd8lPh7aiaYXlvJ1qruoHyRm9VHLqbbKYXV1WUrcW7xI22/TatUceOESd6jSd9cK4qDV9YVAJow7uVNPxojcwc0ydLWYgd++47qwylYE7wgDeNw4wfVB6XF9xQNkfwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752996112; c=relaxed/simple;
	bh=q5dFyPSKzoOAh+WaNwTAwU0DgLXb0FDwbrfGiHFnX0s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uTpqwyZFL9O9asEPCw48NzLXP0M9zlQPYJqlxRDIcaL+B6XDluPxPOnuAZcyKy9rXVNvPA6uCt9lxP6asSqLZIbB+x8og0lBf5zsvZsAmUB2I/ifOzGyqcezV8+ZUO7ZBXRWWe9I/vmycI01JpXZYyM2G19GbR/TQBh9GKCoEh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FVPP6r+E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56K3PSqh014874
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 07:21:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=S0qMC8iWPilpYL7kcDpX+g1J31I4WsZ38+6
	cMf0mIt0=; b=FVPP6r+EdIKk/7OHuD1RWi6NzyDkfwsrqYEPA8OMQeXFoQv5TwL
	M18rPNk8ZiyIahYzilqmB9gWjU/FNOmsb6wsfmqgi2yIKB5dHILjwbNS1YvNGn8b
	Pzh8/4DNaK9plEedVMLZyHjxLS+o/Qz/B0NncS1MZc4sn9hC3ZaOlb2542yHhwwc
	q8bUNCmhkQC+0BOu5zfRy9KWN4OHU09y4uTwCoeXJfRkR55RM/6wmRwtt60Pb6t5
	mrTqw3QByAnPXWRhM+sfyLEmccAKopEYxAMndY9uWiiEpfR1dbiu3etGyspyv2oP
	7fsA53EkSfeLsdjqsWmoj657xfreXXfc6tA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044f9vxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 07:21:50 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b31bc3128fcso4339930a12.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 00:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752996109; x=1753600909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0qMC8iWPilpYL7kcDpX+g1J31I4WsZ38+6cMf0mIt0=;
        b=EF1lBgX9ask52LTGS+8lWz++UoorCX43nkBY3Q9rP1Gq8Dn2cZwYIqoJHmocS7AY82
         HIZNG5R28Fg0eUovbULAn2e1e60+AG7ThAPiJR0NutTnadhXRZ+xPt4LCcGfbNKNgG5F
         +m+XoFeEjBxaXtvzGdeADeg43Qng1A2t2WwaGju5wZIB5Q/Wv/Jj/8qXxikeB2KlByUv
         rgY5Gb20dc6zPpJuGH6DRdHEQMkKemBDiXCETslqKwuOoXRpJ14z0IahZjeC5LadmbiP
         gfUfpyfsSa/IXBCe6lXN4fRTkDvSGlMeaZqLdy/Epf3lAHo5c4CqTagFV9Zi7Wrc8cBF
         FdhA==
X-Forwarded-Encrypted: i=1; AJvYcCWo9ghNCVUqAZElwjYpx2eMcMfxOYw1kuho0PxrVmexF6sQkbIgAM7GYuP1HpdXniGuNpM/Av+tYzjo@vger.kernel.org
X-Gm-Message-State: AOJu0Yykhv/S1j6+5pUmA+p91LE/oGLcj3L0iG4r4W9ggIQUZ3x3NLfK
	jRPLcyRXRyZX7RVCNkWBw61rk8NQOBRYjOinykhTAKQ6ggxvAzM3WEA1mLQqa23sIBgRokdvkxt
	ejhg2wcuFPDYBMWlGORl/3XNpwEbueoBrV2lHRRFrduSsY3DDK3zRbzzisbLnlILW
X-Gm-Gg: ASbGncuaihutdWWb20hJnRR5ryVsh3cuIdLS7cLmaj00aLYoG7OdTweZT52OKOIEFC5
	4TwYMnxRJECAI8iK7ghGgY4DoKnFKY5BynCihfzMvBm2PhzlZPHLEJx1T06RGaREHMbau5DrGXb
	SUgnDXSgB6SDTU9UzJkYK8YU7nfBHurA8kRJ27Ep1in1LpWtXOwEzmc04ly56alG9lOoBQUl3le
	bPbLx+5B0ma7+OOWdmLJpULu+lp69hVLwq3XOVtP6t6dUZXafhXM5dUwkcntptglrpdR7Ptzb++
	y0BY6SirDiPUxfW349FuIUgETn/Ez87gftFBlvJvPuwBz4g2Z57NPowD2HeyGCJNFG5/rQPulyn
	JnA==
X-Received: by 2002:a05:6a21:6005:b0:201:b65:81ab with SMTP id adf61e73a8af0-23812947ed1mr27155918637.23.1752996109229;
        Sun, 20 Jul 2025 00:21:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVrw5F+lDh+D6GQbLzCucJeKgpkFGNHFBY9wenkPd6GC2O/TewO4YnOZqFOKVaFKIP2y3mUw==
X-Received: by 2002:a05:6a21:6005:b0:201:b65:81ab with SMTP id adf61e73a8af0-23812947ed1mr27155895637.23.1752996108750;
        Sun, 20 Jul 2025 00:21:48 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe8cae9sm3425243a12.18.2025.07.20.00.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 00:21:48 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [RFC PATCH] arm64: dts: qcom: sc7280: Flatten primary usb controller node
Date: Sun, 20 Jul 2025 12:51:25 +0530
Message-Id: <20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: JDm-JjZxvCHSeDPSg97lQNLNMhiQH_4z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIwMDA2OSBTYWx0ZWRfXzv2BzVgWEmic
 65WkW/gttMDhiSM4a8Jkoo+QaGBDqRf8JDsd+2P3TL1UZXE2WTRetlRxm5MJII9Feq8h+1xZaUu
 LEgWFayGB3c9CfSI25Pi6wqbIb++JiPBonyKBiIxPbDKmLI9s5jsptsjj2vXUTYT4PrUgxnaqOV
 9sUw8zabmZRtB0zpUBpmkjF4fg+llQPquXkXnkKqb7gg4ynvKE76A6mUnpeOmJUZe8p7PkmworQ
 B6zIydg4OCliNgB1Q9+93aPGxAlJXxiMmakumj9LcD8HW/CYJdTdPeMCRZOIeDLMRliMWcNwLol
 f3rAGoyyT+5qtYs95uH+jhkpH86zuCKDJFrsQMbUGIiWUUCZ74guDMhxiHEC2dpzx9vzYKOug2+
 E0aelR/SZREvNFHppi1AaIpMScLLJNy8l0443n53djyUIR0WGRRkgEHHn0t3H3NqElMbn+z5
X-Proofpoint-GUID: JDm-JjZxvCHSeDPSg97lQNLNMhiQH_4z
X-Authority-Analysis: v=2.4 cv=YtcPR5YX c=1 sm=1 tr=0 ts=687c990e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=F1BopdVJQ9INZIdvojUA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015 spamscore=0
 phishscore=0 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507200069

Flatten primary usb controller node and update to using latest
bindings and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
DTBS check has been done on all platforms. This patch has only been
compile tested since I dont have access to many of the platforms.
If folks from community can help test on any platforms, it would be
helpful. Thanks in advance.

 .../boot/dts/qcom/qcm6490-fairphone-fp5.dts   |  6 +-
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts      |  7 +--
 .../boot/dts/qcom/qcm6490-shift-otter.dts     |  6 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |  6 +-
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  6 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dts       |  6 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |  6 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 59 ++++++++-----------
 .../boot/dts/qcom/sm7325-nothing-spacewar.dts |  6 +-
 9 files changed, 42 insertions(+), 66 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index e115b6a52b29..f17ac3dc9b06 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -1364,12 +1364,10 @@ &ufs_mem_phy {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 7a155ef6492e..8ed6e28b0c29 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -751,12 +751,9 @@ &ufs_mem_phy {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
-	/delete-property/ usb-role-switch;
 	dr_mode = "peripheral";
+
+	status = "okay";
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index b9a0f7ac4d9c..eb8efba1b9dd 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -910,12 +910,10 @@ &ufs_mem_phy {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 5fbcd48f2e2d..01f0b460305c 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -1127,12 +1127,10 @@ bluetooth: bluetooth {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 2ba4ea60cb14..5c5e4f1dd221 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -621,15 +621,13 @@ CROS_STD_MAIN_KEYMAP
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "host";
 
 	#address-cells = <1>;
 	#size-cells = <0>;
 
+	status = "okay";
+
 	/* 2.x hub on port 1 */
 	usb_hub_2_x: hub@1 {
 		compatible = "usbbda,5411";
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
index b5fe7356be48..3103f94cd685 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
@@ -81,11 +81,9 @@ channel@403 {
 };
 
 &usb_2 {
-	status = "okay";
-};
-
-&usb_2_dwc3 {
 	dr_mode = "otg";
+
+	status = "okay";
 };
 
 &usb_2_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 90e5b9ab5b84..ccd39a1baeda 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -520,11 +520,9 @@ &ufs_mem_phy {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "host";
+
+	status = "okay";
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index b1cc3bc1aec8..e94e21301bdd 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -4245,13 +4245,9 @@ compute-cb@14 {
 		};
 
 		usb_1: usb@a6f8800 {
-			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
-			reg = <0 0x0a6f8800 0 0x400>;
+			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x0a6f8800 0 0xfc100>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-			dma-ranges;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -4268,12 +4264,14 @@ usb_1: usb@a6f8800 {
 					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
 					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
 					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
@@ -4290,37 +4288,32 @@ usb_1: usb@a6f8800 {
 
 			wakeup-source;
 
-			usb_1_dwc3: usb@a600000 {
-				compatible = "snps,dwc3";
-				reg = <0 0x0a600000 0 0xe000>;
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
-				iommus = <&apps_smmu 0xe0 0x0>;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,parkmode-disable-ss-quirk;
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
-				phy-names = "usb2-phy", "usb3-phy";
-				maximum-speed = "super-speed";
+			iommus = <&apps_smmu 0xe0 0x0>;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,parkmode-disable-ss-quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy", "usb3-phy";
+			maximum-speed = "super-speed";
 
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
 
-					port@0 {
-						reg = <0>;
+				port@0 {
+					reg = <0>;
 
-						usb_1_dwc3_hs: endpoint {
-						};
+					usb_1_dwc3_hs: endpoint {
 					};
+				};
 
-					port@1 {
-						reg = <1>;
+				port@1 {
+					reg = <1>;
 
-						usb_1_dwc3_ss: endpoint {
-							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
-						};
+					usb_1_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
 					};
 				};
 			};
diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
index befbb40228b5..f16b47b6a74c 100644
--- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -1425,16 +1425,14 @@ &ufs_mem_phy {
 &usb_1 {
 	/* USB 2.0 only */
 	qcom,select-utmi-as-pipe-clk;
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
 	maximum-speed = "high-speed";
 	/* Remove USB3 phy */
 	phys = <&usb_1_hsphy>;
 	phy-names = "usb2-phy";
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
-- 
2.34.1


