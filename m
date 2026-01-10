Return-Path: <devicetree+bounces-253519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 186A4D0DFA6
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 00:57:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 69529300D556
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 23:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2FBC2D0C92;
	Sat, 10 Jan 2026 23:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="blh0PLkk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD46F280A29
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 23:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768089446; cv=none; b=fkhPUsRP5+FIWgtFt1I6tjYolWLXRV3a7PIdxcEdjIxbIAAkp8CFFFq3DZDDSz2jitXNOjDejYNNdXepW0nzV0st0Lyp9vnfeZuzev3MXxEVSO4Li+vR7UmyFBDLVNFW8po1byzHEP+eHPIB71f+nWw4yyjWMxfxu25Ez990bks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768089446; c=relaxed/simple;
	bh=6d0jbGJAU8YqJ1gNkbevY7vBxa94V26EUK+0BIqPUmo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pM1Amj7CniLye7LUmBnZDrrErjjhiCIlIgPaYB+7MEv3viz/9ylLGQjYnTNRgLHI2DS/d2QVtxmcqKzcsgygI7rj4HJjIAdK9dPVzxuofls1crJ3eM4MhmeVMonVX2/bGWDKfSlFUv6D1lvGaHthUvVijhdfLPoLu6P3bYQUIRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=blh0PLkk; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64b9dfc146fso4312249a12.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 15:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768089441; x=1768694241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gpJJOa9t1wBvlVJkNJ/5YNn0WHt1DhBf0e1N6PffLYI=;
        b=blh0PLkkftE8QP6q7KVkkHSbROckTkfi+0yBPSqs1Pe714b9CW7w5bBUCe3+6xgbGj
         wN8CPy3BXbIDPqTkATMXglD/iBKMebVZh7Z38p55SKk+a1HruxD71qYbYhQ2pBWpRcN9
         plQZ+tAPyy3df9cWIYxwVRIEXv2N7EQyCBUT9hWThuttzVmiGxmC+TaH7Nt2KKQGYD5m
         g8p0Wgz9wnEDKQVt3aeac0E+C6JBCDvv8IBg7kcT7K+DZL3c43c6qJjdbk3usWoEmJDc
         3W8w/2Px8IljIlFE6mbvSsAIA5rVFKJ5sEHNux5TYuJNJ8EwvM+bwFDqTBV6rq1sYMsm
         ORJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768089441; x=1768694241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpJJOa9t1wBvlVJkNJ/5YNn0WHt1DhBf0e1N6PffLYI=;
        b=GKSCLSbB+oSemZ5PgxNI0fvWdv0vu1fQ+Nc6yqZiIUnHEq3KB3udhSUyc/Z3gvv2JZ
         RQrDuOQ54rHprG9WFcKg4JsSzsIhq8mrqX8wgT4XqoUAm05xnzHT0ATjjYZ+W/eygNVt
         lRvjyhYuuXRRy+TRTHcFa3SoosuN4BeLSVGBl7ep8vB2ba2ZrB9ido6ws5YqTmnEQ0+j
         rkWUFq1ev02TehgjWzcvEJLQOm93QSZcBj+huK87goCuQ5uTwwHzbTZ9wYvcFKFzKIQj
         ZNmVlq7Bo13jW/bqES1MtSGcPwM/fBK7Crgl/g3MLi7yeON6lXwwEC6R+jEaVFSbEdG/
         2/qA==
X-Forwarded-Encrypted: i=1; AJvYcCWHxn6s+/6psLMil8MtoJMnY2l27CzFkzGV0lHsxcF35i58gFXgl/xckeJoZkop7AkUrbJ/Ck0sdPlo@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu5TQX5S5hd04mTDrq4VdDYf5bZY9JsQFerGrEfbUa2eza2nbk
	qsDOV9h5MyfA/w2TX8keYObRe/1p0F5GcXSUbz5Zhx0jh4uVzvam8KuP
X-Gm-Gg: AY/fxX7y/oqrrj1xHCf5uxwUtTTvHwrxZBbNE/GsLuhe9lKNzfRDLChaIK87eovISL1
	f7D0tBmlwZQY2U8wbO536gB+SfmVVt4TOoJy3ZM0pjTg5bOBawdCq5/j6BYmrxCd3PlBqUS7Vxg
	MjA4/4w4E8M0rO3niYfDMuGfAMdjLY4nF6gyT+oNcIgANbbgjk1AhLlSoVCo43ACWTAIF2x7sUN
	pn19CyLzwZ+VtQ4qUklLUjdL6IT5L1m3mQBJ89TFLZwpAucQnvhKiqadHuMkluqWe/HjdcqqgIK
	iQW/x2CILfPCHhtxMeL5ZqDCRyznTB2FWJi13+qR4ZQ6CLuyhlgW4JtVFQnmr3v21z8q42Eahr/
	bdHlsyBiO0P9IgA61xN+OcTwv/HN39KTzL3iURhLAfVhfQOl3ITZ7x5O1RaN2LW8l+x5HHb29dC
	lJcPfOZUbXlznwwsh7mxTNsnDRhXmuYPaYVADtx4DpPeuz5B8Me13WFHNu2NriNvt6UV2LCEHVp
	8Ow+9ymocL1fWxTYxx5W9yihrfh9M7qfOylwt8cUw==
X-Google-Smtp-Source: AGHT+IHgGIkPHOw9/av7xXAs6nVP8o+aqKdZVjmSF3d9NRRkl/SPH1wJAmtrOHvxDrSGi5Wp7GJd3A==
X-Received: by 2002:a05:6402:3551:b0:647:94e1:800f with SMTP id 4fb4d7f45d1cf-65097b99f05mr14840498a12.8.1768089440875;
        Sat, 10 Jan 2026 15:57:20 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-af95-6f00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:af95:6f00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm13701228a12.33.2026.01.10.15.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 15:57:20 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH net-next v1] dt-bindings: net: Convert icplus-ip101ag to yaml format
Date: Sun, 11 Jan 2026 00:55:44 +0100
Message-ID: <20260110235544.1593197-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This allows for better validation of .dts.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/net/icplus,ip101ag.yaml          | 75 +++++++++++++++++++
 .../bindings/net/icplus-ip101ag.txt           | 19 -----
 2 files changed, 75 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/icplus,ip101ag.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/icplus-ip101ag.txt

diff --git a/Documentation/devicetree/bindings/net/icplus,ip101ag.yaml b/Documentation/devicetree/bindings/net/icplus,ip101ag.yaml
new file mode 100644
index 000000000000..f245516103b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/icplus,ip101ag.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/icplus,ip101ag.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: IC Plus Corp. IP101A / IP101G Ethernet PHYs
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Florian Fainelli <f.fainelli@gmail.com>
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+description: |
+  Bindings for IC Plus Corp. IP101A / IP101G Ethernet MII/RMII PHYs
+
+  There are different models of the IP101G Ethernet PHY:
+  - IP101GR (32-pin QFN package)
+  - IP101G (die only, no package)
+  - IP101GA (48-pin LQFP package)
+
+  There are different models of the IP101A Ethernet PHY (which is the
+  predecessor of the IP101G):
+  - IP101A (48-pin LQFP package)
+  - IP101AH (48-pin LQFP package)
+
+  All of them share the same PHY ID.
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+properties:
+  compatible:
+    contains:
+      enum:
+        - ethernet-phy-id0243.0c54
+
+  icplus,select-rx-error:
+    type: boolean
+    description: |
+      Pin 21 ("RXER/INTR_32") will output the receive error status.
+      Interrupts are not routed outside the PHY in this mode.
+
+      This is only supported for IP101GR (32-pin QFN package).
+
+  icplus,select-interrupt:
+    type: boolean
+    description: |
+      Pin 21 ("RXER/INTR_32") will output the interrupt signal.
+
+      This is only supported for IP101GR (32-pin QFN package).
+
+# RXER and INTR_32 functions are mutually exclusive
+dependentSchemas:
+  icplus,select-rx-error:
+    properties:
+      icplus,select-interrupt: false
+  icplus,select-interrupt:
+    properties:
+      icplus,select-rx-error: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethphy1: ethernet-phy@1 {
+                compatible = "ethernet-phy-id0243.0c54";
+                reg = <1>;
+                icplus,select-interrupt;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/icplus-ip101ag.txt b/Documentation/devicetree/bindings/net/icplus-ip101ag.txt
deleted file mode 100644
index a784592bbb15..000000000000
--- a/Documentation/devicetree/bindings/net/icplus-ip101ag.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-IC Plus Corp. IP101A / IP101G Ethernet PHYs
-
-There are different models of the IP101G Ethernet PHY:
-- IP101GR (32-pin QFN package)
-- IP101G (die only, no package)
-- IP101GA (48-pin LQFP package)
-
-There are different models of the IP101A Ethernet PHY (which is the
-predecessor of the IP101G):
-- IP101A (48-pin LQFP package)
-- IP101AH (48-pin LQFP package)
-
-Optional properties for the IP101GR (32-pin QFN package):
-
-- icplus,select-rx-error:
-  pin 21 ("RXER/INTR_32") will output the receive error status.
-  interrupts are not routed outside the PHY in this mode.
-- icplus,select-interrupt:
-  pin 21 ("RXER/INTR_32") will output the interrupt signal.
-- 
2.52.0


