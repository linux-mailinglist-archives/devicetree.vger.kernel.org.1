Return-Path: <devicetree+bounces-164218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A07A7F8AD
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C38CB42275B
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 08:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63260266B53;
	Tue,  8 Apr 2025 08:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="orQgpIsa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AE9266B46
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 08:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102217; cv=none; b=naAR19XZFT76sax+4nE8QsjKFJ6Rn2pO8RqSqL9CgmhNuxPgICiyWr2vkrzfyvlLdKTpjrjUmx4EPcj7ZRkJtCdWG4mcgKscxf7oKKudoYPYSaRFHCMtQAuspNwH8PL1w6bE5RZn5IFwuEwJcrQiVi18qT0kIJIMmmGWR1Zd2us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102217; c=relaxed/simple;
	bh=rFZfORpX/VodBNhM3MvD9XibIi54cIx4GhyKqOm7u+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dn8Dktz8II2KZ9pPGW3GGO//loF1JzelRztpVcpbxoO16w0xQ8cEZb0TY9Eehcpx7+34zFVKWNPFTD5PR62SERSYfGhyjcnnzD6WMSbkgJEEG7PWFDH4XtemomBhxnq+4kI/GiqC99H46b31LTfFRnyLH1IFULFEQ2WLmGBDyUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=orQgpIsa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5382GYU5010566
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 08:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w8wfggCgi4FvHL1Ymx29tBzmBj8jKzAGIS9tbIh782Q=; b=orQgpIsaVal1P7FZ
	zz3IA7CeYxKEhJWfGTH2OKcVjBYqhQplSQBT4ponUFHq7S2bfK36H18QlMb7QMRO
	/Z+Hqd85gOh07eMzRoO38s5LSXMuOD75VJcRBFDmxU3nyEc3vjW7WFQDpO4rR0Wb
	5y+nxH/G6KvROlWYS0ULkoor1c31O230Dohc6YNT0OmhdFWtYEyN0d51NxwucZO5
	viKKkzwxRCmHQ5j29OUQeNMtbS41o3C3uXcVIOp11sGMk7Ma4w6h31YsItDhmuSH
	yP4v8AgLC3uiXx9Sn3XUwmWA7DRlnQIuQydFJOW2uwAKIytf8P9ruqSi6lrwaBgA
	LJz/Jw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1f0md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 08:50:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2241ae15dcbso62883885ad.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 01:50:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744102213; x=1744707013;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8wfggCgi4FvHL1Ymx29tBzmBj8jKzAGIS9tbIh782Q=;
        b=M9TkIZm0/fqXiv+wp135V/lObL5BxXj+5MiM1VK998ca+691kDmH7jLHnVbNcOlaox
         3dvs62Vk7ZfG1KS+hBEpxbVNWCgNw1UWN3+tz/NC9JFU78I40SZCQycFLoD8lz6YY5Dq
         c0Kq+ysNyPIulcnbe64T4O26kdP/PYSTRbIfKb/MiKJMsCJm19s7flAdRQgzbDPZpjys
         JvzVVDAYkdltpioYO8DfQxJB1376PXva6ajzJ9D4QkSqA/YxuxejPIRkcjA0Rau2YoVA
         FRUmvN8RBqGOP+l9PsPW2HHiOvy78/SPjVz0KnsVZ3PB8laA01ZxlPaO37PUvcj7EXDi
         sXCA==
X-Forwarded-Encrypted: i=1; AJvYcCXTUYDuAkTtPfpi622CFufDplSb/FC86r6YZJlKchrOGs1DVkuE5R2HUOpJYWiK5HeLj2bvNlwWvaJq@vger.kernel.org
X-Gm-Message-State: AOJu0YzjGSNrhc0u7HqvVBvLy0PoKAYv0HcxnDVVhf5Lh686omVpqPKD
	jC7Ow8Niev60/B7L2eNhzaTukXpEyC9FeUSUvY8/MkdHWLjT5Nd3ONu6XyUYogZQy+lw7rMEXST
	qJgW7DtkVBwUiXzRs5J2+10W5Y+F+yiMAmL32j1AcIipVEMSYq5buenM96tUD
X-Gm-Gg: ASbGncvm5+n4w/GTE/nCaU+xS4sEOor3TFG6JsKS/LczAdNT8q3QK8pqj+/B1LuoyQ1
	hbgaBgg/AcPBfpZamAoPpcXKZUhAr2m1PEcUt0M2X5Jz5MQOBlyknQbvk7gyiwuJfs0g3VQKEib
	rnOWxPJs7ng9s369/WrDnR3UHdU131blqGtg+YJ9uolYFoNcqWxm0kjCn1nGN86QacowjhjPjoT
	F6XEfYT63QZmgPkiDN+IsTHoh7dons+tw24DpZfrEPRMQCLVzi3lNRXwQDr0tfROWaDhHjjGWP/
	RIrnmuZJXUTp6nPkRQKcf7h/eZLN5pKu0iGmRcRQVG+ioNqO0OUxvtBn701BykljWgP4h1/+gwH
	8B8XvLCkdksWLmBRhfM8k+1KVdH4MMJ7NKjJDETLm36LtKY0rObk=
X-Received: by 2002:a17:902:c94e:b0:224:5a8:ba29 with SMTP id d9443c01a7336-22a8a0b38bdmr185397555ad.43.1744102213023;
        Tue, 08 Apr 2025 01:50:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxGVjc6gczWTVRmIfx+jXyF7w2qEVdun4mE6OaIksOtFQAgvYNQKxxDMbfEp5G2BJZ2C0J5A==
X-Received: by 2002:a17:902:c94e:b0:224:5a8:ba29 with SMTP id d9443c01a7336-22a8a0b38bdmr185397255ad.43.1744102212649;
        Tue, 08 Apr 2025 01:50:12 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057cb5a823sm10480846a91.34.2025.04.08.01.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 01:50:12 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 08 Apr 2025 14:19:53 +0530
Subject: [PATCH RFC 3/6] dt-bindings: watchdog: Add Qualcomm restart reason
 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-wdt_reset_reason-v1-3-e6ec30c2c926@oss.qualcomm.com>
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
In-Reply-To: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744102197; l=1894;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=rFZfORpX/VodBNhM3MvD9XibIi54cIx4GhyKqOm7u+A=;
 b=15B5CH7fqcLNre7ij4t8RNHCIE50ipG8Z/m6BzUVEfeqPybqlpRvP0AIn8NVdETwm7v4VNsL4
 ZkG0mNB7Pe5BoFohG0QL2wCFrp9/HtCUZ+km2CwQF5kWad6oFEpzBEX
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: aUp0s2_2zljBFz5Tes6P3kUoPXJqfk-P
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f4e346 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=yGTD2esuQI4FSrW5RC4A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: aUp0s2_2zljBFz5Tes6P3kUoPXJqfk-P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_03,2025-04-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080062

Add a devicetree binding for the Qualcomm IPQ SOCs restart reason
information region found in the IMEM, allowing the system to identify
the cause of a restart.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 .../bindings/watchdog/qcom,restart-reason.yaml     | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml b/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..babbaa70b114f9691018ed6cb10bfa78e18fad64
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/qcom,restart-reason.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ SoC restart reason location
+
+maintainers:
+  - Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
+
+description:
+  The Qualcomm IPQ SoC restart reason memory region, in IMEM, is used to
+  identify the cause of the system restart. This will be helpful to identify
+  the cause when the RAM dump collection is disabled.
+
+properties:
+  compatible:
+    const: qcom,restart-reason-info
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    imem@8600000 {
+      compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
+      reg = <0x08600000 0x1000>;
+
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      ranges = <0 0x08600000 0x1000>;
+
+      restart-reason@7b0 {
+        compatible = "qcom,restart-reason-info";
+        reg = <0x7b0 0x4>;
+      };
+    };
+...

-- 
2.34.1


