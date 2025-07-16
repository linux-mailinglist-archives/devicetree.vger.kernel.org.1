Return-Path: <devicetree+bounces-196791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D8B07149
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 11:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F25E116F507
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1BEF2F2C49;
	Wed, 16 Jul 2025 09:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRJ+XOYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748972F2376
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752656972; cv=none; b=peMDCaNQy/KtuQTDJ2NGedqHhJdwJ1mJgugItM8c5vRqTOiExJDrTmcuB63KFcTBwdkd2jqcIe8DKVQWFdI6guJMC1VO5LHbtNRRSjFbx5RDZH/G+5Z8BFXR/AoKtiRLWJamvH6jxA5E3PJZpr2T4JUpcbvETJgnUwIbL2+ye50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752656972; c=relaxed/simple;
	bh=zxSmm1jqbbvCvdVABA0CnKk8b+stsUQe6ouXhO+OOjM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jYVaTJvNRtFfR/E52z6a7rYRMsjH2yuHc5Hh8wr/82Mhq0JDQZ1SgIGNgKUYGbCpVi8054qCW0G1eH+Cmx0RjCKdkk6V/woO6pIYuVU2So4Dzm7NfG9cDFBybOI4p5GL3NOzI092kO6Av87ujZcnFYJxgZio0UzMGBgc8uLM4p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRJ+XOYH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56G6AEXA022700
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	exBmrvA9LOOEpNID8zR+uQVahXdfLxTS+RZIJ+evjYk=; b=GRJ+XOYHiaUm48sZ
	F5oYQwhTlXckbqG7v6kW6lSfNvBAOgU2BrSFJtT7k4gv4nOp/OqBhLSi0AVFx3gW
	ZtBo1gj2hXbD8CL2dVOp3IBcKRHgjpMNM9P2GcKddJF+qCveCMr7TV//HwRsIqt5
	QN0V1KJe9mnVTriW7JmmAIMRiaDR+QfXuc4cDSNrRSEBAZl5PAKyYlYCwzb+nrDk
	7LNFJlCj+PLSUoOTISF5nGPl4jHTrzg34Z35Nn3G3oWkJbjFl8OG+2m1BhOuKfOo
	gVYZqNSWqQsBqIt0ph9qqMGWkbXrIr5JIZYTa/Tg1VzLDGSqygUMPQ8JSYPyCZ/i
	z2D+Pw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wkruky3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7489ac848f3so9656437b3a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 02:09:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752656968; x=1753261768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=exBmrvA9LOOEpNID8zR+uQVahXdfLxTS+RZIJ+evjYk=;
        b=eiKoiUk6aDhhl75aQBalMP4y93ioIK23A8pWKOcq8oINBIyt4Cccqw9LxwV4/XVyIq
         5/T7Ffl/aLwuPX9CffdfNeKq4VaAAWeGAimzXBmNeNFwmYXayI70EcVtnidtKhzCJtsH
         0vqgVv6eiStzgrbGnI9rzOFv/gSdqw8Mv8Zflv9niU34vLmcFgd7E4rcCRNglOZoCjWm
         orCpgaW8CSFhRQw5mOptEUGer0kigYAXjLfLC6KEIQcByyxfowrwQpdHn4ee/OYDNGAP
         DATEvKAODuoyZoV0Hq8x21tWtSaPZrbHMkS7JdHwGuZWFOvn3V6H/g60rfF9oHPYwhWJ
         SCsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlhpQuTjpSJxZvKzlmUy81rvtzk2eaXJCN1E6vRWJl3lc9ekQOLBxmtZPnUW3tM1IpZzeavbsfLNV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8yVjMTOFC7vivG+IsvgXJQEuXG8h1RUF+tvLBaOBcaXcMHzOJ
	Dpo56eTHemwckIJedV9RkrsriYEGBBbZXRdN7xzFhZtt1mG2yQ/LluTOezdkB79s7QhVrNGIogi
	3ouPEmrW4/F83O5NmpGhrysA1fnlVTK6fuVqATcEfZbUyvpvG5opsRHLFhCPMAAYu
X-Gm-Gg: ASbGncuyel1Q4rvlDUTvbSlXaNXsjAYm9o3Wsiq/2amxklZlRdznOxtZdV0xtzGKXI9
	0r+H4bHV6m4E8XVkB2/LG6K8gQsmwf25OXEdRZDD7BTjIvBvFwyVq/KGEUr6OxddwfBlLr2gGQR
	LvbkRSvbHxo9e4ZPNtnpRAt9YRfs6D89nQKUpUmmZ7svqKTkV5Of3MpXyIMrbCScXe4YkO0l/0+
	GST2DkfTnj13zLOovrQaqjwmfHGtxs+wgmmIQFsWnnfSolwbdK7m9+aAxXHVwd1i4BiF6ieI+Z9
	xk5p7WbiZuIyplOGEHUjnBWJ2zxRpfqc7Gr6Kv6JsxsF6+2Futit0Wq/20cONUnyFJB7LizR2Az
	1tCxec6vo0NHV352Fs03uXh8QxYcSlrW61A==
X-Received: by 2002:a05:6a00:6b95:20b0:756:b722:b94a with SMTP id d2e1a72fcca58-7572397f744mr1908028b3a.9.1752656967359;
        Wed, 16 Jul 2025 02:09:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDdMpwXPycDC+lVyk+AQiu622F9FPovgQd8KgBa8rtWxFiHToDl8TrbZmW2JHPWaBt5Teh6w==
X-Received: by 2002:a05:6a00:6b95:20b0:756:b722:b94a with SMTP id d2e1a72fcca58-7572397f744mr1907997b3a.9.1752656966830;
        Wed, 16 Jul 2025 02:09:26 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd6022sm13926375b3a.8.2025.07.16.02.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 02:09:26 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 17:08:41 +0800
Subject: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
In-Reply-To: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752656954; l=15849;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=zxSmm1jqbbvCvdVABA0CnKk8b+stsUQe6ouXhO+OOjM=;
 b=AKK9SHXlnrgt9Csu+kwoazjHNvTGXqC5vTJRVA4GVO4dkAkIwWZEO+4J+IlvTPPAwvXPfhzaB
 6pounJ9X7LnDj67WPCJvn8QuMYSJikJk9Xfqoj5kg5aG4kv7sElazMP
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-GUID: 4AEzJ_wOY8aGaW5QT6U4ZUjNMiwJ1fPx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDA4MSBTYWx0ZWRfX6SvOiFY1rPCj
 3fSh5QQCdSyP6Gu90S3mVTymSzbIc9duA364eEKYf+NrP4DzkQf6JvxLtikRaeY9OxPJM0i3CYL
 +R6c5YZGFO7jrqlm5q+pKEKU+HT2ONIRSNtpCHoF3Ht3KpRIRPbwMXgymxq54+AlV5XKZnvA6wd
 lQGFoqPCdz6sbPRag1c62RtTUPDz4BTa6H43x5xntiThyoFDC2T+WV78YcQHxPzEtsvRQIl8mT6
 neugDxgKxWRU+4yjA7cC2dBRSnpEp4KiQQ63YvEmK20UeaiD4Crc/lM2WEUV4MBpvmasDyYIcrJ
 x4rCuqeKUW21hGzGuP85DcC1X8chQdhP+RXZ1S0jshKN3wKY6Zr7oom7YzMbiWvox915850CwGD
 v7voSSvmSrhJ70yJWMg8H7tdSoYc27Cox2xv7NJ5IfYhgto71Sxjmr19L5/4NWOGXIaw/VyR
X-Authority-Analysis: v=2.4 cv=WqUrMcfv c=1 sm=1 tr=0 ts=68776c49 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=kJpOf-JYLzBZDkfq8aYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: 4AEzJ_wOY8aGaW5QT6U4ZUjNMiwJ1fPx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_01,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160081

The HAMOA-IOT-SOM is a compact computing module that integrates a System
on Chip (SoC) — specifically the x1e80100 — along with essential
components optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

This change enables and overlays the following components:
- Regulators on the SOM
- Reserved memory regions
- PCIe6a and its PHY
- PCIe4 and its PHY
- USB0 through USB6 and their PHYs
- ADSP, CDSP
- WLAN, Bluetooth (M.2 interface)

Written with contributions from Yingying Tang (added PCIe4 and its PHY to
enable WLAN).

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 607 ++++++++++++++++++++++++++++
 1 file changed, 607 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..dad24a6a49ad370aee48a9fd8f4a46f64c2b6348
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
@@ -0,0 +1,607 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include "x1e80100.dtsi"
+#include "x1e80100-pmics.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+
+/ {
+	reserved-memory {
+		linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x8000000>;
+			reusable;
+			linux,cma-default;
+		};
+	};
+};
+
+&apps_rsc {
+	/* PMC8380C_B */
+	regulators-0 {
+		compatible = "qcom,pm8550-rpmh-regulators";
+		qcom,pmic-id = "b";
+
+		vdd-bob1-supply = <&vph_pwr>;
+		vdd-bob2-supply = <&vph_pwr>;
+		vdd-l1-l4-l10-supply = <&vreg_s4c_1p8>;
+		vdd-l2-l13-l14-supply = <&vreg_bob1>;
+		vdd-l5-l16-supply = <&vreg_bob1>;
+		vdd-l6-l7-supply = <&vreg_bob2>;
+		vdd-l8-l9-supply = <&vreg_bob1>;
+		vdd-l12-supply = <&vreg_s5j_1p2>;
+		vdd-l15-supply = <&vreg_s4c_1p8>;
+		vdd-l17-supply = <&vreg_bob2>;
+
+		vreg_bob1: bob1 {
+			regulator-name = "vreg_bob1";
+			regulator-min-microvolt = <3008000>;
+			regulator-max-microvolt = <3960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_bob2: bob2 {
+			regulator-name = "vreg_bob2";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <3008000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1b_1p8: ldo1 {
+			regulator-name = "vreg_l1b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2b_3p0: ldo2 {
+			regulator-name = "vreg_l2b_3p0";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4b_1p8: ldo4 {
+			regulator-name = "vreg_l4b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5b_3p0: ldo5 {
+			regulator-name = "vreg_l5b_3p0";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6b_1p8: ldo6 {
+			regulator-name = "vreg_l6b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_2p8: ldo7 {
+			regulator-name = "vreg_l7b_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8b_3p0: ldo8 {
+			regulator-name = "vreg_l8b_3p0";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_2p9: ldo9 {
+			regulator-name = "vreg_l9b_2p9";
+			regulator-min-microvolt = <2960000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l10b_1p8: ldo10 {
+			regulator-name = "vreg_l10b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12b_1p2: ldo12 {
+			regulator-name = "vreg_l12b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
+		};
+
+		vreg_l13b_3p0: ldo13 {
+			regulator-name = "vreg_l13b_3p0";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l14b_3p0: ldo14 {
+			regulator-name = "vreg_l14b_3p0";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l15b_1p8: ldo15 {
+			regulator-name = "vreg_l15b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
+		};
+
+		vreg_l16b_2p9: ldo16 {
+			regulator-name = "vreg_l16b_2p9";
+			regulator-min-microvolt = <2912000>;
+			regulator-max-microvolt = <2912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l17b_2p5: ldo17 {
+			regulator-name = "vreg_l17b_2p5";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2504000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380VE_C */
+	regulators-1 {
+		compatible = "qcom,pm8550ve-rpmh-regulators";
+		qcom,pmic-id = "c";
+
+		vdd-l1-supply = <&vreg_s5j_1p2>;
+		vdd-l2-supply = <&vreg_s1f_0p7>;
+		vdd-l3-supply = <&vreg_s1f_0p7>;
+		vdd-s4-supply = <&vph_pwr>;
+
+		vreg_s4c_1p8: smps4 {
+			regulator-name = "vreg_s4c_1p8";
+			regulator-min-microvolt = <1856000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1c_1p2: ldo1 {
+			regulator-name = "vreg_l1c_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c_0p8: ldo2 {
+			regulator-name = "vreg_l2c_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3c_0p8: ldo3 {
+			regulator-name = "vreg_l3c_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380_D */
+	regulators-2 {
+		compatible = "qcom,pmc8380-rpmh-regulators";
+		qcom,pmic-id = "d";
+
+		vdd-l1-supply = <&vreg_s1f_0p7>;
+		vdd-l2-supply = <&vreg_s1f_0p7>;
+		vdd-l3-supply = <&vreg_s4c_1p8>;
+		vdd-s1-supply = <&vph_pwr>;
+
+		vreg_l1d_0p8: ldo1 {
+			regulator-name = "vreg_l1d_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2d_0p9: ldo2 {
+			regulator-name = "vreg_l2d_0p9";
+			regulator-min-microvolt = <912000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3d_1p8: ldo3 {
+			regulator-name = "vreg_l3d_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380_E */
+	regulators-3 {
+		compatible = "qcom,pmc8380-rpmh-regulators";
+		qcom,pmic-id = "e";
+
+		vdd-l2-supply = <&vreg_s1f_0p7>;
+		vdd-l3-supply = <&vreg_s5j_1p2>;
+
+		vreg_l2e_0p8: ldo2 {
+			regulator-name = "vreg_l2e_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3e_1p2: ldo3 {
+			regulator-name = "vreg_l3e_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380_F */
+	regulators-4 {
+		compatible = "qcom,pmc8380-rpmh-regulators";
+		qcom,pmic-id = "f";
+
+		vdd-l1-supply = <&vreg_s5j_1p2>;
+		vdd-l2-supply = <&vreg_s5j_1p2>;
+		vdd-l3-supply = <&vreg_s5j_1p2>;
+		vdd-s1-supply = <&vph_pwr>;
+
+		vreg_s1f_0p7: smps1 {
+			regulator-name = "vreg_s1f_0p7";
+			regulator-min-microvolt = <700000>;
+			regulator-max-microvolt = <1100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1f_1p0: ldo1 {
+			regulator-name = "vreg_l1f_1p0";
+			regulator-min-microvolt = <1024000>;
+			regulator-max-microvolt = <1024000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2f_1p0: ldo2 {
+			regulator-name = "vreg_l2f_1p0";
+			regulator-min-microvolt = <1024000>;
+			regulator-max-microvolt = <1024000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3f_1p0: ldo3 {
+			regulator-name = "vreg_l3f_1p0";
+			regulator-min-microvolt = <1024000>;
+			regulator-max-microvolt = <1024000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380VE_I */
+	regulators-6 {
+		compatible = "qcom,pm8550ve-rpmh-regulators";
+		qcom,pmic-id = "i";
+
+		vdd-l1-supply = <&vreg_s4c_1p8>;
+		vdd-l2-supply = <&vreg_s5j_1p2>;
+		vdd-l3-supply = <&vreg_s1f_0p7>;
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s2-supply = <&vph_pwr>;
+
+		vreg_s1i_0p9: smps1 {
+			regulator-name = "vreg_s1i_0p9";
+			regulator-min-microvolt = <900000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s2i_1p0: smps2 {
+			regulator-name = "vreg_s2i_1p0";
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1i_1p8: ldo1 {
+			regulator-name = "vreg_l1i_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2i_1p2: ldo2 {
+			regulator-name = "vreg_l2i_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3i_0p8: ldo3 {
+			regulator-name = "vreg_l3i_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	/* PMC8380VE_J */
+	regulators-7 {
+		compatible = "qcom,pm8550ve-rpmh-regulators";
+		qcom,pmic-id = "j";
+
+		vdd-l1-supply = <&vreg_s1f_0p7>;
+		vdd-l2-supply = <&vreg_s5j_1p2>;
+		vdd-l3-supply = <&vreg_s1f_0p7>;
+		vdd-s5-supply = <&vph_pwr>;
+
+		vreg_s5j_1p2: smps5 {
+			regulator-name = "vreg_s5j_1p2";
+			regulator-min-microvolt = <1256000>;
+			regulator-max-microvolt = <1304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1j_0p8: ldo1 {
+			regulator-name = "vreg_l1j_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2j_1p2: ldo2 {
+			regulator-name = "vreg_l2j_1p2";
+			regulator-min-microvolt = <1256000>;
+			regulator-max-microvolt = <1256000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3j_0p8: ldo3 {
+			regulator-name = "vreg_l3j_0p8";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&pcie4 {
+	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
+
+	pinctrl-0 = <&pcie4_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie4_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&pcie6a {
+	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
+
+	pinctrl-0 = <&pcie6a_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie6a_phy {
+	vdda-phy-supply = <&vreg_l1d_0p8>;
+	vdda-pll-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&qupv3_0 {
+	status = "okay";
+};
+
+&qupv3_1 {
+	status = "okay";
+};
+
+&qupv3_2 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/hamoa-iot/adsp.mbn",
+			"qcom/hamoa-iot/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/hamoa-iot/cdsp.mbn",
+			"qcom/hamoa-iot/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&tlmm {
+	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
+			       <44 4>; /* SPI (TPM) */
+
+	pcie4_default: pcie4-default-state {
+		clkreq-n-pins {
+			pins = "gpio147";
+			function = "pcie4_clk";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio146";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		wake-n-pins {
+			pins = "gpio148";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie6a_default: pcie6a-default-state {
+		clkreq-n-pins {
+			pins = "gpio153";
+			function = "pcie6a_clk";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio152";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		wake-n-pins {
+			pins = "gpio154";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+
+		};
+	};
+};
+
+&usb_1_ss0 {
+	status = "okay";
+};
+
+&usb_1_ss0_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_ss0_hsphy {
+	vdd-supply = <&vreg_l3j_0p8>;
+	vdda12-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss0_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l1j_0p8>;
+
+	status = "okay";
+};
+
+&usb_1_ss1 {
+	status = "okay";
+};
+
+&usb_1_ss1_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_ss1_hsphy {
+	vdd-supply = <&vreg_l3j_0p8>;
+	vdda12-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss1_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	status = "okay";
+};
+
+&usb_1_ss2 {
+	status = "okay";
+};
+
+&usb_1_ss2_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_ss2_hsphy {
+	vdd-supply = <&vreg_l3j_0p8>;
+	vdda12-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	status = "okay";
+};
+
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_2_hsphy {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p8>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p8>;
+
+	status = "okay";
+};

-- 
2.34.1


