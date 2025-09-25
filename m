Return-Path: <devicetree+bounces-221208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2655DB9DC1E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:05:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A97133BFEF8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB272E9EA0;
	Thu, 25 Sep 2025 07:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aVaXGckP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A9D2E975A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783930; cv=none; b=LNo8QdT0wN++SRveLtFsrZwUtVAMWhoo49rWQUwW/QZWShVNmMaSRu4e0NQKBGuCbUHPSUnLW0uwQkxVF03JyJRrqsI3pz1M8Wvc75f5o3Muo200815GMACTgP5h1+EWr9pOjVp/ywV+0v+eId6eFxcaYNrqnxXnDVXdwxy0XQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783930; c=relaxed/simple;
	bh=upWyBh8lqfmu6LV7sTpbUr+WwNLCQ/FfInBDAu5O+9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lapEevZXc4Xa7x9r9MvSmO9C1WEEFbn6rPzg/Cok12cCnjkSh0asjbmXR1c2qh48wWU91ZOvc4sNtnMoyCbQGtVAGbwiWs69H73/UACPow4sy3iznCQ6WCi/1ytWYrkmGf9n3pMiejsHACL6S/a4BlHyR/0lXoGBcOzreGPhYgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aVaXGckP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OM6ZU4018220
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2e7Hy87wIaFmYTkT/SRJPCIfc6N0tMOhDASgzvKcFpk=; b=aVaXGckP3xZHpeRH
	dWVjafdziEU7gMMx6CiLzbJg3WZpSYr2io6UOWDH6OzAVHAJD5VqVtB9X3eQZ/Qy
	JiKKEp9gZYNgPi1pN9C+IyC2s+UsyPGe0f2TQdUtkRVG2KoTX35JQkoz/Yj0SsdL
	rNW8ku3MkkTM0HPDUW8+XfLdVWwj2zbgqUwvdS11oTrhFVbFDiouacMwAUwOsKY3
	Gf7WeH2HEBYRwwrVexU412u7PbavGkkc4Fq0ZJcRS2xS+RDeINdNtdNU98rJ0/R5
	0Znv1YYe609GfF4bHYaUuCLJQqLZNXGL1H5lnNN6u0gNSSnpYXKn1juymL/fV7X8
	s1SFwA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkb3nt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:27 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ed282183bso190597a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783926; x=1759388726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2e7Hy87wIaFmYTkT/SRJPCIfc6N0tMOhDASgzvKcFpk=;
        b=p2aqHVeq5kqTT7ZREH7NwwmhCEiCZhEdOt8cknGJ2VV0DbIr2zIl2YICSt2gS/Qviu
         qCaBorevv1Hw/jPR4g5kwaQH6XBcfqmO2l+0+Gtn4S1w+qOSxfEhRQERvtWyS9tohkOQ
         k1gKAlbLvasjEi35O8QepO3622bXje6otgJKfDHIARVxfwxEAfKhXCDML13OgmQMeCjh
         4M8iyYWoVQlVgcNM6Xy5rCiz1yaHJDm0S34ZZpPc7486+FgQpiiG51HOcp3RgVNBQ0v0
         +DF8eT+oY29GMuMCaE2ZejCjXLIH/9jnYn9LRLYVQGP49GxKMVEWHlfJQj6Mt2RZKHq+
         eutw==
X-Forwarded-Encrypted: i=1; AJvYcCV+4mcu9VzwhOL0sW39KLcDLKfutbJMxI9ms/N59IaLICdYxPURDvCM/FHLwpAvVYlriB+Qbl0/ks6c@vger.kernel.org
X-Gm-Message-State: AOJu0YzQtkXmHEiKSK1fuWRFsqIM7Jxn2zd7XbW1KnXBojeopEVZb8rt
	9n5H1pP9ASAzSdoniOcfOhP6hDpfBIauAwK9yY7xbRx74AUqPBu+5AK1a5WITd7iviIvDIsPtgj
	aB8CXWTg8FQaL62IVdLQ8eYf4Z3qC2hskvUnuqPjze5HwsemDFdlj9r8Ee2fTlv11
X-Gm-Gg: ASbGncsx1RSv6gddTI90IwpzUQio0Y3NDTEPy2+6dHJASxdxkVFSQ5zv8e19XNUVJH0
	wsfQ3LhcwX6ZQC7HcrDjvXxQBVQPdCZAo0+bsSdEsjVcDV+G6QXav3LIKvniijf7AJtOWxBtaMU
	ErwZZKWwZ/NB/McBqaJbbO8N0amxP3b2oKm3pftaLzOM+cn5HhSByOwy5QcHGxgoW/sMUFq7+ya
	SxDBigTY1x2hg6XW8mbu9PdyMwAvdIrOcgxZvnWeI7CHlUqSig92tYLdekP8pU9MJAuMPV4/FT2
	NTC85YeJSz+g8G7iH93qs/0hJDFfZuIUCcYoLdRpIgLiJIsRsGKviQsDRn8a+x2IegDr4quhaTV
	f6Wi5T1Pg/Dcm3LTWhGcJvsYv6u+G71Z7sEpn1kkS8eaK7y18vcgL3aKN
X-Received: by 2002:a17:90b:4d0f:b0:330:b952:1069 with SMTP id 98e67ed59e1d1-3342a2dbeaamr1385459a91.6.1758783925804;
        Thu, 25 Sep 2025 00:05:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCpqcvdQExDN/tcMkaqHwuJZtGGTfCqnGGzDy5L8LFUtoOVfzw9y7B/380xTtLfWXC04SIqg==
X-Received: by 2002:a17:90b:4d0f:b0:330:b952:1069 with SMTP id 98e67ed59e1d1-3342a2dbeaamr1385428a91.6.1758783925188;
        Thu, 25 Sep 2025 00:05:25 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:24 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:47 +0800
Subject: [PATCH v6 01/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-1-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783908; l=3580;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=upWyBh8lqfmu6LV7sTpbUr+WwNLCQ/FfInBDAu5O+9Q=;
 b=q8QTjt4okaLrL3p8+JMm94E79JTZZNoDPRaTdjR9Z4pKfRZoQHUIoCdwtYknqyxQ/TKHScZ1h
 VvgnhdjPFT6AMHcRVzzdSJH+4MJR9pH5fUyv4MuUabA8/ITet6h1K0e
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: nM68LGxQdM3tD7MehGJ4h6zqi_WxFNxH
X-Proofpoint-ORIG-GUID: nM68LGxQdM3tD7MehGJ4h6zqi_WxFNxH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX7bhDxmNNTeVk
 pQO3G6oYE10WZeniDWV+IP28YgAHKkXJSShwmGC8umlJZbqoNG+VPag3vnMyyGSqs9dCMwiPV5M
 QrgN/2KnbKQcurVuPurULJ59xY+5fb3Oye7Vd+FuC1Ib2iIumcZKMlUQWevN2OuuY1izsmHbBpb
 Ch+Hv5xfp6y0M01SY/mWenhE7Bcgm68KzI8lvsYpjebeW99FHx/EqaYk0iT3Zw6YYZkeXeee2fR
 3XAooVGtz3YctxF1jqpIrJkBotXhhULBu53pAw3UH2FdVSowaDkTKoRZda/euGwpIx6rTiGaC3C
 PpAdwL9KG0XWOK5DTGYGBbva+aXVKpxwXpKKHRxNqaBDKriLxan7FcnUCToxYA51+QYydVu8cJb
 U348sNwI
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d4e9b7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
on QCS615 Platform. This PHY supports both USB3 and DP functionality
over USB-C, with PHY mode switching capability. It does not support
combo mode.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


