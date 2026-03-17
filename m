Return-Path: <devicetree+bounces-276608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aINLCikruWmVtQEAu9opvQ
	(envelope-from <devicetree+bounces-276608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:21:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2DA2A7C59
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5613309A61D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665863A5E93;
	Tue, 17 Mar 2026 10:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CiENfRnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9F73A4539
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742596; cv=none; b=PHxpM5BVM6/uIm49JDbVaglnHrImed/C7edAUmrV6uqif2lCbR/NO7tNWvMZajFoLDEMAztpBwF7U/XtbU5MqxVzc/VgkZr8xIwoOca/5Wt6WeoZWfJEN/5WUdMhVYRLeEmeAXDMQCtQXR/4N4OHXiknrLzPVDASlQyEz/sjzII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742596; c=relaxed/simple;
	bh=se68fAGuB/j8qlO1u+fnKd186GWgmOrI8uSRY2A7fp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TxXJcO3McEKfPiGPQ6i0twjJZVPOp/7JqNnJrvCUn9M1bBndW2U09+zk/OX8uP4m5yW9jREc6ZB5YLtHqPjv9FooQn/cjBiDzYPUBT9CM6N8oy6VsJyy848/3E047Bf1N4xGb2UwleIZ79CIo/81iQDp8V8xXV3kg4MNKtCF/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CiENfRnf; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43b4fd681c2so180861f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773742593; x=1774347393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqdh04d/N2PVxo1lQ+gjA+vu/NkwjnKwwKhdoYX6Q4g=;
        b=CiENfRnfAjRQLrTiNTrFqONQ4s4smpqFb6gpPaeO/NmIlsfV8XdMCj2beqYubIw6St
         ZhWJHVJ0ilbx8NDMInWbKTdmkIEXd2WTf6ahNzqpgKaUQp9RAfT8c9Qj51oGAOWDCPNM
         KfGd/Ige6XQuTsrWOA8OPF83zDZZ4rFSj/XBHbZvLxk6rl2KF8adk7CHn16U3OVYH09c
         5URDUzRayEojDZa8hhENA/iOH1Fbu83KST6TI3Ki1mIefsL3p/uC5qDNPvgLRIPqWijc
         TElMjRDzct6OWfQ8bvwJjVsC3P+FSscjHqu+nnKHJci9ZM/LJfRGj4ELtO7BjyUEO0Nv
         BmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742593; x=1774347393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bqdh04d/N2PVxo1lQ+gjA+vu/NkwjnKwwKhdoYX6Q4g=;
        b=fbAdwEXgqCFy+JP/9fgk1IGOgDfkQPFlMDFxBkLepdusvfZ0DOQMx8hGsvOEWRFH6+
         3ORjUioKOTr7rOjhHaMs9+uXG8Z6/hmQP0k+50C5lSCrGxnoaU8JlgD0k9rTQcTScPK0
         C4KfjfK4FVXyN5X9oxjS/wGesxqnhkmOxFV2HRFuSZKS6IgIRX5tozW/Zt5hyJp4c8Ls
         dPH1RUlsHX4VsnrQL5QMl9K9lTyVT8k4MHURy+s3RWLLUc7RtJLedi8oumOGyJMoQQEO
         lIBxQjeMiIYFW3yk2EOp/dK7PzBEhbfsg7ll78mUjU1uKbJcdH0mjD9Z/d7rs1ykOnFF
         xkGg==
X-Forwarded-Encrypted: i=1; AJvYcCW46ggaEPejL9jqE/LJiEOsjKVtSWZibQ9xhEmB3tRyKCSXhUSJ+V/Tp/lOxVIvEe34rAuATDjyVIzn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw44BzPO1k4rjPyLoe80LyPz4ERFLOJOGUkQy8hja8Jhspvf0Xj
	y+YmYEvN7eEkMNQy1iuWN6Nf/JKGlwYPzJFy5/3XIRWnBB6vy6Fi88mIqLAQaQ==
X-Gm-Gg: ATEYQzwslEDyxV116swqz0JCCK8j6TeBbrdROZNzmKbmGjMpElUP+slo25JqaLnOgJZ
	CSZ+l8azYWVVpkbng3tOuQD8x7Ky/K+gWjuFUmlLfkTnnh6rfxSsXvvtVhIioz4aw6UG/sPCkuX
	BOPWydXlamiGGOc6BggqdGOMb4djVJA7CPN60O+fkWoqjP0ozhse3bCKYJy54lnJy2jtiH3CcTe
	A2eixlK6fYoFfsZuZvR4O+eO0LbtaeKdK2TSkbRiYROlbnQm+4BaiVrwzF4razUJOQQT+ssm9P3
	3iBHEAeDuQct1qz2iBszrY8wfQXLQxoqtNg4lf9XXCU0oKwosWCoNYl4E+zHKED0kf80diNRr60
	qnpj5UvJzXu26PlJBt6e/TP3/PIUkL+4U/wayGIKr7c7e3NGILWoRO6jL2NFgPTn0MGUu6kG+D3
	TYpm4G6q/ChM6lWGVy+P3V5ffa4QZIFIkx6d2Rcji0zGdiFdzi
X-Received: by 2002:a05:600c:468e:b0:485:3f58:d9d with SMTP id 5b1f17b1804b1-48556714b67mr269050695e9.32.1773742592645;
        Tue, 17 Mar 2026 03:16:32 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaee510sm53903275e9.14.2026.03.17.03.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:16:32 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/8] dt-bindings: pinctrl: renesas: Document RZ/G3L SoC
Date: Tue, 17 Mar 2026 10:16:15 +0000
Message-ID: <20260317101627.174491-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
References: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276608-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,microchip.com:email,renesas.com:email]
X-Rspamd-Queue-Id: BD2DA2A7C59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add documentation for the pin controller found on the Renesas RZ/G3L
(R9A08G046) SoC. The RZ/G3L PFC is similar to the RZ/G3S SoC but has
more pins.

Also add header file similar to RZ/G3E and RZ/V2H as it has alpha
numeric ports.

Document renesas,clonech property for controlling clone channel
control register located on SYSC IP block on RZ/G3L SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * Documented renesas,clonech property for controlling clone channel
   control register located on SYSC IP block on RZ/G3L SoC.
 * Retained the tag as it is similar change for RZ/G3E thermal bindings.
v1->v2:
 * Collected tag
---
 .../pinctrl/renesas,rzg2l-pinctrl.yaml        | 20 ++++++++++
 .../pinctrl/renesas,r9a08g046-pinctrl.h       | 39 +++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index 1a94e396b1b0..fb1fe1ea759f 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,r9a07g043-pinctrl # RZ/G2UL{Type-1,Type-2} and RZ/Five
               - renesas,r9a07g044-pinctrl # RZ/G2{L,LC}
               - renesas,r9a08g045-pinctrl # RZ/G3S
+              - renesas,r9a08g046-pinctrl # RZ/G3L
               - renesas,r9a09g047-pinctrl # RZ/G3E
               - renesas,r9a09g056-pinctrl # RZ/V2N
               - renesas,r9a09g057-pinctrl # RZ/V2H(P)
@@ -88,6 +89,16 @@ properties:
           - const: main
           - const: error
 
+  renesas,clonech:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to system controller
+          - description: offset of clone channel control register
+    description:
+      Phandle and offset to the system controller containing the clone channel
+      control values.
+
 additionalProperties:
   anyOf:
     - type: object
@@ -150,6 +161,15 @@ additionalProperties:
 allOf:
   - $ref: pinctrl.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g046-pinctrl
+    then:
+      required:
+        - renesas,clonech
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h b/include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h
new file mode 100644
index 000000000000..660c26477d42
--- /dev/null
+++ b/include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * This header provides constants for Renesas RZ/G3L family pinctrl bindings.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ *
+ */
+
+#ifndef __DT_BINDINGS_PINCTRL_RENESAS_R9A08G046_PINCTRL_H__
+#define __DT_BINDINGS_PINCTRL_RENESAS_R9A08G046_PINCTRL_H__
+
+#include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
+
+/* RZG3L_Px = Offset address of PFC_P_mn  - 0x22 */
+#define RZG3L_P2	2
+#define RZG3L_P3	3
+#define RZG3L_P4	4
+#define RZG3L_P5	5
+#define RZG3L_P6	6
+#define RZG3L_P7	7
+#define RZG3L_P8	8
+#define RZG3L_PA	10
+#define RZG3L_PB	11
+#define RZG3L_PC	12
+#define RZG3L_PD	13
+#define RZG3L_PE	14
+#define RZG3L_PF	15
+#define RZG3L_PG	16
+#define RZG3L_PH	17
+#define RZG3L_PJ	19
+#define RZG3L_PK	20
+#define RZG3L_PL	21
+#define RZG3L_PM	22
+#define RZG3L_PS	28
+
+#define RZG3L_PORT_PINMUX(b, p, f)	RZG2L_PORT_PINMUX(RZG3L_P##b, p, f)
+#define RZG3L_GPIO(port, pin)		RZG2L_GPIO(RZG3L_P##port, pin)
+
+#endif /* __DT_BINDINGS_PINCTRL_RENESAS_R9A08G046_PINCTRL_H__ */
-- 
2.43.0


