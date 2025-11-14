Return-Path: <devicetree+bounces-238461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3473CC5B7CE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72FAE3B74FA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F33442F1FD5;
	Fri, 14 Nov 2025 06:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nU84MuA/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="etX+xU+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C73B2EFDAF
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763100975; cv=none; b=YToIFKG+Lgpwz0x5WqQktnuJ+WJ4V5wiB8TPzvE6LfQrUTacMg2oZabq7xpKBiVMu9xSGd/t4yCIScr3kl1Dhoa2wNzcCMx5VGk3TGSn+vx7Qrr2rl1b/bKnmrtKjZeHcHFZJLn13tHGAI3FD3jqOqeEoN3BxYor3FPHIkzZPkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763100975; c=relaxed/simple;
	bh=OULb6C6V4TvnihyYIoaUcfoOAUWXKDf4dusInpxJgX4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FgQVN8+KFwAQtIQMLxU4cmwfGKMclDGVgCdNEWchRPgyNP1s0sHEOn0w8DbD/DlJozs280ei+RM8Te2UXz1oZY6tQalOvUNK9B4m3DzZKSLChK40uAEilfhyyMz7K+xxewqBJ5nV0OXbDDp08U5kotkcVsmeTs9JLmUWHTLPQ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nU84MuA/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=etX+xU+5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMaxWG1427916
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jQ4Imav7qq2
	x8s0XH5rOR+pSrm1taL29whab/hT7Wfo=; b=nU84MuA/BFCXBFB2m0k8wdJ1X77
	ARpNNT8SK0fFs7mZPiUZdDFEQFkDDeriPtFtigxxVX8cuMAovuv39l2FflzBrOL/
	rAI6cl4Rc2K3LZ0i6W+KXZKfYrrFe8de+gSk37X+7Dd8rWk7lP8GWlDZQ5o1XQ7t
	64qG7QnggBXCLrHzzXc5UJ4CFZ/LbuxwssR9subqJM3UkpEFQ9Nlk85yT/tVuYY6
	OhWOrIn3c2LxWy5RbJw5R7TUW58pC/2zm3/quuLBctO03X8KiR6ruBAAtFnBFrZ5
	C3D3PEovK/au1jQ4CDj1UauGYnjEYPaVj9BxuYhNelhbTgg471B6dJ1tBOQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g11fm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:12 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b8ed43cd00so2130743b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 22:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763100972; x=1763705772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQ4Imav7qq2x8s0XH5rOR+pSrm1taL29whab/hT7Wfo=;
        b=etX+xU+5i0XbsGWWGHg7O07rvK2irzKLSMhYasAIqI9euCyDUUxvcR+Warmk33BlyU
         cdL6pcLn6It1mDE6/NJHXMcCYlx3gEJqwW+5oRkJ2UVgrDReEpelFeH6JlvJ6ubrLzVV
         1knlqDNVvuQuYpuMAjcfg1RHE0vVYJdF0MxZ0I4Baq0wEs60uAew+3omIFBOkEmAc0xx
         xOSBhFgjd2zuODooqB6Ij72apjWm9BnWBvY4JM+VUYAgeXdgFqVqAfye6BTVqUzaHoj4
         95yfgpqKwLbt81VkKlYUqd0yCS05zL+6R78Q+OiKoAK8ObbP1/wjtXjI3hF2hRbPimza
         U3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763100972; x=1763705772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jQ4Imav7qq2x8s0XH5rOR+pSrm1taL29whab/hT7Wfo=;
        b=D+ls4EpsW2z3Z+Df9guB3pxjH2wjzTtSTn9PADePhhiAXh0x9e2XQH3/19qLeCUuVl
         JS7NmXr2RSTmC7ILZKpD2gXha+ir9KaCyxnzcynZ0sAf2fDZ7rBxDjum7iwyviPjFd0V
         79jpf7wBnMDN3aiaHMhchc1dEgiL9NLq/7NJqlpwOaRpdpjjRDx9+3f2YlLNOiIRLKZs
         GEPcz9KPuLXkWW8lnXz2t0Mn2eFKGiKDQEK7d2B3bS1wCvMzyDr8364LjqoO5PrlEU3u
         e6Fi+lDNJPWboZTYr7aH9IUzO9+WZkvlFqy1Ofl1jL5j1eI0yAlwcv3hJ1OayuKI4RzL
         q80w==
X-Forwarded-Encrypted: i=1; AJvYcCXJTN4yo13e7nZO9QwXxSENzNLTAWBarQq3vWbGZ3U5fvZJIs+Jv2H+3q0WSXo79JfqIx7YeKR6xp5c@vger.kernel.org
X-Gm-Message-State: AOJu0YyawltG4632obZ43Y3O+28MwOirWTF+uAw0xD0sTA/VYuwvojw5
	l0sjJ8TbrAKz3lqQ2yYKwcAgWcGZAk08Di9siWwp7VBatKsF95ytdgHfiTW3Uf4zQFzxKE21268
	0r/XHBv56AYgSSZNfOvKU+2WuZieddw3O5PL6qvFNNZen5qftrQzIQyKO9AHojson
X-Gm-Gg: ASbGncsXsyfSdD2vcx6XuD/Az5cqBfWGnPYx6BsyibIBiJtvz1rTG6CbJqjFYRS3k1G
	F3I0lcFUBU0tu430hdJr5YGxASVpWo+jpslimWJTN5CWN5vT8RcsS+LNB5Fkq/5Ve7Kd1GhQXpD
	SJsXhwV57wvv3HAvQbGrQeVQ8s4DsKAP9/esFGvo2O6PkeIMTA5APl5gFo9WvbfJazd1pl/pWEq
	8cE0YzDzFAGCNBxpie/pmUWxCGEcP5rs6WrEs/AHv3qYGXTfxGHIX0yseALZFDuxWcHgdrl+xpa
	2+yn66llhi0orDxKdVvciXiJtSixfS8ogz39LIKSJBldhodNE2lkNTYvXJlo6ZOjy/DIGkpdGyL
	YRO0tCC86SVclV4sCACweuY5pLI0GP8v0zT1q
X-Received: by 2002:a05:6a00:c91:b0:781:1f28:eadd with SMTP id d2e1a72fcca58-7ba3c07e07fmr2358561b3a.20.1763100971816;
        Thu, 13 Nov 2025 22:16:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1C6a8nGs+DCb3kRHJqi1pfRTJEQnWlT8edSzly5iZ+OduvqZjEoQjtvXspNwAeXU566notA==
X-Received: by 2002:a05:6a00:c91:b0:781:1f28:eadd with SMTP id d2e1a72fcca58-7ba3c07e07fmr2358544b3a.20.1763100971336;
        Thu, 13 Nov 2025 22:16:11 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927c22b1bsm4021223b3a.66.2025.11.13.22.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 22:16:10 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: sdx75: Flatten usb controller node
Date: Fri, 14 Nov 2025 11:45:52 +0530
Message-Id: <20251114061553.512441-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
References: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=L+AQguT8 c=1 sm=1 tr=0 ts=6916c92d cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HnYamQ1N0TlDataW8GAA:9 a=4zQrLNvittTmN9yx:21
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA0NyBTYWx0ZWRfX4zqblhLb90To
 xIrVxJ0rUPymcFxXgSPFraFt63wuKPJJT0w/WJvWwGSG32YQqFkckRepJZUQD9qnsDmV0hxQup4
 vKHlU3uD/bgspRVnrhpxz9ncKna1YmSzZYMmAVdt1YqinCia9Ii+EEMbDlMFhFUq2ohersq68q3
 SM0vCpjbo6xhtLVt0SoPhuhqs3fyYO/dtU3IfCXFOTafcsVtED2dkluoy8vEpr7QkEchRfVHRny
 twdH/F5RYqM06xOWhcQ/LuA8CPxKynnx1W1CbpiMlk10A2lmpM/PsWHmo0fcAdSKpl6tH6czRoT
 Emgr1DXSXR7BsHO8plBjtFP8vgO3tK8sAaQ0y+gVgF3ApFN6Rx3V+DnlIdhf0SeMBfHatElBv73
 Y8wjsmzMLrgbqhnNmMdHY92qt5QWAQ==
X-Proofpoint-ORIG-GUID: 2aoMbaLmA1gh3GeM752Rr59bUaULKI0S
X-Proofpoint-GUID: 2aoMbaLmA1gh3GeM752Rr59bUaULKI0S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140047

Flatten usb controller node and update to using latest bindings
and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdx75-idp.dts |  6 +--
 arch/arm64/boot/dts/qcom/sdx75.dtsi    | 66 ++++++++++++--------------
 2 files changed, 33 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdx75-idp.dts b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
index 06cacec3461f..6696e1aee243 100644
--- a/arch/arm64/boot/dts/qcom/sdx75-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
@@ -337,11 +337,9 @@ &uart1 {
 };
 
 &usb {
-	status = "okay";
-};
-
-&usb_dwc3 {
 	dr_mode = "peripheral";
+
+	status = "okay";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
index f26ba90ba66d..e586b55c155b 100644
--- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
@@ -1019,12 +1019,9 @@ opp-384000000 {
 			};
 		};
 
-		usb: usb@a6f8800 {
-			compatible = "qcom,sdx75-dwc3", "qcom,dwc3";
-			reg = <0x0 0x0a6f8800 0x0 0x400>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+		usb: usb@a600000 {
+			compatible = "qcom,sdx75-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a600000 0x0 0xfc100>;
 
 			clocks = <&gcc GCC_USB30_SLV_AHB_CLK>,
 				 <&gcc GCC_USB30_MASTER_CLK>,
@@ -1041,21 +1038,35 @@ usb: usb@a6f8800 {
 					  <&gcc GCC_USB30_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
 					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
 					      <&pdc 10 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 9 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
 					  "ss_phy_irq";
 
+			iommus = <&apps_smmu 0x80 0x0>;
+
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+
 			power-domains = <&gcc GCC_USB30_GDSC>;
 
 			resets = <&gcc GCC_USB30_BCR>;
 
+			phys = <&usb_hsphy>,
+			       <&usb_qmpphy>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
 			interconnects = <&system_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
@@ -1065,36 +1076,21 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			status = "disabled";
 
-			usb_dwc3: usb@a600000 {
-				compatible = "snps,dwc3";
-				reg = <0x0 0x0a600000 0x0 0xcd00>;
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
-				iommus = <&apps_smmu 0x80 0x0>;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				phys = <&usb_hsphy>,
-				       <&usb_qmpphy>;
-				phy-names = "usb2-phy",
-					    "usb3-phy";
-
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-
-						usb_1_dwc3_hs: endpoint {
-						};
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_dwc3_hs: endpoint {
 					};
+				};
 
-					port@1 {
-						reg = <1>;
+				port@1 {
+					reg = <1>;
 
-						usb_1_dwc3_ss: endpoint {
-						};
+					usb_1_dwc3_ss: endpoint {
 					};
 				};
 			};
-- 
2.34.1


