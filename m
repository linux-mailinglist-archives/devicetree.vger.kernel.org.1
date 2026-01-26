Return-Path: <devicetree+bounces-259464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPRkN2tLd2msdwEAu9opvQ
	(envelope-from <devicetree+bounces-259464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:09:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD287806
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F296C30067AA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8384532E69F;
	Mon, 26 Jan 2026 11:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d+lsPpKx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7C8255F5E
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769425769; cv=none; b=eHaRnGHEHcERM0gJUnnzjp3HlUm6FMOMqmkelixyAtNf1OGZco/nGKw2nU6p4060Q81AGkYR91OGd6mvG25K5gyDFJqVXiU8A0mRey6vwl7UlQSc63ToJe4N7vUvqCtqj+YZj5adxVjF+yn9G77+nAizfYjyGO7edVvQjW/cmzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769425769; c=relaxed/simple;
	bh=0YrxzykC/akEBLXggs+orQBnxNUASm51sxymFU+CUnU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TGBhF2xUhU6D5nNbQKkHW2/47vmjPMl1VDx/dWSErLLj9FQvLfQ7m5BNAzYkZJLQOMoWKXG7Cm/i1bcOsJx6cVMdEzOJ2IAq0UuLkoRqfJFTPp7fXuzBgTEKjLghyEjNsb+1he6Nk6vIaQfFxhcYr197QGqIkyJakbkgVDmTQeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d+lsPpKx; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81df6a302b1so3882789b3a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 03:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769425767; x=1770030567; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=67m4LZM7BNmUt9VQQdT7oliQJgO7RfphJV9m4Mf+Fmc=;
        b=d+lsPpKxdY/fUBqnQtSkvYClnsYCtrAOjs6b0X2AqhtkAtT685sblPpyJKcigkvlvW
         v0lc1VNVoqFkP5SYCceNdF9gl6DuqTRVctFftLGZkcJMxnaQrUoiFzRl1vVYZ/zjLVu/
         CSpBCguh710xv488b61xw1bPT5+J6qJMLNqIIHNAT1FHk5LM59s+1TRoBsMVJAjpuOmD
         ylQkW7amuQXECl2DTX6wx+WCoFIuAJfxzLjQIXrP9pZFgbU2xWnqjzvLsI/qfY+fnrRF
         1MateXJIpTQ235xz82WobBiR3W7GXEtERQcHWZaatN4QN0FPnRRUra1LX0nMyrvPNNZA
         BATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769425767; x=1770030567;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67m4LZM7BNmUt9VQQdT7oliQJgO7RfphJV9m4Mf+Fmc=;
        b=mo2scUErkc6D0W9el6qJdxSKSejtqNBJ/lXdSa4juekQuDC6gJvSsk9AFxfQCXxDdg
         2BEN9N4C5mR/WqSiMHsIe64f9RVzMXccgCISzqbkckDJj/HIFDbmiftkEs4WBRED8pEa
         4XIb/InnSU5N4Xmic7WFnyzv+t/8RBDzaYGJ4nGgcDZSUCzP3ZKJMUFl5ZUdK+Ce1Gt3
         38AJ5wYKa/W2vM/yY7AsyuhssANJew8DEXvP8rS6sFC8/9ze0X7PDe+o6LHsiHRQ4BE5
         j7XHMynepdQQs+LlltcOrhtadTfbExBaHwXdHBwdzc5m6IeKdcI/XNF7v1upZ1s7qUYK
         THeg==
X-Forwarded-Encrypted: i=1; AJvYcCURQYSFDBZF5rO8BjcpVZfuAihaXv4jkWgEF7ecRkKzGl4MWdcOCwH2SyEKTCtvVZIqr+BERzzTSTFC@vger.kernel.org
X-Gm-Message-State: AOJu0YwaHfq8QbNBqcgrPq23w4X7027SuJuZ4hj7PLC2sJ1OQJf0mHNI
	A5hpXKZL2hYE/9xdaz5PTtp1YJvNRCLYP1jhKDO0nJMbwT5Du0ij9xZu
X-Gm-Gg: AZuq6aISKr9K31ZGIn0+7Zjpx4I7/WzUKvXVifJrYrZCU1TxBiWHxitNLphUFMY5e6B
	6HaL/yK4f23125KPvm8Yk7tOKFTpcjYfZo1x0Pc7hSV+kdjBdi7DvuQPgr+wQqeUH7C/Nzl0v93
	/fwRplMxPaO+reTV9zDNiNH4NSK/HeGzHPW7EJkOkjlNBiaHK/MbGIcPflYjzrIvRkxOCuzO6EQ
	5IBHSgIMJx1Lw8c2sS/iW+w9UEG6z+uC5dJuqK07SFUA6JH+jQ+5GJmyemUhI+eWKotkg4KP8um
	F6FS8E3d/QZQdoeJH3rTF5lG7pAx1pKOp9uBO4OdoQOB6tqECGH6ojODWRGC6YxFyapUyIIGD5K
	Pp/lgt/21xAcVfXTyV6N3Qm+PcgnBEZuPfmjGkh6bo70nfzYw6oApTGTw1A2KDuxC0ahpJ1zyK3
	m2zB31PijsNkzpKkzByORUMeQtjl0IL3+7jHIUOMiQmWNOcr8=
X-Received: by 2002:a05:6a00:1988:b0:81f:61d2:84a7 with SMTP id d2e1a72fcca58-823412d51d0mr3824832b3a.59.1769425767323;
        Mon, 26 Jan 2026 03:09:27 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.70.239])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1682394b3a.63.2026.01.26.03.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 03:09:26 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Mon, 26 Jan 2026 11:09:20 +0000
Subject: [PATCH] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller:
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAF9Ld2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyMj3dyKzGTdvMS8FF1zEyNDC2NDI9NUA2MloPqCotS0zAqwWdGxtbU
 AG98tDlsAAAA=
X-Change-ID: 20260122-mxic-nand-742183125e03
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259464-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nod.at:email,devicetree.org:url]
X-Rspamd-Queue-Id: 43FD287806
X-Rspamd-Action: no action

Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 79 ++++++++++++++++++++++
 .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
 2 files changed, 79 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
new file mode 100644
index 000000000000..97baac8b405a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/mxic,multi-itfc-v009-nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Macronix Raw NAND Controller
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The Macronix Multi-Interface Raw NAND Controller is a versatile flash
+  memory controller for embedding in SoCs, capable of interfacing with
+  various NAND devices. It requires dedicated clock inputs for core, data
+  transmit, and delayed transmit paths along with register space and an
+  interrupt line for operation.
+
+allOf:
+  - $ref: nand-controller.yaml#
+
+properties:
+  compatible:
+    const: mxic,multi-itfc-v009-nand-controller
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: ps
+      - const: send
+      - const: send_dly
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    nand-controller@43c30000 {
+        compatible = "mxic,multi-itfc-v009-nand-controller";
+        reg = <0x43c30000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+        clock-names = "ps", "send", "send_dly";
+
+        nand@0 {
+            reg = <0>;
+            nand-ecc-mode = "soft";
+            nand-ecc-algo = "bch";
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
deleted file mode 100644
index 46c55295a3e6..000000000000
--- a/Documentation/devicetree/bindings/mtd/mxic-nand.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Macronix Raw NAND Controller Device Tree Bindings
--------------------------------------------------
-
-Required properties:
-- compatible: should be "mxic,multi-itfc-v009-nand-controller"
-- reg: should contain 1 entry for the registers
-- #address-cells: should be set to 1
-- #size-cells: should be set to 0
-- interrupts: interrupt line connected to this raw NAND controller
-- clock-names: should contain "ps", "send" and "send_dly"
-- clocks: should contain 3 phandles for the "ps", "send" and
-	 "send_dly" clocks
-
-Children nodes:
-- children nodes represent the available NAND chips.
-
-See Documentation/devicetree/bindings/mtd/nand-controller.yaml
-for more details on generic bindings.
-
-Example:
-
-	nand: nand-controller@43c30000 {
-		compatible = "mxic,multi-itfc-v009-nand-controller";
-		reg = <0x43c30000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
-		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
-		clock-names = "send", "send_dly", "ps";
-
-		nand@0 {
-			reg = <0>;
-			nand-ecc-mode = "soft";
-			nand-ecc-algo = "bch";
-		};
-	};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260122-mxic-nand-742183125e03

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


