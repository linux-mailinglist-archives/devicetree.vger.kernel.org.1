Return-Path: <devicetree+bounces-289184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJ2MCFK152lU/wEAu9opvQ
	(envelope-from <devicetree+bounces-289184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 19:35:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7596743E0BA
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 19:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7389308FD5E
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 17:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247C635A3A9;
	Tue, 21 Apr 2026 17:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XuJQxFzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736653537D4
	for <devicetree@vger.kernel.org>; Tue, 21 Apr 2026 17:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776792560; cv=none; b=u1jrWm5qwnkMj6FBVNjgj6vji6thyARiISKo1C6+O6/OlBXf+U3LIibX1CvbAvdC39oJ4400xJQJ+fG9O//XKj3jmm8GliooSrqmPj5PmPba87Irlh8h0/OdK5Wc5xbSxFxjVp9+IJMKOVASq5XNKCQK3M9e2A/Ft5042Fpb4Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776792560; c=relaxed/simple;
	bh=Ps1/0vkkzrRtMA4BgvshaoM7YLzQaURgvp8bGQL24aE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M7NyAtPMsCtSglhpkcj6UeCUlsqnRbGXJ5WpjKOl/cFkInP57nOf1JYGEajEbhlApdCuV9W81dUyxrd/D7t6v3qUx/nIwe4DwSIvXo36x+dl/T1ujP/KH4xGIG+eMueLrqA2pUANnEluC8IVZ8JOi2QPotqZ3y/snf8539D3M2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XuJQxFzf; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48896199cbaso46353565e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2026 10:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776792557; x=1777397357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXrLm53G+XO/vzNjvyvj6ec5ugmd6jDhCT4ykP0A6dc=;
        b=XuJQxFzfYTjVdx3qpNUXlakyhVm+xbzdHWUWaiTXNvNiAnsUxNvfhoE/HLqRDSSZyp
         T5a6u9J0uiUd+hhkWTsuwLg/UaW+8vOuRBO72ApBhr+T9jcJevwdH4FTR2MZx2lYEyeZ
         OhUPDQP1pTrc7Aun9+ehxbXnMdoUl7AnCmgoITk0o6X3Oz8RR/yPrEqsyCmiZTPbTE/Z
         A36zREp4ncB4xZL5N1PFbRrxWfcPZiKcXbVsVfQ8r1uBS07zwNigVZeBdpq7f2w94iNJ
         U8EcUBjkMJ+6F/Hw4FujO1OmZDgM+q7le8AY9UVYVZseSsviPfSChxHYvqAEx/qBIBho
         jO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776792557; x=1777397357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nXrLm53G+XO/vzNjvyvj6ec5ugmd6jDhCT4ykP0A6dc=;
        b=W0Tp/eY5gFrLIPs+WQ2LPCEfpuR+4Q+I/ALXWQMKR1oFy6DOty5By+3BXKOY6XsWRS
         pXlgGAwniI4zayRFk9WVP+wjS0q1zUPJES+RLdr4xusqb+93wK0kDP0ycR+T1Cm6NdcN
         GXonV/jqe0V/QnROiyvAjj5VogruHknl2ejU/Saku7GRKpQTCrdyWVNNQXoQudYGVHgA
         +2VgBIj9AJAMGKqOa8YVbacElRP/KhUzXnela8Wo2P0AuaAtwNhgR4lLpF1Py2/xsiEb
         43DhzVM3CucSRNlV4rz4FFYOhfYxh1ToG3rdGuRpKodoC4USvs2LXvPYlQGNbmEB3zyb
         uXAw==
X-Forwarded-Encrypted: i=1; AFNElJ+cCzjSzaGcKJxz9W9u35P16A8t395GpB8UMq+OLVAIwZhpWe3tPmVlMNfNAiv38yXl5gImu2z9vhvc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy61yFY+YlQcqxBtq7Nd6Oi4iEE5VQUqnpBqoAHAAVurFjfGmpQ
	O/npZc8uk5SH0UPyveteKjZgHlM2HHe7SKT5nnCSUFHIMktbGojDzYTr
X-Gm-Gg: AeBDietpH4UzOoa3Zwx89+y2JzJRJg1li01P8PEpHCy5OTaGnr67QMCAUIN0sI+pcAo
	njMgj+K3fluevkhjeBd5IWxaeajHk4+bt2SHPIyL08JEHkRE0nk/KCDkwbb8U+I5mke62t3r8jq
	H0kkVUN/24d9zSPaYECCpQs5KapYzeFyrtGq9RJlERPCcSd2QsenV4r41BB7aJn8YWa2hJQztSp
	Pdb9wMuV4mPptZNkIl1NW26+5t2nYu5KEm9rPMLo/J1TDZ4T4/iQhaDL/D0QhLeZn/zAaySm8J6
	QI091gO/qB5E0Dz7ZWTvXGHBMIZk/XwwPhxyEYUSH2qgF7YqwxTm7HjNE2tVWzelKT18maZNN6R
	KtaAlWrDYNFZAZd1lu8Zq5jh6pPy65x6+6fMFayppUTgKGdO9HMjP+/zkmRZE0emF6aqJRlTFXJ
	BHlntpsLquyEer2RRiSwFrgHYQhaBxYucJa1Cf9b0cqAaGjUvkjGFslqbSqgA=
X-Received: by 2002:a05:600c:8b2e:b0:488:b749:8482 with SMTP id 5b1f17b1804b1-488fb7469b3mr295630145e9.4.1776792556705;
        Tue, 21 Apr 2026 10:29:16 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:de57:c37d:677b:c772])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a525a0b1asm57445855e9.2.2026.04.21.10.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:29:16 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/3] dt-bindings: display: bridge: Document Renesas RZ/G3L LVDS encoder
Date: Tue, 21 Apr 2026 18:29:04 +0100
Message-ID: <20260421172910.218497-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260421172910.218497-1-biju.das.jz@bp.renesas.com>
References: <20260421172910.218497-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289184-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,ideasonboard.com,kwiboo.se,gmail.com,lists.freedesktop.org,vger.kernel.org,microchip.com];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,glider.be];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.10:email,108a0000:email,bp.renesas.com:mid,0.0.0.1:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,renesas.com:email]
X-Rspamd-Queue-Id: 7596743E0BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the LVDS encoder IP found on the RZ/G3L SoC. It supports
single-link mode. LVDS and the DSI interface share a peripheral clock and
the MIPI_DSI_PRESET_N reset signal. However, the LVDS module cannot be
used at the same time as MIPI-DSI.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag.
---
 .../bridge/renesas,r9a08g046-lvds.yaml        | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml
new file mode 100644
index 000000000000..b1f6d020ae7b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/renesas,r9a08g046-lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G3L LVDS Encoder
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+  - Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
+
+description: |
+  This binding describe the LVDS encoder embedded in the Renesas RZ/G3L
+  SoC. The encoder can operate in LVDS Single-link mode with 4 lanes
+  (Data) + 1 lane (Clock).
+
+properties:
+  compatible:
+    const: renesas,r9a08g046-lvds
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Peripheral clock
+      - description: PHY clock
+      - description: Dot clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: phyclk
+      - const: dotclk
+
+  resets:
+    items:
+      - description: LVDS_RESET_N
+      - description: MIPI_DSI_PRESET_N
+      - description: MIPI_DSI_CMN_RSTB
+      - description: MIPI_DSI_ARESET_N
+
+  reset-names:
+    items:
+      - const: lvdrst
+      - const: prst
+      - const: rst
+      - const: arst
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input channel, directly connected to the Display Unit.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: |
+          Output channel, directly connected to the LVDS panel or bridge.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - power-domains
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/renesas,r9a08g046-cpg.h>
+
+    lvds-cmn@108a0000 {
+        compatible = "renesas,r9a08g046-lvds-cmn",
+                     "simple-mfd", "syscon";
+        reg = <0x108a0000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        lvds0: lvds@10 {
+            compatible = "renesas,r9a08g046-lvds";
+            reg = <0x10 0x8>;
+            clocks = <&cpg CPG_MOD R9A08G046_MIPI_DSI_PCLK>,
+                     <&cpg CPG_MOD R9A08G046_LVDS_PLLCLK>,
+                     <&cpg CPG_MOD R9A08G046_LVDS_CLK_DOT0>;
+            clock-names = "pclk", "phyclk", "dotclk";
+            resets = <&cpg R9A08G046_LVDS_RESET_N>,
+                     <&cpg R9A08G046_MIPI_DSI_PRESET_N>,
+                     <&cpg R9A08G046_MIPI_DSI_CMN_RSTB>,
+                     <&cpg R9A08G046_MIPI_DSI_ARESET_N>;
+            reset-names = "lvdrst", "prst", "rst", "arst";
+            power-domains = <&cpg>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    lvds0_in: endpoint {
+                        remote-endpoint = <&du_out_lvds0>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    lvds0_out: endpoint {
+                        remote-endpoint = <&panel_in>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.43.0


