Return-Path: <devicetree+bounces-251846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C54CF79B9
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8A4C3105A0E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6C5324B06;
	Tue,  6 Jan 2026 09:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mBKbMFk6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P5TeVslr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0D9322C98
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692448; cv=none; b=GM9cQ9sXq7sApJ0a68BFgvPIWUZttd1i3ablTMXo/OjbvBq4QJ02Q+3dX0Rn3ILrbRyoX+hxUBHqDG4jAimrIuCkZjFzTqHd7Hb/ltc/JyQiVkUUWZm8kgmvwgnyuFDgwBLr/ECm5y1+4T8VHTSKJAd+96JYY7xRe0e5AwNXkFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692448; c=relaxed/simple;
	bh=qNL03PYuDa7zYQoE2ixEmUSblmXdpnNGEuV5SywZbG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i3HRB6OFhUmzYEtcyj1UnJdDEkITMna0+3BKaYjK67Za6CvBfC13/8x9UB9Sz4QtB1SrXjZEbvopqNmMc8+d9reCrZZ4qoEsiyKdIe8jSxWIvKkiHBlKR/h0kF5JNmSxLObdCLimCIKK/vp7pHkIGS66lQYUmEZsD4xGoOxVeE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mBKbMFk6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P5TeVslr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QSIi2430117
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:40:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	50uGPgremaZPgc01PJvtHho9EVHbAkAnUxBw58+hi+o=; b=mBKbMFk6szSfF6dn
	lPoGvIlHufqRWy9ir9rjuRJiJz6xy8Eks7kIshus3YspIfjfq9+pOfMToPCr/9Xp
	QyC2VRG5wtqR1f6jtp/B4ONpC08MIPocIVRY9hWp6eGxg507A38CioS1h7sUNxjO
	/5amBG8RWpp4dWcaRigc+tWj/CuyvEwx7ATsbVcn2yw5mociWZevAamY/9FAP9eC
	aXwTimuemV4f4aaBLdpztNjQo8gwFsfUNiXwNgIUAVtPu08fj6X1NhrKHV+JwJI2
	UEEGjQu8TPPfR1AN/H2j6GxAK1JFWZ1znPABd5Cs/l2LmiouFsYh0seS4TsETg35
	c+8sRA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr739cv2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:40:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb9f029f31so204014785a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767692441; x=1768297241; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50uGPgremaZPgc01PJvtHho9EVHbAkAnUxBw58+hi+o=;
        b=P5TeVslrAYoodJOVh7yUV27edELHe+hOHNDtSY01PuE1WXw6bBbbyylTNgA+Rcz9L2
         kGpFYMQDZjnU1334nDspzlXDYlh8FJBuj+uK7NKCuN2myueGcWQj37hrgTMrMZZlVApZ
         J7vknfjJ4yXVaXdvDCDbBl7gIfF5FDiNF/80c++lYILs9TnmsuXxY0IdmLBHc3X7BpAF
         wby5NP3XQ8uMEEYn0S71KEhig/6yijLGPZ2WdVmmkUA8xUbx+ckvsNqv4RbDnmslzgFI
         pw+ELIM+nL/VG+dSFuskGgTydE+QN5PvHN9MBPslDWdSP3NNjFq7Z8vMrzqkDtGo0HGe
         9Pxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767692441; x=1768297241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=50uGPgremaZPgc01PJvtHho9EVHbAkAnUxBw58+hi+o=;
        b=p/+OHQGNNZ5Isvb3ndFs+4Ea4AfDVcpUubJ9tyRSYo5s3nbgbLyivItBXTXxHFnSLM
         kVkxRUcHmSIvYDVBBdctiRag59mxfFMn268Sx528yOjCMHnMPOQeoSbLIFuImdDlyiuJ
         tSVrfHVPOYJzB5HDv8A6VDWbLgrYi1bXwsrdYghHMPmQIs8gxpG3LCo8q3YYql+dCwX0
         wO6wd/d0u2xmf2hqwr6kLWg2gN93cp7jmJMuyYzk/TaF5cVqAH0ZsNoTbEKLMcN3h3sG
         npSBnOsawMsGh6fpAXyDvvHJX9eTYBcJWEs+DWgwk9uQhIeMeDCGrn0IzcqjHIKnnqjU
         m9bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBr+qCEbG+y964dtR9RmXGinAmNKSez3LVQoR/j1IHe6SKeUixnT3ng/VzkhefjNlhwU6fxuIM9AYx@vger.kernel.org
X-Gm-Message-State: AOJu0YyjeWuFGQQmToEblWyXI87PeMEh8xnxYBFs1ccinadrz3l40ibO
	8CM62SSVgUR8CCVv6eIFBp02zMLO/zaZ4UGqf5Fk1zFFMDf9Ts3TackMh1dV+ZBh/ZyrEjzXmgh
	/vu0V9xPb3oYoNqfxrzdzXt+gR1zojyG58/Gc7oEx6ybYkqgtcbvrqnA5V7xFF+ye
X-Gm-Gg: AY/fxX45ADPZjcZhzX5lAkXELH29KQIbOw6yfXBkzRrIK+i+c8/e0Tobmk1qbzxrj+a
	NgBX8RY2KWNpLuxmhMzsf5pnnT/4JfmBp/CmUFc2R+eNEFfYqdKQOpLjKdSc7DKOQbbf4UxhThm
	tkLCmqkpa9lKRRMcPeYqpsUbYCe2MFO8WWR2iZLjGenOpKr5XhOqyiHD4Fzk3nJBnrW3gzkLt/o
	1yil1Cx2WI4F7XJCrcgs5Xbr9FttqiZz+zs2pk94r9Xn5Z0/pxCEBuC8yFr9ABPo9NtYA87GrpD
	GYe436/GBR+76EF5p5nQcnEwaA1FbhHjbswFoFYWlLqlnXOA8gCZ81FvbQGjhfR3j3t4f3KWpAW
	ImKPI/G04+dMREPhoFkoFGtBM3vWjp4r6J2yWEw1y68LbqfBZNi54DSt5QWubO8AB7y5GM21ERL
	fd
X-Received: by 2002:a05:620a:468f:b0:8b2:745c:f770 with SMTP id af79cd13be357-8c37ebee205mr311803885a.77.1767692441637;
        Tue, 06 Jan 2026 01:40:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzmqr0sIU1T8rAjETrwYmJaA2AIPD9Ca4WO/R2S3Ug8BRQeR5VlDtRUVT3CC3A9ZxOK/1M+A==
X-Received: by 2002:a05:620a:468f:b0:8b2:745c:f770 with SMTP id af79cd13be357-8c37ebee205mr311802185a.77.1767692441248;
        Tue, 06 Jan 2026 01:40:41 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51cf95sm135397885a.33.2026.01.06.01.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:40:40 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 17:39:56 +0800
Subject: [PATCH v2 4/4] arm64: dts: qcom: talos-evk-camera: Add DT overlay
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-sm6150_evk-v2-4-bb112cb83d74@oss.qualcomm.com>
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767692409; l=2970;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=qNL03PYuDa7zYQoE2ixEmUSblmXdpnNGEuV5SywZbG0=;
 b=S9vvds46ZDgLtaIcAVjt1Lxuu4uhj7iF6n3cTOb3r/LJ2S4HF3CO0cF8KG2SVtXT3cyJReZ8c
 zpV691CX8yQAkbAZkg0OuV8vWOHrmKIUpuKcNFqIoe+0otyhMRLVDzw
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695cd89a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ASysW7YtxmCszPwO3C4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: JNlo_aYaw1kL_Ns2NdOQOdeoDDeH9v1o
X-Proofpoint-GUID: JNlo_aYaw1kL_Ns2NdOQOdeoDDeH9v1o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA4MiBTYWx0ZWRfXwuDZkUUqB0Qi
 7EcyDhDaovPPqAUf6mqKF7goWomAFNtU1vM637aImweKunNtlpxailBgBB8o03rqB7UG0gdXqRP
 xyGM4392vuWLDOFaXH4K9jh2qumVnYFay3BVMPYr/8E1av/f8HJc0lGO6MaVWm+ghR8DheHcmP3
 yMqWwCeaOfgXghJQi2mKo5SSeLbWPBpRnIZtKPkcIF6Vfea5Xa0R0+lNqW5R221t/xmuYJR3/I4
 +4+Jod6KKz5CfSU9j7aeg7cz9ukgp9+ikm3MK/m8LrZn/Kkh1ecJ8rcDYPbAAp+74OwfzJhQ9/S
 6Pd/ZQP97JJ95HxHfi3hFMG45xV1SWY/wwNoFxJIKleKwrJ/9Iu2QEOLvpgUGayzD7Y7b49T95O
 dvif3EXYEOz9Vy9U7goYkZg1vlKq30cxQ0/4CjLl4NDgsSfs04IHmgxwOL4i6rxF5rYp0W7yUlp
 hx42Jq+9Mdo1nF6q0WA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060082

Enable IMX577 via CCI on Taloss EVK Core Kit.

The Talos EVK board does not include a camera sensor
by default, this overlay reflects the possibility of
attaching an optional camera sensor.
For this reason, the camera sensor configuration is
placed in talos-evk-camera.dtso, rather than
modifying the base talos-evk.dts.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile              |  2 +
 arch/arm64/boot/dts/qcom/talos-evk-camera.dtso | 63 ++++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 4258776b71bdba351de8cefa33eb29a0fe3ec6f3..bfaa0b47ab5cabc9aa1c6fba29faa3e6fd18f913 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -333,8 +333,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
+talos-evk-camera-dtbs	:= talos-evk.dtb talos-evk-camera.dtbo
 talos-evk-lvds-auo,g133han01-dtbs	:= \
 	talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
+dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-camera.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
 x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
diff --git a/arch/arm64/boot/dts/qcom/talos-evk-camera.dtso b/arch/arm64/boot/dts/qcom/talos-evk-camera.dtso
new file mode 100644
index 0000000000000000000000000000000000000000..53006a861878f9112673b9a0ad954bed7a5fdca5
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-evk-camera.dtso
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/qcom,qcs615-camcc.h>
+#include <dt-bindings/gpio/gpio.h>
+
+&camss {
+	vdd-csiphy-1p2-supply = <&vreg_l11a>;
+	vdd-csiphy-1p8-supply = <&vreg_l12a>;
+
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@1 {
+			reg = <1>;
+
+			csiphy1_ep: endpoint {
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&imx577_ep1>;
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
+	camera@1a {
+		compatible = "sony,imx577";
+		reg = <0x1a>;
+
+		reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam2_default>;
+		pinctrl-names = "default";
+
+		clocks = <&camcc CAM_CC_MCLK2_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		avdd-supply = <&vreg_s4a>;
+
+		port {
+			imx577_ep1: endpoint {
+				link-frequencies = /bits/ 64 <600000000>;
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&csiphy1_ep>;
+			};
+		};
+	};
+};

-- 
2.34.1


