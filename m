Return-Path: <devicetree+bounces-248653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29940CD4C4C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 069BC304A106
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 06:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8DF326937;
	Mon, 22 Dec 2025 06:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X1DR7Bo+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MRJMTsWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8133271F9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766383432; cv=none; b=LZdcdp//0C1qcv4KKSQ/5jfKPYwwRjaPyiPDU3chO3LAZ1HxskHPpMwaYWcKBjGrvO0msM+ACZ/uShwqLrZdLeD8Rbk4NDobf2cPiC3m45STw58TDBbWtvzk6FCZCvK/S09ZxXiMiPStFqbAlvuFidUBVh49hMfsmy4ZLSV6Lq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766383432; c=relaxed/simple;
	bh=PDd2fvT7QF4J92gTiksLn+D/ix3r00VAgGvlg1FlC9Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MBqoX8bXhjh+lDoWaCWdojSzNo1ByWSbomCioiwhwVki4x291bVugrrPzePleGFTOiMRKMEP82uRsSJt6IjuoQTP4sAim2k467iItSNGXzg+62i1lQ/Uyy0rrIQaWJGo+R6b4CIW62dScsAQRRmim5DhOPDg/A6PY7dvL68XkTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X1DR7Bo+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MRJMTsWP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLMH0NH3729732
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=vcgXBZww4xH
	u+tLgJLMjC9uSZ5G1LTtyE6/5Sq9SxqA=; b=X1DR7Bo+jSanuGLauhfiLguwxWj
	t29LjJHRADYdr4A6+M558vNC9P29jfZnrNyguAXNaKBq09ztuWO/6lUnDoFN+Hwo
	p8yTlGZFuTNz8sJVwBWjWuJbT/33PMVQ2UPOklXFSOBbtsWPgKWhKV4oTL9BKxu2
	OClPOLhDfWWYx/eahV8eK9M1otOHooDnnDOIACUALBglDk14vrqrxAt5LuTN+FaQ
	krm25vb/FX/KSbcg+I7R8AFTbbt6JBVNsyMBN7D/5vtK0/z5bHUgT8Eeo1+wz5ID
	A7glV8MAz9OXRgXiBIxgb9gEjqeOWx1Q0FNlQtL8fOTNo0bxS/doJ1GMAug==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru3vat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:48 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34e5a9f0d6aso3490522a91.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 22:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766383428; x=1766988228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vcgXBZww4xHu+tLgJLMjC9uSZ5G1LTtyE6/5Sq9SxqA=;
        b=MRJMTsWP7Ha9E1XWam3fbF0q4Ddn09V6H5gn93foNPWzRDHmPWougGxSEgARl3cdgr
         NMkqu0K1aV1cHRq1vGu5zBc4D3hXjbsZp7FZ/H9gYGwBlJ8IrR9QMDt04mUGHQrYtDFq
         3cmTw7F9/hcCnSevUpEg3rBxI9a6KLclvjnIL30LdgkZSd9e72dDrIAbQXbQ8TPXal8Y
         RGfEpW1FxNrXSRX9Zp5caZkLpnPPFy4tO6BsGCaGrakLbc1N/55C2To5ulqItyunoZ+f
         Cd+B9IEGJHknjE0WywmAJVukyoTK2CzUt8TWsCRswbbD8NB12wH6EbjUNETe/KvPKqZN
         fO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766383428; x=1766988228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vcgXBZww4xHu+tLgJLMjC9uSZ5G1LTtyE6/5Sq9SxqA=;
        b=AkqSBVFnRKT4dCRzP1WV/Nalq39bNOqd1wi/Nxu5GzmolO7TiZg9xNnBH4B+p2sNL+
         ZE3MzGKeNYdT9kX5vOINQJJ8R9HzVs8uzCu/WcvbYLb0eIei4RYyNdVWDj0ndB79R06s
         TFq9jwipiy2EMhpvp7WiZQTr9+X3CP9UTvRABFL4D6/cH8VKEBcFRKR2pNgXrmIBQoC2
         ImhGEXSBc0y4AqO2+DuBGJe94dxT+DaMvIPaktrFmNtmDvtSW+MYUrhJIrb2XB7Uvq7f
         7+iJkJiVjTeWEWCu/iMAmv4lC2Fjc0rKkqgXKWcpDsH15hV/4mS8kB8FT1z8WnnMc3RV
         zJFw==
X-Forwarded-Encrypted: i=1; AJvYcCXRHEv8wmBr1yzde2NjvWQWxkT7BWBH4CJGxEdA0KIgxTMaO55L9BCUlb6C9bxptQKwxSp8H2PmBJnU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2VlCC7vpms5e5FlnTKvBGRaUuutGlhjKtc2BP3HiS32vQ4BCj
	FIH8Z5CIk/26CQ5bic1BWiEyCdd2/TSgnYArN4+d9qRe7dKC5crahVq5wUO4mLrxD+Y80pAjUI6
	G+EPMflShpqQ+OElACBwZ6tFfBHhBAcNPCBnVGYOTIdgAoHi2WJKyAk2ix+RS+Li4
X-Gm-Gg: AY/fxX4FA2zD3okQwDc9DZXpgh9B93+PiHf5OfQvk/pcvnwitKz46N7RlDPx7T/qp3U
	czKjO7ZlCK2LAcHLhQeqD0pou6S0HEKBt5gHi4w7JBVOVbWBOhKKdjcboSx01AqUxw0OzrY24Uf
	D09u1A0Y+p7a3e+gf5xV1asBZwL0VDhNRXqb5+6PE2J0kqsMD78Bvs/NbR+BPKSvOwUKTrMvaf/
	96tDR22FHpyKGi99tKvuX/w6fIMirIof5fZ9UuB/SbL7navaQ6u0U2z3J1bFN6wIpSsUp5QfzNe
	63lZPifEaeVWmnJQGGmHC9E4uaAclhzzI2NO4tSKs6XDogQKm8qCe+PN79Xz16gpAMmnS54IuPo
	IepWBwn5NJmzdwEaCu+xC385uXAIvdf1Arl9g4JYKaaS1yTQpcuUFdDSiuh17yQoGxDuNw7ccWD
	U=
X-Received: by 2002:a17:90b:548d:b0:34c:7212:7a67 with SMTP id 98e67ed59e1d1-34e71e092d3mr10676591a91.12.1766383427942;
        Sun, 21 Dec 2025 22:03:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxbQbjVzIhOOvWlFiSb30OH6AswqPaa8VOhM/4Z24rn2uE+OMEjeLfA79NqcM//bCn7KnRLw==
X-Received: by 2002:a17:90b:548d:b0:34c:7212:7a67 with SMTP id 98e67ed59e1d1-34e71e092d3mr10676566a91.12.1766383427443;
        Sun, 21 Dec 2025 22:03:47 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm5846668a91.0.2025.12.21.22.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 22:03:47 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Date: Mon, 22 Dec 2025 14:03:29 +0800
Message-Id: <20251222060335.3485729-4-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA1MiBTYWx0ZWRfX/ke0wk88E3C+
 mT8lhaNr77DQ5mFG+cfkyTTUl/KPokXdhGlPzKZmuiA2zF5ivjhEB3/qufD4r/lgyQ155AwZp2h
 fWxIROlbWtE5d+9mXMayA6OfkRZQafm5gi3oxTb+z5R7SwS3gjlBS8D5jZX6HOsVMDpOArg+3pk
 Sa3FU+0dfDrZQWabUEH5Sz7+HLwYw4+pTv6xXVF252ZQIxdHaLp2w4y3tfXvLUlx+FoDvBO8qT4
 CdAPbz06wh7ZxaW4RupLCuR/5TYUAy6DAL8t+PaIxLkBMn+ZI0K1R39FQJBBbH4PPjxNlvJShZ5
 Gi5QT7p4aH42P3290rkf9Fh1WT7M4aFpNA4y70F19Ay6KnoFhET8GhOvpQqJbGr94qC4s3w2Sza
 Ga4snZpKtlZyG6get4KA2+Im9ZRn/jsvUNHpAzuIAor6Z/XdwjvhSAUrREJinraTY86rS+3+i9q
 Qu204b8nA8JZHzNjhIw==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=6948df44 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZmrNZMXfqHY4OuZ4eF4A:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: WTUNFniCZ75ww_MV2D6mgRP6tMkchKiK
X-Proofpoint-GUID: WTUNFniCZ75ww_MV2D6mgRP6tMkchKiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220052

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
the Purwa IoT SoM and a carrier board. Together, they form a complete
embedded system capable of booting to UART.

PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
topology differs from that of HAMOA-IOT-EVK.

Make the following peripherals on the carrier board enabled:
- UART
- On-board regulators
- Regulators on the SOM
- PMIC GLINK
- USB0 through USB6 and their PHYs
- Embedded USB (EUSB) repeaters
- USB Type-C mux
- PCIe6a and its PHY
- PCIe4 and its PHY
- Reserved memory regions
- Pinctrl
- NVMe
- ADSP, CDSP
- WLAN, Bluetooth (M.2 interface)
- USB DisplayPorts
- Graphic
- Audio

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |   1 +
 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts  | 100 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi |  11 +++
 3 files changed, 112 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
 create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..803a525093e7 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -123,6 +123,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-lilac.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-maple.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-poplar.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-xiaomi-sagit.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= purwa-iot-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-fairphone-fp5.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-particle-tachyon.dtb
diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
new file mode 100644
index 000000000000..95cfb7024751
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "purwa-iot-som.dtsi"
+#include "iq-x-iot-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Purwa IoT EVK";
+	compatible = "qcom,purwa-iot-evk",
+		     "qcom,purwa-iot-som",
+		     "qcom,x1p42100";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pmic_glink_port0 {
+	reg = <0>;
+	pmic_glink_ss0_hs_in: endpoint {
+		remote-endpoint = <&usb_1_ss0_dwc3_hs>;
+	};
+};
+&pmic_glink_port1 {
+	reg = <1>;
+	pmic_glink_ss0_ss_in: endpoint {
+		remote-endpoint = <&retimer_ss0_ss_out>;
+	};
+};
+&pmic_glink_port2 {
+	reg = <2>;
+	pmic_glink_ss0_con_sbu_in: endpoint {
+		remote-endpoint = <&retimer_ss0_con_sbu_out>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	typec-mux@8 {
+		compatible = "parade,ps8830";
+		reg = <0x8>;
+
+		clocks = <&rpmhcc RPMH_RF_CLK4>;
+
+		vdd-supply = <&vreg_rtmr0_1p15>;
+		vdd33-supply = <&vreg_rtmr0_3p3>;
+		vdd33-cap-supply = <&vreg_rtmr0_3p3>;
+		vddar-supply = <&vreg_rtmr0_1p15>;
+		vddat-supply = <&vreg_rtmr0_1p15>;
+		vddio-supply = <&vreg_rtmr0_1p8>;
+
+		reset-gpios = <&pm8550_gpios 10 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&rtmr0_default>;
+		pinctrl-names = "default";
+
+		retimer-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				retimer_ss0_ss_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				retimer_ss0_ss_in: endpoint {
+					remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				retimer_ss0_con_sbu_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_con_sbu_in>;
+				};
+			};
+		};
+	};
+};
+
+&usb_1_ss0_qmpphy_out {
+	remote-endpoint = <&retimer_ss0_ss_in>;
+};
diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
new file mode 100644
index 000000000000..1ee7478d7614
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include "purwa.dtsi"
+#include "iq-x-iot-som.dtsi"
+
+&gpu_zap_shader {
+	firmware-name = "qcom/x1e80100/gen71500_zap.mbn";
+};
-- 
2.34.1


