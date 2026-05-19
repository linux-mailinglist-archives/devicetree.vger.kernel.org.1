Return-Path: <devicetree+bounces-299986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBgQNDM2DGoKaAUAu9opvQ
	(envelope-from <devicetree+bounces-299986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:06:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8F857BDE2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DE0883044E09
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F79F46AF0F;
	Tue, 19 May 2026 09:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="qy7swvO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F783F8717
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779184783; cv=none; b=kvpJO3kQ/ctZnJQy1kqNO7K1CV51f6aFc7pDEVwU6ppjeg8j85PnHUXV96jtqKlfi34Ex06MqMshaKx51pz4hOroEe+d2TSfN31zsQcX80FCQHOFoQGC2ZX4mc/GL7iYuQGvGDLEYWf1eARKRjEB/wHpBVm2mAG7FuI9wR+m3gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779184783; c=relaxed/simple;
	bh=jtI1geXzUQXWLm8pE2l6DFif0qRAqiIu7fohuGyDaI4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ulvg5gbaN11dSaU6aBwsiiLtpp72Lx/CQgiSvyCN7vaXK3mpA5b5oZWOOZeFE0UKFP/+gO+IBQ56KUQgVPtkBls4BGb0XJvUgWE3NIiJ2fjZhjd3tPhwQU8OtFKbfE9yKSb3sIfXAozcWDa1ZXAIFd8OSC8awb24wCm0PtnJu00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qy7swvO6; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2ba0fc8b1f0so21220885ad.3
        for <devicetree@vger.kernel.org>; Tue, 19 May 2026 02:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779184781; x=1779789581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gYcglXM9KzfiYfoBsPDSPF/vfmen4eIpWjxA71ahXH8=;
        b=qy7swvO6jMELFkejJI6CbNqfjj6NDmz6mrC9zE2evq3/XyXLtSuNqT009VHeaxkXHL
         qw7g2W8ks9p9DnrtE+SaXgPA41TKPshJssiGVG6gcQw4PlNsnUQKXuxyLFI7gYIi3Xwa
         oGQJPtPnB8ENWF/TfaT7EHO+Y2CTUrGjYkYQXjSN8PEwBtZ+UQMMLf0UUGyFZUyqTyVH
         RxZ6KRNnx0Jn2Ar2e16jiNVW7uINpgyT5xyWaRfw3CvnHyZ+Lv5k5E1ipfEBSB0rpu3o
         3Jyt6Xx0sXZri45KrZb2NrD5rbPuMD4gWT33v4A2PDyyYR9l/+vVX85Nd4ILR3UtBkLP
         haTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779184781; x=1779789581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gYcglXM9KzfiYfoBsPDSPF/vfmen4eIpWjxA71ahXH8=;
        b=O/2HqZde7smHQI5O+b61cyuVUc96pYQdB2ox6v8sO4Zubk87ZdYZigNwYwZ0z0oDjm
         rQAN0WIHE+OQahhHHyHHvrXauK4izJfmI8EM311oJJCOJzcfBjsrUqWtVG6xbXefGVYV
         IXnpwttmBnwCG49mLD2jajAdnHuZ59ZK1g1tRFAcqEZXDystbxfL3J21uQrfze895t0W
         lg6Py96NiotgG4szcCy00R+eu8ymNUKFNAYIZeg5PP0a57HzD+0L9AsaGU369R7zYsRW
         TY3lwgYc6//oQdYj6HaEIpoVs5wCx6n7LMny99XhwDa6sJ/YNw0agbo+O+Epvk4AhpYz
         99Mg==
X-Forwarded-Encrypted: i=1; AFNElJ+NZYpQybUhQdonV1JlkqSX4y3G2Ql4K5hf3Xg5Ym8q47oMsNjNJ0Uu3h+waopw+ffrlAM5jY+okPF3@vger.kernel.org
X-Gm-Message-State: AOJu0YwxJsiTlBMYegUzrB2IRa50woHMVrXbCxggE8exbkUu82PC2h/M
	/fiv+Eyv1/PqH9sJZ8FVKOlzll2IRaaTyCiK/tOX0+pxDNa3bBi46QZa
X-Gm-Gg: Acq92OHnydvROg5oNFoFb9nd/M2FHkhf90Y+ccjWi2Tqm0e5iyR4sszfkV/pCInUygf
	dl/V3w5WTjfq9L1wIRr+ZVWbTXmJYIYrGRbi8XO5ygPgkWwLn3MTJ/eMcwKqGNhtIU6NdYEGYNu
	43g5xGmzQA3O5NQsp47UbVaY3SnJl9ETBb7bKJy3lmuTyyVNbGtDB2ChOwmBxLSVgK4he/D8Vm9
	5pwkdtN7CIoPWoT5ewmFklfwuDM3qaMaJckscU5oDq5WYtdINOsHax9B1GxUYe20669j1C53JmH
	21xDYTglNMIyucRIShwepB2PVkGUoUw5TtYQwSuf6yAugVEUOPf16kzpb/7vpDcOY4C3DnR5jDd
	YUKVaUPgpaGdluJmbHyT71y3rXM93Kre2NZNcP69MMnx+9W0qerGM7ehNjuWGT2Y+ePOPJa5Nja
	UwqOdbgLtyHXwoouYVQU7j7a6MjCLLpLSLIq5Gn1k7Kg==
X-Received: by 2002:a17:902:cf0f:b0:2bd:d7c5:9272 with SMTP id d9443c01a7336-2bdd7c5a144mr89237555ad.6.1779184780977;
        Tue, 19 May 2026 02:59:40 -0700 (PDT)
Received: from Tejas-Legion-7-16IRX9.. ([2401:4900:909c:a9f7:b613:edee:96b:45ff])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5c0600a4sm168905445ad.30.2026.05.19.02.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 02:59:40 -0700 (PDT)
From: Teja Sai Charan B <tejaasaye@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Teja Sai Charan Bellamkonda <tejaasaye@gmail.com>
Subject: [PATCH] dt-bindings: rtc: Convert rtc-cmos binding to YAML
Date: Tue, 19 May 2026 15:29:29 +0530
Message-ID: <20260519095929.76011-1-tejaasaye@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299986-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tejaasaye@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bootlin.com:email,0.0.0.70:email]
X-Rspamd-Queue-Id: 7F8F857BDE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Teja Sai Charan Bellamkonda <tejaasaye@gmail.com>

Convert the rtc-cmos devicetree bindings to dt schema.

Signed-off-by: Teja Sai Charan Bellamkonda <tejaasaye@gmail.com>
---
 .../devicetree/bindings/rtc/rtc-cmos.txt      | 27 ---------
 .../devicetree/bindings/rtc/rtc-cmos.yaml     | 55 +++++++++++++++++++
 2 files changed, 55 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/rtc-cmos.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-cmos.yaml

diff --git a/Documentation/devicetree/bindings/rtc/rtc-cmos.txt b/Documentation/devicetree/bindings/rtc/rtc-cmos.txt
deleted file mode 100644
index 7d7b5f6bda65..000000000000
--- a/Documentation/devicetree/bindings/rtc/rtc-cmos.txt
+++ /dev/null
@@ -1,27 +0,0 @@
- Motorola mc146818 compatible RTC
-~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-Required properties:
-  - compatible : "motorola,mc146818"
-  - reg : should contain registers location and length.
-
-Optional properties:
-  - interrupts : should contain interrupt.
-  - ctrl-reg : Contains the initial value of the control register also
-    called "Register B".
-  - freq-reg : Contains the initial value of the frequency register also
-    called "Register A".
-
-"Register A" and "B" are usually initialized by the firmware (BIOS for
-instance). If this is not done, it can be performed by the driver.
-
-ISA Example:
-
-	rtc@70 {
-	         compatible = "motorola,mc146818";
-	         interrupts = <8 3>;
-	         interrupt-parent = <&ioapic1>;
-	         ctrl-reg = <2>;
-	         freq-reg = <0x26>;
-	         reg = <1 0x70 2>;
-	 };
diff --git a/Documentation/devicetree/bindings/rtc/rtc-cmos.yaml b/Documentation/devicetree/bindings/rtc/rtc-cmos.yaml
new file mode 100644
index 000000000000..e368264ac483
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-cmos.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/rtc-cmos.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola mc146818 compatible RTC
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+properties:
+  compatible:
+    const: motorola,mc146818
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ctrl-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Initial value of the control register
+      (also known as Register B).
+
+  freq-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Initial value of the frequency register
+      (also known as Register A).
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        rtc@70 {
+            compatible = "motorola,mc146818";
+            reg = <1 0x70 2>;
+
+            interrupts = <8 3>;
+
+            ctrl-reg = <2>;
+            freq-reg = <0x26>;
+        };
+    };
-- 
2.43.0


