Return-Path: <devicetree+bounces-211853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7702FB40F3A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 23:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80241701EA8
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 21:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C5D2E8DFA;
	Tue,  2 Sep 2025 21:17:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9277026FA4B
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 21:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756847855; cv=none; b=QIQgcYsKzo04ouIDEmZSjagv3+yyV95L6qfpQ54bk0Svl2FOOUU8GispyIWFhFhpFsyJRkfhyBrn6KCB5IZbS934f/ZiYVgR4cnKdNKHuDC7Aa0jzuhoHXGyK9XBSzWkQ6IZr5EBeAMMID3NhenR+ZDD9p3uiretwhyRCe+pqSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756847855; c=relaxed/simple;
	bh=QkpX7uVIbWa6j4+MWKabhFBDGgegkyRnxHHZgDvUxJA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GOFomIXQUzg/0x4d6sprdyKWYKuUkLwxYKf/IdQp+kd0ci3LsjAO7eQR23CuprWUA33PmfNS73L+mJg+UulNiqHjUfLtdiq4fSjQBJ2yvUKtIL7HFS5RdSK26tDjzCaEGRRdxzlInEFsqf8yWvaV+D4QY8QfVRRDkVD26nsQYvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com; spf=pass smtp.mailfrom=douglass.dev; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=douglass.dev
Feedback-ID: 3578:1022:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1141507836;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Tue, 02 Sep 2025 21:17:16 +0000 (UTC)
From: Woodrow Douglass <wdouglass@carnegierobotics.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Woodrow Douglass <wdouglass@carnegierobotics.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] regulator: pf530x: dt-bindings: nxp,pf530x-regulator
Date: Tue,  2 Sep 2025 17:17:02 -0400
Message-Id: <20250902-pf530x-v2-2-f105eb073cb1@carnegierobotics.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250902-pf530x-v2-0-f105eb073cb1@carnegierobotics.com>
References: <20250902-pf530x-v2-0-f105eb073cb1@carnegierobotics.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2454; i=wdouglass@carnegierobotics.com; h=from:subject:message-id; bh=QkpX7uVIbWa6j4+MWKabhFBDGgegkyRnxHHZgDvUxJA=; b=owEBbQGS/pANAwAKAewLuLlPNh4UAcsmYgBot16YA/Ywxbtgt64dokDNkwLZYF4uiofKcQySB 0XwL4ASpyaJATMEAAEKAB0WIQSIUqjrbDLQw0mgxHLsC7i5TzYeFAUCaLdemAAKCRDsC7i5TzYe FPUpB/9bcF9v+6+1kx3XuYVwZadYDa1CZ5rjem4e8K8VVKXVE+T9pKjOZv4S8czSPAZ/dlkwooD V78WG81mUBkwZXUdRIZw+iA8i23uvQ7lemqeiHArndu31USYnjtdvITYp3/Y/b1DUHbEhT84nW3 VL2Hm/+wYmTA/HiIHl1XLyWzpqr4sgLckYb2mnXFGyHe6IMrpP59bcdwaIsxq0cFfCiOIkSvIYU BlVFjTIt6rhC9em30TLivU6xlWGI7mdNJbe2uOGT4bIu6fuVFTwqe9Ct0I+5q7WNp0Z8ZqDV9x1 Rhym3fDBVXZXlY/0pWWmgeO3wo2FeWkqr3D4SzZW/lyNwtoa
X-Developer-Key: i=wdouglass@carnegierobotics.com; a=openpgp; fpr=8852A8EB6C32D0C349A0C472EC0BB8B94F361E14
Content-Transfer-Encoding: 8bit

Bindings for the pf530x series of voltage regulators

Signed-off-by: Woodrow Douglass <wdouglass@carnegierobotics.com>
---
 .../bindings/regulator/nxp,pf530x-regulator.yaml   | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/nxp,pf530x-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pf530x-regulator.yaml
new file mode 100644
index 000000000000..f1065b167491
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/nxp,pf530x-regulator.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/nxp,pf530x-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PF5300/PF5301/PF5302 PMIC regulators
+
+maintainers:
+  - Woodrow Douglass <wdouglass@carnegierobotics.com>
+
+description: |
+  The PF5300, PF5301, and PF5302 integrate high-performance buck converters, 12 A, 8 A,
+  and 15 A, respectively, to power high-end automotive and industrial processors. With adaptive
+  voltage positioning and a high-bandwidth loop, they offer transient regulation to minimize capacitor
+  requirements.
+
+properties:
+  compatible:
+    enum:
+      - nxp,pf5300
+      - nxp,pf5301
+      - nxp,pf5302
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description: |
+      list of regulators provided by this controller
+
+    properties:
+      SW1:
+        type: object
+        $ref: regulator.yaml#
+        description:
+          Properties for the regulator.
+
+        properties:
+          regulator-name:
+            pattern: "^SW1$"
+            description:
+              Name of the single regulator
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c1 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        vddi_0_75@28 {
+            compatible = "nxp,pf5302";
+            reg = <0x28>;
+
+            regulators {
+                SW1: SW1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-max-microvolt = <1200000>;
+                    regulator-min-microvolt = <500000>;
+                };
+            };
+        };
+    };

-- 
2.39.5


