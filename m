Return-Path: <devicetree+bounces-248295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DBFCD0F29
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 55AFF301B381
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14DB83845D6;
	Fri, 19 Dec 2025 16:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bPNWQLhW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M+gPEKSc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394AE3845CC
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766160862; cv=none; b=dqtM8dxL3YP7E4qEz2L9G3QLqAJb/Nw+IzJbWHviRySPVuWhNYiV6j5E2ou6G9VQ2kBwMMV3PT6kZJYRk+4YQIsWLf4ygUwSO+QWlnFHSPLBcw75cZLPdOXdfDX83cyAwpXxN2YWzAMVaNoh56uB1Or8F5XJftBmv9QnxuIXc/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766160862; c=relaxed/simple;
	bh=uUBZMafbxvXCgbEsErGwbKr0lA9sPi0q830kWH1ILaE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CmwpPjIP/qhZyuWpveJMnwv77orVnnY4Dzv/lqMGiDc0VYVV2fGJC4O1eBhHhXiOHiPNu/Je5CaW2L3VXOL14Pi5/DW6S5x9X3xP4a1+RWSbXagIakdZhlFz6UIt6Nk2ddV0Ggtn4qldLU048WZzCFVMdHSzGQH0eKkZp6TidLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bPNWQLhW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M+gPEKSc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjXsi1425304
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:14:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iiIQVLlVLOqTqlglYAiv5W2jU8h6e00ZieP
	H+OB2zQ8=; b=bPNWQLhWUBH2EIM3MQjD2KBP4rpkJkSWom5KrWtMsYsp64FBsHv
	HDgLm+pRdEZtu0qE8GS4kT/asF6CZKqjnFjftwemj3tNpiXBvXSrjYBaJyrsXnSo
	1xfgXmFo1Xl/51vb64hcz4O8kDMrvqRIqWhCZ9bAkU9cbjClHUIZZcwD2eNi3yHJ
	/9Sjk73/oMs39a/eTTDRv7MHVTzBKxYa1WQJPxci3WM0XAH54pCmR6xv/KxpKh+x
	AIyOh1vM8HzMz7KtF36OV3D0vQuR8YWnaQdTcorSBate3fuG+bKG/iq5NvTbS41C
	ku5uuoLk48TslR/KWur9y6RSnVifXO+LHKg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ek6bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:14:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f27176aa7so35445715ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766160857; x=1766765657; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iiIQVLlVLOqTqlglYAiv5W2jU8h6e00ZiePH+OB2zQ8=;
        b=M+gPEKScTz/75IazYOi7rou58XSbp2qMTUd7JIu9ZqcGDeDFpM15bygi+O3G9AHx2/
         YA0xR7RVACij8bJ8w+zdM9dfC4ghmE4KXSRdaczfe9jC2Kb1lunHOUlsb2vH1Lu9yvTP
         drYbFsJ3fNaxcRP13kPz1gR4NDElFQWllMenIJvw64l3QeRBADEnua3IEguRj35b9yEl
         vCHAJXa+Q8UYvtirsCFY52WSkAUtCXykR2hVGHMmqcJBBSpaiaOXQOwvVGgnaTIQEWtX
         jx6+MbDHmnCpknri6qmq1nw6g3409AmgBIS4J6KBgKLCMWV4Udbff6w3K8xWXSsZauQZ
         Qozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766160857; x=1766765657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiIQVLlVLOqTqlglYAiv5W2jU8h6e00ZiePH+OB2zQ8=;
        b=tItnhq6Z9giPVDxhgZNm3Wd2uDmGycit+aGASD6fEcjdlER7AxVsLii/cHo49MqnFN
         aMcs9scow5QDQE3aBoS6uHVyefCs8/PhlnCjpMMdJXnHwilK2xuHE1uoqOr+sa7w7Kaa
         0J5I6akvu+XfBTKbRbR0IO0C34EbOtLpkgxwNnDy115SXGKlBzqphhZ5qpRRGVt7v10W
         k0r3PqWbtpah6cIs9+vtEhupsPM69hYLKsuVKae4I2x4jgc1IfTGR/ZphnqBvhLp6tmV
         QJ7NPE4HUNbuqEkuNtkzCI78Q/pE05hgOcchyyUaeqc8We0ejnr//RJyhUPN9lRMk+Td
         /raw==
X-Forwarded-Encrypted: i=1; AJvYcCUwJ1M5tidx3guzXvAl3nVrZSUlh+QZ0MZ1NQ1746nVotGf0eDB05H3HanBT3z1npKRrH1EnlWYb7Zy@vger.kernel.org
X-Gm-Message-State: AOJu0Yya9MuDEGt6j3nXy/CV85RkQx9M0j5U8l3fZzLIUDgPja3qnpL/
	Wn8KpQiGD+MGqTC2G5Udzi4L7t3T/m9jc6zeCAMNCcKlxlzNiIIYuFFqlMDiT2qmnuclRDoLw8X
	JbrJaAdxk+GpWEDB+yj/LZxni/1JS6NGUnsXTznxIbMG7Z4N6682PkN726ev/4cA2
X-Gm-Gg: AY/fxX7/FuIC+P2qV9pUa46jl+BJMCoSn37Y1m0FkIoOJYQ55ctWG/vlBmB1uTBXDAg
	iKKmygVBK+m7NlUOxZzHL0TNtiKubDzks+tbQXx7+t95dOEYuOG17AOSpC6w/seJi4JtiAVTPGG
	SANvFp2vrSpEqJAlP5WNBFMOgl3k8Wn+Qrj0/ofkjPr55OxRhz8ViBGtz8r1WoWObg58vWlo88k
	cgYUSLw6R9FjDY+PKi5E/neNf1gsbTeSVgXONG/MmaqzdtaSWRH5HJEYIifPirmILUWhsS3cvA5
	xgMvTSao+kf9/q9bu3f6rkDQ2+LLSTHHcxJe6rMMRSmOUFOzxq/E8i6QWAY7G+RRmaRLRdIC+eI
	QAd/CrkkeYt3iUAMzKlwY4RJ1KV32uhuag2KcdayJLrijyz8=
X-Received: by 2002:a17:903:4405:b0:295:565b:c691 with SMTP id d9443c01a7336-2a2f22292e6mr38202965ad.17.1766160856900;
        Fri, 19 Dec 2025 08:14:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUovbz+IQVwXUSlmpgzob2VqkixosM6m6qbOPt6+nuRwTuDua8k1xXagbSByh1JMNjuTXe1A==
X-Received: by 2002:a17:903:4405:b0:295:565b:c691 with SMTP id d9443c01a7336-2a2f22292e6mr38202625ad.17.1766160856400;
        Fri, 19 Dec 2025 08:14:16 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm26593725ad.71.2025.12.19.08.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:14:15 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator support for Type-A ports
Date: Fri, 19 Dec 2025 21:44:07 +0530
Message-Id: <20251219161407.2075701-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XuyYrDQ0Zfs0w6sDlW2s20b2rFy4tdbp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEzNSBTYWx0ZWRfX8ykiauoGhlxD
 s0Iu869wLp9PFYSAdC157VueoeqYbqUD3WCvs+NePIOh3TGH+SK/fqKvqUk8nBAx7a2ggIW77r8
 lrxulIVVePYwoe8gsybjLM8H8aOM7n2gvYc98kXsio+5VOD64aWVdfZpQwXhZ3rUy+MWqWsJ325
 lDzLjo6L9AF/tzB9Hkn8YylM3gbI5dMa1KkzVy1sCyxosjT0be4KF09fOR2cTEqDkXIdLzJwSSE
 4UCL1in/i4MhhDtRjNkLESY5eH4Vt5oifXOFHQDhtXPkAHF3QfP/5/KaoDTwJbFM4iahMy8yCpP
 ebRkdNLRN5ArX2oc3jzGybI0EOwTiPkBE0G7BpC0QLK8CQ+sCx54d46NqlW4o4jHeM67Jh7YMLH
 5ZqN7M4z4NfG5cNP9O7JWiAOoPn3oUbGeeN6OLUFx4hpqxHs1sce6XWV8B8OG7Vlq24likgJ0xM
 lPCvARBBjM13Dd0Vr2g==
X-Proofpoint-ORIG-GUID: XuyYrDQ0Zfs0w6sDlW2s20b2rFy4tdbp
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=694579da cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KCX8l4TVFeEM4KXXM5cA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190135

The Multiport controller on Hamoa EVK platform is connected to Two Type-A
ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
regulator, controlled from PMIC GPIOs.

Add the necessary regulators and GPIO configuration to power these.

Implement connector nodes to embed the vbus supply within them. Since
there is no entity currently that can read vbus supply from a Type-A
connector and control it, mark the supplies as always on.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v3:
- Added connector-a nodes and embedded vbus supply in them
- Added RB Tag of Konrad from internal review after adding connector nodes

Link to v2:
https://lore.kernel.org/all/20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Re-ordered nodes to be in sorted order.

Link to v1:
https://lore.kernel.org/all/20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..88e3e7bed998 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "hamoa-iot-som.dtsi"
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
@@ -48,6 +49,32 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector3 {
+		compatible = "usb-a-connector";
+		label = "USB-3-Type-A";
+		power-role = "source";
+
+		vbus-supply = <&regulator_usb3_vbus>;
+
+		port {
+			connector_3_in: endpoint {
+			};
+		};
+	};
+
+	connector6 {
+		compatible = "usb-a-connector";
+		label = "USB-6-Type-A";
+		power-role = "source";
+
+		vbus-supply = <&regulator_usb6_vbus>;
+
+		port {
+			connector_4_in: endpoint {
+			};
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,x1e80100-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -344,6 +371,26 @@ vreg_rtmr2_3p3: regulator-rtmr2-3p3 {
 		regulator-boot-on;
 	};
 
+	regulator_usb3_vbus: regulator-usb3-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB3_VBUS";
+		gpio = <&pm8550ve_9_gpios 4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb3_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	regulator_usb6_vbus: regulator-usb6-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB6_VBUS";
+		gpio = <&pm8550ve_9_gpios 5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb6_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 
@@ -877,6 +924,22 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 		input-disable;
 		output-enable;
 	};
+
+	usb3_en: usb3-en-state {
+		pins = "gpio4";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+		output-enable;
+		power-source = <0>;
+	};
+
+	usb6_en: usb6-en-state {
+		pins = "gpio5";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+		output-enable;
+		power-source = <0>;
+	};
 };
 
 &pmc8380_5_gpios {
-- 
2.34.1


