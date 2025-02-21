Return-Path: <devicetree+bounces-149692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F58EA40221
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FE4819E1A6F
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D9B253B7A;
	Fri, 21 Feb 2025 21:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="eXvSFf9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E941FBE88
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740173926; cv=none; b=aRVjUZ3tVHIppPCBtyRQWYYmKH25j8FvOaO3GT3o+v3zt+A6JFJxDyQAkocSexR+16qSCBCBBRfZbXamL9LP2/nZQVAtpWbNC3F6ZYivs1Hcgr3XFZhmH8A8ZiG4+5ETOc8kSvD0EvB2HWfDMVETncP7X1Qprxkch4ybpH0DhLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740173926; c=relaxed/simple;
	bh=V2vxeqGcz6v1wBjMLxM8YUFEw0TmKZQqqqNaFB/ASIU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BwdZg4riqXOnVzg3EawIIF+YcFASqZlnrFyQVqHMcA1ejSJcIzke0eL9t4S0mGU83rUsvUQp3bQj6VSlemUVps1s7Ck/oEqP+taTqWVOpi0cu44LPNIPAsPpRy/YLOBA52cBeJEw78RE2K5sX1nXq87cENu7KXjfdHlD8JYtxwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=eXvSFf9V; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38f22fe8762so1316069f8f.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1740173922; x=1740778722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+FLJWEXe/gWqpKMG4WdI1PcaJ/SApfiUlaX83AGaMh4=;
        b=eXvSFf9V9EAs2uREzGTBpJvWOO11ZpbcvoQ1CXY+DnleyEX/nzgyLuNUIuEU03XCwC
         vrHi4j3NdUUTa7ABNPPYptRH2z4gt2jih5PsETJNgeB+Wd23HOqP8FPzdmCREsanOXR3
         4go3PJkuL9lIU7q1abesaQyvvoTJhrHLpaiLDfqeeplnvdKLWSH0XT0WliaWn6dLpcjX
         bTLeo63/KIxtgCl0M6fZkcAA1gWVgo8heZ7pdrecLrxTS6LHTDOf07kaKmCqITL8nHYr
         bAAF/n2htPGeRcrTpbjeb2+BEEnIvg5GbVVYXJD1hwJ4DV+oUtPFSF+vncZdhgk2BDJJ
         6VFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740173922; x=1740778722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+FLJWEXe/gWqpKMG4WdI1PcaJ/SApfiUlaX83AGaMh4=;
        b=AYFfYYzmC7ncE2dvlh0mV+FfqW0Rc3i0jwVhjXf0llO30xJ1wzTp6gd50ZDW4nu6IK
         /8vBRuvvBrgqKnAJTuQF7zr+0WUT2II3BhB0vGBB8JyBrsVfGP3u9l1eJV5/xinztWPi
         HqAUUuGF2JIKn1MEUmoodySPmBUxNkSv6v5t/B5++mE+3g7ZQ2w9qTGnC1cwnbvSrFWO
         DWmFyfKmpVstjG3KslcFysYmqvOqhMIi5jHzqJTEk+ovqYGRzGo6CdG1Vsr9gYEIQIzt
         UzZfwAGByXJZwVVSGJot4iHw90XCKs3LQ6Bv74vF0puqZP4hrtjoizjkS6kTf8eTilyS
         c7GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgJqV78bLQO5gG9VDKSsiz+qip0368ILxdwUsGgyaV+TGsttXVfCVmR0vjG0JTVmS9nkV355OrRBo6@vger.kernel.org
X-Gm-Message-State: AOJu0YzOnjiD1iWGd5iamUPu8fOloXc/rvXaiSlukQDm37sxlX+eHMjL
	Db3oGEgy4MVewMu8o3wQTXZ7gGbBCFnqAx9IC6YBqU8Gcgg2R0wx34jVd6ktPEw=
X-Gm-Gg: ASbGnctkBJ3zNPmplyvYH4BC7sPl4bsnCgcGom0oUwCTbNUiCSgklrn5OlbtaSH9a/B
	+BgQ5EbmqWAJA77oT+Cjs2zIUwO+oq/bn9s+a7hzXkdT0wBQknJQNqVcPOAK3funbGLPP9MXjoL
	owTTkR7fyMMA27q9gP+9LyqTCR6NLM+Bscsqp9d+zg+hY3QASsMVsnIAoMAl0ur2uHpt3645G69
	ASb88kS+K+PehVmqhjK9u/hc6w4rM9pdqIVplKx+B12mb92zrfPu2rvD86kzv5lnovc0whY7U29
	2dKeXSLWsZcDZ7UCm6xgb9XCJaDfAds0OdaZxDvnaW5d5u2F22Ijj9RLe60ZfmjWuXW7V2uRDXX
	xplmoWNlZsDn5+kzJynoejQ==
X-Google-Smtp-Source: AGHT+IFdUP6T9iCt96pQdqThAMw82tn0jcur3WlLTZDovg9QtmKcOK4dK/9s5fTF1HR8qyXDnahPkg==
X-Received: by 2002:a05:6000:1844:b0:38d:b325:471f with SMTP id ffacd0b85a97d-38f6e9474bdmr4665482f8f.15.1740173922229;
        Fri, 21 Feb 2025 13:38:42 -0800 (PST)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25913f5asm24767461f8f.52.2025.02.21.13.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 13:38:41 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Guenter Roeck <linux@roeck-us.net>,
	broonie@kernel.org,
	conor@kernel.org,
	Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: linux-hwmon@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: hwmon: ir38060: Move & update dt binding
Date: Sat, 22 Feb 2025 03:08:34 +0530
Message-ID: <20250221213837.1594057-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move dt binding under hwmon/pmbus & align accordingly.

Previously the DT binding was invalid & wouldn't work with pmbus driver.
Pmbus driver expects a regulator node & hence added the same.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
Changes in V2:
1. Update commit message
---
 .../hwmon/pmbus/infineon,ir38060.yaml         | 61 +++++++++++++++++++
 .../bindings/regulator/infineon,ir38060.yaml  | 45 --------------
 2 files changed, 61 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
new file mode 100644
index 000000000000..e1f683846a54
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/pmbus/infineon,ir38060.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Infineon Buck Regulators with PMBUS interfaces
+
+maintainers:
+  - Not Me.
+
+properties:
+  compatible:
+    enum:
+      - infineon,ir38060
+      - infineon,ir38064
+      - infineon,ir38164
+      - infineon,ir38263
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description:
+      list of regulators provided by this controller.
+
+    properties:
+      vout:
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@34 {
+            compatible = "infineon,ir38060";
+            reg = <0x34>;
+
+            regulators {
+                vout {
+                    regulator-name = "p5v_aux";
+                    regulator-min-microvolt = <437500>;
+                    regulator-max-microvolt = <1387500>;
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml b/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
deleted file mode 100644
index e6ffbc2a2298..000000000000
--- a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
+++ /dev/null
@@ -1,45 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Infineon Buck Regulators with PMBUS interfaces
-
-maintainers:
-  - Not Me.
-
-allOf:
-  - $ref: regulator.yaml#
-
-properties:
-  compatible:
-    enum:
-      - infineon,ir38060
-      - infineon,ir38064
-      - infineon,ir38164
-      - infineon,ir38263
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-
-unevaluatedProperties: false
-
-examples:
-  - |
-    i2c {
-      #address-cells = <1>;
-      #size-cells = <0>;
-
-      regulator@34 {
-        compatible = "infineon,ir38060";
-        reg = <0x34>;
-
-        regulator-min-microvolt = <437500>;
-        regulator-max-microvolt = <1387500>;
-      };
-    };

base-commit: 8df0f002827e18632dcd986f7546c1abf1953a6f
-- 
2.42.0


