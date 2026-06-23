Return-Path: <devicetree+bounces-314734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kqbWBStWOmqn6QcAu9opvQ
	(envelope-from <devicetree+bounces-314734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:47:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD426B5EBA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:47:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=agRrSgAb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314734-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314734-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EAE43061251
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 09:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD903CDBDD;
	Tue, 23 Jun 2026 09:44:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B46C3C661A
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 09:44:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782207852; cv=none; b=iM7uGkfNal1vaDPH4pHn+el+4DB6Rt8j6BjX0/uJgKqr2lWxPzSDp0ZQ2+VXJQr1NyVXs2MImz6ZYOyeeZv49YozPxfjYjOSNPpdeJtNBPDFNwwzvXR2hOow3y1vY7A/XgfOdVhuFKFsA4fZa5qCCXzC/r9A26jAtztZkgyzMj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782207852; c=relaxed/simple;
	bh=lupoMa4bFvOB1DSqMrYrV4IvNEc7frNrCHK5DHmJHJM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=oQtgyhncTbtpcx6Nrn5beaqNf2k9CCrBsTB/jvrAwiJrYQLaSz/0ACJm2AYENgcNGr/M3chRJmhez/ksYd7yHxDqZh4xIHAG6BjXiNz+cGxMJ0iEtjxAjwolzuOd0oYkxeFKKgR2+fvpEnktNhZYkvr9QcxphVpYhvSj1nfiTfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=agRrSgAb; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4631679f204so395771f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 02:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782207850; x=1782812650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gl66SZXL4/eDYxy6oUcc3mXBNouxOkmru/WG4ypnp34=;
        b=agRrSgAbXxXN5HuDUOL7OyB8OQuRLC0zIEMC7lAuENaMqrtok+IrZ4056U58YMfEJ7
         FUdV2erSnIV1a4j2Ye1gFBHVoaRfynfbI2RwFvng3cqz4jEDia5LyQb7hT0KfNOUFx4D
         CaQl7qW428ddRclKWMFi6WxHRB1ap8IGQkyKBxwEFuHvzfKDz2aUR3bWScLItdncF0y9
         9e+aUqtnAOSHkfLurH+r1+dHWixCRHSBT9e700Rz6KfuqJTjuMoRxq3hdbLPj710QB6F
         4PFlqZ9Lr179YSlJ1T9j5ugRst/3X9beWRV9Mla7w3zRfT9sEH1s9gbaj7Pac0i18xwk
         JGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782207850; x=1782812650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gl66SZXL4/eDYxy6oUcc3mXBNouxOkmru/WG4ypnp34=;
        b=nNaU/v8mbGwNGtC62S+J/AAFvFbPoL21CHXkp4yBQy63pYe5YCywAWl/iAzNxPHr6e
         jlc8wsYqDaj+ZFbE+SxDj7gEdxXy6EufuAxA2d5Hp/HymshZpMbsOZOGcPEC1JJtvgBC
         ATgy5xcDijmAbITYpNz5ecdaoCO8S+0/jCjQSUnvyJP9gbJEMbMdCWL27gNU+JAI0Mb8
         SSLCxM+3TCTRsMHi3IyIIr3Dpl5I8FU95nv1xEJgceKC2bVlxgCEx9L5/CGtaAnZnA6B
         gNG2jO5ZzeQsXtp9RBVrqhu68vDR+/rFXAU1A90WhHzV+/sZync2H7BdpONNi1vWYoB+
         No0A==
X-Forwarded-Encrypted: i=1; AHgh+RpQXk1ic807ag9nwrbtvHcbsxXnrEnwKnAfKmWNHccH6UsQxD7G5eEVEQ0puM2Nuv/bDNiKtYKIqVPf@vger.kernel.org
X-Gm-Message-State: AOJu0YxRO3VcJExum7MkOnkudKZvUa5IuZ77MH4dfXbZu8caaT6v7hfh
	M8NWTgUcblTXIgWJSdunhFzLamR+83wIZco9ELbOP23qXj0GNI9d/NKl
X-Gm-Gg: AfdE7cmVz99bSEG5BgdEkPLsUNK95iEQobWoEycRIlRn9A69cBDhYC1ZYwejsXDo9eY
	Jyo4yb8iOIFBcR+PYN+RdAuKFPi1+2C4uAbunJJRta6m7HRf6JqbP9QtpC3Ol3sX+F/BRIkAELh
	9aifjvRMWaXLN7RHW7gD5EYezEgDMkj23MtfT2JerEkLSTpzmMqxzxdcUy9C+vFjbGr2GK7nWBW
	bxF+aw+7UbK96y33GLUmdr3hMXE2QdftjCz/6dZg+8rUHZT92tXGzeNdAQTivULKGXNjk3pQhV1
	ZdbPqqIc7/Dl+oKPVzQqM7ryoQM/9XV77sMQht7lSCxKkt0OLOgkuN1o49gNWSvfuwT4BYuYnP2
	Lt1eq/diFOcZWdDLLKgOL5IhMxp/viVJ+mvm9KpyGa4kfV3m+YFyPBefaw35csKNiTANOZcDhjv
	vgddOfGgWuvgy8TvmlzVQaoBANHCpUd0jAZ7Vv107Z02wB9qIw2G+cHA==
X-Received: by 2002:a05:6000:250a:b0:463:3184:6310 with SMTP id ffacd0b85a97d-46a80f5c67amr4790653f8f.28.1782207849607;
        Tue, 23 Jun 2026 02:44:09 -0700 (PDT)
Received: from localhost.localdomain ([82.77.79.113])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-46666c579dfsm34379097f8f.31.2026.06.23.02.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 02:44:09 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	goledhruva@gmail.com,
	m-chawdhry@ti.com,
	egbostina@gmail.com,
	Ulf Hansson <ulfh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mmc: Convert TI OMAP2420 MMC to DT schema
Date: Tue, 23 Jun 2026 09:43:35 +0000
Message-ID: <20260623094336.4172741-1-egbostina@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314734-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:egbostina@gmail.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FD426B5EBA

Convert the Texas Instruments MMC host controller bindings
to DT schema.

Note that the OMAP2420 driver will not work with OMAP2430 or later omaps.
Please see the OMAP HSMMC driver for current OMAPs.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 .../bindings/mmc/ti,omap2420-mmc.yaml         | 61 +++++++++++++++++++
 .../devicetree/bindings/mmc/ti-omap.txt       | 26 --------
 2 files changed, 61 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/ti-omap.txt

diff --git a/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml b/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
new file mode 100644
index 000000000..31a73c130
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/ti,omap2420-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments MMC host controller for OMAP1 and 2420
+
+maintainers:
+  - Eduard Bostina <egbostina@gmail.com>
+
+description: |
+  The MMC Host Controller on TI OMAP1 and 2420 family provides
+  an interface for MMC, SD, and SDIO types of memory cards.
+
+allOf:
+  - $ref: /schemas/mmc/mmc-controller.yaml#
+
+properties:
+  compatible:
+    const: ti,omap2420-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ti,hwmods:
+    description: |
+      Name of the hwmod associated to the MMC controller. Must be
+      "msdi<n>" where n is the controller instance starting from 1.
+    $ref: /schemas/types.yaml#/definitions/string-array
+    items:
+      - pattern: "^msdi[0-9]+$"
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
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
+    mmc@4809c000 {
+        compatible = "ti,omap2420-mmc";
+        ti,hwmods = "msdi1";
+        reg = <0x4809c000 0x80>;
+        interrupts = <83>;
+        dmas = <&sdma 61 &sdma 62>;
+        dma-names = "tx", "rx";
+    };
diff --git a/Documentation/devicetree/bindings/mmc/ti-omap.txt b/Documentation/devicetree/bindings/mmc/ti-omap.txt
deleted file mode 100644
index 02fd31cf3..000000000
--- a/Documentation/devicetree/bindings/mmc/ti-omap.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-* TI MMC host controller for OMAP1 and 2420
-
-The MMC Host Controller on TI OMAP1 and 2420 family provides
-an interface for MMC, SD, and SDIO types of memory cards.
-
-This file documents differences between the core properties described
-by mmc.txt and the properties used by the omap mmc driver.
-
-Note that this driver will not work with omap2430 or later omaps,
-please see the omap hsmmc driver for the current omaps.
-
-Required properties:
-- compatible: Must be "ti,omap2420-mmc", for OMAP2420 controllers
-- ti,hwmods: For 2420, must be "msdi<n>", where n is controller
-  instance starting 1
-
-Examples:
-
-	msdi1: mmc@4809c000 {
-		compatible = "ti,omap2420-mmc";
-		ti,hwmods = "msdi1";
-		reg = <0x4809c000 0x80>;
-		interrupts = <83>;
-		dmas = <&sdma 61 &sdma 62>;
-		dma-names = "tx", "rx";
-	};
-- 
2.43.0


