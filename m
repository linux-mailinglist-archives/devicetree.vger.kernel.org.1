Return-Path: <devicetree+bounces-198478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B882B0D2BE
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07FB9561158
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6312D0C86;
	Tue, 22 Jul 2025 07:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mf4mkhjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7068F2BE624
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753168962; cv=none; b=DVRBsdX+ZvoPVHTnpDzAZMZA9+5xGZwdQW08avmDv2Vp/mm48fEu8YQr9im1TZ5fo4KaX/Cjh2bFzO1jWv3iTsN96r8/yH5Kkps7qgCXP10SIfTDEw01OJ2whxcRvd13zi5Db+D0DJZZ+jSJ63W/QTstQjuZS70J9SArZTHbow4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753168962; c=relaxed/simple;
	bh=UDTnjCmveSMGSp/9NQ1xFqa1/QflcdbQxJ1GccXnTeo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K4WUb3ZNsJeDU67keTr7qH/eKDnuAycGiCba/T+c0bqNsduWvTmv+wDj+B+aJyyEVg75UGbAPzcOjLQMClNQkUewoZ8nKMODEhPNaontwkBn6Dw7KfViEt9nNkA2g3feA0J3/jH3QuepcZgmF+FSc5xPoCByoCSKHk/oIlQx7QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mf4mkhjW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LMEriW012541
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahrBulyU4QSMtpu0KlTx4RsdzzFchdneJBpLgEVdzls=; b=Mf4mkhjWYpBhxUp7
	a1GWkk/1Sv2f1IR7Iijvav/IbpXYD7zl+Jo8OcvO0tyel+KNhiQ93U2InnQPtfIk
	CuN5YjbpkNKHoUWfof85UgROFs90SHnTP/3XKJIxvtbwZPglGERQHUUU9KJ+2RC+
	nauv7A1M/O5JwyDto5zKuniSqra7m3bSubptfQCXzBZTXz9n9zk1c+/TCcdD+HUi
	+R1jueB7H/QyPTZi36qft4zopumh/helhl1mUJRJZyW1UDvjhzMiMYIbPO7JDoqK
	8U2PsC4hGIXjWnXnXdVmQYhA+gsYaQ0bG3DGISeIbbg17Rg4H1yxwpQbRH6iQniM
	0g18qA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6js9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3142a5d03dbso1321931a91.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168959; x=1753773759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ahrBulyU4QSMtpu0KlTx4RsdzzFchdneJBpLgEVdzls=;
        b=qNRB7kgKetJ6Hmlf99XnHY1/+BRdB2c0cp8dEMrAzzv8nS2B+1+P9bXaXh8FUPO91l
         H6Avnyyy2RGgBmUnLe6OJlCsdcswQHY4U/Fz+pWUnoUGx3hkaTgHgAuPWhotsE67ksFo
         Aa5Ej3KSZxYjiA5MilRJv6ucgW31nQOhN952ESkTI7LhDE9MymogVWD5IT6iw++4TOWK
         3//2ySPRWSnNKUqI1lFJo9wL3iD9Qwsx5ZGsGUrc1ezNz4reQ+aOVUbh5PNE9jbFmQ4N
         7920uOFc81uZFAaWXFJ/tblLmfwPbqMHjxlsFuP+KLqURiXRopdEx8yQGeVg9ZasCA07
         pvTA==
X-Forwarded-Encrypted: i=1; AJvYcCXTu3SQJ/Qp2SmVgCDKo3OcUpU89dhoI4/cmmve/1s/TlQD9u0jKH1xtaRpN1RRfhESb5jooymkhirh@vger.kernel.org
X-Gm-Message-State: AOJu0Yws/lO9B2oDXr8R0diCV/FPUnQPQwHHUUs05xvka4wl8Uu6vXoC
	p0hvjfOQ+/PaPL9z3cdGqMp36YPOLOiJ9bRlMTnlfTvozoFA4LB4fC48J3rnoEV2SqqJ82gH2hp
	xU3pKwh3gE7yTErtVFrGVy5ZcX9xAllpNWFmJauZ1H4M8LbzndLgVCbd/vi24GdF0
X-Gm-Gg: ASbGnctUfhKwJmyCsW8q4drq8m4AGRWwDHeC/STDK3RPIJgh/jt4hApZ9jkig+VPN7q
	RbzPDKpkGhLV8ttavwA1VQyfRopv+NgVXKcn+IiX5GwcqMMdu/cXPX+7HmZhGIpeI8R4Trva8Ub
	cuo35umPlH9xSCQXo6zXk7nhVdx2EB+BhCNHe12sp0+saxyplLSBiXqMTQFE1m6bzNJs+C3X/4Z
	7wpgNtVNjUlR3NKJHbdy1w/vJBxoGUmOUA3oI2COTiIq0IENcEXSbRn+C4EZmq0UraA10J4Q3mT
	RoDJM8/iLGmnqLhF1r7EZe6bXQ1LDdBZoeUZAo7C4g4nhsIFGVwSKs7qmGVjUWdAky/68dEmWUg
	9ga4W2/OgEfwtS+FoYGEFjWbyyueBY/Z56oVsuzKo9UuenC1jsemyM3sV
X-Received: by 2002:a17:90b:1cc3:b0:311:c5d9:2c8b with SMTP id 98e67ed59e1d1-31c9e7767fbmr13067015a91.5.1753168958328;
        Tue, 22 Jul 2025 00:22:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWj61R7/p9w0dDf3iRKZ2LE3OM4e0kwtzjTJU0dUunJEF/B4dIihVqiHHAlGGrq42tM3d51g==
X-Received: by 2002:a17:90b:1cc3:b0:311:c5d9:2c8b with SMTP id 98e67ed59e1d1-31c9e7767fbmr13066994a91.5.1753168957893;
        Tue, 22 Jul 2025 00:22:37 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:37 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:03 +0800
Subject: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=3578;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=UDTnjCmveSMGSp/9NQ1xFqa1/QflcdbQxJ1GccXnTeo=;
 b=YoL+Xx1wzPD3/qIMkTLFdtwm8HNMkESmMYELfdTMUCrTewkhorshB/5RAVcHRq4SwdOiu3BPo
 lXKaRSJmwq6BcU6iUavW+f2u7KPzXVqQYTEjJo8QVt0uEvrlQAZKJks
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687f3c3f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=vvfQ0qTNUOrexlX-OJMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: qSLYBqb37bs1_edFoi2avInw8UGpNOtk
X-Proofpoint-GUID: qSLYBqb37bs1_edFoi2avInw8UGpNOtk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXwo/rnZjDFZeL
 xtjDXRPJXcPEh9dVzAeD5Xjc6aXsdes36LsxLOH2UyJzRxeucUOA+0HdoC0WEXH5k6VXj1XKm21
 A2Z4JihI1AHdFG9+NpD4s+miBJvCb22zqOWFJFU2/26ufSJkXvGwU6oIntpW2sLrlyasMsxAIf9
 4ml2vBtKhntxU7SzErgTRZ9ci2D6K2IQPtplwS7fgzJj0qqtcbgoBqOKzrhUr7pGBYAzzWXYQyL
 C6BGw5qNoBPhNvLXDfkktZRA5eaje6oKhdNN6gFKcoIZxuzdT+mdJ9inlkoZ6piQ+gntFByjSXM
 mR7JHenNcLXZ+ZTEq610yfxcmiw4XcUFNNUy6oS/1E2dL4A/l1qqovYhCrP7xRKXAmcLsiZUaUN
 Bo1Jc4NSoxnIDD0O9YDC8XuFFIX3Mj+7KsReRZXb4NIqgbUVK0EtBYpL7WUHocfByQRkv8DR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059

Introduce device tree binding documentation for the Qualcomm QMP DP PHY
on QCS615 SoCs. This PHY supports DisplayPort functionality and is
designed to operate independently from the USB3 PHY.

Unlike combo PHYs found on other platforms, the QCS615 DP PHY is
standalone and does not support USB/DP multiplexing. The binding
describes the required clocks, resets, TCSR configuration, and clock/PHY
cells for proper integration.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-dp-phy.yaml       | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..17e37c1df7b61dc2f7aa35ee106fd94ee2829c5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (DP, QCS615)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP DP PHY controller supports DisplayPort physical layer functionality
+  on Qualcomm QCS615 SoCs. This PHY is independent from USB3 PHY and does not
+  support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-dp-phy
+
+  reg:
+    maxItems: 4
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: cfg_ahb
+      - const: ref
+
+  clock-output-names:
+    maxItems: 2
+    description:
+      Names of the clocks provided by the PHY.
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the DP PHY moode register
+    description:
+      DP PHY moode register present in the TCSR
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
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
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-output-names
+  - qcom,tcsr-reg
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e9000 {
+      compatible = "qcom,qcs615-qmp-dp-phy";
+      reg = <0x088e9000 0x200>,
+            <0x088e9400 0x10c>,
+            <0x088e9800 0x10c>,
+            <0x088e9c00 0x200>;
+
+      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
+      clock-names = "cfg_ahb", "ref";
+      clock-output-names = "dp_phy_link_clk", "dp_phy_vco_div_clk";
+
+      qcom,tcsr-reg = <&tcsr 0xb24c>;
+
+      resets = <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy";
+
+      vdda-phy-supply = <&vreg_l11a>;
+      vdda-pll-supply = <&vreg_l5a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+    };

-- 
2.34.1


