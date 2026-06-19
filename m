Return-Path: <devicetree+bounces-313723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R5G5F6IVNWowmwYAu9opvQ
	(envelope-from <devicetree+bounces-313723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:10:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CDF6A5216
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:10:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Hn7cowuZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313723-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313723-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D0D5300729B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 10:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55F4370AE9;
	Fri, 19 Jun 2026 10:10:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFB936EAA2
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 10:10:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781863835; cv=none; b=X6BETpT6QFtZe5H1FntUKzJIr0LRTf/AlZOu8cv9h1+0xzlzA5XQ3He0CwJEQgRNZqX9DpwB6Kx3TbaDfmKA7lh33MfJXvgfqjhGEpmkTH8cKi8pg+tBDqId4kj/CU/FISyZ4qDlfXafplf1JPA03mUfJAN1IKUAkEKcdshXfUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781863835; c=relaxed/simple;
	bh=ynBdAg45QWZz3pyG1uSkLFOP8GHOovwfLcLE7dEfSa4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dTt6cn59TxD3uK36C4MQtI5MBx8KD5FhkT0tt7A00yHLqvyduDYai6o8Jma6mi5Oak2jEcFGdOj5GgLAN8P5UFY58si+LScO77puEW4DgJGdo/J9xmpE/B42axDv8tBLk/L8ndzDkORx+IkyUQiV0csnAon6IXpO3YlRA7LILrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hn7cowuZ; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490afc47455so7805785e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 03:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781863830; x=1782468630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxommcvayRSmRZH5CG3ACXxOwllN7Vo1/cLsPn9rijE=;
        b=Hn7cowuZgLvFtzcGQxj/SOyWMXWib19n30Obg3nsw8Hzj4u8jfzs8XeFC8LobUtaIb
         vYx43lp6Y4t2DHxeoEQ511mwg/6HsU2JIVeKe7a0T4qvrtdH1+B6TMFcWy9ucLlZ8ElA
         WjoNBPjUgM4ZuTsrycmZwTORdZ+XCl/pcPNOad6NxLUFvRukcMteiAUt9TzyZJBUJYWj
         qQO44PeU831erbjRAZYrjTcUSmb6ctyzfi7vjICF6ml0ce0BKopHxtSKnoIDdUMjHZjx
         RyKJgTkCj5iuRDtsLRBdqKJW4EQIMG9fkmH0Ek7IK2QETMmMp9E13u5UmJ93/kqay3+h
         mGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781863830; x=1782468630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xxommcvayRSmRZH5CG3ACXxOwllN7Vo1/cLsPn9rijE=;
        b=luPV2td3jO9K24TMVIHIhaXpjE48zeWP3oNsk6kqcJX5vnwUbUg2BGcDCAeNW8bEzq
         +qh3x+Fld551ZWNgENalAg2iqnoaySFTLh5SPNvkWzA3cTNNTslDh1fmpQwvLVgn7DKO
         i+GcmSgswsivn5ZrxNk3rHG+XenXOj6ldWcWTecoIS2f6B9vz856Nt5ckNudGpWXpWtS
         asaZ0VnjDcHJBVnMkUG+D2F3XBpzVet75CkEdtwbkbEnNMsWWzhwihLNyCZMoxxH4gU3
         IISR9gMOsq76Uv/9Jfn62WXncrVXERDWpx2wF9jjln0i0HOwlcMO9p3yEk7pggSbjLL8
         SNhQ==
X-Forwarded-Encrypted: i=1; AFNElJ/LyT9QQkECeDqHXpOGpDb7iJcnBuyk6Ssp7qqdV3ytQey2vezIIRYUa6DlVpjUVRsCW/htw8hvJMN6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/UTELOhbtkwhOPy/pKhiD0DXEQXa1UY5wGBQVKdvQMhkyWAgC
	1BLVCqn735BEYaba6hXUve8zE30Hp/2ouRo30MiqFl8h2hA5sz8VKc1x
X-Gm-Gg: AfdE7cnPINGi+bjUpZ3kVmhSP0PxlAP52dzZiZC+DCV+qkSvQEWhGvBSAWxqYtK8HFF
	gTn5Uh7QO676ENGwQfocTsddruqimcLrbqUdL4n5fZeulybgeTAJpkiayQuXG6G9JRBSCB7xDCP
	3F3FGAczxacZ/+T9t789C0Nd97GBpSa5+Vx9sqw31CMoHyYbDZjCB0zTcqe0ssC4Eold3bTn6OO
	qM064RLbWzLpUatfyVvtq0cik+HDWR4wig4G7PAL1V0TV4s0lEOurPCdCknTwQWM3hEmCLTP3sb
	0ssU1BypEuMEg6u/U/a1xvVyBXmIjgSYCUAGyKaeVKvSdkolaWcbSuA/T18gJ66m7QxcjN0gPo9
	xQhUTGfhdn3ok4TfdlDCQaZEeOR3FJDNwjfFWsTga3lwT1mIwj4yplkzQyXEG5QG19wXO0Iaxyz
	q83e5X+gZtEsI6pDT25g==
X-Received: by 2002:a05:600c:4ec8:b0:490:44eb:c1e0 with SMTP id 5b1f17b1804b1-4923f57187fmr55703405e9.21.1781863829640;
        Fri, 19 Jun 2026 03:10:29 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:435:f63f:6fb:bfa4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4923fcdd08esm34577555e9.0.2026.06.19.03.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 03:10:29 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: Document Renesas RZ/G3L LVDS encoder
Date: Fri, 19 Jun 2026 11:10:16 +0100
Message-ID: <20260619101026.323633-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260619101026.323633-1-biju.das.jz@bp.renesas.com>
References: <20260619101026.323633-1-biju.das.jz@bp.renesas.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313723-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:biju.das.jz@bp.renesas.com,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:tommaso.merciai.xr@bp.renesas.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:jernejskrabec@gmail.com,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,glider.be];
	FREEMAIL_CC(0.00)[bp.renesas.com,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,devicetree.org:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48CDF6A5216

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the LVDS encoder IP found on the RZ/G3L SoC. It supports
single-link mode. LVDS and the DSI interface share a peripheral clock and
the MIPI_DSI_PRESET_N reset signal. However, the LVDS module cannot be
used at the same time as MIPI-DSI.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Dropped the tags as it is a rework dropping parent node that contains
   simple-mfd and syscon.
v2->v3:
 * Collected tag.
v2->v2[1]:
 * No change.
[1] https://lore.kernel.org/all/20260524195829.960401F000E9@smtp.kernel.org/
v1->v2:
 * Collected tag.
---
 .../bridge/renesas,r9a08g046-lvds.yaml        | 120 ++++++++++++++++++
 1 file changed, 120 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml
new file mode 100644
index 000000000000..4cd7b688fbf7
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-lvds.yaml
@@ -0,0 +1,120 @@
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
+  This binding describes the LVDS encoder embedded in the Renesas RZ/G3L
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
+    lvds@108a0000 {
+        compatible = "renesas,r9a08g046-lvds";
+        reg = <0x108a0000 0x10000>;
+        clocks = <&cpg CPG_MOD R9A08G046_MIPI_DSI_PCLK>,
+                 <&cpg CPG_MOD R9A08G046_LVDS_PLLCLK>,
+                 <&cpg CPG_MOD R9A08G046_LVDS_CLK_DOT0>;
+        clock-names = "pclk", "phyclk", "dotclk";
+        resets = <&cpg R9A08G046_LVDS_RESET_N>,
+                 <&cpg R9A08G046_MIPI_DSI_PRESET_N>,
+                 <&cpg R9A08G046_MIPI_DSI_CMN_RSTB>,
+                 <&cpg R9A08G046_MIPI_DSI_ARESET_N>;
+        reset-names = "lvdrst", "prst", "rst", "arst";
+        power-domains = <&cpg>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                lvds0_in: endpoint {
+                    remote-endpoint = <&du_out_lvds0>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                lvds0_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
+...
-- 
2.43.0


