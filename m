Return-Path: <devicetree+bounces-279944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOV4IFC2wmlilAQAu9opvQ
	(envelope-from <devicetree+bounces-279944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:05:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E066A318AC9
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B2C83017020
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 15:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7D738E5C6;
	Tue, 24 Mar 2026 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G/FASzF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDD335E952
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 15:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774367993; cv=none; b=ZQIm6BJ/q0tTQnsIl2m6oMKcnxis3pGpb7tYdLnB+gHYCSc/MGJizD8fhU4LqjFMrIUwFd59EisuG+Qww/ZQ3t1JaoVvFGkoH7Ek00sDQnGPS5Ccb/RAKClsVou+bKgUY2r+e0cabVnyqhj9o9aOPEgRsqNOu7Gn7Y8A/ICC1cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774367993; c=relaxed/simple;
	bh=8KPPZhUzqh96jYNd2rJBExLV22pVBjiyuGvVLIon7zA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NYkfh8An8GtEz6Qnu0ZtMt1PQGEv+PbvFv7Vqbew9LUPqBrzGpcJRsrf6+X0vmn18GXhvarPro5snr896Hh3b+EQPcfMZy4yv7uOwK/GfI4J9D/hvvwJZpfSB2VpN4gJnL/3uNzqZDNDq9OsA6r3evKi7Z04fv+jIT0CROEu/78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G/FASzF5; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c70f91776fcso679713a12.0
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 08:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774367991; x=1774972791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yc7wk42EADhvDIltPVK1lZfj6uphT+tiZ2F0l3KerEk=;
        b=G/FASzF5mGztd422oGgvKGuUqXAJ7XA6Bp+wowAWUGrhDMChyMt4St638oxyzQ1L2j
         DyMBk+OWGdV3tQ8VKFK+sAQOufQMA3ncCSzqrnIaPsK7AU8SD9LQYyxtsrHh+di4TU7k
         TovUXi3eI3oXYMG9rlnoDe1VlU4N+t7fnWjKtg0uxpqcz72PB8g1/n3yEtciiVdNdFOi
         dm/2Sc0yDo2Zmc1lhYTCtVeE9d/1rR/7xf8tATNOmhOyTdFgQhR/GNhdO8h9NQwrG4Og
         dgEQpXsiPu9yNcTuBnBgwdc0nFl2Nqq+2WBx4IPPQ7S/huYfByz3cvtM/DEa5M/cpAEs
         JoCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774367991; x=1774972791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yc7wk42EADhvDIltPVK1lZfj6uphT+tiZ2F0l3KerEk=;
        b=h78tAzvMrOfpTQ/ANkTsTxAzSk9qesapXXBcEOH2/c8UU1h4qwCZg+nJu2Yi28LRbk
         Nd7ac6+0P+w59tcaMqMfXgCNXu7FkRGgf47Z+Pc/t8kIKTr7Ks6/uWxYvYSlTN9kFzdh
         aErRh8rzB2coEM80c9lLRvoW0q2iV9v/vKJ0gIVaQm1laVfyX3o9DxDD25TXFDEiPqor
         9wsKtFcsjJNFajwDvo+gtBHpc5oc6cDlg7h1rtT9bWr17t4ewbG7hY1Zqqmc+dO23hEh
         IqhwQcNHTz6OmyF4U87KnS7GJn9PQXjFFvRhopnpTu5qAlmCx/TGerVGOHzFsjKes/pO
         VWCg==
X-Forwarded-Encrypted: i=1; AJvYcCXyQV+NzjZRV2nDCDKWfK/fzZvl/RHMTq7NcdHP8Bw1VRmD8q0yD6mU0g8kGw4QqD/ipt8myfrv7xMv@vger.kernel.org
X-Gm-Message-State: AOJu0YzKQXI1XFiWKa+9UZncO7Lij7X6W3Mq0giDWmpJ4/ZAZb4cBQxe
	rHGNO7jRpevHRlp1l18a+L/1CXb2XUXF2x89G5k7yPxztD3ORBoBmVh4
X-Gm-Gg: ATEYQzz9HmhCIeUIjfCCzuRFI37rHek1IlBufB4HmkkmrqrByoF8OAZijtiWHPFSzqg
	E06qnYae5DBZ83YYfWmF9Eyo8lOVbGjnnJaDLKG395XgbI5+rfh0cMdkhQKfg7v8eTYlZ18JKac
	ZvbbQJFriUcosGrBjvT4pQ4vVB4rAISs5sHljqXjRz4NaoNGOj7HlPUswKpkqUcv+cGrVFg4Suc
	wNlamCoxNrhfbch+9m0elXPDr3CsmE+L/6q5ka32SjH4p0fcoUVJfHUGScsDt/dFUErB7vZfxZ6
	4II7GrHvtNgjQU8rc90dfzWUMZXGJ3zKpW9oIT58YRuvFnF8kqGrKStsfER8ndcT9sbMKD0oy3j
	6hx3ZFuhJtV18tnokDCQfgyaRyI+R10m2H/7hcXr/LTD35EGVJq9vx7/8g2s9nrcJWsBuOKQLxM
	ax9t7BaH5JwBT5UJPz4MGkR57gq5xxbHQcOir90/OkOB9B4BUd2kgow5vTELUiNfmZMzIkznhHU
	ws=
X-Received: by 2002:a05:6a21:6d82:b0:39c:cdb:5d82 with SMTP id adf61e73a8af0-39c4ad6540bmr304311637.38.1774367991049;
        Tue, 24 Mar 2026 08:59:51 -0700 (PDT)
Received: from toolbx.gk.pfsense.com ([103.70.166.143])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b040da3easm12352116b3a.41.2026.03.24.08.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 08:59:50 -0700 (PDT)
From: Gopi Krishna Menon <krishnagopi487@gmail.com>
To: sre@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	lee@kernel.org,
	conor+dt@kernel.org
Cc: Gopi Krishna Menon <krishnagopi487@gmail.com>,
	daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: reset: st: convert to dtschema
Date: Tue, 24 Mar 2026 21:29:30 +0530
Message-ID: <20260324155935.183952-1-krishnagopi487@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,nxp.com,ti.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-279944-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishnagopi487@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nxp.com:email,ti.com:email]
X-Rspamd-Queue-Id: E066A318AC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the STiH4xx reset controller bindings to DT schema.

Suggested-by: Daniel Baluta <daniel.baluta@nxp.com>
Suggested-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Gopi Krishna Menon <krishnagopi487@gmail.com>
---
Note:
* This patch is part of the GSoC2026 application process for device tree bindings conversions
* https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

 .../power/reset/st,stih407-restart.yaml       | 31 +++++++++++++++++++
 .../bindings/power/reset/st-reset.txt         | 11 -------
 2 files changed, 31 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
 delete mode 100644 Documentation/devicetree/bindings/power/reset/st-reset.txt

diff --git a/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml b/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
new file mode 100644
index 000000000000..d7adbc00f5c3
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/st,stih407-restart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST SW reset controller
+
+maintainers:
+  - Lee Jones <lee@kernel.org>
+
+properties:
+  compatible:
+    const: st,stih407-restart
+
+  st,syscfg:
+    description: phandle of the syscfg node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - st,syscfg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    reset {
+      compatible = "st,stih407-restart";
+      st,syscfg = <&syscfg_sbc_reg>;
+    };
diff --git a/Documentation/devicetree/bindings/power/reset/st-reset.txt b/Documentation/devicetree/bindings/power/reset/st-reset.txt
deleted file mode 100644
index b63948737d80..000000000000
--- a/Documentation/devicetree/bindings/power/reset/st-reset.txt
+++ /dev/null
@@ -1,11 +0,0 @@
-*Device-Tree bindings for ST SW reset functionality
-
-Required properties:
-- compatible: should be "stih407-restart".
-- st,syscfg: should be a phandle of the syscfg node.
-
-Example node:
-	restart {
-		compatible = "st,stih407-restart";
-		st,syscfg = <&syscfg_sbc_reg>;
-	};
-- 
2.52.0


