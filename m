Return-Path: <devicetree+bounces-215730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC59B527A0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 06:33:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE8131C217AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 04:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CE01241680;
	Thu, 11 Sep 2025 04:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TG60qSEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9412343B6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757565198; cv=none; b=FiLGjdgBkarfZhD02NlFap5MApcN5vPgXgtyD5DhYQeLZ6rU2YGF+n6zXAalCZuWymTxFlqUqeQ6G41smt5/so3qo0aikgeyXpCL6q0g7YyQb1a+coAHUpP4VPnQYrJX+ObGqTURrLIcJvEEnX0OSCVu3XcPUZAcRyBdhJZzlUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757565198; c=relaxed/simple;
	bh=u7L/ieaGhg4FYoxkoZgFlr/WX/CxQuv2qx3g+1jNhws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GZzIiC7NzFP9dUZr4FXZGHNbn+j1s84pfL7Gy4ApxjzrlBcHFYR4vtRJnkJHi5bhk0tHAHO6SvataiyQiveCuYAvoxBXhMs8LFYksACqfNd8e+DM07pjU7XotHRcXJnkEZCxdfHgP9EaDrz6U/Uz43vAO6p2/L8oy92LZslcaag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TG60qSEf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IV7a008188
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DURBzBBWh6H
	a/g16FF3Bk+BqdvbZOIe8eGRq/1RrkqA=; b=TG60qSEfMGTnbcblhWQlKtVl3w2
	Zt863BcUs6nCudlRypR73atLy36H3MyvP56cOJDC+pO0cICzA1g7yI53aKhpM7JP
	gW0D1ijnB3zyXYMgcxqhVH6vq9ER+ez5uqvS6xPGLtR/+LWvLRYA32SiXS21ds3C
	06Ua0T1G1vmkVEYc6e0snyZ3SVi++9rFquwPMuknPD9Laj+l0SPjtzfK4jgRXpAQ
	wCPjrhL3X7/PrbnoB2VwaeU00y1dF1f5I0RYNcOOA3MFX8Fa9MzVHhgql0dPkgpL
	3KT9KQjX1Y1dsngulspklBL5q6Mr2n08HjEXeqmOxX5YViFx4fjgrFEnsGQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapph00-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:33:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24b4aa90c20so3165595ad.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 21:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757565194; x=1758169994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DURBzBBWh6Ha/g16FF3Bk+BqdvbZOIe8eGRq/1RrkqA=;
        b=A7QGcTL3awdg/E8FBXQqW5r7db4H6gTwb8BhWPYNToSxh/kNm2rtc+Vw9ejaXQf4qH
         JCSUcyslxsx3rNpWDL6VI19DOeDD49TNe3xjDJab4KtNDu1TVDPGBXePRt2ziV2GImZj
         QGcH916vtTEUXD92niuTL0nZlK6lBX3EFCLj2v+rR9WXOz0FLPojlkWt/NxzIjHSGk7z
         uiKbuacSFurW5n5eyId+C6vwd871LAKCWxef1QNEcH6Z5lDIgeuejyegr0yK+rUCVnmT
         J0ovHyuimoGvsw6GEwqurzC1Du9hw5gaozbSgaFLSkluz8pG7OWl93rLzCwvCbVAZS3y
         8zdA==
X-Forwarded-Encrypted: i=1; AJvYcCUr91i6ieNtI9IfaLxA0FueYGUaVR1rqnthBsGXsa/0nrA4pTvlHff3/TTEW4CKY2FZUsbJmPqTMrFY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz4tjrDjYzQpteaUiuZb0e+T4umGqLf8hCMDFN3TCP1w9ZSJzj
	ZIVkxn6nGyRcBpgJIkDcRlHzwxPL1/LeQgnE7YCWKRM9PgBCOyj9OkfsGn4YePKDre7/Ny/+oDS
	T4yn8tC/WBcu3U8h+Le5Z/EU+v/R08IzusxEP26tZTuAw7kyEl4LDAZHZ5axpxqM7
X-Gm-Gg: ASbGncvK0dthshiAtkQAWPm2A/4HkgqecEkZpOAIn/vp2W99ss1bHJDtFdtfHRuUBhl
	Cm57elFR8ul36+8yCgnKHjhToN0Uo1K6sUOCW1D0vyqWXQIqX6nrVN++CTMqADLs5nkNRcDoW2V
	mC7JW3HHyKgKgO97wMctiYuWif/YLKspYhbHWXrstuI68F7vqxrCJJjDLnQBm6fGNzZ+yU73wjC
	c7GTxmxCqFzYwxPAgwkm/4j1Wf09e9IL+M7nGbP9KAAlf69TfF3n/nyHVbzEcKT6Gq1i7P4k2fX
	Q44TyA1YZaH3SklSF4HsWX7gJxAZA+aP+uTMekFriRKAxgfz7qgg5FTRyboXBdQz9kUIZWxKVs0
	g
X-Received: by 2002:a17:903:1a30:b0:24e:2b3d:bb08 with SMTP id d9443c01a7336-2516fbdd4c2mr215944695ad.20.1757565194003;
        Wed, 10 Sep 2025 21:33:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtCrX3AKAjoCMmmGRU8ktHUd/jdfd6KhBt3qxvC7mXIES1EQNisq1Z7vaS59E64uyx449xpA==
X-Received: by 2002:a17:903:1a30:b0:24e:2b3d:bb08 with SMTP id d9443c01a7336-2516fbdd4c2mr215944275ad.20.1757565193511;
        Wed, 10 Sep 2025 21:33:13 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3a84a46csm4323975ad.91.2025.09.10.21.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 21:33:13 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, broonie@kernel.org,
        johan+linaro@kernel.org, dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/6] dt-bindings: qcom: se-common: Add QUP Peripheral-specific properties for I2C, SPI, and SERIAL bus
Date: Thu, 11 Sep 2025 10:02:51 +0530
Message-Id: <20250911043256.3523057-2-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250911043256.3523057-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250911043256.3523057-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c2510b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=M1Du_JTgEIh7wHf307cA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mHSCkkALbk-6UOMNdpZaCEfC35MTGl7Z
X-Proofpoint-ORIG-GUID: mHSCkkALbk-6UOMNdpZaCEfC35MTGl7Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX5LdZjVAs3cBv
 83Deq5tIv+cREtQX8E5+AEcMtB+aZTWg9jSWlQ8lLn95I/cPpyAIlSlJz5hyRmqsd4jZ2RvPWyv
 q9kFUl5wUF/93TtZdXzVij7/OwN74lNW2m5dBwD/g33sGh0A82ed0xEdggtE47tey8JA16+FwHD
 97KG26CduE2mHgAZhKIaPQZYG+rroqU5+018LwSqls8hGvLBxrQzK6rbmm8qZdX7O44wMR1hcp0
 WKGZWH29UAYCxU1aLgsE5Kf2WdlytUjEfCsNGJF/wUdZEPkXQ3QWNA99G1mmkIUlveCzfISmwa0
 T78fg8wkE1Vlubp/Ejrc28aMbjn5eKrcEg/K+BeUqEaB3evodBz+ab44kCvFBnuMdXXfhEbIlwE
 TjUFfDoV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

Introduce a new YAML schema for QUP-supported peripherals. Define common
properties used across QUP-supported peripherals.

Add property `qcom,enable-gsi-dma` to configure the Serial Engine (SE) for
QCOM GPI DMA mode.

Reference the common schema YAML in the GENI I2C, SPI, and SERIAL YAML
files.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Co-developed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
v6 -> v7:

- No change.

v6 Link: https://lore.kernel.org/all/20250822072651.510027-2-viken.dadhaniya@oss.qualcomm.com/

v5 -> v6:

- No change.

v5 Link: https://lore.kernel.org/linux-i2c/20250624095102.1587580-2-viken.dadhaniya@oss.qualcomm.com/

v4 -> v5:

- Add Reviewed-by tag.
- Update the email domain from 'quic' to 'oss'.

v4 Link: https://lore.kernel.org/all/20250503111029.3583807-2-quic_vdadhani@quicinc.com/

v3 -> v4:

- Update qcom,gsi-dma-allowed property name to qcom,enable-gsi-dma.
- Remove full stop form title.
- Add reference of common schema YAML in the I2C, SPI, and SERIAL YAML files.

v3 Link: https://lore.kernel.org/linux-arm-msm/20250303124349.3474185-3-quic_vdadhani@quicinc.com/
---
---
 .../bindings/i2c/qcom,i2c-geni-qcom.yaml      |  1 +
 .../serial/qcom,serial-geni-qcom.yaml         |  1 +
 .../soc/qcom/qcom,se-common-props.yaml        | 26 +++++++++++++++++++
 .../bindings/spi/qcom,spi-geni-qcom.yaml      |  1 +
 4 files changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,se-common-props.yaml

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
index 9f66a3bb1f80..51534953a69c 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
@@ -75,6 +75,7 @@ required:
 
 allOf:
   - $ref: /schemas/i2c/i2c-controller.yaml#
+  - $ref: /schemas/soc/qcom/qcom,se-common-props.yaml#
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
index dd33794b3534..ed7b3909d87d 100644
--- a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
+++ b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
@@ -12,6 +12,7 @@ maintainers:
 
 allOf:
   - $ref: /schemas/serial/serial.yaml#
+  - $ref: /schemas/soc/qcom/qcom,se-common-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,se-common-props.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,se-common-props.yaml
new file mode 100644
index 000000000000..6a34f05a07e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,se-common-props.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/qcom/qcom,se-common-props.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QUP Peripheral-specific properties for I2C, SPI and SERIAL bus
+
+description:
+  The Generic Interface (GENI) based Qualcomm Universal Peripheral (QUP) is
+  a programmable module that supports a wide range of serial interfaces
+  such as UART, SPI, I2C, I3C, etc. This defines the common properties used
+  across QUP-supported peripherals.
+
+maintainers:
+  - Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
+  - Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
+
+properties:
+  qcom,enable-gsi-dma:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Configure the Serial Engine (SE) to transfer data in QCOM GPI DMA mode.
+      By default, FIFO mode (PIO/CPU DMA) will be selected.
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml b/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
index 2e20ca313ec1..d12c5a060ed0 100644
--- a/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
+++ b/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
@@ -25,6 +25,7 @@ description:
 
 allOf:
   - $ref: /schemas/spi/spi-controller.yaml#
+  - $ref: /schemas/soc/qcom/qcom,se-common-props.yaml#
 
 properties:
   compatible:
-- 
2.34.1


