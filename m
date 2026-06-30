Return-Path: <devicetree+bounces-317756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sqPuL4a7Q2o2gAoAu9opvQ
	(envelope-from <devicetree+bounces-317756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:50:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D6F6E471A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:50:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=q2y2G+eq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317756-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317756-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 966F63062E94
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7AF410D01;
	Tue, 30 Jun 2026 12:46:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A701941169B
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 12:46:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823613; cv=none; b=MURSqxMnh24/R+ItbVX1Ox4FPgoyiH1GWSlfY8WrGXje2kNBVgGFoGZZ8S2bj/QUoyBqKh5w5cBRsET2TgW5nUIPPukG7zjZWw3rHk/un9mNVsJffDNFwC4oCNbR83btbilMMzml2vMOJAdjAJ2VUmTbkgEoKA6h7M/VZi07muc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823613; c=relaxed/simple;
	bh=kdJl+EUw8jVvMYC3N5IE68PLclBfqF2niKoiUYMWlgU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=bjxxhG0A/QsCtN23vTz1UdmGndxNgGw+4rChQS4eVssZpwr36ClTkdVZP024eBhLtN/k1W4oeuRzVaq0GZXJnyaY27Qutkuc+L8UVfzd/FazRG4NSFzUgq+NPglPhyq0ydTn4AZ58CuvE+udPfEDcm/4ZDJ4lXaUSAjbbxWTw8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q2y2G+eq; arc=none smtp.client-ip=209.85.128.49
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-493a548fc99so12795585e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782823610; x=1783428410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dap/ctidZYQin79oLPYBa3pq5WW66y6gAeCW8syc9mU=;
        b=q2y2G+eqbt+hVbDhm0s4XJ13QGwn5Bn2bQwuWvlLWMPIdkLmfMhFRb7m40OaV22Wx0
         +FQuYrknfQXiwT+TnPgKggRmas1idDNu9SHlLJYGsKGNPNyu+am3gZxcq5dytJaSngi+
         rARkiJdbOuAYuMYIDXfWihw8MOazG3bYK75LCbpaiLCbxjZ/Dmfm046YGPtHqAmDSYky
         Ig9fioun+h8/vumuABhGBuJTN5IW5g6Sb7w35hz0loB9ImFlWT2+A4zy7PT9Bx/px8jx
         x3kOqiHv7cBLU9pBYHrMq9D3rC2yipLNMP55YKGof93jDimEBhd0MJyE/yEb3AJBLz1J
         MOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782823610; x=1783428410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dap/ctidZYQin79oLPYBa3pq5WW66y6gAeCW8syc9mU=;
        b=gaFP7odzNsBFywZjpTmneiUmhtUU8Ne4V4HK6nu2RI7kp3q5Act+68lutZreQpfIss
         lyESdAN5U8786uoUtzrwm9233a3aKAeqj0XvwBB1o9tsX5MLeuqOz4baddVdN2lT9PSp
         9hwdLjHQ9h8cJUdxhms+cMG2jzsEX0oeqPY7vhHuUjehreGndx/JX6MEv6wyRRTFEpss
         OCedhULo0IV2Cvokv1YxklyrKVKio7EG/ABxIxy+/9usT1iQBpUyu2FGuoKd4uk8vXoB
         zYEMUHSHxMCv60eqsIFgOZGOK9Wk5FwgUgVX/6yLArabGCEtTrt0wUvXMW4quLl62Nmz
         m3xw==
X-Forwarded-Encrypted: i=1; AFNElJ/GdN6SbJhl9N9Xd7e0X/NazSzbqZCeTk5ClbXrlaVrOeSOY4dvbz/WZtiKAzybAfk2GzYvOHmVP04/@vger.kernel.org
X-Gm-Message-State: AOJu0Yymf3nhQ9UZXAYjOfk/ItKZMPL1RB1tByvQkgctVEvZejJ1iUZi
	ehjy29UGcEve5XFhF2RNGPIAIqrO1jtmaF7Yd0ppeOguDeJ/VHzulpwQ
X-Gm-Gg: AfdE7cl0//xdwxdccnH5Cg0A9jDQjg6+ioxUwzADPCFPRFS22Y/74gZ4HpAEEF3lmex
	E8DHkZQf0LR5YRCYZn0MReQIxtZ/T+RjfBAvj4o66f6VFR0U59Tp2UEvVPajTYJNvGtAAEDmXw1
	27S1UkTERINh/s5X3hsrLKBA1OMXof2+PRg9KCJj9z7LRiXgvGgdprwwgxh86Vwz9c+Tf7sa1e8
	xqkUOMJEATrIIdOVVFaJvmDXIkNYzQixOHWcNWREdgXFCj0PECvj2Hl4rQmMm4vpC/B8/E688AT
	JGojs+JL/Nnj4jqhdX9g8zi73MsbMWw5M8NoAgszwuqv6HLLaf8pHug055opX1Xh85x7WzvRsKy
	jqcx9nniCm8fqMX9NT+ppYnS7jBuvtZHn2XJryBtovzBvgo+/T4Ttq3ilZpZfIUEQNfOi++GbbV
	emc+au62Zp8UmDaWakhB8Z2/MNQwl48rlgJGQAFR62FvDJvNNCDtMyAQ==
X-Received: by 2002:a05:600c:56d7:b0:490:b724:507d with SMTP id 5b1f17b1804b1-493b828c5bfmr35016365e9.11.1782823609901;
        Tue, 30 Jun 2026 05:46:49 -0700 (PDT)
Received: from localhost.localdomain ([82.77.79.113])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493b8d0bbbcsm79274455e9.13.2026.06.30.05.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 05:46:49 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	goledhruva@gmail.com,
	m-chawdhry@ti.com,
	egbostina@gmail.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: bus: Convert DA8XX MSTPRI to DT schema
Date: Tue, 30 Jun 2026 12:46:27 +0000
Message-ID: <20260630124631.2991596-1-egbostina@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-317756-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:egbostina@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_SENDER(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ti.com:url,devicetree.org:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62D6F6E471A

Convert the Texas Instruments DA8XX Master Peripheral
Priority Registers bindings to DT schema.

Documentation:
OMAP-L138 (DA850) http://www.ti.com/lit/ug/spruh82c/spruh82c.pdf

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 .../bindings/bus/ti,da850-mstpri.txt          | 20 ----------
 .../bindings/bus/ti,da850-mstpri.yaml         | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
 create mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml

diff --git a/Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt b/Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
deleted file mode 100644
index 72daefc6b4a1..000000000000
--- a/Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Device tree bindings for Texas Instruments da8xx master peripheral
-  priority driver
-
-DA8XX SoCs feature a set of registers allowing to change the priority of all
-peripherals classified as masters.
-
-Documentation:
-OMAP-L138 (DA850) - http://www.ti.com/lit/ug/spruh82c/spruh82c.pdf
-
-Required properties:
-
-- compatible:		"ti,da850-mstpri" - for da850 based boards
-- reg:			offset and length of the mstpri registers
-
-Example for da850-lcdk is shown below.
-
-mstpri {
-	compatible = "ti,da850-mstpri";
-	reg = <0x14110 0x0c>;
-};
diff --git a/Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml b/Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml
new file mode 100644
index 000000000000..5b03abd3fc3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/ti,da850-mstpri.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments DA8XX Master Peripheral Priority Registers
+
+maintainers:
+  - Eduard Bostina <egbostina@gmail.com>
+
+description: |
+  DA8XX SoCs feature a set of registers allowing to change the priority of all
+  peripherals classified as masters.
+
+  Documentation:
+  OMAP-L138 (DA850) - http://www.ti.com/lit/ug/spruh82c/spruh82c.pdf
+
+properties:
+  compatible:
+    const: ti,da850-mstpri
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    mstpri@14110 {
+        compatible = "ti,da850-mstpri";
+        reg = <0x14110 0x0c>;
+    };
-- 
2.43.0


