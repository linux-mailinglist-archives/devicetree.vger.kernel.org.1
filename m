Return-Path: <devicetree+bounces-248251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B366ECD04F5
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 90B4030014EF
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884DA2459DD;
	Fri, 19 Dec 2025 14:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="eVOI0Vam"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031C8246BB2;
	Fri, 19 Dec 2025 14:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155209; cv=none; b=Q4vEk4OwwZ4oyVZvjJ16yrsKuL/PW/7DxPuxO+FePKO+fGNOKtSPwfDkFf01WMZSybGxfqjHPDfHwKCefgwOLEPsrP7ptCQrKJ+BdYEB0FhejxhlZE45vy5+p3qEkewlhXMbx8rrBTuuXNUP1mTAPdLUHZ94wEuIqfbSb4kAE78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155209; c=relaxed/simple;
	bh=fZ1upxlIUcXmy16ztAev94wh7MIdtpRXVSYsx1Vr3gI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bsvFFKq5re8G+kCY+RGj1gVIIAkUF/FajjR/hyO+/Qc/2yy3mK1FsM5tDK3yTQL0uQocs37k7Ofi4i54FkP8/4MzpV6mbXYI3Qt3WsDpyZbPj5CHDo5R87NGNhknv/UbOpSZy8ks3z844SMc/xELH6DeHCeVX8UJCNMx1sNwfF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=eVOI0Vam; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJEPkSx799637;
	Fri, 19 Dec 2025 09:39:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=eJkx7
	V4DuyJH1jtHtGejgQqP+aXR0VDdmRs9mQnSFeg=; b=eVOI0VamywqR8P9I75sX5
	ua9MsUQvzWo+QA0KQjcUbzS7FVjr5MYxLcKjqPZSNMfyXJbVfPgwdLlcsoOXOcms
	Gm9H5KICoRo/eYpsYQ/pfT2T5qe1/Cjgka2T5C5e4hnMWBUbYGwGQ95zdkGoX7FO
	oJqq4ayTpNtPNWXe1vvhTHIe5Kd4fjfU6fxoLBTJNhdcF4G5U3I/rzNVZqvGhDA5
	a1PN1iAB8j6tUExejAIEg83Dwx5YyqxHTRj28K+RseMT2NbIE9mm63K3hy2nWEy5
	3Kf+sU+iVG/DKzgd2ncM9jshKKsDL17SFR0uODE2mssN6szC3uAN/JO0pIFg47Q4
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4b4r3tvcc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Dec 2025 09:39:59 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 5BJEdwIA045668
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Dec 2025 09:39:58 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:39:58 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:39:58 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 19 Dec 2025 09:39:57 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5BJEdROg001448;
	Fri, 19 Dec 2025 09:39:49 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Arnd Bergmann <arnd@arndb.de>,
        "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: mux: adg1736: add support
Date: Fri, 19 Dec 2025 16:35:26 +0200
Message-ID: <20251219143554.22793-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219143554.22793-1-antoniu.miclaus@analog.com>
References: <20251219143554.22793-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: jHQDQXxX4gHJAQ8uChLm-iIQVbbYUbWi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMyBTYWx0ZWRfX+Lsc+2ehORNI
 obAsCcXlJJo8TMDZfd+x4N1qJXzC97NRTg/H4WDU9CUncW1PXvlXgGfFTUN9/wKSw7Sk0Ha+au4
 jbV9FFUxf6QQvN3CjUMkaAfOgLO/oM+3SHjQcA/ugQBvWuHWFY63IkYlx2Kdhd0tWRRLi+p3yTk
 hEYCqD5PtqjszC33dLWpNNGoidYL7v05/8rvVT9fM+sLSIvDFZFC8lOtTlkmX4uBiC6CTpTCQCM
 jOfkdpOCpgxh4GjS3hONHDa6mZQeap1iZ6zNnxA9V3yoeB11bvv3SRZTT6THW16QtaGBpLBwnLs
 Sa8cijQtX14GtWgzJgPZZJWHlk9geamU1DtelvD0TlFNkuJC8xg/FYhOJ4zbQUoejvcoY9VOass
 n2JJ6NhNVEX5sVJt94fZ59P28TycMdTjQ7FIKOfBNA7fCJyZXbbUGALi7DBj67ymdW4vn09Tgwr
 FJbCvlPJM9yqf6zXNfQ==
X-Proofpoint-GUID: jHQDQXxX4gHJAQ8uChLm-iIQVbbYUbWi
X-Authority-Analysis: v=2.4 cv=Ba3VE7t2 c=1 sm=1 tr=0 ts=694563bf cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=gAnH3GRIAAAA:8
 a=V2S3m-czYbn6XYG_RjgA:9 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190123

Add device tree bindings for ADG1736 analog multiplerer.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
 .../devicetree/bindings/mux/adi,adg1736.yaml  | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml

diff --git a/Documentation/devicetree/bindings/mux/adi,adg1736.yaml b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
new file mode 100644
index 000000000000..0ba662ffc9cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mux/adi,adg1736.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADG1736 Dual SPDT Switch Multiplexer
+
+maintainers:
+  - Antoniu Miclaus <antoniu.miclaus@analog.com>
+
+description: |
+  Bindings for Analog Devices ADG1736 dual single-pole, double-throw (SPDT)
+  switch. The device features two independent SPDT switches, each functioning
+  as a 2:1 multiplexer. Each switch can connect its common drain terminal (D)
+  to one of two source terminals (SA or SB).
+
+  The device has two independent mux controllers (mux 0 and mux 1), each with
+  two states:
+    * 0: SxB to Dx (control GPIO low)
+    * 1: SxA to Dx (control GPIO high)
+
+  The EN pin is shared between both switches and can disable all channels when
+  set low (inactive).
+
+allOf:
+  - $ref: mux-controller.yaml#
+
+properties:
+  compatible:
+    const: adi,adg1736
+
+  ctrl-gpios:
+    description: |
+      GPIO pins connected to the control inputs IN1 and IN2. Index 0 controls
+      switch 1 (S1A/S1B to D1) and index 1 controls switch 2 (S2A/S2B to D2).
+    minItems: 2
+    maxItems: 2
+
+  en-gpios:
+    description: |
+      GPIO connected to the EN (enable) pin. When low, all switches are
+      disabled (high-impedance). When high, switches are controlled by
+      their respective ctrl-gpios.
+    maxItems: 1
+
+  '#mux-control-cells':
+    const: 1
+    description: |
+      Mux controller index (0 or 1) to select which SPDT switch to control.
+
+required:
+  - compatible
+  - ctrl-gpios
+  - en-gpios
+  - '#mux-control-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/mux/mux.h>
+
+    mux-controller {
+        compatible = "adi,adg1736";
+        #mux-control-cells = <1>;
+
+        ctrl-gpios = <&gpio 10 GPIO_ACTIVE_HIGH>,
+                     <&gpio 11 GPIO_ACTIVE_HIGH>;
+        en-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;
+
+        /* Disconnect both switches when idle */
+        idle-states = <MUX_IDLE_DISCONNECT MUX_IDLE_DISCONNECT>;
+    };
+
+...
-- 
2.43.0


