Return-Path: <devicetree+bounces-199608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCB4B1178D
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 07:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C9687B9F78
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 05:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3288D23E324;
	Fri, 25 Jul 2025 05:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IL9C0Sbm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCBE4A08
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753419768; cv=none; b=Oh7Iv8b9aMbojq8sppBvLy7Nw7QySXOkB79ZCt8qUoYw0Z6aMtS+fVepRzTEy9ZDL+hC7KoHR432Q/X1jE/k+rKq/MPteu00wu89nvU8prAr0orgJT1fjxvXRTGTLUeHAeNDb1X3gIO2iGkX0MYkeFz6vrTvTIbkrGmPev890mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753419768; c=relaxed/simple;
	bh=xyaX7sPRxbcvMbz8Gwmcp5himgrSC7gWCkflcU+evMk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=B0v8DLxi4mpxcp3SV8HJKG8+o/W99GoLJ+KgotqnO/uq/oPLI0WVUCkyxfhWSzwHwxksfwknxr4tpvINKyk7fWgKY7Rg2LDKdeKCDwAIM1zPtHG0+2D1P7FdKULKnR/rKAvzcottj2qGpoXPtQqrvlWGVaw28yp12zUWAreCUME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IL9C0Sbm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OLoK8o003687
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:02:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Cucr9aIodQKI3p6Ea2Q4sx2QPPEF0oJx2o8
	EAi6JqoU=; b=IL9C0Sbm3j2hvzwAjTvsqbF6TJt1b23BbiJrumtFgxYKWW7WaDM
	bWYfukSAepCAoRaCDDzqamiBz6tzBedIS7OQFuAkjx6E/s7ASxlAx7HfKeCFNEhu
	jWMszyl/L/Nf9QCKrjIPdYYiwWgKZxN1V3l/ovTXnaQ3XAXddaINrsewgTOzYLkN
	iy5qeTU0PNNBJyBEmG+RG/0HtPM/zj9rVl2PoQUHByP+Da8jByBi6l3dfewwdEls
	R/+ASv02QS1MQrT3MbOHPr2M2t9dzh7g509NTHUUjqlMyvhb/cSlAriEaPN78FVA
	p/D1bCJ98zxxVi+X1ELcJlnPxl1LlMPJNrw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2xgu62-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:02:45 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-75494e5417bso1865460b3a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 22:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753419744; x=1754024544;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cucr9aIodQKI3p6Ea2Q4sx2QPPEF0oJx2o8EAi6JqoU=;
        b=l+jiGnAkTeAQMdygLcq6Dny0J9/9Eb8NNUvdxSqe6xf9sJHX6HEA4bcRUKs9d0TC/H
         trMmSxOd2qGC+DDcwzu4ksEDLC/hX1pMWENk1y0Cu7tCSbxj+4r8l39O7z5Qqf/GXYEH
         B3Vq+y8rECkGiMe1dGJd3oR9vj006BL5E1knrqxFnqG7s7JJrVUhbG6khsYmRQ/mjqDw
         LgEFQsraODKb48IRPnVrLwm2VfmWjmmwHgB2aoLymamfHABQQwBE4Nh8AZuQ85AIhCC4
         +efBXYJXHh4WHM+o2k+aZdEmjVxkh9u154z2MMN14cXIqxS4dCt08ZL7QwGnIvG+kClt
         OcFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKpfLE8pH2MLB5oc1+sySLqNEyJCmVZlnswC9ugobEVg6SvifwigbdjDCw7mlE5t7Cqh+oJqo5ENSS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+aCSEeeFCYJDjOWiHZY37wntQdAuzr4R9NCgH3KDZ+SjasmCx
	5qdYOXFv5S6ENUmYK3OLjwoqZYr261BFyPS8MqF2adXamaOR1ykuQUmUDDRmlJ99yT0WCdQ6ErP
	3ta7kmLdk9MulBtjMIwk78b+6/TP3fveRPtAAau6ayb69T2Avx3mDzLTri2JOTXfm
X-Gm-Gg: ASbGncspPnradVAPVhDwYr9u0pFZsoVEOw2r6/52ktTF+plWglVi9dyJ7bsO4VzKMQk
	tkKHsgRq07BjLHy/TLaEi6NbnF4s7QuU6Zfd0rCJ0DXK9QhLbHN5C4MOJP2n30E5Wad6BjvwbxA
	HI+aKPsNQx/3Dt2LdJU/XEs50utU6Rqy5RafKAvKZX5l4M6zDBe6VXtGlGvdTuREgTG2koAZ9uq
	hMOkCw9gwtSWiz+yc4/2uBdO+NPM/ZgMbVvY/qizbj4K4Mf9cb4hsp1XnveKMSKf+Iql3Hm6P+M
	68q39/DM43X3WnqjQY/ZYSfO6xgUciushr+kaviXG/LkUY+MzmS5tU9PFAmJJkRBemLbpq9Ojvx
	mVw==
X-Received: by 2002:a05:6a00:2d95:b0:748:e289:6bc with SMTP id d2e1a72fcca58-7633227a158mr977815b3a.1.1753419743839;
        Thu, 24 Jul 2025 22:02:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVX8kdGfAvKbG/ix1bcwXvv6YJurQ78PxM/uyH7DMmfCUl05Nd7oMW2HQlac9y+oXeRCZvkQ==
X-Received: by 2002:a05:6a00:2d95:b0:748:e289:6bc with SMTP id d2e1a72fcca58-7633227a158mr977789b3a.1.1753419743316;
        Thu, 24 Jul 2025 22:02:23 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761b0629cbasm2916604b3a.129.2025.07.24.22.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 22:02:22 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: sc7280: Flatten primary usb controller node
Date: Fri, 25 Jul 2025 10:32:16 +0530
Message-Id: <20250725050216.526327-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: LIygkUwwbI3b0uLoOQphn11FrMtNZb3d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA0MCBTYWx0ZWRfX+bx939NwP4Lh
 1339R3kTXuOoozEGezPKDei469r0NefiDMnUTz4sBXQxsFWHyEbAXzKA7U8LDuJJjSeTHzp0R5o
 xbTNQEwTPqzGN4fgnP5uY/wnHiVvOR17uSM92ul8+yURtFzQdzEpSQcXhVUYALSpx43Ltdk5hq9
 kPHTKZ4z3o+BV/9ecbnijRfWvVSx6XyruV6rQyy90fE62QzdUWanqDCapEO0E4/Rec2Ag7FSQ4z
 xX5xxBIGsrx6rOhoYcL+dlr9gu3pGIHmOrirsFRHMs5XkWvIo4KubM2/va3ekXVRQVqNo65ksKq
 VeiKAUFgGvG39CN6zhOu5J3OJL/seXmvv8jCAL9mXlgimLic3FNPkeE32qxXT9pt94ydiXYi0VT
 U9fmH5oh/l1OlF/bXTkEaUaB0bAIVkGVp4NxNCwAJRxuE+6cBdkuN7e5ULBW62gnys5r9ORL
X-Proofpoint-GUID: LIygkUwwbI3b0uLoOQphn11FrMtNZb3d
X-Authority-Analysis: v=2.4 cv=S8bZwJsP c=1 sm=1 tr=0 ts=68830ff5 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=F1BopdVJQ9INZIdvojUA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_01,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250040

Flatten primary usb controller node and update to using latest
bindings and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Link to RFC:
https://lore.kernel.org/all/20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
Fixed base address.

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
index 64a2abd30100..6fd502df9c7a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -4253,13 +4253,9 @@ compute-cb@14 {
 		};
 
 		usb_1: usb@a6f8800 {
-			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
-			reg = <0 0x0a6f8800 0 0x400>;
+			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x0a600000 0 0xfc100>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-			dma-ranges;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -4276,12 +4272,14 @@ usb_1: usb@a6f8800 {
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
@@ -4298,37 +4296,32 @@ usb_1: usb@a6f8800 {
 
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


