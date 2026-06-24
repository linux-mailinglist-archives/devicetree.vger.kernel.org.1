Return-Path: <devicetree+bounces-315309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SICkD6kGPGpIiwgAu9opvQ
	(envelope-from <devicetree+bounces-315309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:32:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD24A6BFFE0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:32:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="gVY/EPk3";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315309-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315309-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE9FD3063620
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442CE30596F;
	Wed, 24 Jun 2026 16:31:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1EB30D403
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 16:31:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782318692; cv=none; b=k6UGn4BVBGlO4HRqsPOMSmtuBDM4DbHXVu+xBQInba4ZCusyYvKlJIdSrN+3JmQjtQnbDL/sMTYWUejDMuhYHT316criG6zP4m2ylt7jgS/8JDdZwJetPVqCwKTbEQV6rlRBcp2A17dZea9TFjnRmVnUDeJCkJAQmc271fvtRW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782318692; c=relaxed/simple;
	bh=NGaOrLTsFDY23HN6mLsw7AAbdGveOKYGWEzmFMEvhZI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=mYhIAoqBK9I+SDtVYKLV8C/iBo15yBxiVCFeAQEATzQMkh1pYywN92wSksphRherVYOeL9l3+pBlQVeyxoqRd3ToS59iuxXQ3+BKljrmBNapTV78BvJm3cFOua4+G5mE7VWc8Fte9DWapASzNAd8XgJJ0dI0SNMMnaELYPMcSEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gVY/EPk3; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4924593f45dso14306785e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782318689; x=1782923489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1CfY+fA8aRPdoLbeY5/hh263ftDsGPqED+585kkEVz4=;
        b=gVY/EPk3V5yDkVgeDPBfpGS5dLVm2NSSQliEi5m8YKcKQfnDi5FFdxBYweJBLHACiR
         yTR1b41jyghhr97nF0W2tZAkNDjHLTPODgNma/FwqPqv4JKX/RKCwbNUPnSixVuOtk4M
         iX+iQPY7QliuUY/KuFv9AhY1bgRExcl/qUwpkGYgPyzcRdGIpROiGvzluE3vEhpz+KSB
         0Tt47aQ8RLaHx0fyJKm8QdqrGKxrho3CHvBvWMWzmq9IzMBbMJ94A8YdPSLWBDYxKL1a
         ycyRbmbs2S2xwAhUYbEZAelAhmUHQTBt79dgjtAcU8nxYwues8YwVOv51+CQmV3VzeFU
         /J/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782318689; x=1782923489;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1CfY+fA8aRPdoLbeY5/hh263ftDsGPqED+585kkEVz4=;
        b=AGuCtKmPsbkIlxmv9ZEgY4SHJiksi+83eflQm4p6EDikuX2UnBwUXPwRoUnHqtU08V
         jyNUWID020nPLa+oVuqH2DdHSxyaPuXfnE/A5swrwsO76DC+K/y/b66d3JeYSC2iO93d
         Dh187fuEQX2Nom1Usnb0CZp3ZhQAkoEi30qsLDLcwHsm4loBELKnKHf8zFxyqG7kn8VY
         oHYfA3cS8yuubxAQneCZ42wfqRFyIuAK2MgnjLBYFROekTMMXHnRVdAtfnU78boUr7lG
         uIPPv4Nh6GwsgCwWNsL/85+JGUcqz6826UThAkQMZoVlTd3AT0nLGHcik8SZygdNc+ws
         0klg==
X-Forwarded-Encrypted: i=1; AFNElJ+HpzBBpkta83xc4TeydBPoqwQK6gKsEwTQAowt+zzT2xKb9k7RN1dSr1jrYgAiY2Jo/hg2hOWLDxit@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0K1FzFs/ZM0IGq6ao95AfD4Yc+qSTcLjV/k3M544Qtq2exooV
	eEJA9EROJBrsPauu/58anMo1He+B3n+yVMA2eshDberyZ2DVoFd5nxGK
X-Gm-Gg: AfdE7ckUfCYP5uRXSqnR8ipVkpyWaBVPF7n762CUaEAerMY9Mmyrkd7pXKhzJugwQKk
	WUq33zqPvUfukC5SmmcstuwJZHMSHT0rDKLOB/nmjDBpHaDUahLgH0BKviTo2I+hie/8OFf6ACR
	vvF6hEQFDhjuojtzkMaiaf8vOVgwLjdqKi3aHpEbZuIRwX2atVUCJEAA8vxNLbE7FbFOQmPgpwB
	yM7fgdzRGUqSdNWgaTjxFe6NdXP721rMiSJGPu4e3Riz4mxRdCi19vmzCV/OVnD+amiM8TyYCIm
	GkH9QQuHT9ylHhJ6QpGcU3Y481KitvCLZyDOELbtMT7niiQjC9lHYlL+XdCkQMRCDQD53uNzVMv
	ocWU0xFegIUhxrkF/IgkI6ZpMLnMmjUybdP0slh2f2P9Gaxzw8o/ujzXjj28kSAhoQ4jy9D/sr3
	B8gb+KmmJuv8YaLpEv4TCr5/zR/Y+eAm+ko2Nb8AIuHPeMKTxpg9x2QA==
X-Received: by 2002:a05:600c:4f56:b0:490:d354:bcf4 with SMTP id 5b1f17b1804b1-49260875aa9mr58753125e9.27.1782318688828;
        Wed, 24 Jun 2026 09:31:28 -0700 (PDT)
Received: from localhost.localdomain ([82.77.79.113])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4926401a21asm3739235e9.1.2026.06.24.09.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 09:31:28 -0700 (PDT)
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
Subject: [PATCH v2] dt-bindings: mmc: Convert TI OMAP2420 MMC to DT schema
Date: Wed, 24 Jun 2026 16:31:11 +0000
Message-ID: <20260624163112.535237-1-egbostina@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315309-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD24A6BFFE0

Convert the Texas Instruments MMC host controller bindings
to DT schema.

Note that the OMAP2420 driver will not work with OMAP2430 or later omaps.
Please see the OMAP HSMMC driver for current OMAPs.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
Changes in v2:
  - Changed ti,hwmods type reference from string-array to string
  - Updated ti,hwmods regex pattern to "^msdi([1-9]|[1-9][0-9]+)$"
---
 .../bindings/mmc/ti,omap2420-mmc.yaml         | 60 +++++++++++++++++++
 .../devicetree/bindings/mmc/ti-omap.txt       | 26 --------
 2 files changed, 60 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/ti-omap.txt

diff --git a/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml b/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
new file mode 100644
index 000000000000..794d5ec0b58e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
@@ -0,0 +1,60 @@
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
+    $ref: /schemas/types.yaml#/definitions/string
+    pattern: "^msdi([1-9]|[1-9][0-9]+)$"
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
index 02fd31cf361d..000000000000
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


