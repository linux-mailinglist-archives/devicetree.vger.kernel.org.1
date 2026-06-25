Return-Path: <devicetree+bounces-315636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id navWOA0MPWpywQgAu9opvQ
	(envelope-from <devicetree+bounces-315636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:07:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8716C4FB8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:07:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Fc0oK/BP";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315636-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315636-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 715AB304CF50
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15903AD514;
	Thu, 25 Jun 2026 11:06:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7263D5656
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 11:06:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385614; cv=none; b=XL41gieCdAT2mfNEOZnDZvoRiMZnKhddXgqyyj0yRf8rkY+ysOms3TJM+eCu8YseRADoG5vmAA7OoiS4WxG4GUFiYGOfULnfcBJh1XP7Il/mzHrjsSEnEF52/tydVnxOc0hzYZ17PGY6GU1q2reWiLJ3JWKv1iGLkpIkyr8rEvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385614; c=relaxed/simple;
	bh=BVZeE+/b+l5nBGAuQ0yufIyCZ7s18husYqwSYGKFgEs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JWPhOzzEtdZ9FnMJqQFWNdsshiq8uZmBuIEm5klXatJC7nKik2MIubwWsRu0f4gIm17E53osBmrObr+8+tUWQjP00UvQjHJ7kXVmp08H2URHaluZYQ/2a7Cxl61H4oDjlAJuKgB2aFmMUwx3BTM+j7nT+0kvGQLnYBroE6PPzU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fc0oK/BP; arc=none smtp.client-ip=209.85.210.169
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-845b965c1c4so217421b3a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 04:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782385611; x=1782990411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B1nW/nmFOqYMEtyYiZrpJrEw0myJ3BtBDyAkNbadcU4=;
        b=Fc0oK/BPV+gPexCHijJ+XYsd2XMZOHlFDIt6x1aE+QO+VcHS/3/0DHBYXNG/ASSVjF
         YFwvjBvIMlHgbDzx7PkdrwQNL1RVCCaGjKR9KfXWWhxYdgUywEeht9U7WLC+KZnK5cUC
         GOZi2+7rcKrkHNpN2Ne/+JdbHnKtlEbj0pV/Rze6Ea0t+LNhcwz6B5UnAavxZe32S0/G
         r4yCJ1rqx0gmd/pgHsndq8BYCPyDMRe7HaRxSflCVVep1cMsr0NDQ2jj9CQ5afwxAD+L
         4bI++3bplofhBDANHV6e2w37JZbwpCFLypMePvUDnjODM2KHkSZybmxgPjP83MDOcse9
         NVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782385611; x=1782990411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B1nW/nmFOqYMEtyYiZrpJrEw0myJ3BtBDyAkNbadcU4=;
        b=rWlX3W9tz84fHAMik6fKxfF2EOFffBCUpd8PHG5ffjExZHqacol4Wc5qU8w8nmB5iL
         Rby2XTeSGSl70u0mthUXdtC5JeYf52UBOJFtiuH/R0kAGrWdzlk+2kcAerVfuhq19Lcw
         2OEoSBKCPQygfnuIqj5iIm1Dcj45lDR/OKqKzf4mlsdI4fpmN1TFUR0Xv4K4tS71ZJUi
         snuYEXnRPq+EnWN1koufdN3exeA/txqlnRb8e6DsqNicitItMDcNKFZ8Yss7VTkaMWgl
         YeOyHP7haT5W6dDBC4Sw4zd/vkwvG4RTUFrYaagWFewL5Adg+kxheaaislOxips95U2n
         azjw==
X-Forwarded-Encrypted: i=1; AHgh+Rp4kk03EXFGUUVWziRrFPnsByC0BkFDOST0VW9gxyjRxQTSq+nCNpTAdaoeuQRgKJXxHLm/zSOFsrOL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9YLLPJErveqrSfl/fhnyhyIHPcuFy2aPFb+H1g5U8Yw2DtgoF
	Tmc/l75hiP7/psdIUhYMbX8K4v9SZsgDS7uTNOFybQYCtCftz/BCm8dI
X-Gm-Gg: AfdE7ckP45G+rPJYDAqK4jbVnw3Jmrb5YD5b8OPbhdxhL0tGjI7EU/QGOcfVMxACEEK
	vDESzbgle0ZXlcIAB74i4gI7O8wItT4cWVcbXJxHUwf2vz9sV1OfuJu2yv+J0UkAru4izbeE/8G
	QS0hvxRpwsGF3J/x3hY+B9+7WjYAK7wGJEfEGqmqKy05ZOTEsqTT/EEj98rws/iTXAYbxm0FN1E
	WxlOw8P5qZqCWamHEG63cVYpzsJglruCznfcTXoQujr/cKUr9ZOHsxKx0mu8TFvNtZr4XxQjqun
	tQUCq3WDf3wYwKfKvPE5leeYaK6WkFMUG0dO/4ZUAZzxK69htrbFiVJ+lcTtf2IQknJuZiFcUY1
	2sIPgN0olYGS8pwi5WzvOR48IPKXYiq4eEE1ZExDKQooKhAmOV/UzEwy+ccQTDS09Pjf0P7ymHu
	c25xrXGvi+nqgmdJLrHr3P+egKHsrMDctq5352jq7cAVQEKV0sZkbsF08r2HnzFQoK1KLUEc4q8
	Ms=
X-Received: by 2002:a05:6a00:3984:b0:845:a24d:9b65 with SMTP id d2e1a72fcca58-845b39e6b71mr2663793b3a.14.1782385611082;
        Thu, 25 Jun 2026 04:06:51 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a3fec0f7sm4412759b3a.22.2026.06.25.04.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 04:06:50 -0700 (PDT)
From: Chi-Wen Weng <cwweng.linux@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cwweng@nuvoton.com,
	cwweng.linux@gmail.com
Subject: [PATCH 1/2] dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
Date: Thu, 25 Jun 2026 19:06:37 +0800
Message-Id: <20260625110638.38438-2-cwweng.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260625110638.38438-1-cwweng.linux@gmail.com>
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315636-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwweng.linux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:cwwenglinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,lists.infradead.org,vger.kernel.org,nuvoton.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nuvoton.com:email,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D8716C4FB8

From: Chi-Wen Weng <cwweng@nuvoton.com>

Add devicetree binding for the Enhanced ADC controller found on
Nuvoton MA35D1 SoCs.

The controller has one register region, one interrupt and one functional
clock. ADC inputs are described using standard channel child nodes,
including optional differential channel pairs.

Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
---
 .../bindings/iio/adc/nuvoton,ma35d1-eadc.yaml | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml b/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml
new file mode 100644
index 000000000000..ae7ad0f7689a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/nuvoton,ma35d1-eadc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 Enhanced Analog to Digital Converter
+
+maintainers:
+  - Chi-Wen Weng <cwweng@nuvoton.com>
+
+description: |
+  The Nuvoton MA35D1 Enhanced Analog to Digital Converter (EADC) is a
+  12-bit ADC controller integrated in the MA35D1 SoC. Each enabled ADC
+  input is described by a child channel node.
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-eadc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^channel@[0-8]$':
+    type: object
+    $ref: adc.yaml
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 8
+
+      diff-channels:
+        minItems: 2
+        maxItems: 2
+        items:
+          minimum: 0
+          maximum: 8
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        adc@40430000 {
+            compatible = "nuvoton,ma35d1-eadc";
+            reg = <0x0 0x40430000 0x0 0x10000>;
+            interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&clk EADC_GATE>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            channel@0 {
+                reg = <0>;
+            };
+
+            channel@1 {
+                reg = <1>;
+            };
+
+            channel@2 {
+                reg = <2>;
+                diff-channels = <2 3>;
+            };
+        };
+    };
+...
-- 
2.25.1


