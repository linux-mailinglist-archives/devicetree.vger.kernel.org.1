Return-Path: <devicetree+bounces-269048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QP3CGEscoWlhqQQAu9opvQ
	(envelope-from <devicetree+bounces-269048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:23:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2261B2A6F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA12031F6C1A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C5383603ED;
	Fri, 27 Feb 2026 04:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=morsemicro-com.20230601.gappssmtp.com header.i=@morsemicro-com.20230601.gappssmtp.com header.b="CNihtoxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EB234F48D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165711; cv=none; b=jnufdfqIEzgLt0Bomuvm3P/lysKmgiEU7liIvEiLpvSiu9UStGwL8egCywr1Y8dtyTfdifn7Dzz4qJfwWTi11nm3fY/WZ1StGAglrSnifsRZZXKi81zYL1EW8vQ1YMLgGoMtz04oRRXiczE2vGU0Hk9SrPHnYsIaPO6DuWxOtw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165711; c=relaxed/simple;
	bh=uMJynkx/O6bdBdkFYzgA2QZyEir/x8/YP4F/uP5EXuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=emyGzQ/TMs0cdWQxuFWfhcZ3LscJpCIsa6irhBmYH0+kC/6FK8lbRQ4bEJovV4NiBLwYqeoWul6TksK/PNFs/x3BnBTiZI3r810XI0/dmUcbbundibjhSU8IoGW04qZyU5kzFj/BSqKzc2pPJn1Et8yCVCJXcSCGLubYmzrBTtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=morsemicro.com; spf=pass smtp.mailfrom=morsemicro.com; dkim=pass (2048-bit key) header.d=morsemicro-com.20230601.gappssmtp.com header.i=@morsemicro-com.20230601.gappssmtp.com header.b=CNihtoxU; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=morsemicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=morsemicro.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ade1806c28so9818455ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=morsemicro-com.20230601.gappssmtp.com; s=20230601; t=1772165710; x=1772770510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gQaT39X1pW5Uj8P6xeoT4vITsfrQrMrLtWroQphzDA=;
        b=CNihtoxUdecozE3VrGz8Z7On7OWLmj5irBehKXIOC1kL6M2PdPRyBRkGUU0dJ8fRaC
         PhuPsQSryxwNh3/3MbdpZa7QZeXw5UPWVs/y6EHfp19ELR/23BXlrF9TZDw0F5GHR7IY
         4UABZ1cHvSLn7SJDDIknkRHYT2b1Vax2TxXYaf/cm2gHRjRvW1KQyLUjrC8gCNScV+FR
         aRXn2ZygazmJSDeB+LD6W76kWCPhvHcTb1chcg7O44lrBx3Z+w+07R52T5tOhRXZDCNF
         db3hO0Yq1ZoH8sz3WTz83FMMbTu+n3tWb8aDgQqFqkysPK5lJjlmJe7pJxATMzLm6DyM
         VeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772165710; x=1772770510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+gQaT39X1pW5Uj8P6xeoT4vITsfrQrMrLtWroQphzDA=;
        b=LG9zpCZysxB8cvudDzJepZYFz59S+rQhfgYvQKMm6yUwUuLprZC5QrDzxe74oLrptJ
         bdb/4Svv/pWH7UNyy9YyMcZAii9f1YetPnOTaj7Sy7D3d9pIbbydHylHADZRh3ITN8Vg
         b+CoN0uAO07hcCILu13rXbJ/5wHF0TtcFJwxZvHlPR899K30fHjqmGcdsWlAS+arjiOp
         5UZX7zzCF+b1zbkZcH0Ckvmw2rUjgHA2quVadNbPmTNATpRLoTYSkPl7m6qk1A/l8ScY
         cJcjzOs8wfhOrEvrJTpK0n7IrHWYO3JLVRSXO9nigCz20Y4XSdcH/qefstaAGtTB3Sm2
         yW5A==
X-Forwarded-Encrypted: i=1; AJvYcCWvGrXiiUyDiwztS+25Ef4bpARCpVii8SWTmkG5Aq3LvblTX+HBRMXCJc9lv3zagkPlOmYdj+3HTjDr@vger.kernel.org
X-Gm-Message-State: AOJu0YyQXB5g1OevaxnueXOVJNfuAnYbRAIlECDK/wnsWcqPBje4YC/v
	1Yo4ygk3BHM4u2F5cfgWZzweMkuBkjtn96kNwC8TAc1mx+mIKdj/8exWhnUNn3gLRsI=
X-Gm-Gg: ATEYQzxYSabFhTiNDIo8yGnkcYQyRWIjELabjzIecwyDUr+yWNSAV9JJ9Fbo9URkn0w
	WY8NLvR+MkPHn1QnlncFrdbcgJfpP+woeQL9n4vua0TNirchEz5sp8eDu8YyE0WAEDRzL5TCe4/
	YDoj5IKZqtxWhESdMCPpPTq8p5YbL04V8k1IIfwVp1+8+MmtLAODvTz7WnfiDm0MiNtE9vp31v2
	gl7oBTWBanSgkgTeoWFfocwA34W9ekNUAMKpU9b53nOxo6y3OI3YwIzV8XHKkCM098mcm8tijQQ
	maAE+af+ImLf1Za6kWyItbu2ei0ovJpcsQM4fbHASmlDQDv/ErSXwZjIOel5qHwOJowAHmz6fPP
	ehIX7AAcZTEFy8JSU7gTmGtLE38LGzmo3GcZXsxlGLN5qWueNg6NqAsZiCCplhrNzh/i3Pqrekq
	mmDKdTzHqAsWi7qrt6IAwJ808LJ4x6/TOaqGxNSXBshqtnSqyZM7+9q33Y7g4Aq+EhNHQdUCQqt
	iqoYAf1jFThFqNm1NWEQoxCyIf57EA=
X-Received: by 2002:a17:902:d488:b0:2a9:62ce:1c0f with SMTP id d9443c01a7336-2ae2e4f3d26mr15698125ad.55.1772165709705;
        Thu, 26 Feb 2026 20:15:09 -0800 (PST)
Received: from mma-H9MHD44.lan (60-242-93-14.static.tpgi.com.au. [60.242.93.14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6ba5eesm41682865ad.68.2026.02.26.20.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 20:15:09 -0800 (PST)
From: Lachlan Hodges <lachlan.hodges@morsemicro.com>
To: johannes@sipsolutions.net,
	Lachlan Hodges <lachlan.hodges@morsemicro.com>,
	Dan Callaghan <dan.callaghan@morsemicro.com>,
	Arien Judge <arien.judge@morsemicro.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: ayman.grais@morsemicro.com,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH wireless-next 32/35] dt-bindings: net: wireless: morsemicro: add mm81x family
Date: Fri, 27 Feb 2026 15:10:42 +1100
Message-ID: <20260227041108.66508-33-lachlan.hodges@morsemicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260227041108.66508-1-lachlan.hodges@morsemicro.com>
References: <20260227041108.66508-1-lachlan.hodges@morsemicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[morsemicro-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[morsemicro.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[morsemicro-com.20230601.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269048-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lachlan.hodges@morsemicro.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,morsemicro.com:mid,morsemicro.com:email,morsemicro-com.20230601.gappssmtp.com:dkim,devicetree.org:url,0.0.0.0:email]
X-Rspamd-Queue-Id: BA2261B2A6F
X-Rspamd-Action: no action

Add dt-bindings describing the Morse Micro mm81x family of
chips.

Signed-off-by: Lachlan Hodges <lachlan.hodges@morsemicro.com>
---
 .../net/wireless/morsemicro,mm81x.yaml        | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/morsemicro,mm81x.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/morsemicro,mm81x.yaml b/Documentation/devicetree/bindings/net/wireless/morsemicro,mm81x.yaml
new file mode 100644
index 000000000000..653a7476cf8f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/morsemicro,mm81x.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/morsemicro,mm81x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Morse Micro MM81x
+
+maintainers:
+  - Lachlan Hodges <lachlan.hodges@morsemicro.com>
+  - Arien Judge <arien.judge@morsemicro.com>
+
+description: >
+  This node provides properties for configuring a Morse Micro MM81x device
+  connected via SDIO. The node shall be specified as a child node of an SDIO
+  controller.
+
+  It is recommended to declare a mmc-pwrseq on SDIO host above MM81x. Without
+  it, you may encounter issues during reboot. The mmc-pwrseq should be
+  compatible with mmc-pwrseq-simple. Please consult
+  Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml for more
+  information.
+
+properties:
+  compatible:
+    items:
+      - const: morsemicro,mm81x
+
+  reg:
+    description:
+      <reg> must be set to 2.
+    maxItems: 1
+
+  wake-gpios:
+    description: Phandle of gpio that will be used to wake up the chip. Powersave
+      features disabled if property not present.
+    maxItems: 1
+
+  busy-gpios:
+    description: Phandle of a gpio that is used to indicate the chip has data
+      ready.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    mm81x_pwrseq: mm81x_pwrseq {
+        compatible = "mmc-pwrseq-simple";
+        pinctrl-names = "default";
+        pinctrl-0 = <&mm81x_reset>;
+        reset-gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+    };
+
+    mmc {
+        mmc-pwrseq = <&mm81x_pwrseq>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        wifi@0 {
+            compatible = "morsemicro,mm81x";
+            pinctrl-names = "default";
+            pinctrl-0 = <&mm81x_busy>, <&mm81x_wake>;
+            reg = <2>;
+            wake-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;
+            busy-gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+        };
+    };
+...
-- 
2.43.0


