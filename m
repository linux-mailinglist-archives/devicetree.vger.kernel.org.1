Return-Path: <devicetree+bounces-268413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM75KJUPn2neYgQAu9opvQ
	(envelope-from <devicetree+bounces-268413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:04:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1F91992BA
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AF8D30BE54C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889133D410A;
	Wed, 25 Feb 2026 15:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ERbb9aof"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397C62877E5
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772031784; cv=none; b=aJPWLxEclrNKRW/An+kEzEQ6QhGaxmIVg3yA/KlGy4ur2GJOOA64V3JWK9KIf0QAbNhnrYwREFNMBEY7kWV2u8LA4xqt2d8ulArqT037i5Afr7uLB1f+xzAkURzFF2W2NTIV8VfzWKo4jmGnyGgwvL1x+A22W8txmTGSwdReNEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772031784; c=relaxed/simple;
	bh=KttC0NBXlKRsCgO5zla3/krGBc8JLI1Pbbik8qu03kY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BgeOxuy+gVHR2mQgADhYojaF4AY+0ym1TfMNYOjWt9uhD3GbKXLqR3FAKanr/S/yZ2u7iBKVVRZDhU+Fw6tEd1PrHACxJzVc6hncQZzqx7NHTkMtgWsENCA05wWmrdpuTbUYBYJgqQZ349mOW0E2g0RrA4C7hwzYg9jOVSfW3y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ERbb9aof; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-824adc96ad2so6776187b3a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772031783; x=1772636583; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EqP6EGsW9F6euNXh865lM+yV/zkikpG3s/C0DdTEp4s=;
        b=ERbb9aoflmu3HdHyd7ZplrcwUtiCV/hThmpHGDPmmkgAvUNtGXa5COm2agumLbeJ9J
         gkh8mcxGUkeWgAzWwIzLXofktNEtWVIBHkViKwwFOLntPgZekPOaNY1pdqv6EspAYjty
         El4DK0VxEYsVFnf6Czuy6Vtmh26XHxMgsACyJyQQZ+D+Trw6PWbeEF0+ybhNdmFyyiYK
         TuBIy1RfWqc3MiwRDmp2t3tW3VHe2+YaXsg0T4kV8FhNKff/WTIJcTvLxviwLJYc95AY
         ltvyfN6e+Cry7JBhyCUQA00r0v5VvpGPV9oNsomN1kIQVnt/akO6ReK6SLsbrm+cC452
         hRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772031783; x=1772636583;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EqP6EGsW9F6euNXh865lM+yV/zkikpG3s/C0DdTEp4s=;
        b=UFxMDarxRPhQpNMMlgMfXqP/EA6Dc+D/bSs9OmiFTpmjX2z0XBdwvUJv4XG1FhUxDC
         Poe0EyAFZyJmGtmBqN3DQOlTBPoxKE0I9m0vIGjfhnj2dBeJSHcFk2jApwvJqlZUCzZC
         DZrjp08RDOUudylN4KWgpHto/wwuS1fdDQALk12SqHoSS7YhExu8GSPuYnVz8Ze5UIj1
         PG2DfSNtkA5Ay6rUVZzb8Myt9k9EIhwrDKuCsiylWApGAVwvy+B6LRaqsuibnukX98L1
         NZpyrPUocdsyzc2RwSeNLFfEgoVMDLi4Bh7DO8wt9+bC8dlN733srzJfdFqeBAkwXIm3
         00XA==
X-Forwarded-Encrypted: i=1; AJvYcCWha8OYgmZXBGNggY1B7tuaV4due167WfmmDDSXzZIJVs1PKGasnMQiHYsfOoInTRMRTnhpGvALSx+c@vger.kernel.org
X-Gm-Message-State: AOJu0Yww1K4ZrQ0g5NXcnC7bGTfeHPxQD+Oyt3Jlvm+SmRPF9zje6Wg5
	dfMyMs4fsyZCSVJ6TQfrZbzSxRewM5H+M7jnyCQfzKqL19YaQeyx6g4q
X-Gm-Gg: ATEYQzyBOZ/vL/84qdH98QcZOeDd/WItD0MFossiOwn0ybe9ARpEXtvwtZz+UPhkDFh
	P9Svc1uW25gEhj7A/XijfpgB33LMBGPWHARpjsf0VZGd1HmGP/aW2nRM77HWNIC9KLYSn1xtwOE
	XTcrAJIfBow4Fm+k2n2l1yGhMH1vIj1clYCTbkz22f/p8rJCBtz7CiwsLSCKXsc0YgH26sIvGlS
	0GqiIxq8Wb1t0KZwq618cFFj6QBZKmnLnQLlZXqWhXULmdBid8fku33tJA7gUNTLUKDSZIGo69V
	BxAReFyoMF6ugwOcG4ntD6dMMDJxPO/epZNFDkUvru+4Fjtr/edinFksZ3xJUdeRf3PnFamGbxQ
	MO7u1V/d+HSd7oV76bbtvEtbQTvVUNnDQ2fndbpOSbfhdZPM4amY4s7llLNsbORkeYxjiMieSJv
	CgtNTbpJQKBNhRF3//0vBl7NzoXB05W+a84TC1STwaOyYZgdkuseOiDwUBc70=
X-Received: by 2002:a05:6a00:440f:b0:824:93e4:2ddf with SMTP id d2e1a72fcca58-826da8c0f3emr13497351b3a.13.1772031782044;
        Wed, 25 Feb 2026 07:03:02 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.224])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd86c494sm13799030b3a.30.2026.02.25.07.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 07:03:01 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Wed, 25 Feb 2026 15:02:50 +0000
Subject: [PATCH v2] dt-bindings: mtd: st,spear600-smi: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-spear-v2-1-021bcb670601@gmail.com>
X-B4-Tracking: v=1; b=H4sIABkPn2kC/13MQQ6DIBCF4auYWZdGpqihK+/RuEAYdZIqBhrSx
 nD3Updd/i8v3wGRAlOEe3VAoMSR/VYCLxXYxWwzCXalAWtsa4ko4k4mCGq0dlZRRzeE8t0DTfw
 +ncdQeuH48uFzskn+1n8hSSHF5JQabadb3Yz9vBp+Xq1fYcg5fwFlDgl2mgAAAA==
X-Change-ID: 20260122-spear-e599dc4e7e32
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268413-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[f8000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,nod.at:email,fc000000:email]
X-Rspamd-Queue-Id: 0C1F91992BA
X-Rspamd-Action: no action

Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
Controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Removed allOf ref as it is misleading the existing node.
- Defined pattern properties for the child node.
- Link to v1: https://lore.kernel.org/r/20260122-spear-v1-1-fd44bc79695b@gmail.com
---
 .../devicetree/bindings/mtd/spear_smi.txt          | 29 --------
 .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 83 ++++++++++++++++++++++
 2 files changed, 83 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/spear_smi.txt b/Documentation/devicetree/bindings/mtd/spear_smi.txt
deleted file mode 100644
index c41873e92d26..000000000000
--- a/Documentation/devicetree/bindings/mtd/spear_smi.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-* SPEAr SMI
-
-Required properties:
-- compatible : "st,spear600-smi"
-- reg : Address range of the mtd chip
-- #address-cells, #size-cells : Must be present if the device has sub-nodes
-  representing partitions.
-- interrupts: Should contain the STMMAC interrupts
-- clock-rate : Functional clock rate of SMI in Hz
-
-Optional properties:
-- st,smi-fast-mode : Flash supports read in fast mode
-
-Example:
-
-	smi: flash@fc000000 {
-		compatible = "st,spear600-smi";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		reg = <0xfc000000 0x1000>;
-		interrupt-parent = <&vic1>;
-		interrupts = <12>;
-		clock-rate = <50000000>;	/* 50MHz */
-
-		flash@f8000000 {
-			st,smi-fast-mode;
-			...
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
new file mode 100644
index 000000000000..189bc111b470
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics SPEAr600 Serial Memory Interface (SMI) Controller
+
+maintainers:
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The SPEAr600 Serial Memory Interface (SMI) is a dedicated serial flash
+  controller supporting up to four chip selects for serial NOR flashes
+  connected in parallel. The controller is memory-mapped and the attached
+  flash devices appear in the CPU address space.The driver
+  (drivers/mtd/devices/spear_smi.c) probes the attached flashes
+  dynamically by sending commands (e.g., RDID) to each bank.
+  Flash sub nodes describe the memory range and optional per-flash
+  properties.
+
+properties:
+  compatible:
+    const: st,spear600-smi
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
+    const: 1
+
+  clock-rate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Functional clock rate of the SMI controller in Hz.
+
+patternProperties:
+  "^flash@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+
+      st,smi-fast-mode:
+        type: boolean
+        description:
+          Indicates that the attached flash supports fast read mode.
+
+    required:
+      - reg
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - clock-rate
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    flash@fc000000 {
+        compatible = "st,spear600-smi";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        reg = <0xfc000000 0x1000>;
+        interrupt-parent = <&vic1>;
+        interrupts = <12>;
+        clock-rate = <50000000>;  /* 50 MHz */
+
+        flash@f8000000 {
+            reg = <0xf8000000 0x1000>;
+            st,smi-fast-mode;
+        };
+    };
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260122-spear-e599dc4e7e32

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


