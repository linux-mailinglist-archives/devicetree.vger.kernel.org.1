Return-Path: <devicetree+bounces-200035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09442B1337F
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 05:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20676188FA92
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 03:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0565920FA9C;
	Mon, 28 Jul 2025 03:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hpRxMg6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E6198851
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 03:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753675103; cv=none; b=tAUKE4/xMfP6DVCA+OqWyAVcNJQQn7FoT6ULUIjCnHRZVSf9fQmt7Gen6VuuvbYEXQEarpy1pOB8Nx6ike3JNlGHTd2NHBlpUdmN4yvuHHyVm7qzLybNx5slmZe78Py1OLlBL25k66FjeK1+6ktfE+uSSOPrS7gjFvq1BXUS2CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753675103; c=relaxed/simple;
	bh=Ej6/Hn+dFu5p/Yn/78OA+qJgtWDOEmZYCQaGRZjKC9k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z+vYHiKMPW6FZFVHWtot2lnFLwuoh4TTvudGkAFwJdkFkuoj0gxJdD4FNzl5e8xpjLRAI991XJjs1qpsFJdNEzw/M574RTmDp13w8LiyJc8HESFnRIYrjlYEnxm2jq3GJiGNfk98buPcrx1qQtoPVAn1tlW0loapjamOSsL5F38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hpRxMg6p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RNsdkJ029584
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 03:58:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iY7bTL5QACvfY2kxIWT6SIlQBlkz7nRT42z
	4/XX8V+Q=; b=hpRxMg6pk2ZZbz/sUTxtcVcFQ/O/KP+qmzFylqK+gjLY6a1/h3o
	mQ1x+08nhd4Dq2xVZObUNd14FkAQjRT6/oFj+6tj2/pnool4tavxGk3/EyM0Z9Re
	CdxT4/2jTu5WPiXo5ObUapzRTLChFvsBo/i29BhfEVou1BL+ISC0v+3anPKXEkPf
	/by33tZgbj+E7k8V113WFO9qn+mi6fllH0KUeCZqml78MbNvGuBm/xyj5il/IZOc
	9dOvh+A9f8WDimTgTO3X4RgIBm4rLoa8n7aOwnSN68PS1dkMB6R30LvINUeZZaFO
	7mML8QRmgyjmwS4ZMjZTZ5CtxFGpvj+xq5A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1x8fs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 03:58:21 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b38ec062983so2783231a12.3
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 20:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753675100; x=1754279900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iY7bTL5QACvfY2kxIWT6SIlQBlkz7nRT42z4/XX8V+Q=;
        b=Y/hHSy4ZXKIcgn7e1ckAYMzCf7EHlZXnP0uOhEm6tfQSj4zf5rH/DJJPKazhNjXCiF
         X1FkBFf/apfQUJQYpNOo65abrCTKz/VA3sBolYTYuSJ0SYyQcSh46tWjF9bexWy9nxwk
         2ljR1JqmN3ahziYQujaAi1apyMNXBSJ0vlgcz4Dp8EaBn0jkuZLZZ9XShwmAHWlusR9F
         SYcWYNDkQYfL0F+8+cko0Qfi1POeRxHI5QovTACenc4xv1cOdCiuMkiHpLT5ZFhOd1b0
         u9SEOncF+BEQjj3JQP1jGoYgHObA65LV3KiWRf6mBHK3JamsT8xXhDc8UApop+pZl38J
         NOyw==
X-Forwarded-Encrypted: i=1; AJvYcCUFEvZVG/2WgtFLNmz7kTjlbjGdVidaLogphiaR5vvCfaEj5o+qJndFtGN3E/Wh2G3dddYhIWYM9UBO@vger.kernel.org
X-Gm-Message-State: AOJu0YymUvxsTgBNnNZ7X7DaExMEm+311CQCtgoSx1LEoqgcCWkk9ETE
	upMQQ4SQGVbl+zpDGKHAub3+KGqkK+6IokaVV7u22Q+d00uSQNCgrfBjKdukN7h4VKYNwPvg1SM
	AVq7N36oRuZIxmP+j6NxY22toiHpmq+bpo/u9hBPjTdcdxVIqTH+J5hrbU750PW9H
X-Gm-Gg: ASbGncuZ5C0AeE4lTCiRPeQg3F3faW/Rh+wpDt/CjtkcaCtHOYNNQK3EwlcpLJnrhw3
	poNUIMwzQo7cjR9mSfP3oQWnwsFLSIHH2p/wwpbAkTrFDuI+/61ZN6ibi0unUKUl3gOz6l3lYSy
	VneGOx3KxXCqwBgL1tAx1SRQLCpoGidvXYi/cJ+fFnRbvxaVPC4h44t1II6NBRs1ox4ja73s4Ua
	6dkSXU74Ui+tWQjDhNel6YtCIO2slJ+AqJkYRBI8aNk20wIf4BorDbsnfzJtl87bA1mZ5DRTRVt
	OtSkSbq8+TL7PwzdmdjyQP1+qB1VDtQs5ZEbi2BPXbgjI8EbGUGkBj8S12u4qE0V9gfM6S8dOx4
	uLg==
X-Received: by 2002:a05:6a20:9187:b0:234:10b7:f0ae with SMTP id adf61e73a8af0-23d701899a2mr18530762637.35.1753675100222;
        Sun, 27 Jul 2025 20:58:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERMdKqXTnrzWgb+0vXhBc4oT7OKMgeCAgen3c1SexlRH+N3LpLutoekZazfyk03ulD0j6B6A==
X-Received: by 2002:a05:6a20:9187:b0:234:10b7:f0ae with SMTP id adf61e73a8af0-23d701899a2mr18530733637.35.1753675099679;
        Sun, 27 Jul 2025 20:58:19 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e8d2abea1sm4141607a91.19.2025.07.27.20.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 20:58:19 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3] arm64: dts: qcom: sc7280: Flatten usb controller nodes
Date: Mon, 28 Jul 2025 09:28:12 +0530
Message-Id: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDAyOCBTYWx0ZWRfX6b/11a62sUg/
 B01ewLs8/ZtNuNt/4aYEpH+8s+CygZcAInlc1W3E2EAs3xC7h1EnJmEKydOgyHcDS9GeDjmcdbj
 XWV3xRieckeQrAg+zeheK0LIyKV+yJNUHfi8rvaFK/mBtJiL4Mt/qW/jrxdtvu7URSo/OY1wdOG
 IqVFmZbkylp09sQtvCBUoiCCzKRprtbaiRtt7tzB5456rbzPEAJ49mXteQqlL+vssiJVUuiuvc0
 gysG8/tRldmm8zgfgQ5ef0iOhoAr3dp30INmeDsMhsGL47dfQC70b3KGIzDNowQkNrrnj5sHiQc
 0hce4Ahy1NdxryOspIsgYjGUBOvTFJp4vLp/4cMng4AG/JvKKezsT0tfChckh5qLZcaTVwqVDRo
 Q+eO5iMtHUq47oTcK4RMug3N28ftPQ146XL5NfWaxonRyK45j//63q++VPALUPMVQFGIolaa
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=6886f55d cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=B4eZWCRmW58KndMlcVcA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: lE5rjM6gyM0YcUJO90iQAu4zHQ6-N8qn
X-Proofpoint-GUID: lE5rjM6gyM0YcUJO90iQAu4zHQ6-N8qn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280028

Flatten usb controller nodes and update to using latest bindings
and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
This patch has only been compile tested.

Changes in v3:
Fixed dt labels as pointed by Dmitry.
Fixed DTBS warning pointed by Rob's bot in v2.
Flattened second controller as well.

Link to v2:
https://lore.kernel.org/all/20250725050216.526327-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
Fixed reg base address

Link to RFC:
https://lore.kernel.org/all/20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com/

 .../boot/dts/qcom/qcm6490-fairphone-fp5.dts   |   6 +-
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts      |   7 +-
 .../boot/dts/qcom/qcm6490-shift-otter.dts     |   6 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |   6 +-
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |   6 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dts       |   6 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |   6 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 106 ++++++++----------
 .../boot/dts/qcom/sm7325-nothing-spacewar.dts |   6 +-
 9 files changed, 62 insertions(+), 93 deletions(-)

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
index 64a2abd30100..0fa8d34999a3 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3711,14 +3711,10 @@ usb_dp_qmpphy_dp_in: endpoint {
 			};
 		};
 
-		usb_2: usb@8cf8800 {
-			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
-			reg = <0 0x08cf8800 0 0x400>;
+		usb_2: usb@8c00000 {
+			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x08c00000 0 0xfc100>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-			dma-ranges;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>,
 				 <&gcc GCC_USB30_SEC_MASTER_CLK>,
@@ -3735,11 +3731,13 @@ usb_2: usb@8cf8800 {
 					  <&gcc GCC_USB30_SEC_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>,
 					      <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
 					      <&pdc 12 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 13 IRQ_TYPE_EDGE_BOTH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq";
@@ -3753,24 +3751,19 @@ usb_2: usb@8cf8800 {
 					<&gem_noc MASTER_APPSS_PROC 0 &cnoc2 SLAVE_USB2 0>;
 			interconnect-names = "usb-ddr", "apps-usb";
 
-			usb_2_dwc3: usb@8c00000 {
-				compatible = "snps,dwc3";
-				reg = <0 0x08c00000 0 0xe000>;
-				interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
-				iommus = <&apps_smmu 0xa0 0x0>;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				phys = <&usb_2_hsphy>;
-				phy-names = "usb2-phy";
-				maximum-speed = "high-speed";
-				usb-role-switch;
+			iommus = <&apps_smmu 0xa0 0x0>;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			phys = <&usb_2_hsphy>;
+			phy-names = "usb2-phy";
+			maximum-speed = "high-speed";
+			usb-role-switch;
 
-				port {
-					usb2_role_switch: endpoint {
-						remote-endpoint = <&eud_ep>;
-					};
+			port {
+				usb2_role_switch: endpoint {
+					remote-endpoint = <&eud_ep>;
 				};
 			};
 		};
@@ -4252,14 +4245,10 @@ compute-cb@14 {
 			};
 		};
 
-		usb_1: usb@a6f8800 {
-			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
-			reg = <0 0x0a6f8800 0 0x400>;
+		usb_1: usb@a600000 {
+			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x0a600000 0 0xfc100>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-			dma-ranges;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -4276,12 +4265,14 @@ usb_1: usb@a6f8800 {
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
@@ -4298,37 +4289,32 @@ usb_1: usb@a6f8800 {
 
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


