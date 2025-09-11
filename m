Return-Path: <devicetree+bounces-216001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CD4B53653
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B4EEB61CC7
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526F5343D9F;
	Thu, 11 Sep 2025 14:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OcALeOKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F9F343D6C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602250; cv=none; b=aV+ht+J5C0zcaCuehIHs2AvGSgMy3S3/YWLBq04TuFsRuaXftxm8S1wytnqFg/5o8ARv40ipHRb0Hk2MmBqnL6l1DVtW28Jnd8phrKm07j5Sd9jKDG23kNTrgjpg5ca08hUeOsODBHdfDb4YF70/Dyjy2NBN+FaOvBMMZLLzndY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602250; c=relaxed/simple;
	bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JMvoXgskK5KdKy74vZEIjidb/WCJYz1PlnpddgQg+sXRYEo3QToKvkjPN6qUNiihCu+RuLQpxZMgSypcdAJhSxUJk1H9H6P2lh+2qlgEc5bXNJJVafzDZnhHNxCPmWVGV7m201Z6zK0k1VzYyMUN9p2qST8jIUCN4Pgipz0suxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OcALeOKq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBO9g5031245
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=; b=OcALeOKqq5FfiH5Q
	Py/QQNLNC7rX/Jvk5AmVTJFz88Oe1YAdz8BSgnMrb/WAv6e63K/Uug1JNpAS/tYx
	ShKC5dv3Mef2IyOGWSAzfQlV+gdKwokiiHuBFHrzCrMsAd9vgXU+ShjOn3uOGcrk
	slSaU7MsJr5MExTLVwoh+62ssdm+t+mBdLBq0D/s7pdyteUqznEqwBrb6oGwvorx
	NF0n+SN6+LN7GsMO5nzltelUsrzsBp9RcM6MzZvvqIOnY+OSk2+q99sG/pLztVVC
	vXum7oNR1aho9RUlMtTLXttrGRn3olEW+NZSCgrkNRz0dhiHWHKjENi/e95SHcO0
	16Idag==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg7wxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:50:47 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32d8eb60ef5so187121a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602247; x=1758207047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=;
        b=ULhFXNkXjg2se+Z0Hmo1YzK+DRSXjVbTvEtMDhjpsxS95o8IFIQEswpd+JbRXSAbav
         8niptRZmn8VePA2uHmymIgkT6GEuYVtewghO2kOlOlYegdo/zspWlu2Up0BU34LWlg9r
         DK19YevnW+8r/maE70+dhB2DVCTGRVEQZZi/SZyvLTHts6QkK2aJTvZg/XZY6zHEJhwJ
         mYXAbJBiKtlgjvc/Mt7LWDlShPRRKvNFZZr2IJUPTCaOy2dDRwVFsfMGrRvpeU11KRyA
         AD3merGNrKDaOI3LXD5K8d95Nt+jJCylL5wYH8iT5wjeG4idC4LolMIyuo1oxSfRpZaf
         8Yag==
X-Forwarded-Encrypted: i=1; AJvYcCUYWwscUodA2WdnQ2TVek9BlD/iqg0pbZMbAk4IeiBPNYACjU1iwiVtvr71vfsdz2OSa+yq4gApgye3@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ8SiHYj9F8OkyA4mz7OQjGD0YfWpQDDczuJFJayRbeIOEav4K
	DcqePQiYkqFd7rzjkDq6qKd0k4cX9e2kOqmtAFEc3Bz7xVsEob8D0lte9gMhRZ2w3DAh+MRE4ZC
	F3iXDsPyZSVH8/tJWv/t876y8706SWOTXR/s9KWgULGghuVhEIiZZzFTE/AUQXkf3
X-Gm-Gg: ASbGncuuTU3/qqzmybu30qm19uY/tU7fpvd1RHIC0YVdUG2IrxjQdIvih1IlarNopnC
	fKZhPuRQbqHjXoXUOmRNO42LaBKY7AMYztdF8D8+DSxu77mUTXqhuWOvJU85+q7LpL7RTG7SsPz
	8sYA1FPmRUO/GJS6mEHQAQO2HSEUdefpnGXAt3MPn+marg6yJ+JYMJbmy0dj0CvpRzWnWYCSBYe
	hp2qAO+e6kMIK9vxmiXHQJliGJf9ehPdiMWNinQ7VqTnaTgT4XP7hXSBKMJHHZTSdeEBaN9WPR1
	89zEuROZwPgtC8PyzIF9TGagtuZwzkmPeW/tc99gsORrq35Sm4gkV+Xn/1SnK4JEsmHk0/Vg+OZ
	MHPfbFUTaOBD4gzNpA5oS/r1+airfq8huSG+CNUIZ2Itt+2RgALNIYi/S
X-Received: by 2002:a17:90b:1a8d:b0:327:c784:7c37 with SMTP id 98e67ed59e1d1-32d43e2917dmr14750873a91.0.1757602246863;
        Thu, 11 Sep 2025 07:50:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7xvZXGDe4gGeaoUOspB4SP+Qsy4fBUGY1A5emQkBUdAaDIYlttMk2dqbZSQPTGCSsk4VkxQ==
X-Received: by 2002:a17:90b:1a8d:b0:327:c784:7c37 with SMTP id 98e67ed59e1d1-32d43e2917dmr14750843a91.0.1757602246317;
        Thu, 11 Sep 2025 07:50:46 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dd6307590sm2934648a91.16.2025.09.11.07.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:50:45 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:46:08 +0800
Subject: [PATCH v4 01/13] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-1-177348170c2d@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602231; l=3530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
 b=qc4pX6kLKMoQjj45+8At2VeBeL4dm1JdeB+kNKD7kalxk9Tt5QDSuBldZaZaADwgeBZOZ/Jh3
 Rl//lKlw+bnDcHgiBAN82wKoU/3KmCQYDgTPVLd/kZkokweVPv3gmM2
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: K9fuI1PLqHwDHNB40ewb5BD7nKs2j0YR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfXz/ECwRz7U5cj
 Y6n/lnKgrWvaosaWTDJJGHQ7xhvekVP88lPAEOSlIMj6Aw6m4E4Qklu7IPmsSFKWQrA3cnWuH57
 12+M/FooZdvh8hlDco1L3kRldM9U/EjlbnP1AJZPzx2sHgcylEzr9qLI4XMEBbXbF8SDEwB4bAU
 UX+M/eOB13aQmPyUw8oieHBndDbjOj34beio7Y0nWEPthfhobrGRewcOO5o+Oc3fwaklBhmHp2a
 6qzxrHLPNiAWPE/ZW0cD9MrfmlFeHFYzc9V25bx1yjXNQhZ4Rpw/BGWd+RqAAtcLM7BV59uwY8C
 qeGI+foxl2UeNRv6iuIo+33+8sNFiw2TUKPOwSftcjmFXKv8/gm2AJGHXD4SzZpSu9TyND2DU6h
 aBWN2fqj
X-Proofpoint-GUID: K9fuI1PLqHwDHNB40ewb5BD7nKs2j0YR
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c2e1c7 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

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


