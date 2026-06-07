Return-Path: <devicetree+bounces-307832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F0z8CJx/JWoPIwIAu9opvQ
	(envelope-from <devicetree+bounces-307832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 16:26:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2AC650C1B
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 16:26:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="ZtPLlaP/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307832-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307832-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AD57530054EE
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 14:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF933AD516;
	Sun,  7 Jun 2026 14:26:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A793ACEF8
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 14:26:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780842381; cv=none; b=RdtMm+o7emIT1ePq55OhcoYVm2w+BmRsRRCUH4oOQVDOFBIBpikKdw2o465JHyvWMYfRFpMgj3BbnijMl1dpLQAJCHGbsn4a+HO+PF7YH1MoYihrPBhwj+Wr2uOX+GzjsIvqoU91ongGsD4PWAxZqcL4/ojSuyZsuQdkxC+PTYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780842381; c=relaxed/simple;
	bh=aWO7lo1VCrxp4e0OOIe05AV388/XhAQ16o4vhBjJze4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Rx+2tmldioovFki85RyFQZBWfU9qfXusVKyZf7ObzNeQBRVTZVbqTtTxh1TV63nBWod5Kexyt30cWS980XH85GBRew7RWu7mmKXjIucbFGCBEHKpCW75utkax3nFtfmzthiV659R2sda9sn+Kq3ouAgfjithnr8UZaCTkF8DQEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZtPLlaP/; arc=none smtp.client-ip=209.85.210.182
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8423f1d8902so1344570b3a.1
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 07:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780842379; x=1781447179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TOt3pIWozTfZwLeJQGzymVybkj+66+ALwgUGSnDgoQ4=;
        b=ZtPLlaP/eIzjOSpRkOH7uOkcuknUf4Ll2jQZe0om9yO3OoJzQwipWQlCIyREWriH9u
         JqMoooJkY73lLSpgtZZza6uPP4ebKFW39HfHP0TDsKzS8s0IiS5S2bUH9gI8uVZydqPD
         /gI8rusDWD2Xn63dhSC12EYzR7y4FmiDLE7Fxwdd+xPZbRJbgAj7UY1oKsQU+9Dl8XwA
         FAxabksVEGHwqt2NzGoad7JVGFWeFHePsJWgEsh/BFH4nJYR/KoQ/DETk4LypX6e9f4x
         du3EouWCo6t+y4tJPUhMm8Ch3MOaYm9A3LanIuQq0rpO2AYwDgp+jWyrWx9wM/4XUqE8
         O8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780842379; x=1781447179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TOt3pIWozTfZwLeJQGzymVybkj+66+ALwgUGSnDgoQ4=;
        b=Q5MHd5zpx3BnKJ2JFcxaMbajj1pfbe4rl9s15LW+CU0jQogOFjTRAqxOkT+7vZMOqL
         B9WSzdOhNHKziaYXZ/kQJw3VuutjBUNdqBswLF79AY5yo8zC+7vZUOBNKlfqazJrVRX6
         tRBB+oqgAve1bsi8nawq6n2V7j4vbVGzW2QtGSXzJ2dlR33q+zqG/m21FVqXwW7f+edy
         yoKAHed73Lfi63vipDcfR5ivQrOP6wmQqBjol24CfMxR4d/i0Tj1V17PXr0WjkhBz/py
         +3cMuuSVLv0k4pGuxO9xEffnEBjn8WAV/syGULtAEYKC8Yr9KptzpFViN+bjqpXkihM3
         L/Uw==
X-Forwarded-Encrypted: i=1; AFNElJ9aHqSbUg4bYhX4Zqyw/ZaIwWn4FDx+Gp0fHnPECDAz1Z47QZMZ2I+dDpJ5d8zNRkJOQ5ibOAhr0OXq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8T66A7rRSjb2Cv0Iw8oa5J+1x0wOszcIUs6X/LZknmSTcPH/N
	kAyBsx4YYCpiHriYmZB3gsMEcT2eWSkSqv3DLHCZVlwWBWmdHJupPUfw
X-Gm-Gg: Acq92OG9XbhaYg4ZmD/3awz2YCERKtMisKgYbc5NWi0mUFYFUCtXp9gd8x7R/lrKQzD
	4w9uZW8i3/VP21bY2O/1LCLONJ8vdkK8JNgzuw4T7fBEIxhniGppdXE9u9CQFQTSJvUbMH5xEft
	nCrNIWX6FixmIq5XuZHNKlztXaR7KNaEn9K11au2OE2UMhCFXO+BpgtHfc5eI0dtfANhprglOZ/
	8vAE1yJK8Oyy5u4cA95CsZsHEFp8fFnHpnRSdPBxfSYIVTRE4ddKr5ThsXoOB+w0ts5/Yf/MsH/
	XpnfwCPGVnDB0QtjyY31jwZPyjGPZkep6DGkjMurzQVX90zAw3UdaaI/Geq0fZyDhXfBqHfn5By
	HBubF03Rcpnqw+jUWu+r2DGAdeS+ssV4qoWnDXpikexUH5LOscZDjj5XvLi+TgueOUPrvSYFA2I
	pGGoyWgwS89yR+7gFQY3n4Ne/a/YzZzovmVQ0vnSDVPqNNNNsLvOIi90nL793dJm5LWSohxHIhc
	69zF7ma78ZT1tIHeeg=
X-Received: by 2002:a05:6a00:1304:b0:82f:2b0:2809 with SMTP id d2e1a72fcca58-842b0e11ae4mr12010052b3a.1.1780842379421;
        Sun, 07 Jun 2026 07:26:19 -0700 (PDT)
Received: from fedora ([103.181.54.100])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828cb2bdsm15421214b3a.41.2026.06.07.07.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 07:26:19 -0700 (PDT)
From: Ninad Naik <ninadnaik07@gmail.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	me@brighamcampbell.com,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	Ninad Naik <ninadnaik07@gmail.com>
Subject: [PATCH] spi: dt-bindings: octeon: Convert to DT schema
Date: Sun,  7 Jun 2026 19:53:56 +0530
Message-ID: <20260607142356.2844008-1-ninadnaik07@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,brighamcampbell.com,lists.linux.dev,linuxfoundation.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307832-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:ninadnaik07@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[ninadnaik07@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ninadnaik07@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD2AC650C1B

Convert octeon-3010 to DT schema

Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
---
 .../bindings/spi/cavium,octeon-3010-spi.yaml  | 67 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-octeon.txt    | 33 ---------
 2 files changed, 67 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-octeon.txt

diff --git a/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
new file mode 100644
index 000000000000..3dbbb4f3c104
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/cavium,octeon-3010-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cavium, Inc. OCTEON SoC SPI master controller
+
+description:
+  The Cavium OCTEON SPI controller is an SPI master controller found in
+  OCTEON SoCs.
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+allOf:
+  - $ref: spi-controller.yaml#
+
+properties:
+  compatible:
+    const: cavium,octeon-3010-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    / {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        intc: interrupt-controller {
+            interrupt-controller;
+            #interrupt-cells = <2>;
+        };
+
+        spi@1070000001000 {
+            compatible = "cavium,octeon-3010-spi";
+            reg = <0x10700 0x00001000 0x0 0x100>;
+            interrupt-parent = <&intc>;
+            interrupts = <0 58>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            eeprom@0 {
+                compatible = "st,m95256", "atmel,at25";
+                reg = <0>;
+                spi-max-frequency = <5000000>;
+                spi-cpha;
+                spi-cpol;
+                pagesize = <64>;
+                size = <32768>;
+                address-width = <16>;
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/spi/spi-octeon.txt b/Documentation/devicetree/bindings/spi/spi-octeon.txt
deleted file mode 100644
index 431add192342..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-octeon.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-Cavium, Inc. OCTEON SOC SPI master controller.
-
-Required properties:
-- compatible : "cavium,octeon-3010-spi"
-- reg : The register base for the controller.
-- interrupts : One interrupt, used by the controller.
-- #address-cells : <1>, as required by generic SPI binding.
-- #size-cells : <0>, also as required by generic SPI binding.
-
-Child nodes as per the generic SPI binding.
-
-Example:
-
-	spi@1070000001000 {
-		compatible = "cavium,octeon-3010-spi";
-		reg = <0x10700 0x00001000 0x0 0x100>;
-		interrupts = <0 58>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		eeprom@0 {
-			compatible = "st,m95256", "atmel,at25";
-			reg = <0>;
-			spi-max-frequency = <5000000>;
-			spi-cpha;
-			spi-cpol;
-
-			pagesize = <64>;
-			size = <32768>;
-			address-width = <16>;
-		};
-	};
-
-- 
2.54.0


