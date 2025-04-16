Return-Path: <devicetree+bounces-166483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F3EA87775
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9809F3A697E
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 05:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D571A5B90;
	Mon, 14 Apr 2025 05:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EtaGVfWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452021A4F2F
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744609174; cv=none; b=djKN3h7Qmj5UVk1ukApQuvjrPq6ZTJkFWlMHwYQ0RoZ54wUK0c2PHrw9xlE0fLQAiGwTELYLIWmUrLRMHL/Gk4hIPqvLTx5/jVIz3iBRGE1JRkQUk+2h5n5HLiTShbR7UyoMe6v71/sq+suyCH2IuDdfc0S5JaesVhQElqLqKCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744609174; c=relaxed/simple;
	bh=FMVSfgXqB99+cHL2kSSq0wS1EX1F8w0XxVP3cHPwGl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cCWqAZFqO7yHfre9aWSAIa08yyPDo9evZwVvalzg8LSNnx+PNT1msJe03TvGNvrV1O3ld74VRmMUwVh0zRV0+GmhG5w4uTAaWxGDN8faE7IwVy0D/tjmLVopd4NCReLObqtUWat6tLIDoG8PEEP+FTqRWPuslCsosePrUsmpq0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EtaGVfWX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DNLnZo025197
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VMxqLj4zU8XGgZpxvgTZGnEdT+gYOvLsWAmxpJOzQK0=; b=EtaGVfWXJZprnKRZ
	kxEoqM3Kt4FX1uQuXfnh8hRTuJTJj9casRprEQxUkiJqNQal8CIv0w1I2dNM1VzS
	ndKzZKM0XeveaB+MLYSUy7d+YR9ZLDbUqGA+dUko8RaiREZhCh3y1N/uJihRo3WF
	eQFhbamMAxykskzh/DIMxpqMLrPZIya/rIOgIQGE/rdzp1KvLDOiznmHMl/KsdrD
	VTdp0P8vB0txnSWQwLhtQBVrCL1iha1Z5jbeTiVKs7BQ9KmvzajufuomPYxKAAjV
	vmX2t/etdoGdnOvlxUo8JQrK3lB4V9lzqUTXkXl0KlCHDEC76EWWku+NGz8li13L
	QrG5jg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj93d2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736cd27d51fso3283582b3a.2
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 22:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744609170; x=1745213970;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VMxqLj4zU8XGgZpxvgTZGnEdT+gYOvLsWAmxpJOzQK0=;
        b=Bh1LBBmYws7BS54PRMBf/d4ySVWL9G/8y/eVuqDvzZnybO/DZbN2v24sRHQr4BevZg
         oHU68dXsb5s0HJ9pvHUXckIih1Gnlc553zxxq/Epb0Cb5hIkTVtrENoesFk0LbJWEa19
         jGf5v/jtOMi9X5WSFlpqYqnG9FOjibtbsNjn2an6imWCOyhglpdIxC94APVEuqVNYlKK
         lvt1EmpBo1iACUoLQ8cpV8+qxt3loMqiwEXafMqitRdVxt1pJkn0WbWHMEwNeLpwWts2
         sc6NffOYUO8wvVZ28qkIq1jkkcLTIIO5Ee9Aw/u1uXI+9X9SAPQwNdmNwMDqBgWsFsQC
         1rwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUtIsO23+4I3LlziDSEfV9i6nPRXErhyy/LQBetr9KGXGczQBTKeGUeXOgt0ILnKhtbwq3N/cpfPnf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhcd2IrGK2J027Eg7ZUTsoPhCyL5lHxHzn+z9NTOVSIbpTKT+v
	6Hm2nc+c0zPNr2Ci3ouQ1wiUiAivTMAEnQGpZAuBU/SUoN7Hayt22rstEQ5iIgUM3rG+UhA0XCE
	fAMK4HSFw3Vbu++fQBAzINnKHFQgNNblGnNiUFDxft/7SGH0puXywAO8zNb+Idi3pxZSw
X-Gm-Gg: ASbGncsa4RN1wI90s7kDgtb1G+jYbeOsyeCCq6HOdUbKgmay5KABUFZs0e9BD/OitQI
	W0mfNbtMpbh6cRK3A1d5UQ9bLbWSI0d0YXNCPiqFZqs3SM2bsNEX6ua1MsIXLAGbFloR6oD4jKN
	/OwLt8jfcgaPZXEhTbVbyMX7MaiyuZaYASaIwNqfHlrAceF54mcWNUUQPilDic6akPbU6OUrS3a
	BF9thHECgPglRn41gmsZYgW3vs8oPfWlKoHARxvQmkK0D6GvZa6s1wjIXP99sRk+dpcdAI46JIV
	9txkzHTAlPzx2MYgMO/+nsoZQDY2KyB6lRCi+6zU7080vME=
X-Received: by 2002:a05:6a00:3a01:b0:736:69aa:112c with SMTP id d2e1a72fcca58-73bd11e26d6mr13140952b3a.9.1744609170056;
        Sun, 13 Apr 2025 22:39:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+lYfmeZMaTl0r2O67Ucz8nxsn68aq9IJaHKygatFb1SaohIdf3+BadqPqlWPTBdX0qfzpFQ==
X-Received: by 2002:a05:6a00:3a01:b0:736:69aa:112c with SMTP id d2e1a72fcca58-73bd11e26d6mr13140929b3a.9.1744609169438;
        Sun, 13 Apr 2025 22:39:29 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd23332d2sm5824559b3a.159.2025.04.13.22.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 22:39:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 11:09:12 +0530
Subject: [PATCH v2 1/3] dt-bindings: PCI: qcom: Move phy, wake & reset
 gpio's to root port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250414-perst-v2-1-89247746d755@oss.qualcomm.com>
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
In-Reply-To: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744609160; l=2982;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=FMVSfgXqB99+cHL2kSSq0wS1EX1F8w0XxVP3cHPwGl4=;
 b=3C6xcR4XSNkH7x/vws5locFq2tigeUCUHcg4HCvd+X7j6iSUJkkYeER3JLT/ihKKsO+GzRScS
 hXMo4W+F/l/CFvGQHRJ1qZOjKSwACFoEWOz3kPUYaCgicCtDU/y/02x
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: _bUixTEW6h2REe69xTd59jbsbprspZ9b
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=67fc9f93 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=stmhjgsGwY9JSZftE7EA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: _bUixTEW6h2REe69xTd59jbsbprspZ9b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140039

Move the phy, phy-names, wake-gpio's to the pcie root port node instead of
the bridge node, as agreed upon in multiple places one instance is[1].

Update the qcom,pcie-common.yaml to include the phy, phy-names, and
wake-gpios properties in the root port node. There is already reset-gpio
defined for PERST# in pci-bus-common.yaml, start using that property
instead of perst-gpio.

For backward compatibility, do not remove any existing properties in the
bridge node.

[1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-common.yaml      | 18 ++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml      | 17 +++++++++++++----
 2 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
index 0480c58f7d998adbac4c6de20cdaec945b3bab21..16e9acba1559b457da8a8a9dda4a22b226808f86 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
@@ -85,6 +85,24 @@ properties:
   opp-table:
     type: object
 
+patternProperties:
+  "^pcie@":
+    type: object
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
+
+    properties:
+      reg:
+        maxItems: 1
+
+      phys:
+        maxItems: 1
+
+      wake-gpios:
+        description: GPIO controlled connection to WAKE# signal
+        maxItems: 1
+
+    unevaluatedProperties: false
+
 required:
   - reg
   - reg-names
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
index 76cb9fbfd476fb0412217c68bd8db44a51c7d236..beb092f53019c31861460570cd2142506e05d8ef 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
@@ -162,9 +162,6 @@ examples:
             iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
                         <0x100 &apps_smmu 0x1c81 0x1>;
 
-            phys = <&pcie1_phy>;
-            phy-names = "pciephy";
-
             pinctrl-names = "default";
             pinctrl-0 = <&pcie1_clkreq_n>;
 
@@ -173,7 +170,19 @@ examples:
             resets = <&gcc GCC_PCIE_1_BCR>;
             reset-names = "pci";
 
-            perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
             vddpe-3v3-supply = <&pp3300_ssd>;
+            pcie1_port0: pcie@0 {
+              device_type = "pci";
+              reg = <0x0 0x0 0x0 0x0 0x0>;
+              bus-range = <0x01 0xff>;
+
+              #address-cells = <3>;
+              #size-cells = <2>;
+              ranges;
+              phys = <&pcie1_phy>;
+
+              reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+            };
+
         };
     };

-- 
2.34.1


