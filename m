Return-Path: <devicetree+bounces-155603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126EA57954
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 09:36:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C07E16CF11
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 08:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F121A3A8A;
	Sat,  8 Mar 2025 08:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bREioxiK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23041A238B
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 08:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741422962; cv=none; b=jJSTUZ9OLHNm511v0xekGre+vFzQFmfCS1qkfhV7to6fidOwNHspG+aa3U+FvYnk0J/aklYGgLIT/uYlSMMroXWULqtk7Yq5I2Z36AqvQbbJ/XbMK3d7nM5GW1TtuonHOP7q1a9ja6VYIWYORCoCFwdui3JxIEU1K1XPwkT2wCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741422962; c=relaxed/simple;
	bh=9aW5kz2n/uoGI3zbi4yPf+9kyg3WXR3p2sYr13EOZAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Lmxwh2jfw+p6oiEoAs4Y6nw/ANgT7JldcclW1xcDCWwTlU9cehirs6A3E+kSposQTZ9sRGE3YGEx7dM+gNUYQDnqyzQeIHETMXH7p6RvKM6JNhqcSKDWo6wscbl4wg+AE01Ohw3m0nT/eJGdvWgnD19aY1a+K9gt3eCvoGzqpWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bREioxiK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68D6C4CEE0;
	Sat,  8 Mar 2025 08:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741422961;
	bh=9aW5kz2n/uoGI3zbi4yPf+9kyg3WXR3p2sYr13EOZAc=;
	h=From:Date:Subject:To:Cc:From;
	b=bREioxiKZLk0j9GGAsN8B9UMeG4tbSr5oHWiOl8CwoW6XsitV9qKFkRJYrJ+q8pSQ
	 DY5XNnZopEvKYDIFXTzpGIB2/lzWux/cn7GQouhOIRWh8Sax6+OBr6Ml10VW9OhiU3
	 krbzfyoyK3xH/OVSvvk4xoq1f/X6FirzuiQW9RGxGAJzQRVwpFIrccX5Fl//0WuV9G
	 Q8TyonP7xqqX3IckyXK39+bwRM2TapPCn/k4Qa3ZCKXjiVMn8V3zUvBp+Gm1l8ZAKF
	 TBTi47TQQvs04sishjoJbrwWcrrSxjut5hCW+ktR/zfo/wprXsJ+8ARN6d9Gg+/WSP
	 OSngHetaO8hZg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 08 Mar 2025 09:35:45 +0100
Subject: [PATCH] dt-bindings: soc: airoha: Add the pbus-csr node for EN7581
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250308-en7581-pbus_csr-binding-v1-1-999bdc0e0e74@kernel.org>
X-B4-Tracking: v=1; b=H4sIAGABzGcC/x3MSwqAMAwA0atI1gZa6/8qImI1ajZRGhRBvLvF5
 VvMPKAUmBTa5IFAFyvvEmHTBKZtlJWQ52jITFYYZ2okqYra4uFPHSYN6FlmlhWbKifrc7N4V0K
 sj0AL3/+569/3A+74MM5pAAAA
X-Change-ID: 20250308-en7581-pbus_csr-binding-974e1b40fb36
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce pbus-csr document bindings for EN7581 SoC. The airoha pbus-csr
block provides a configuration interface for the PBUS controller used to
detect if a given address is accessible on PCIe controller.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../soc/airoha/airoha,en7581-pbus-csr.yaml         | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/airoha/airoha,en7581-pbus-csr.yaml b/Documentation/devicetree/bindings/soc/airoha/airoha,en7581-pbus-csr.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..0524e4189da39205d982a3940ffe90b2aa35d72e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/airoha/airoha,en7581-pbus-csr.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/airoha/airoha,en7581-pbus-csr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha Pbus CSR Controller for EN7581 SoC
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description:
+  The airoha pbus-csr block provides a configuration interface for the PBUS
+  controller used to detect if a given address is accessible on PCIe
+  controller.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - airoha,en7581-pbus-csr
+      - const: syscon
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
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      syscon@1fbe3400 {
+        compatible = "airoha,en7581-pbus-csr", "syscon";
+        reg = <0x0 0x1fbe3400 0x0 0xff>;
+      };
+    };

---
base-commit: d71fc910c58ed85a2ad5143502030bff73fc2088
change-id: 20250308-en7581-pbus_csr-binding-974e1b40fb36

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


