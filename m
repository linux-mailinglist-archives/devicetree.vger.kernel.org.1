Return-Path: <devicetree+bounces-209484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69663B3785A
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 04:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E2D71B67F6E
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 02:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0ED3074B7;
	Wed, 27 Aug 2025 02:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="InzpCzgy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1B0306D2B
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 02:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756263179; cv=none; b=soVsSPm7+tp3s6gBKFQSlJt2BBgrdb45RSytXCHqFx9HnNceK6Wc4rW330O18TfAOp7Kd1uhLKZhVR5RMwMpGXCiCiRb9g4lTB5JxDaYX8I8yRqF7mr5s5nDpJNf7hk/lSjODH1wUHJlUd8WavS+9CQzuoJtgAsbiFr0HMGxACY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756263179; c=relaxed/simple;
	bh=oWr+J2BikmN/nWmxjNgfVsXgAUjE81muHkUshS8lPEg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uxnOAXOXehFNUG517MTsDfAhTaGA5mUIcveIPiC6dxVH4dgxPoPCX0JioQntm0EMSsVoRJzNnSEf79KrRoBSCONuozED1PnUZT90roU6AuRI1Hr9obw5HYluRbp8MIcUcEKQQwJRY1r2Yu/exQBSpCSdoSC/Ewg9tsNfxgWzJfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=InzpCzgy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QJHblv022063
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 02:52:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M/dYgwVL8zgNxV4oftrZr/eg0nH5e/gAEL1tnAqGh30=; b=InzpCzgyjMx45TyH
	fceud0iuqPgN1zWHfpllxLzSYP9sOGh/H9EUk3WBzsaB75GionmG0SiH7gyfzHUp
	zM+qUjXyNFs+FKBtL5hyjZTtseIRLG1iZ1btyUu9a7kfh/33ZoArO2O9BmjVLFzj
	P22yoZazox+CBs2Uw5dHFo8fZA7i1kv4vgeppT/Z4OJSKzbbJC0hql3aniTXtfDh
	oVOTXwD5IPjeyVkGRRkE07kXXo3qUYhz1iU8YbBz1C1anNwlclzOQh95FSqGBPkA
	OG1cSu3BOZN4qBC5XJDPUc33cfWTBMgueGKwzDxGOdRU1XmLjRMbpIndguWA8NVY
	NA8w9A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6x8b81n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 02:52:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4716fc56a9so9437844a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 19:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756263176; x=1756867976;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M/dYgwVL8zgNxV4oftrZr/eg0nH5e/gAEL1tnAqGh30=;
        b=pn1y9oyWx0c0qT2B7p8PcKeB3Cs8Aqo4El92G4nTsBo1UzuFZ3DRfD4yNbDLO+coj/
         TjHa3bcy/EY4etHB6MJPwwBa7qtwm2aFHhEKerwoM5J7fIOmtyZ0dxAnWgrEfbnJgNGz
         0ML7v1WPVrlR2eihtyc6J68G/xDwgBsvu1FfUPDvfpPQ2egGN+eI6m5HZ5ewRRoQL7DE
         XSIMfzLDpYIWZ73Mm1Jj61r5KEBzQHv1NwjBQrkgWw8oEHFN4Xhjt5d2srFpwGrkeoHw
         yqLNg6U8Yx8tvHgmTxR5tFatz27DLfiqhT9/4rExlt/7QMMPyX8wVOFSuuBEXrU7Frx1
         ZXZA==
X-Forwarded-Encrypted: i=1; AJvYcCXoJSSEaHurDHxzZqopaAG7GOFmev3vAXfxDnjEOeHXoOqEAc60dCkBwOUrxhd+NSVKw4Lyxb4uiMS2@vger.kernel.org
X-Gm-Message-State: AOJu0YyVc9HQLnngkrGhwNbkrHRKxA0bURrkooJZCvroSNXs3gYK0ijm
	K3myfB8kTJPA3sRcaLfOV8dpycZKH32iYFhr70BUDx5xAUClyhINslLZcy5M9KGyDqDdFEe11CT
	N6+GttxIFOATxMo++cY0fhd+iqklbcpQNsBrKOTnQuDYxURyd/c/GwvkWMf8gUQgV
X-Gm-Gg: ASbGncvDLJZZTM8VhYDr3KzAhzSDoCPF4+TWaCR8QKNUMaD9pN/9ps1tcpNOCwzJat4
	NF0PFZY6GRnGWKYyVcBZ3spC1TkwaOcVtLUTU0cAAk1wlepdzE+03BwMkNs/BIXfFVkzyClKHwU
	Cbetf4bnsT4/sNFxcSFYhDhKBZA6YubW5vcQ0q9yWD2EHkxhRiMGkF02UE5WbeWj2yjz28CfWdu
	iLw5xeaFIgTUEdP6NySAQoiv+cjFTooc4d1w5DK1Y+bVs+VloFX+LjjqRj7VDaGCkz32J4puces
	qJ3c9DKDZyI9WeksP0jMdqQqB63I0Z9SYYGTHhQi5dQ0s75uEddl7q62TN/Je27LWDjDmtqel64
	B/cwvPbhl9iha8pEGZfSHkxW3fh+8mt8NnA==
X-Received: by 2002:a17:902:c40f:b0:244:99aa:54a1 with SMTP id d9443c01a7336-2462ee0b77emr251213695ad.7.1756263175763;
        Tue, 26 Aug 2025 19:52:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5fiVLd4ozGG0N9J7pUZYijDjCB678zgvELGavpbGsU/erZ8ZnWruo4NXCatguC1tm9E2kRw==
X-Received: by 2002:a17:902:c40f:b0:244:99aa:54a1 with SMTP id d9443c01a7336-2462ee0b77emr251213485ad.7.1756263175257;
        Tue, 26 Aug 2025 19:52:55 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687a661fsm109337585ad.43.2025.08.26.19.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 19:52:54 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 27 Aug 2025 10:52:19 +0800
Subject: [PATCH v7 2/3] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250827-hamoa_initial-v7-2-f9b81d564bb2@oss.qualcomm.com>
References: <20250827-hamoa_initial-v7-0-f9b81d564bb2@oss.qualcomm.com>
In-Reply-To: <20250827-hamoa_initial-v7-0-f9b81d564bb2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756263163; l=15931;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=oWr+J2BikmN/nWmxjNgfVsXgAUjE81muHkUshS8lPEg=;
 b=tApY5HtbPKp9Oy+jE/BwsQw/X5BL6Zae7tizMp0PjDfYUM+9y0qXDEfpMpWr1tuXLAmufw3Mb
 7QdjGN32ExNA4BNJmzeROhiMZvqpM4Jypt2MKJrgSPig6L2UEJ535MG
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: iIpDF6GFYuYrkwrQilv3qfu4FakuGE2o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0NCBTYWx0ZWRfX4QCx5BgGxyQg
 tcGNxCbolsHdkdoL/dU6TlEURY/16UJyONWU8UMryiqL3bIAdbDWaBsaPsN93Q43MKLeAjPKMMs
 92ZRR1MewUORQh84do8QlthYGUoCpB1aFGYeWfpKJ+IRnLqcczSB6yIaylSj8jdy5aNknSK+aUA
 TENVpRiHpX5iDS6ZW/BlEVRHA09aREPMjDr5h6pAYGEOfJ07i3nOgxP5fGZ3TylymB6gDIL1bKq
 N9aV1IfbyugvOyfoPEEBBmS848zDoUCTIUU8cQZo1yQUPi96iYhtfxVsxUeCLh2I1hcDsLgzRwp
 RVZDONMURzOtWZe8GRErTpgDAy7DSe0iCeiFnbXD2G56ssjbSwom6COzpThv9t+kUx0hOWKEMyo
 ik9ZeoUW
X-Proofpoint-GUID: iIpDF6GFYuYrkwrQilv3qfu4FakuGE2o
X-Authority-Analysis: v=2.4 cv=Ep/SrTcA c=1 sm=1 tr=0 ts=68ae7309 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=kJpOf-JYLzBZDkfq8aYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230044

The HAMOA-IOT-SOM is a compact computing module that integrates a System
on Chip (SoC) — specifically the x1e80100 — along with essential
components optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

This change enables the following components:
- Regulators on the SOM
- Reserved memory regions
- PCIe6a and its PHY
- PCIe4 and its PHY
- USB0 through USB6 and their PHYs
- ADSP, CDSP
- WLAN, Bluetooth (M.2 interface)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Yingying Tang <quic_yintang@quicinc.com> # PCIe4 and WLAN
Signed-off-by: Yingying Tang <quic_yintang@quicinc.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 609 ++++++++++++++++++++++++++++
 1 file changed, 609 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
new file mode 100644
index 000000000000..5facc5544c3d
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
@@ -0,0 +1,609 @@
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
+	compatible = "hamoa-iot-som", "qcom,x1e80100";
+
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
+	firmware-name = "qcom/x1e80100/adsp.mbn",
+			"qcom/x1e80100/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/x1e80100/cdsp.mbn",
+			"qcom/x1e80100/cdsp_dtb.mbn";
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


