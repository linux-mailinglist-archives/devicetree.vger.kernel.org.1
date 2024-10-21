Return-Path: <devicetree+bounces-113569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB6D9A6193
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E456228248D
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5E11E47DD;
	Mon, 21 Oct 2024 10:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="fKGgLyPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89811E3DDE
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729505271; cv=none; b=X4k53y8rQvciJE4dKF4qyfWrorxU/kl4t0tvICJiP4YTPXbRfPFmT/14Ry6YwVudpiOESIyRD+jaB2+AOSAAUUVMhSMSG6vKEEBYrD30o24yF6wimCyzhvtNU2e2tosobA2v8UsqQcN8AtJTNu3CLmQM8RJm8VSCESB62Dluh5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729505271; c=relaxed/simple;
	bh=QdZWSFTeGpOWzSib81TVg25Rz1n0HWmtYu4OVad4FCo=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=KTTSbS5fpOBXMKp+H3b6+BDr07InhGDlQZ9cLMdWwGwP36XjYBla5u2rRySpqnRt6WSnDwjf3IsaVfWObRnweemH9lctjtuAITg7rlzIujSK+2AcHAbCfqDmp4BMp5DF5dn3nP2VBtWtqFcRYguzM/v7TgnmK5hLZSEWqWvB3Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=fKGgLyPP; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so41625065e9.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1729505267; x=1730110067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=EBql76qWJOBLXqDBsTH119HC7QDwlYFKmnY1odQsxTU=;
        b=fKGgLyPPWt0pLp1mFM2RVXcHs3xb1bnBBHtwjK0YLN8z6sAgqtD5boV4LreoFYVkQT
         aQW/aiVRvpURun99vbkNXbJ2eF+WFfzKwwK3fFU6Gr/9RELP13wRpHrd1gBcSh9+j4k6
         vP8X9Hdg+OAbS7bV3KfuN0m53+zPcmTCjD/Qf7a4pdITFbIQD4oPKzlwF83BGv2+yDnl
         /wN8HAnagq73w+KgdI5S9jHGUSo4DzhitBA7OjpEaJ3iJOZmmw9a0mJkeO4h60oUSSUh
         xnkKX6WMO08E9JAL5mHEqHVkkcuNXVjBq7DyCVu10H6jEKxQzwkI+LxoWz6cvJFVWysb
         v7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729505267; x=1730110067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EBql76qWJOBLXqDBsTH119HC7QDwlYFKmnY1odQsxTU=;
        b=rs/ay+rGBPoy+5J26REPnDq/iQ2vXUGIcfmZYfLykFJv8/HyhCI10NbfbJ0vzUK0Jj
         34bxgpJ3BIjNrX1cbqxA13n1OJ2HjeMOQnf6ZfXH2+BfIxCHzE9h0280BN3CaFZVQC2I
         ZAswGz2vTaNsUxHB7ZjXWxy75mSczEq7k5mMUNZxZrd25uJcnArhqvF4vgVHvtoaHRR4
         7Sd5IDAOLboX08qhw5eXTAA/oGLYhm7p6gbS9I2cUSjyBtBWdq/rgSnmZtSroisReKt4
         raSkhfds6RN2ctoOd6OnSu8BP196A4rj+af17jHRJOvx3BRnXBRq7x3NHOn3QPi4YLey
         iEZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTPm5Cq7i50UzTnlZr7UTYg0w8PoEFV4uYT5wrd16pGv/n/OZ7clAq7KdJkcvWivjoLwwjmc1YEDr1@vger.kernel.org
X-Gm-Message-State: AOJu0YxUtiUezKb78/aLcPvU+GN/UApyP6JbwGqw5s4We0C7zp2hVGSB
	fIsWDacyefGueC7/CqS+JnQLc4oPi+WJvDguAqvmZNdwWSwnOVD04eH4v4WYHHk=
X-Google-Smtp-Source: AGHT+IEq7dO7gIDeubgjOK5nBjj3N26LiS79UsNXDGMVSWLjEXQrVDIOmL3jcj587GAFbmPX3U5X5g==
X-Received: by 2002:a05:600c:45c3:b0:42f:8515:e490 with SMTP id 5b1f17b1804b1-4316161f58bmr98151325e9.5.1729505266808;
        Mon, 21 Oct 2024 03:07:46 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57fc17sm51394775e9.15.2024.10.21.03.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:07:45 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	sylv@sylv.io,
	linux-hwmon@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>
Subject: [PATCH v2] dt-bindings: hwmon: pmbus: Add bindings for Vicor pli1209bc
Date: Mon, 21 Oct 2024 14:44:29 +0530
Message-ID: <20241021091430.3489816-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove vicor,pli1209bc from trivial-devices as it requires additional
properties and does not fit into the trivial devices category.

Add new bindings for Vicor pli1209bc, a Digital Supervisor with
Isolation for use with BCM Bus Converter Modules.

VR rails are defined under regulator node as expected by pmbus driver.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
Changes in V2:
- Squash the two patch in patch into one.
- Update commit message.
---
 .../bindings/hwmon/pmbus/vicor,pli1209bc.yaml | 62 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 62 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml
new file mode 100644
index 000000000000..026a835da58e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/pmbus/vicor,pli1209bc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Vicor PLI1209BC Power Regulator
+
+maintainers:
+  - Marcello Sylvester Bauer <sylv@sylv.io>
+  - Naresh Solanki <naresh.solanki@9elements.com>
+
+description:
+  The Vicor PLI1209BC is a Digital Supervisor with Isolation for use
+  with BCM Bus Converter Modules.
+
+properties:
+  compatible:
+    enum:
+      - vicor,pli1209bc
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description:
+      List of regulators provided by this controller.
+
+    properties:
+      vout2:
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+        unevaluatedProperties: false
+
+  additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@5f {
+            compatible = "vicor,pli1209bc";
+            reg = <0x5f>;
+
+            regulators {
+                p12v_d: vout2 {
+                    regulator-name = "bcm3";
+                    regulator-boot-on;
+                };
+            };
+        };
+    };
+
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 15f89d7ecf73..00361b5cfc3c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -404,8 +404,6 @@ properties:
           - ti,tps546d24
             # I2C Touch-Screen Controller
           - ti,tsc2003
-            # Vicor Corporation Digital Supervisor
-          - vicor,pli1209bc
             # Winbond/Nuvoton H/W Monitor
           - winbond,w83793
 

base-commit: d79616b04f0e08178ceb716a5d2ef60ab723d532
-- 
2.42.0


