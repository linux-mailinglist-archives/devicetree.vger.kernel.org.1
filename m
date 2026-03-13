Return-Path: <devicetree+bounces-275477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPEKLkFKtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:32:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99B288255
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4530307D63E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197B53CCFD1;
	Fri, 13 Mar 2026 17:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wf97nt0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729BE3C73EE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773423093; cv=none; b=B3akwPnvVtekQSlc7p7JogtNP2la8ejKeCpScdRAzx/PLXULGBLvG00N4GeDKff+mcANeF7ZrE2Fvi/L4Hg9KxEp2L3AKBa2UPFsGtBUFemnQAMbnCyRapcduw+15OipwuAWTHGYVzSt1Nf7QJnSgY8RSFUIa/ffjspnj+SrxgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773423093; c=relaxed/simple;
	bh=NuEV48LNolfnph3nNVAHFoYGVYmelHBsJDvzRy0AjI4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m3v3SatYyLSUnctO/jlWGKXxmyF0clvTRt/GZ26/TCXBuq5FIoBshmrY+owC2VxMHeaePY1Kx0C59W9OyF36ICFFWnpHY/TAfhKQCD3xCg1vpcZw1f2jum1gKFkXGNI9es6Rg+g6aClP82hSqJLkfdR8XPrW4cA3cK62ZSBoPPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wf97nt0Y; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439b7c2788dso1558710f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773423088; x=1774027888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9QmSNUljIWrXONbQqT8unKdUd3TVtT94WPoXHHkAouU=;
        b=Wf97nt0YML6RM+aaoBGysc9LZ41cS7O7U3Xgr3W0izQ6nzw8pj816XGYIm+V4Ex31U
         PEuxW1sO56oAZBnyHP/iappR77TLYIlvxWiV2G6GLZvp1Pyr82mSr/1Ta3a2iSe5IrVZ
         yb5ywUZY6KsENXESzk73ADz39a2sYLZQMXXx/SusnhPntB1qj7zovRyzqZlDj4qV/o1D
         7czl5zjZ7LNywU4/SFJS8Dvg6RPavbePSdQ3SBjSMu1wCNvD5YWbj0yMn2pWwVp37AgP
         FINdSxlW5RuUQ87S8Oyj2Rzd5P3U1Z0HomqnSFHfrMx17soG3jbKJQti+KpQjU6HsO4u
         ycBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773423088; x=1774027888;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QmSNUljIWrXONbQqT8unKdUd3TVtT94WPoXHHkAouU=;
        b=J8YI/Ky8Ty8bRSY1SyIWEUmy83Tbl4t6aEldRyYGJ+p1/ippD/vr6sFKO1Uzxl+Qht
         9Hqhz5P2TleLEle5yBvMyfz/yEqULPfRTTfdK+okqpiQtiT16XIkjYSEwVdwIitlii3R
         z80CqBOw79kAPsP9kn0VuykocfzaR53mQYsjYHRopN0srC9H626UXqmC1rimVDUxSmZO
         fytGkD/t9wSGmvPqm/A/MrzQP8dUupEfvTjusTmD02zPBVD5HoVYF4UHa6I7L6VvgUbI
         aqeA+v5tndxD8hOzYVo4D1RKW3olTSmOkFAoufxpeVZY5ZTEYyJpLfbVgDm88/yuELq9
         4Gug==
X-Forwarded-Encrypted: i=1; AJvYcCUbKFXS4RHIvj5/gA9d6KxCYCeG94eoVZ8U95vaZrr10jzS3a015f681EBdIig3nmgHvq2l1DReIf1G@vger.kernel.org
X-Gm-Message-State: AOJu0Yz90aXniuUaFHIemnU5HhnMPE3KViAyY82aMjNbWXlQuVbYN7Pg
	nw77cLJGscL+fXJGeHfa1Y+NaB+v5wpAo1pMMSZDveIsggZiBcgPw+5J
X-Gm-Gg: ATEYQzyGQfSCr1igvac7OQjo2lWqJSUmF1U3ffPGDqP6NltaZqtSp0fAtKs5RHCE/n9
	4avF1tw5yW1Kh7zOeq1xicPx3F5ViyQwv0Xjb9VV0wTfGBlPCCHaWelly6JJYjyHtvSBBIZgFug
	rvGEKYvtWGLjVBNbNQp7nqtPG6++xU8qoUNuQcTXcWgK6+FhHizbcmoDTepSBggAGmbL93jpioA
	TX0KJwJFH5X1ZaoNi/4pkofDihkSeyilvl6kC+poRYLSKUj+we7Wehq+D9N5K4t7hsU2V07nR35
	++14x6ScbniZm3dKVPEiSuPeYDU8FAH1JcIspzu+o7cdiRJ1CtoT2dOEYZ1mCsCdnoQSvLSo9M1
	71/roBH/vygtbT273iwqaOh/amlOhX6L6cOtiSlLjSyVGYxIvTqKv9dBBKWsFwY8pC5Ila8Q/5i
	hahox5hGF/V5YuWQron6wYckjEdXq6l30RoEjJzJXrg7/ApPfki//P
X-Received: by 2002:a05:6000:2003:b0:439:ca85:8848 with SMTP id ffacd0b85a97d-43a04d895ecmr8440154f8f.16.1773423088273;
        Fri, 13 Mar 2026 10:31:28 -0700 (PDT)
Received: from LAPTOP-9UVTTJTF.localdomain ([88.236.145.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19ad9asm19882119f8f.7.2026.03.13.10.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:31:27 -0700 (PDT)
From: Zeynep Dicle <zeynep.dicle.dev@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: bartosz.golaszewski@oss.qualcomm.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	Zeynep Dicle <zeynep.dicle.dev@gmail.com>
Subject: [PATCH] dt-bindings: bus: ti,da850-mstpri: Convert to YAML
Date: Fri, 13 Mar 2026 20:31:22 +0300
Message-ID: <20260313173123.1167-1-zeynep.dicle.dev@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275477-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,nxp.com,ti.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeynepdicledev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.55.30:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,qualcomm.com:email,ti.com:url]
X-Rspamd-Queue-Id: 1C99B288255
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the TI DA850 master peripheral priority binding from txt
to YAML format to enable automated validation of device tree sources.

Signed-off-by: Zeynep Dicle <zeynep.dicle.dev@gmail.com>
---
 .../bindings/bus/ti,da850-mstpri.txt          | 20 -------------
 .../bindings/bus/ti,da850-mstpri.yaml         | 28 +++++++++++++++++++
 2 files changed, 28 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
 create mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml

diff --git a/Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt b/Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
deleted file mode 100644
index 72daefc6b..000000000
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
index 000000000..b89bfebd1
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/ti,da850-mstpri.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+title: Texas Instruments DA850 Master Peripheral Priority
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
+description: |
+  DA8XX SoCs feature a set of registers allowing to change the priority of all
+  peripherals classified as masters.
+properties:
+  compatible:
+    const: ti,da850-mstpri
+  reg:
+    maxItems: 1
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


