Return-Path: <devicetree+bounces-196345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAC3B050ED
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:28:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 380DD1AA7D11
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 05:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 160EB2D4B63;
	Tue, 15 Jul 2025 05:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A7JL0RoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660AD2D46DA
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752557279; cv=none; b=izxUDqyCm//v2eFmVvYcFJWHPXL+QgpvY7H9Z4tG/59jhXIbrqcRUcBWGH7NwDMoA0DRbOIDTCRyTUpQ5Ja6nOoUuf8CwJLs5yQRJvRkYkX0JnPJIqeAtjK95/6cxOsWJP71CU9QoPgvPknnuTVXslafFNIjgHXaLjZIjnD7ilg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752557279; c=relaxed/simple;
	bh=51MNdtYntNLG/1os/32nm2tn39F84TmPT8pKmGrGibA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CDfZ+/buhVmXhHxSHUiEPaVYdGnFoidHai3s15A07COMiglQS09+DtNbehpVy4XS1P8I3LgoUdLY2yUMaFwCYPdJGAzjs0Zd51ILLaPnrH/k2SDDhLpwV25gNDpmpTMGUiqCn7VkDDSkb/QSLQOixqM8u1ZCR6uedRUMPbMLfU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A7JL0RoC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F3k4Rq004275
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8svhojvKcb7
	NeDzSyV+TkkbBI6w4vDzPtOZ0qIkJ7gE=; b=A7JL0RoCWXi0oX9Q/bmKWsJQiEv
	YnIbkWSmAnYgjE2XuRB+h01q5y0bBqDNn6bdXtSpCSxxkSslqHNnEBkBysjzD/MO
	FMd6FmV5wvsDK5wQow13gv3wKrAmfcqpQNm37y/favgO3t5+5isedEoPoY9rjQGc
	xv6+bbnAw9wouxWPyAdREf/0xQnmsBloMR9bG1JvSyyHcAOQCDe4xvhs+jnYEEOQ
	o/+N0Lkg4dRs5uCNUkgFVKqXEok5aqgmqrO8kd68x7ldITInnNP0YLVVG/+u6rX+
	pgiGixfuqmVih6Eza7TG2J4SezvWcV+P4dsZy2y/gFdehSn2Uf7BwOvxeSA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfca06v9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:56 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74943a7cd9aso8043493b3a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:27:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752557275; x=1753162075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8svhojvKcb7NeDzSyV+TkkbBI6w4vDzPtOZ0qIkJ7gE=;
        b=n6R8P/I7xwX4sWegPb+rJnhh63k46BGHPoERsPhsdkT6A/Yq39N8TBo1aqIlwVUqum
         gZgiCZqssSAIiN5mLT2rbP1uMJnjbymxKB6IJiYNKfLQYf6iUphG2K480ntvs48D0gDz
         E840eIKsg8EERDgvF8LM54tKiytJnr5tLUagBojKnkjtJ5dtr0Yi2cilroasGHrLlAsu
         XgdkG0ZWfKpKRX/Sd0NTNDiFJOgPTPsl15KnkPWqfIactxvbT51VdLMv4LMUelOztFCx
         lXh0PngHW+sS0SQ1O4lZB4ZIERqhXs5TzC+p6ELO660ltJkOd9szlfZYKdlMFRPTHoL6
         4k5w==
X-Forwarded-Encrypted: i=1; AJvYcCVRaOpksAuWs3/+MJctTcnm3GExWeyfpBZzPrLePQ4v/Xk4v18BZooI7pFlASoKYqzEgkGvV+A4CkPZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwhC0m8XRNAY3rdlEGMjAk9K5dzAbj64BoM5vCx24DEyzD9+IZo
	nTmi33Rl77ZPxdSjAkzMd6HOtNhdjnq5Cp/tH6qeosw1sTboDKvJ/iJpJ1l4PhE/UxiG7iWbbKb
	pL8/3LfqmgOB08BoqbJA3brSzunDPxVEpxrlxFqW0xfA++FNtOt+yOzZtPPCRxt0X
X-Gm-Gg: ASbGncvk8PfhyZXj6b3WKm+HCFvg2jKzjh3PcDMZ4M0Wop2uhLBhTIkyS1Zzs1w3n21
	aQsjzqKdbzLBrtBk9KFQFPKRln170WNrkdQmgUHCLAAhT+5+NLKE6CvDRBm+PT9mkaMI3NArvA6
	bSTQFJeusWHaWesumUuXfipmWljBNuoQXTZbA4zh8lWo5iYobKso1ho8pLEILDGbjc/zAbsXDPE
	DrefWqUmCr8hDH16xEJ2maeZ/6n26YSpOZw+TXLLvneJyJbzbRX+DIyqjBbfjgAM9pzPmKsrRM2
	MqbDfndhk1qrhUTE9usGZmcZPA5WnxadRCSa3Sd0DhTvds6woVREMDl0c8FRhmvppRLXG4EaMVT
	mvg==
X-Received: by 2002:a05:6a00:2d08:b0:73f:f816:dd78 with SMTP id d2e1a72fcca58-74ee244a324mr21806849b3a.15.1752557275078;
        Mon, 14 Jul 2025 22:27:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0XeD/jbWxNWVKjRc2RmOnbSWjKirb5GC/CXswIUjkI8gpKZdySaeo7WrtYjWSqlw+VPpy9Q==
X-Received: by 2002:a05:6a00:2d08:b0:73f:f816:dd78 with SMTP id d2e1a72fcca58-74ee244a324mr21806812b3a.15.1752557274619;
        Mon, 14 Jul 2025 22:27:54 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f8f24dsm11071535b3a.156.2025.07.14.22.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 22:27:54 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/2] arm64: dts: qcom: sm8450: Flatten usb controller node
Date: Tue, 15 Jul 2025 10:57:39 +0530
Message-Id: <20250715052739.3831549-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
References: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA0NyBTYWx0ZWRfX5o/PrvlCOyuj
 md2BxknPQnDBuHl0i9yMv3tBfUfke9gFhx8L2Y4HgAYQKMdnNSlljKkUp3UobON6gm01ey+VOyy
 D0YFf8fl/42b8ju+0O7/XIEiWIyr0chyyZJExQwI1AATi2KQSitDcWZ4Px2nZE3q7OWDh1GlWP6
 Lq9O4KU+GAPJKEDKiDQAU3DX/q2etwyl9YlYbOqg2DOQGNjJac3CMuLWWV6RZlaG2YUEKWDq/hE
 8SmgJZLey4xLNVbXukNyJnCg1fl3QyDnvBU/YsjnKhE4DjczzAwBZjzgWtwaxggUIVl2ad0IyCh
 fCYg4HQOjXV+k1ezO+hSkmuuvhp9aX2GrKTLL5AEfsTijCPeGUmptgf0+PKp2AQhgFDn82S2FLg
 s3geSHlVM2GXbweIhrsqT1yFlloyNHlzePdcUPLp4A5EnKyOc/6zmWOKleQwiwPs6ocf1WqV
X-Proofpoint-GUID: TtnUaL4guUlFNPvb_O5jTssfgnZLsDLp
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6875e6dc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=xmYAXJzybh8o0rWYL1AA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: TtnUaL4guUlFNPvb_O5jTssfgnZLsDLp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150047

Flatten usb controller node and update to using latest bindings
and flattened driver approach.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |  5 --
 .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   |  5 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 57 +++++++++----------
 3 files changed, 27 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 2ff40a120aad..0c6aa7ddf432 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -1199,11 +1199,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3 {
-	dr_mode = "otg";
-	usb-role-switch;
-};
-
 &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index cc1335a07a35..6bd315e10992 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -781,11 +781,8 @@ &uart7 {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "peripheral";
+	status = "okay";
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 54c6d0fdb2af..89dbac3bdd2b 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -5417,12 +5417,9 @@ opp-202000000 {
 		};
 
 		usb_1: usb@a6f8800 {
-			compatible = "qcom,sm8450-dwc3", "qcom,dwc3";
-			reg = <0 0x0a6f8800 0 0x400>;
+			compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x0a600000 0 0xfc100>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -5441,12 +5438,14 @@ usb_1: usb@a6f8800 {
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
@@ -5460,36 +5459,32 @@ usb_1: usb@a6f8800 {
 					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;
 			interconnect-names = "usb-ddr", "apps-usb";
 
-			usb_1_dwc3: usb@a600000 {
-				compatible = "snps,dwc3";
-				reg = <0 0x0a600000 0 0xcd00>;
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
-				iommus = <&apps_smmu 0x0 0x0>;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_u3_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
-				phy-names = "usb2-phy", "usb3-phy";
+			iommus = <&apps_smmu 0x0 0x0>;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy", "usb3-phy";
+			usb-role-switch;
 
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
-							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
-						};
+					usb_1_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
 					};
 				};
 			};
-- 
2.34.1


