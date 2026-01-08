Return-Path: <devicetree+bounces-252930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3C4D0546C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8477133B0F87
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B50028E579;
	Thu,  8 Jan 2026 17:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P42JVFQS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HCo3OcVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E01F288C2F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891965; cv=none; b=KHKJWHnUHKi8VMOUXIt5pLVYtZL2Zhzli90I/j/GCXKbEF+sOZQMVY0LnL4OJhU3LmmJtIXij++OsLwYsVxxvbdt4esfOsPK35g7XvBEZt4J2vishur+D3zyZeGAGBNESr9mopGEReSgFnado7tpJDEWJMD/MdkjZm38yT8nzJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891965; c=relaxed/simple;
	bh=+FuAkoT/A+qRScIfZiUxudGNTAwE967gh5qamvKSiIw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SbwfCyH/KKcs4BpEri+/t6C5j+Eby4VnWl2PkK8zyC9aLRj+MChV6OsXoci38R37wfxeNb3MNSWCqKw34bnZQaD12sCMDQMu1AH1OaKQO7aUGxMU4y7FiW6av+xFsVrLJ6pz4MQyQrpRbn9liMwWHpSqryQN8M50XcfmNbrrh7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P42JVFQS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HCo3OcVI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608EecS61838286
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 17:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UHmYggVFRTF
	oOqFwOPvTr/lZ9J7uus66Rfo3FPa3PbE=; b=P42JVFQSv4XIkrF4g4/ZDKnqNKR
	fQoIXUiTxydao7ba+RLb/ORuZmrdxcvKEDxyGtBJng+p3N8VejiF6B7S2pFXGKXG
	NnkMPMjhjZGGaeKATJLjoWHPJK3bdrl+b6lBZMGF6am2oN3XCDX+vWMMomJaqKVz
	Aqn3U1VCWVCqt//Y2/yEk+ij3pGOw8T/MZ8fM1syAoe3fdPlU1XtZypHcKPsWFbD
	P75xn5FjVCyS4QA34/sDyN9R16sycJfl4GY7PTVlOLY+6DYb248iCG89SscTKyZg
	WgF1mP7Aq/Qm0qS97aOj8I+Nm0MoU6rcwvAdWO/W5JsDIwt8LDqJkB3jdGw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj8921tf3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 17:06:03 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5634ecb51a2so1020315e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767891962; x=1768496762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHmYggVFRTFoOqFwOPvTr/lZ9J7uus66Rfo3FPa3PbE=;
        b=HCo3OcVIIMS5DTyqpx3YqOFRx0F6BcLV82Nk8FICpGjmzLgFFPGZWgennJC/TwHErk
         w/H97QSm18Cd8MoKAPm1pl7ojkP62W7RhWHwkLcsmqzPK60irTh/EuJoiTWapUkJO3nl
         T2nJgQZ3c1YkTCG/NugK9KDmbHSzEysV3L719SiyXcRtsCNHA+uTWjhSnczCQLAf7Crc
         HPPFoHXIzncYO2MdpJzRk3I6R9TRlarxCu01D3VUehekpMJlYqw1kFs1KGu2LTBGFIL3
         frkPRCDHwqW2gNtfhaZiXS6apb/pniFN1jFFDzQsHG6wjUbVmXt1pZy7i7x0m+DJkEAO
         NL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891962; x=1768496762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UHmYggVFRTFoOqFwOPvTr/lZ9J7uus66Rfo3FPa3PbE=;
        b=hp9LL2jTINa7aQyGhF9qnzqkfaUwT9QLwZ2kHTyFhA9NbNtZgi1znGDDilhT0y6fUi
         UAUaPj0g7a8LYdBO7rAFsZANm/R+x9OUuqKeRvhsDRoD8bp4SO6tNAbcavJBOFgrL5Ar
         A6WHRuwavLHc060vRwtm9dkES+UxwMQGqmIjqN/ASgEIKCn0C61jR+fOeqE1vUCH/os/
         B2sPRIMJ4Fk5FvQ7SvJIUPrdXOZR9GWu/7PUHcI0EgkmQsZ3zUesS3SiSUcf3kloDuQO
         S1oSgi2tumCKIOGElFNSfXNz7g4tUlg3oHdNtoOmHWXUQBH2dqKd8SC9YHwj/WgUkUTE
         cunw==
X-Forwarded-Encrypted: i=1; AJvYcCXZHAwSnBqzdBQIH3+LIqL5/jRQJCUN0INC2nzbWIYa9t9G6AWC3Em+Ul1YeFYragKUETqftleUB22o@vger.kernel.org
X-Gm-Message-State: AOJu0YzAHLVLXaOxz5gbdz07srn5wusFZUK6Y8Vj3wBgH8gpd9WTDi70
	A+M0gI/8sbdci6PYKc94JUL0FTiMihSLgDX3TEiqznKI98kdG6ZxoX3X+ItPZbDvp5R9fEJmK8b
	G6h1lV+/Is0omcjq+AI3Ol/6RzbP2HxiVc7EdG+7RSs8oq+TB9Xxs5CXqSFl7pKee
X-Gm-Gg: AY/fxX5ctX8EDZT7/GKlc6odubjfHii3fJY6b4Hvu/Xy/DR5QpchedGcECZXS9vFWMN
	5vPc4tqp7q5YmeEKCuTZn4/dZT6X7C26f2v8Ad/iB5tvDIpcAp2JAjN9aW8QTJZGWg4nzRS2mCo
	Xv4j3J4+VxwAzJXD0XnRudU64VHUJxnS5/NkSf9kgtzwQxxt+/jnJFcChk+ou+/GI6oGRAwPNeg
	VVsIXobFGIU+hxud1RRG+YddJg9H3/V9izotRepLcYDcxHv1RyvV3C1tMt5XcsFUWE8D6c8C+C3
	7DQFgSsesXuoIKXADL7n040/cEyPoY00iGCK7v1oybsjhGR7oa63Yy16gh2UEJm/M+9cAPwlYXl
	Q5IecJ6xbBrcTG+qIEgQ5E4Mj0B9s3bL6xo5g6sqaQW4yyPZjMqRazzkFJKirV7MiJYgwsVuFwD
	iE
X-Received: by 2002:a05:6122:9003:b0:55b:113f:7e08 with SMTP id 71dfb90a1353d-56347d53d43mr2220955e0c.2.1767891962302;
        Thu, 08 Jan 2026 09:06:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGua9ejuzLdBptsa2pdgON74/BmwcpnFp+U6KFss0UUpjDN8ifed0yCtfxi6LkeGUqXbl3Ypg==
X-Received: by 2002:a05:6122:9003:b0:55b:113f:7e08 with SMTP id 71dfb90a1353d-56347d53d43mr2220905e0c.2.1767891961816;
        Thu, 08 Jan 2026 09:06:01 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2cffb3sm856373466b.31.2026.01.08.09.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 09:06:01 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: [PATCH v4 3/3] arm64: dts: qcom: qrb2210-rb1: Add overlay for vision mezzanine
Date: Thu,  8 Jan 2026 18:05:50 +0100
Message-Id: <20260108170550.359968-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
References: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695fe3fb cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=RMWakvN5gFyazINGlFsA:9 a=vmgOmaN-Xu0dpDh8OwbV:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 6mUeRexwhcE_QTPDX5aB_d2RADVnoPkE
X-Proofpoint-GUID: 6mUeRexwhcE_QTPDX5aB_d2RADVnoPkE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEyNiBTYWx0ZWRfXx8ohCJowsXC7
 FQI65h1H96J9jY3+XkmbeE6tUSERjEquBSOavZBLNCCf/TCkv3a7yssQ6bCN5HDygnFc6ST13hS
 XCKznq2ymsguhyaj/Ouywv59dg3iO9JIx2RH6964SnGCb0Y19oI9E/oLEK++qFr9CkmHzwioVxA
 hNIPS1e4McQAw5g9q2UVU/HBvCxd2BUV8l6/DilUEprwRcTtkSkgUYyPVFL5kWBXaC3xCW3x9+C
 KT+BuVf+TdmkgcIf+A8HqqSU3ulEfWdfJx+hoXNVaPTmsrv4h1yzUtO7SlXrxGoIno/xdMnefep
 +n+ifDKcGGz1qlSU8vtEzAwtFvCt3EgnX18QjqmtlACyI43LMjCzt78ZuVMsy5P8qWSYGafuMSH
 EWZKp1UAH/8W5j8shlh/EDhgNFodDDFkWMFSvmU+lNtVYf5kw02PvYhlyWwV9hqjpBBXHi+/0g1
 J1MNujOJWAc1HcH2B9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1011 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080126

This initial version includes support for OV9282 camera sensor.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile             |  5 ++
 .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 66 +++++++++++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 0ccd6ec16dfb..a5d6f451f85c 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -149,6 +149,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-arduino-imola.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
+
+qrb2210-rb1-vision-mezzanine-dtbs	:= qrb2210-rb1.dtb qrb2210-rb1-vision-mezzanine.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1-vision-mezzanine.dtb
+
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
 
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
new file mode 100644
index 000000000000..c314cd6dd484
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+#include <dt-bindings/gpio/gpio.h>
+
+&pm8008 {
+	status = "okay";
+};
+
+&camss {
+	status = "okay";
+
+	vdd-csiphy-1p2-supply = <&pm4125_l5>;
+	vdd-csiphy-1p8-supply = <&pm4125_l13>;
+
+	ports {
+		port@0 {
+			csiphy0_ep: endpoint {
+				data-lanes = <0 1>;
+				remote-endpoint = <&ov9282_ep>;
+			};
+		};
+	};
+};
+
+&cci {
+	status = "okay";
+};
+
+&cci_i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	/* Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */
+	camera@60 {
+		compatible = "ovti,ov9282";
+		reg = <0x60>;
+
+		/* Reset is active-low, but driver applies inverted reset logic */
+		reset-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&mclk3_default>;
+		pinctrl-names = "default";
+
+		clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
+		assigned-clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		avdd-supply = <&vreg_l3p>;
+		dvdd-supply = <&vreg_l1p>;
+		dovdd-supply = <&vreg_l7p>;
+
+		port {
+			ov9282_ep: endpoint {
+				link-frequencies = /bits/ 64 <400000000>;
+				data-lanes = <1 2>;
+				remote-endpoint = <&csiphy0_ep>;
+                        };
+                };
+	};
+};
-- 
2.34.1


