Return-Path: <devicetree+bounces-245137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8170CAC8CE
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 09:52:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E92E3018751
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 08:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20F62DECC5;
	Mon,  8 Dec 2025 08:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PyuAS586";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CnewIKMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A869F2E2DEF
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 08:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765183923; cv=none; b=XT8adPdMfdzM6b3W2IvYElxtWf9nviQTONN7wOyH8KQ2ub+y6UU8pn9gsjdNwASk5Eb2bdAs+XZ7zLYv0tym5QS7+vYkwX6GzLv/iXvBaIjwRcztZy9uHNBtUibyJcZvyXfMBY+uSPYi5NtaQ017XlsOUpTZ6YbgaL2I2mAQSNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765183923; c=relaxed/simple;
	bh=KmCLGVBVynsUx71RTMLX4RkvvAozhHTvtXhMt80Mz+c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gDhc2YHKrY3XiXKeZsG4QkYoKnGQaUWg1zeZbQ79TJ7GgyE0p+bsePAyiLpZEpF5GsWVbuw53Wd0a2fg48U/jR4iS3j3QvaO0YWPWVaUC52z7koAwLDvTE5OjMYB/5C5vneRM0ietjLm8Od3oGxBtkhO0RFs8GxO9u3zlZNMENw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PyuAS586; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CnewIKMg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B88aclI096385
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 08:52:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PtyIit5tkgXFx2xw0Az3cQHLC6uJXC8u3Sn
	jQlj3NRo=; b=PyuAS586jSKVztnKc9f0UUOlZqucVyc9EzaY8CFpmd8YTjJp7yk
	Ygp/T6zyuwOdgMCHmaKyw0JZNP5zpy3bPFTdITMHdE1HWodRAdNmbNZmDmfTpfWp
	zqLaJqJUpRc/oSHU7oPxyq8HjpJo/sG0U/o1qNX6HhpjwsXDTLQLzpqFqt8X1Tat
	59piukto6qgkGQIW7/phWMtgNUQPVp5Vqm7hoLbHF/2gr39GS3qzC0ln5Y1oQrRZ
	Do3ooMU1dWKU9VGph3aOC9DpDfHdncJQMOPg3h6yep+xnez1srBN0bKGC1wCK9V5
	j2EBwisEgIbGZV6yasxETLEBTBwoXZUKaxQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awuafr1ah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:52:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34943d156e4so11472679a91.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 00:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765183920; x=1765788720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PtyIit5tkgXFx2xw0Az3cQHLC6uJXC8u3SnjQlj3NRo=;
        b=CnewIKMgKIZ9hzlUID3BtwyM0AsDySUOED8FPnRiyR7ZatUpwWQILU7ayKewa5/VzU
         6wa8gPMhdFotNk9PVhjqNnMIaOVutkb1j0wuy0Qy/1r36wgmB/OzrPtMT3tSz5bB5JfI
         WqkTJDwmyrtXjxYE+aTazckykRpG4DbiZu3yS4Dyixn5hw1MGrKjZJrx+EtI2SATYT75
         tbdrxu0E6qDiywU1UbPcjRqSW82u0s+aPYK9D+Tw3A1A3VcuRkzhHAZ+X7GgFm58vqSM
         171fxZ5CPmibiHte+lgNf8ckjDPQnGqoYKEsHXTutrB2cM4A/2p70fl4Nj9wBO5n5sf9
         GLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765183920; x=1765788720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PtyIit5tkgXFx2xw0Az3cQHLC6uJXC8u3SnjQlj3NRo=;
        b=IDFVAxHAkBIUdsLJdGBAx9U2pDwlB1e3wJoI5iOFJ/Zc79njYVfo23FKDkKO6vHqnG
         6z+tbg21leOpye/e+qJYY75c/r9oNeP9w3AqwNt0423GFTCc6H7K1ZVyIe1QG8RMFO8U
         ixAYQCzLEK5j7ty8HGgPs/D5t4JPMw07an+N0ow3TAfvPei6sor7MZSAbG+f30GohNVv
         B2TVy4MqVqFZnM63ppeKDJSO/NYG5QliIXnJPLrA/kQ3qAVfla+e8icLO8GtORggVBmJ
         SPuQyMrrD4LW3RnMGiS06zx39MAR00LAYuPb/a8dcM77JOJOp3xeTny/ceRvj3+Qqnru
         tnCA==
X-Forwarded-Encrypted: i=1; AJvYcCU+eDXSRO8YUDch0yh3/YZcwPWpRnW0YPAUe607mIfTEIh7fMDusSPjtH2p35QEYcLvwYxxvGkI9nc0@vger.kernel.org
X-Gm-Message-State: AOJu0YytNSIo7NQBArtCulxEd1xi0porBU5EgF4kK7yppvy4fRg3LHz1
	g8VsTPjsX0VRp8PF5AFvha+1orS324JeI+oxtJjH8Hy1PVSTVcpYNiY8JRiBqmnzJRy/eQN9X3x
	TbPw+HKBMo/b8BGXMH5tAKTjwaMEVQi22N2KGsKVw9xg9jkQEREgpdfVoiI/YP55s
X-Gm-Gg: ASbGncuDGkpXaxTG5gZ1YNtcKaPtB+EuDblYkBePqoKV8Plu8xns3/gf0DIMAX1Amjj
	AH+n28BVjCEOisKsKc6LERylUMVqXK53odMSX1F05ne5l1ddjiIWeGn+PcRpAk8yCSJUFCGP58t
	95NJSbf4ztWOVlxrb9kXQ31aAqCdhJXWBEePcq4Rdm6anwnOiYd1yEEusQ9GIRttu8pY+s5UBkJ
	AJUbJQk93EubHVKJPHil16QW6NBc/jxlWLG5BtH7lQkbhiyFAjLlsF1H8lNXRodoiT3mnNi8NGB
	AYbvsf7v7syO7FTBiMORkuvNMDU+yuz0p9qkG6lBpXSUxMTcnYm8akyFn/8+i0Cckuf27NbeO37
	TlGe2Ality+R83enkFAOw4hjrB8DHRsvKTDdwYBT+xOlHpZ0=
X-Received: by 2002:a05:6a20:3d83:b0:35b:d15f:8fc1 with SMTP id adf61e73a8af0-36617e37d08mr7573737637.1.1765183920125;
        Mon, 08 Dec 2025 00:52:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5/snTPVnI2lTZBs/uKYTks4ooXpVrM19LZZa4MvinEc6VrfmrMy4ky/ogB+iN9IY4HLmxwQ==
X-Received: by 2002:a05:6a20:3d83:b0:35b:d15f:8fc1 with SMTP id adf61e73a8af0-36617e37d08mr7573711637.1.1765183919657;
        Mon, 08 Dec 2025 00:51:59 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a14f5d0fsm11326967a12.23.2025.12.08.00.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 00:51:59 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator support for Type-A ports
Date: Mon,  8 Dec 2025 14:21:52 +0530
Message-Id: <20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ep7SD4pX c=1 sm=1 tr=0 ts=693691b0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Uj---1aK-f6A1Tf3fukA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: cJyrVH2ZqXvscVfb-mUwP_cLV56PYTbz
X-Proofpoint-GUID: cJyrVH2ZqXvscVfb-mUwP_cLV56PYTbz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDA3NCBTYWx0ZWRfXzMqsaUE34uKi
 OdnHLHSliKbUC6SlX8ucoaikKSj4nPc0QUxBQuK0/mIXgfhVKZAGs+aDNldRDK08Gcj2fM3Welx
 p40SNZLDJEs2GZd3piIo3bSZyig81w//1FhkxinsSzO1ch86L17vybRLOl1Wq05PqUprgkhQnIS
 UzH7aIhgu8BRoPaltWArMRSNfpIhUXOsYlimUv2nU13bBnPjcqkv5FBokX59NUrLGQAB4RFoWzZ
 8yRAYh4s4s1wi5CnmXVVhXy0kho+tb/qICcme5lWD/RNACokO7aKAsbK1BHLsXeo2aFIAwthmfI
 sCD/ECXNFT8rcQuFCVcu0TaRFqDMsBBWDbBmC9cd5HrmkgUHwAe9Mc7gYOwpwQYB+oz8qo65k0b
 pzfUFXvT1O4JDsQQBhPD9MFXmUeURA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 bulkscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080074

The Multiport controller on Hamoa EVK platform is connected to Two Type-A
ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
regulator, controlled from PMIC GPIOs.

Add the necessary regulators and GPIO configuration to power these.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..665983ed6714 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "hamoa-iot-som.dtsi"
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
@@ -167,6 +168,26 @@ pmic_glink_ss2_con_sbu_in: endpoint {
 		};
 	};
 
+	regulator-usb3-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB3_VBUS";
+		gpio = <&pm8550ve_9_gpios 4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb3_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	regulator-usb6-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB6_VBUS";
+		gpio = <&pm8550ve_9_gpios 5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb6_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
 	vreg_edp_3p3: regulator-edp-3p3 {
 		compatible = "regulator-fixed";
 
@@ -877,6 +898,22 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
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


