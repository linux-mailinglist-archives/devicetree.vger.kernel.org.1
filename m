Return-Path: <devicetree+bounces-275774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CA0ANgZotmmUBQEAu9opvQ
	(envelope-from <devicetree+bounces-275774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 09:04:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFDC290317
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 09:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0DD53019803
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 08:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284861DDC35;
	Sun, 15 Mar 2026 08:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTzzV6UZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82F235BE2
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 08:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773561857; cv=none; b=OBZbM41caYNjpAyJFam4u2JQot2Ir3NYYV23DYnoX5bHQbX7e4rIAPtcYKPtFOpyZmlL9JWmXiwdaA6ae8PuzbnB+Z3Q87WQ9Y5OgtIdIKaAIt6ivgPYgk9CLZnay8QjXgTO4e7ugh+kw7KgJB1pd2tdN69jJllIXM/i1hTlw90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773561857; c=relaxed/simple;
	bh=6KwNhmgeCKiocaC9b9yCFWn6G6bRsoBv8F63YaRtp1A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=i+EIMCG8RnOI3oqVEXyg6NcOcj3v52fksD4cJJ2vt/3+I0IUE30Kohi4cOVO6Y65nHKpnRjB+yNRV8bDqniHJZFvzxTGKKV2uYcI0Ah9gbdnxzCLxzmZqyBRp4vvpqtZuV3p9Eev66BJQ5PtUp8U2ms0N778Ku937aNFPB22GoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTzzV6UZ; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-829865a8471so3355431b3a.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 01:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773561855; x=1774166655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wf6goollPih6Cu3uZylPqikmMqgPzaiiJbbJOnW8VAU=;
        b=UTzzV6UZmMDXV/IpDATEUvjtpXqJupmUS59G/XIAru0wkCS3CBaa/RFjWYbUiFBrNp
         w7VKkCuhBz3BrONRE/QoogUUxm9Ns3modm0M92o3wpJBiH6OkLP+rhmrEoWBRcQr5mRH
         lWLKCwzdL9XK4/QWTx5zuI0Q8CTT5mpfDpWY/qVJcV6r4rBSWrESNKwTf5xXTu3zw2r2
         LyitB+IhKiU/ys7brGlesR96DNz8qYGoGeK5xO+zmLTqfKJGhb0kCbF9IQQoe1WT/5Cf
         SHiMj6NyhEAqwEgkr9/5O2Uj94lKSubRWBrLAnVHX+pNKvfQ/mSgxO4vzrCiNrJeSrIZ
         ikCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773561855; x=1774166655;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wf6goollPih6Cu3uZylPqikmMqgPzaiiJbbJOnW8VAU=;
        b=mZr0TTQ40To7R1jcirabTqNh+3M54pPnnQd+nbt4pdpsj7JrXl86VqCfBIsER5bx3Y
         XErqZQ/kt/yQU6nKgx9cJGH+wjtvhfTBLreeIwYmbevWpnhXHhb4d9M7jr2DGVM4uXsW
         WJI1naEj9yucbXxRWYwQUdRjmpJrL4r9bj6d9bcsQZwm23LG4c26bsew0ex81z+NgGwK
         JiIXz09uCuMiYtfjSLGSyxpbkkAXlI1PU7wHdBf1miOEQAqBa8M3FhU5NCEunh3t2j8a
         d2+tdwbwu1ClGBP1Jjt8zyDdizD5KrFXZgz80OCBOdYha0uhRHYbOt/UGFj8ZhjZFH8Q
         GhXw==
X-Gm-Message-State: AOJu0YxCMbSYUV9isn7DZIqsbAOBc/5Lqi2iW/TJ/ulJACVArzV13ZjI
	uQzhrcpW2pAGGyrQzoi/zi5g1hhxBRAgCuEn1eQMx+mfqhgo7BimStR4
X-Gm-Gg: ATEYQzwzr7AJ4R9/99hBlsWdNC4OJgXos4o3K59thacrAa+6xOgoX2sjnC4d5ocqCYF
	lADyXyJEGZ5wEjFL7t7bVWd1w7wXh1BkayAIetBO7/K/T2ZOCl2j2qGqVUxWDyH82MWY0N3BbNG
	uMGF17KEx1971y8shtzg54m+miXoTJgzw++/mGSMuxaYUKGTC2OgJno/rQdZaWplTQFnAgzJehb
	xCJ1xIYqUK2/Yk/WnUvYK5TLyH5SFHPSy1UF7p7Ni86IhA2gh1YGKfAXXF+Qk1ZrG8FQlXZYm8N
	DOgd+x+uo04x6Sw0S/84yJ2AxzOxK9IRknKIpoGojP0yaCn+6CQFb/C9wuXA9fUFxq0S7AcrePx
	tUWFiCSNSSd/kvxZO7i+umwdrlL8IUWhbZnyagJ+7XzoO+wcekKFe4Frvx0K+LNtSvmgxeFGtgf
	rcRkoZR/wumtUSK6fFAOUaQ2epuwqZ
X-Received: by 2002:a05:6a00:14d6:b0:829:86aa:e168 with SMTP id d2e1a72fcca58-82a196f5362mr9430113b3a.8.1773561855385;
        Sun, 15 Mar 2026 01:04:15 -0700 (PDT)
Received: from Ultimate.. ([2402:e280:3e2c:6f1:1921:d86d:a0b5:a474])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07370353sm12651011b3a.51.2026.03.15.01.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 01:04:14 -0700 (PDT)
From: Udaya Kiran Challa <challauday369@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org,
	Udaya Kiran Challa <challauday369@gmail.com>
Subject: [PATCH] dt-bindings: arm: mediatek: mediatek,g3dsys: Convert to DT schema
Date: Sun, 15 Mar 2026 13:33:02 +0530
Message-Id: <20260315080302.454233-1-challauday369@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linuxfoundation.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275774-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.198.93.64:email]
X-Rspamd-Queue-Id: 4EFDC290317
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the MediaTek G3D system controller devicetree binding
from the legacy text format to DT schema.

Signed-off-by: Udaya Kiran Challa <challauday369@gmail.com>
---
 .../bindings/arm/mediatek/mediatek,g3dsys.txt | 30 ---------
 .../arm/mediatek/mediatek,g3dsys.yaml         | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.txt
deleted file mode 100644
index 7de43bf41fdc..000000000000
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-MediaTek g3dsys controller
-============================
-
-The MediaTek g3dsys controller provides various clocks and reset controller to
-the GPU.
-
-Required Properties:
-
-- compatible: Should be:
-	- "mediatek,mt2701-g3dsys", "syscon":
-		for MT2701 SoC
-	- "mediatek,mt7623-g3dsys", "mediatek,mt2701-g3dsys", "syscon":
-		for MT7623 SoC
-- #clock-cells: Must be 1
-- #reset-cells: Must be 1
-
-The g3dsys controller uses the common clk binding from
-Documentation/devicetree/bindings/clock/clock-bindings.txt
-The available clocks are defined in dt-bindings/clock/mt*-clk.h.
-
-Example:
-
-g3dsys: clock-controller@13000000 {
-	compatible = "mediatek,mt7623-g3dsys",
-		     "mediatek,mt2701-g3dsys",
-		     "syscon";
-	reg = <0 0x13000000 0 0x200>;
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml
new file mode 100644
index 000000000000..0bf672bd6e5c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,g3dsys.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mediatek/mediatek,g3dsys.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek G3D System Controller
+
+maintainers:
+  - Sean Wang <sean.wang@mediatek.com>
+  - Ryder Lee <ryder.lee@mediatek.com>
+
+description: |
+  The MediaTek G3D system controller provides clocks and reset control
+  for the GPU subsystem on MediaTek SoCs.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: mediatek,mt2701-g3dsys
+          - const: syscon
+      - items:
+          - const: mediatek,mt7623-g3dsys
+          - const: mediatek,mt2701-g3dsys
+          - const: syscon
+
+  reg:
+    maxItems: 1
+    description: Base address and length of the G3DSYS register region
+
+  "#clock-cells":
+    const: 1
+    description: Number of cells in a clock specifier
+
+  "#reset-cells":
+    const: 1
+    description: Number of cells in a reset specifier
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+     soc {
+       #address-cells = <2>;
+       #size-cells = <2>;
+       g3dsys: syscon@13000000 {
+         compatible = "mediatek,mt7623-g3dsys",
+                      "mediatek,mt2701-g3dsys",
+                      "syscon";
+         reg = <0 0x13000000 0 0x200>;
+         #clock-cells = <1>;
+         #reset-cells = <1>;
+       };
+     };
-- 
2.34.1


