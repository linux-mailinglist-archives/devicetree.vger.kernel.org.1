Return-Path: <devicetree+bounces-313586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SSorMwMzNGoaRQYAu9opvQ
	(envelope-from <devicetree+bounces-313586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:03:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9EF6A209D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:03:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AJfdFTfP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313586-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313586-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33AC6302B779
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EDB834C981;
	Thu, 18 Jun 2026 18:03:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84B8342C93
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 18:03:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781805811; cv=none; b=bfi0VyF3Juga5Ok9SmnqUex7MNXUzT2Jk8XYU12jr09wLhm/bGmGuliRSBkmoazZqZjzPWNtkQa4XCd7cq3pKSPP17uA4Xbj2UgUvbTKhLqzyPwq/hMY6DmnF/g0AWdUi0C7iCKbovgOk8Tz2MGcJrM2yBa1JYUFdIhsSaP4QaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781805811; c=relaxed/simple;
	bh=oGC7L5TtVt/RanN5pjTzlERB2K6nlzG3KqEBZucZ1/M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k1epjQDxbGrMTtUAiEggyTZpZ4CXmlwLt2pDmQc28BrNumNX6RT35xJfctR0jKhy/VLYLShIKM6yJSCDElPxICqRk1ES18fzLqVtOjPJ0mw1pDepVSmA4pca7RFnn+NiAU1no8/hmtEk7e+MP6OHWJWZpg16mpMVqUJglRO0690=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AJfdFTfP; arc=none smtp.client-ip=209.85.214.178
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2c6d3851e09so7685065ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 11:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781805808; x=1782410608; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=grMDKhiWxgS01CbGWcoqJuDZbxUtQgSQcTHTndsyXt4=;
        b=AJfdFTfPwWtd+G/9mPnqx91Dngwnte5ne1crVfz5tTeRPBek3jxgFIQvRlbbxIpvy3
         NiBr8+XhstASGwA7iHGTVTjwjVb3NRy3/H4cXUTksEdSlZhZWMRvtlXDjm1cAtAUh2FO
         kXUmdZNtxc2y44QbwwnKNhnLX4X1AI1NqfWro2P1YOz+6HAVPopDmdVinpgh20rjnecE
         66rdAW7nqSzFF4nEJU7QjeDvvkVy4yeFnfHakq1M6gI1SGOWJyRjwWUwKT73yYD9AE1J
         9kRJxfda5Woe893NdJg1msygIt4QyM3rgopwvEfUREQdUjKIg9DAUYOc/tnqRlY/2d0H
         QIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781805808; x=1782410608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grMDKhiWxgS01CbGWcoqJuDZbxUtQgSQcTHTndsyXt4=;
        b=hsWCxMPFFKuSBBY47OZbxRPKZM76jPtNEo3LZ5DYD6k4h8/YfDK0PQ7eZatUVPTMC7
         XE7ZlmSNXpj+WeRdKHs7bNC140fbYE/s24OZlmNZ4QwMYigCI25Zeqqa9kHSdxPDd/4I
         eDliuH1VZfdy+7o/oOTUY7S7CmizpgeeWou4vHHnfnkfJ0zsJHT9vips3/dJZTF2sCGZ
         ww+RktudwHKt0oj7dyIvDGFO/VO7drFHadmGeDXD8BczGfk8+qCM160L7GC90V/52vsG
         oKKKns5WVoKhvOG2t64I7RSskjzyi0YI3vAXLPW2LFtedxrjqpxuMvclbQwj0bmo6+FY
         WnQw==
X-Forwarded-Encrypted: i=1; AFNElJ8dRVOzmyhqQFewOQnjpsrQqeK70qMIbIScHcHxD6abqe5zbcAoH1l2roZb825WEDofdJ/GnmCCrQKI@vger.kernel.org
X-Gm-Message-State: AOJu0YwtGjE31ra2b6UYKaKuM6fLoEDQ+LEGyX7krCv+ESOcs+WiG8Uq
	uwL7SZj6RhfP3rjUBaZqFIhIv8uhxyhahflPcki7+YDY2OeKKMmAX+qp
X-Gm-Gg: AfdE7ckWSuaLEThLhiRuFOonbxxI7AuvNuv+JciYsftZPBhzlU8mEG7p9pBBdtOZ3Wr
	808BfQFGgr8h/TcDrvh8rxPFALX/YtW/sNFA84qp7x2bZbM+solXljEpbNXEbOfNOtlsOeRvT39
	/LQ2OrFEwmPsQ4JEf7D22iMdx7SOzRedpt9Ws0lKAl6ooXyewCkr+yc49/MVbISgpGyfLTPkM71
	uzaN/bG44yOtfOtRWVINUQhwv8h//eWNwlkrHkpwF0devCjnsmIfsvqEzlTrwt2Doe3QOXYs9EN
	nTvFYoc+fiqTk7/Nluuqtrdang1hrJuWjzmN4EADwJUHwh5/qDVRD8OYfk44jtQYXLmEsMJ4PeW
	FV8sLbBrC/fa44tesZBYRNpILAt9fOviu3C1VYCnMHYZEe9gtQT+T65qlmPTYg58GwT4Q3ebZyK
	/kTcH27WimVEyTyp+dL+HA/zUZigaJpJaWSfOSKqSRoSQUNEYojxvu6AZsoUxjekHoxFWNzg==
X-Received: by 2002:a17:902:ecc1:b0:2b0:608d:d8a8 with SMTP id d9443c01a7336-2c718cc4b81mr2759425ad.1.1781805808229;
        Thu, 18 Jun 2026 11:03:28 -0700 (PDT)
Received: from fedora ([103.181.54.100])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c6be262b93sm64348865ad.68.2026.06.18.11.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 11:03:27 -0700 (PDT)
From: Ninad Naik <ninadnaik07@gmail.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	david.daney@cavium.com
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	me@brighamcampbell.com,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	Ninad Naik <ninadnaik07@gmail.com>
Subject: [PATCH v3] spi: dt-bindings: octeon: Convert to DT schema
Date: Thu, 18 Jun 2026 23:31:49 +0530
Message-ID: <20260618180149.475658-1-ninadnaik07@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313586-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ninadnaik07@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,brighamcampbell.com,lists.linux.dev,linuxfoundation.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:david.daney@cavium.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:ninadnaik07@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ninadnaik07@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E9EF6A209D

Convert octeon-3010 to DT schema

Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
---
Changes in v3:
- Change the maintainer from David Daney to Rob Herring

Changes in v2:
- Change the maintainer from Mark Brown to David Daney.
- Use soc node wrapper instead of root node in the example to handle
address-cells and size-cells requirements.
- Remove interrupt controller provider from the example.

 .../bindings/spi/cavium,octeon-3010-spi.yaml  | 61 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-octeon.txt    | 33 ----------
 2 files changed, 61 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-octeon.txt

diff --git a/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
new file mode 100644
index 000000000000..f0b708e1ccbb
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
@@ -0,0 +1,61 @@
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
+  - Rob Herring <robh@kernel.org>
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
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        spi@1070000001000 {
+            compatible = "cavium,octeon-3010-spi";
+            reg = <0x10700 0x00001000 0x0 0x100>;
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


