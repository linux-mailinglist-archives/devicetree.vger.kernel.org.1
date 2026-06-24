Return-Path: <devicetree+bounces-315041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nn0WAJZ1O2rcYAgAu9opvQ
	(envelope-from <devicetree+bounces-315041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:13:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4905F6BBB2C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:13:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Qd3FhYL9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315041-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315041-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE6363016515
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D6E385D6A;
	Wed, 24 Jun 2026 06:13:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408FB3815CB
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:13:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782281619; cv=none; b=Rflt0E+zli/xvfBTRew10u3R4/vACkaVNUYFAn5lXyBwD6vHxL90zuoXigdn6UgPhnW2mAZr1K78HWfLNQ0lRwwHNzLBmPiTVX+aF9jS3j2mUvqqLTjFb/zcSXAxDloAyEufRYoIbWWJ5stzzKxbkFyXzqUxyJQ1AyDUpl55W5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782281619; c=relaxed/simple;
	bh=j+d4xrnJaVFkzypOS1j/scfN+uggwAM1LR+uNFYvsbI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iGqepDxegQ7vszFA5gRK4ea0iRD405dyOatX6aLropukRgUau5Y5IAXLjGGBG4fRzXjkYcaHwAHI+4hc2O2NlVlZo/YzWqONw9Kwrf5xJVtPtkncIPnMVxpWPVhr5loQ3uCxxinILBuH4M9mlw681lXQAaUxTSxpFn2cTea7dQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qd3FhYL9; arc=none smtp.client-ip=209.85.214.182
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2c6ec0af575so3235505ad.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 23:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782281617; x=1782886417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jV9/q9Pny0iZFgzb8Zwu+6SPPjjVLms6uiZrPqFj04c=;
        b=Qd3FhYL945iCYe0TtY66Op8TdPXjti/KrVlvw+FJAYTB3FRmo8adoXet3xVvXfIp/5
         WWTHtWU8Ij2uDnD3XMq1dm3aq70kcw6CgM7uz2AO9bkK3DzZ/fBDuHRD3yVs995AR91Q
         w6XU0m9tM9hof+mjMt+4bbnmHa4NX77fJGKWBao8tqJfPxfxn5KKPtLkJApxA15JfgHF
         ONZSvzKHCUOtUNPqbyATICtNeVsKNCLYbmKfPRNUlXmGMBXz9baxCoCM9NpdxKxMxzkN
         nbW0FEVrXqrl1DjqmbHYYuekOalIJ0SP5RiuN2cyhhUyof7vkEhlKTKSIJ0RK637DAbo
         S+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782281617; x=1782886417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jV9/q9Pny0iZFgzb8Zwu+6SPPjjVLms6uiZrPqFj04c=;
        b=OBQxNGTUpiEnP3njZIy3kzocFYmcrHlx4YoUHQRY2Zy62WvP90olBx0WIxxrcMlBsr
         Nju5weoSfZ2HJtA7fUNi9+qrOgADrXkyIjIwFtEolpLlXBz/N/dxR98zfxmF6ItxLWAd
         p1rxWqCbdcqv4uPb7FPCwJQL/y+T/mYrWdGli1Sc05++7OiTE1g+l0fGatjiUzQRzV8f
         ryO18uXp1CIQOeSyTZLIgYcCBfqVr7LiKE7rgiroy1YLjol3zW9SMXL4Mp65/XHOkOIe
         ycYKQisp3HhKtSLAJaag02eKm3IzBJgs6TFFi9u0TBBfKQuitbUAW2b6I7OoF4bqVCDT
         t/Bg==
X-Forwarded-Encrypted: i=1; AHgh+Rrur9Voh1W1bvdwoI9hwyqEE6fmShCQy9LzWXVzUJsNg1JZHc8KOv2DLVrVs/4IuR1Mf3bAMCJU6L1m@vger.kernel.org
X-Gm-Message-State: AOJu0YwJDeeaQUMT/gl9CFGn5S4PvwULz+ZyXp8aLCNFyaK8OaJUNLe5
	k/ymteyasrCbyiTzbW1B1NmyznQPz5oDES8aGAB68pdTwhinoP1ah+Nj
X-Gm-Gg: AfdE7cnDk84xHTix+qaCsUINSQAFamB9AVkuZruHV1TN5c1EmqqtIPXiLol3vmOvnVq
	567Fq/IcVLPBW5aa313oKRDjhvkgdQ+q2s4OgbbvQwojBJ1gI+sLfrVkr4vNHRnz/AXYzOJHXY4
	dbzvuNurb4ZvbBwOMIdz8Q2RVO5+lHHf8gwMJpGeOHj9x6wCJC0+sqkvV3+f7hgWdEVmr39WVeu
	ZJCUS6YdQUSjZWeSc9vP4sEKss1H1awuZYIeXIZ3aihlUGlo6g65aAjAHaA57xdY7uRawvsNIIU
	aAVDNfYFNoCSpmYrqbZTFjxeQ3UCqB7l8EJwvyvwcQCUkf+hjpu9eSEV6QNkYTz3RuiI2EddrUm
	x59kNVeUdMAp46GTyvVIi81GLfqKSl4SRrvVxBeEbo2dLlDiCT7HXFipS7kTeF3lvksCvZ1iYFr
	spWrFPHhSl5a95ZLkax6Vz2gmG4F4kmNk=
X-Received: by 2002:a17:903:1b2e:b0:2c0:a3dd:4e76 with SMTP id d9443c01a7336-2c7e151c2f3mr23997485ad.28.1782281617419;
        Tue, 23 Jun 2026 23:13:37 -0700 (PDT)
Received: from inhnjlux1020.ls.ege.ds ([103.28.245.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c74469913esm124643625ad.82.2026.06.23.23.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 23:13:36 -0700 (PDT)
From: Udaya Kiran Challa <challauday369@gmail.com>
To: tsbogend@alpha.franken.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Udaya Kiran Challa <challauday369@gmail.com>
Subject: [PATCH] spi: dt-bindings: microchip,pic32mzda-sqi: Convert to DT schema
Date: Wed, 24 Jun 2026 11:43:29 +0530
Message-Id: <20260624061329.130468-1-challauday369@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315041-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tsbogend@alpha.franken.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:skhan@linuxfoundation.org,m:me@brighamcampbell.com,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:challauday369@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,franken.de:email,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4905F6BBB2C

Convert Microchip PIC32 Quad SPI controller devicetree binding
from legacy text format to DT schema.

Signed-off-by: Udaya Kiran Challa <challauday369@gmail.com>
---
 .../bindings/spi/microchip,pic32mzda-sqi.yaml | 53 +++++++++++++++++++
 .../devicetree/bindings/spi/sqi-pic32.txt     | 18 -------
 2 files changed, 53 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/microchip,pic32mzda-sqi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/sqi-pic32.txt

diff --git a/Documentation/devicetree/bindings/spi/microchip,pic32mzda-sqi.yaml b/Documentation/devicetree/bindings/spi/microchip,pic32mzda-sqi.yaml
new file mode 100644
index 000000000000..39f06b61e894
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/microchip,pic32mzda-sqi.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/microchip,pic32mzda-sqi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIC32MZDA Quad SPI controller
+
+maintainers:
+  - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
+
+allOf:
+  - $ref: spi-controller.yaml#
+
+properties:
+  compatible:
+    const: microchip,pic32mzda-sqi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: spi_ck
+      - const: reg_ck
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/microchip,pic32-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    sqi1: spi@1f8e2000 {
+        compatible = "microchip,pic32mzda-sqi";
+        reg = <0x1f8e2000 0x200>;
+        interrupts = <169 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&rootclk REF2CLK>, <&rootclk PB5CLK>;
+        clock-names = "spi_ck", "reg_ck";
+    };
diff --git a/Documentation/devicetree/bindings/spi/sqi-pic32.txt b/Documentation/devicetree/bindings/spi/sqi-pic32.txt
deleted file mode 100644
index c82d021bce50..000000000000
--- a/Documentation/devicetree/bindings/spi/sqi-pic32.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-Microchip PIC32 Quad SPI controller
------------------------------------
-Required properties:
-- compatible: Should be "microchip,pic32mzda-sqi".
-- reg: Address and length of SQI controller register space.
-- interrupts: Should contain SQI interrupt.
-- clocks: Should contain phandle of two clocks in sequence, one that drives
-          clock on SPI bus and other that drives SQI controller.
-- clock-names: Should be "spi_ck" and "reg_ck" in order.
-
-Example:
-	sqi1: spi@1f8e2000 {
-		compatible = "microchip,pic32mzda-sqi";
-		reg = <0x1f8e2000 0x200>;
-		clocks = <&rootclk REF2CLK>, <&rootclk PB5CLK>;
-		clock-names = "spi_ck", "reg_ck";
-		interrupts = <169 IRQ_TYPE_LEVEL_HIGH>;
-	};
-- 
2.34.1


