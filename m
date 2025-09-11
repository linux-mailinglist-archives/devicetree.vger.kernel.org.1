Return-Path: <devicetree+bounces-216004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAD0B53675
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0FB63BD7D2
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3670345733;
	Thu, 11 Sep 2025 14:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OWa2rwR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18310343211
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602546; cv=none; b=hDayMMU1MKCCtW1x7D1UQ8KNVcCz1ulZ2P+/fYL4AvlZXjiBuY1t8/czjXiPx3pgDE6GDSIY0gjt/TjFq+ekyciRYsRBkIZ8HOfOd25HXmzFlo/IbWO0UhIpWRfzHvhPcCArGqR71ZEV2+3vbnU2dzqq3wq6y9e/D1/JnWiDPmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602546; c=relaxed/simple;
	bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kXiHq3hK2PPBsLNYs7d93m+6NYjdzX8u00XdKhVBGdd5sylW0ZkUKptgFuBgEQcFkMi9lj2qSBk0mp7W6D9cSj3/jtNw8hwNnDPBR9+bw14ip3nwBlEqb6irqbO/IkHCKJAdZvLul7L8shLnyJjgOPCAZiMqY9DZ7K6lYSgdaZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OWa2rwR9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDDHUQ018900
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=; b=OWa2rwR9JtE0Pi3E
	+VVmB9lAdF4GiGxz+77B3UPGSlLm7tlINIrm0wv1hVvZpywBjDiafCuGLmH3q2pN
	Ce3+OCnwsiOZnKHvBEXVexJJeJmwQtsPZFr1C7fCfEYu0UYMatUMWf02EAzrbpWE
	2//eJRAW21/1cBzgfsBrdmyBooiOApSHXkPkgsNyn6LUn0REtjcR2t8U30ffMStQ
	TfLVPpoS2IbH9wFFfMVb5n7XkU3PPeNcJ2Fg3VZ8t6Mxf6960P6uK6X5i55EHJvu
	5n2ciqIrHME8O4/yBWohYxG4EsKtVAMdUjaVhbMYHtGnSxHE80/b4HxsmOZQPXwa
	ZpegLg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphswb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24cceea7f71so2091695ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602542; x=1758207342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=;
        b=QNmmYF61fTOxsJjM4qSwlFPnHLmINx7doDFPoQPNTJ/RughmH5XpfTlk1QNSN5jJmD
         ZsIqZWRpJ7a+kTbRFUeJzzn4gMXfuprY95JIHHqVY7LocuM0O6R+OVmmcqeyIy/zuEhY
         +wsGy3xdkVmAGt7YMfv2eNHuPgLpHaJkot5u1uM9uGZ/2q3iTV6fdVVKuPw6c3VOQRhd
         v25G4zL3vu6jVG7pxDWfmDet7klT9K5bc4OrVdD+gDUnK0EmJbSodVH3ckIcUwNRM/cN
         IRwJbTNTY2O81f1MeaAv5gr7Q1gPqJASJF9zCgzavvgxuaMMOGTUX1rWT7ITXK9Y7sAr
         bh7A==
X-Forwarded-Encrypted: i=1; AJvYcCUMfQBmG/gLSNKGaak7Q9EwEYiXOHzfcRTRX7zdDZphHYpwbLnldXzvpg5b2Z8zWtONKl4SBD6YXvKo@vger.kernel.org
X-Gm-Message-State: AOJu0Yymdy+gxFA5bapC8sBRHs7Ikwhf9EovNipin0hPTp2xgXAd9pPl
	cULug4cv1pBc55cKtCE2yIjip9dngSZW+TZkVXgDTCKzNyGkst1HdU1mKZ1NB7fHPyVqiPzn6pD
	5eZBct1LAMD7YTwW1blJsCYvC/Mo7v2ZnWnB8zyy6dJGZvd/MID2sa8Jp6WX6PQ/2
X-Gm-Gg: ASbGncsnKUI6LmS54DR01ZWhP1nDbZxjnbq1m0hkGen1RXXu9yRW76ernCHyZKRDOuF
	HDD9EdlT/DZW23nhYWbSkFicDjWtaAFjG8oY28InpKE+WgdzyZ953ZuBHGKaTXe5mdiUZBdXiiI
	UB2Z7DsupZv6KEq9xyAlDIowU0B6ReTa38DdyGAkzagCOQZnfn8gLoQAl8+cBim0Lcetn6HBvUS
	dLy3YnPD7nzCOrxEFanrIQXCrawvwvvvdL5XyXotiKpUaLPEWZq64rtRA++fF/tKJTfrdNfdYdR
	QEWZ0sJFpYlckvF0fM7opCwuKtcqCNLtzYSWBqyJ3MG1w6KlchbE1wyQWnbFx7zxgTomWqmE2uq
	L+iWkwmdXSeljhH3hZ8GfFtooPAiYDAaZcB5CJZ0a7QqSJSKVl+DZfkNU
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr132990625ad.5.1757602541966;
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEtpsa7qlUyYAsgBCQGIBTzIJxW2bcMhr8lZkbI7bFHvqypkmZ+m9OuDf0/hYNs6aysv1XsQ==
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr132990335ad.5.1757602541465;
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:54:58 +0800
Subject: [PATCH v4 01/13] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-1-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=3530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
 b=mXj8P2zI5LqxmvJf/ITJhpiVlig+/0otZwvxQRDsBRti9c9obJVcSQTesm+iB69NrWfS1lqLZ
 V6KJztXRPxcBV79k9PWjTr9xRHUa2hlg3SDAYgvXdXof961JAOSGaTy
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c2e2ef cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 68V3MqFdQaEjPUKGI9O6vchfXv6NQrp1
X-Proofpoint-ORIG-GUID: 68V3MqFdQaEjPUKGI9O6vchfXv6NQrp1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX1NBdpKiGfHia
 5lDo/ZJuI4D2w1jfVqwSvw2+Kifcf6Ubxqp5O2MqrsP/CEuUSOskF4/dQNIXiYET/qIq19amxGa
 pPzZJnYN54w9zQpnE0tTDH8Mh+0NUm1k+oFo1oOjFc86dlm2d8Y7U8bGPVHH8BOZOBGz7ngKoT7
 qoJCTS415NQO5ccqFmA+bxIEuLZN+hb6XdupAzmu9o6WLvJVuVGYs44adfBs5rNzz/S1tPefmAt
 97OP7R/sRQSqGGzzQphFRiEw6Q5uhptx9BsjjwhL3f3u07r+z6CcwkGOVtr0/KDJGafgLmXf/+m
 7XlYHQ3rnOs/q9xxm3Q0KPxPk5ZJTcTi3aV2NK3qoU4D6jqMk5C5V8n/b2lEjyfuED1v29ZiGTV
 U27pLd4W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040

Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
on QCS615 Platform. This PHY supports both USB3 and DP functionality
over USB-C, with PHY mode switching capability. It does not support
combo mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..efb465c71c1b5870bd7ad3b0ec215cf693a32f04
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
+
+maintainers:
+  - Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
+
+description:
+  The QMP PHY controller supports physical layer functionality for both USB3
+  and DisplayPort over USB-C. While it enables mode switching between USB3 and
+  DisplayPort, but does not support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-usb3-dp-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aux
+      - const: ref
+      - const: cfg_ahb
+      - const: pipe
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy_phy
+      - const: dp_phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  "#clock-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  "#phy-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+          - description: offset of the PHY mode register
+    description: Clamp and PHY mode register present in the TCSR
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+  - qcom,tcsr-reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e8000 {
+      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
+      reg = <0x88e8000 0x2000>;
+
+      clocks = <&gcc GCC_USB2_SEC_PHY_AUX_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>,
+               <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB2_SEC_PHY_PIPE_CLK>;
+      clock-names = "aux",
+                    "ref",
+                    "cfg_ahb",
+                    "pipe";
+
+      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
+               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy_phy",
+                    "dp_phy";
+
+      vdda-phy-supply = <&vreg_l5a>;
+      vdda-pll-supply = <&vreg_l12a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+
+      qcom,tcsr-reg = <&tcsr 0xbff0 0xb24c>;
+    };

-- 
2.34.1


