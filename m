Return-Path: <devicetree+bounces-326167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KorbJpIjVmpMzwAAu9opvQ
	(envelope-from <devicetree+bounces-326167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:54:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF0F75424D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:54:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=dwE6BOTC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326167-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326167-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D97F23052B94
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F913CF20D;
	Tue, 14 Jul 2026 11:45:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8483CE096;
	Tue, 14 Jul 2026 11:45:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029530; cv=none; b=gYcI+YYAMGot+7sY6OYpgyUWRCHVI3bwYavbYLBWZSVROs4P9B8byIYtcDyxPRZcTJh7jMHJFMC6Ih4CzvIRmLe2FO/+3n3J8GevHDKCBFKYEoD/T9eP9PBHOg4VrPeQcb5xJpYY5aTz50ctZnWNeOsH3ShvW+WvFCLWFYCoqB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029530; c=relaxed/simple;
	bh=2oMEWGJqJw3ZhiHkQ1HtMTnhkMX9kCC2Sc5DJ6y/FJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RAsAlcXJB+hnEd44Wc5+VvqDeEWAsxGiK0mCFsgF+di+wSrBOsC/9fxLfRgho9wKraMtuEkn1OqLqlZ3LT4RDj0u9K9Tr4ePsswJllZzMLilJrL72v6lN814MmZwqDBy0TQqGCvz2Xybv/DBpkwTP6ywlu//IoH+CWUzyQ+c30o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=dwE6BOTC; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784029526;
	bh=2oMEWGJqJw3ZhiHkQ1HtMTnhkMX9kCC2Sc5DJ6y/FJE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dwE6BOTClq0tJ4hDmXlIyjTU8iC8bcZx8V68gJDhkaeYgS4PruxOAZmFcHjh/ll/X
	 AVaQdCr9oGeXC5iOXnogr12pcFWcjEY59Pbe14yABVxxR8yChlbA3Pe29vwN3yZ9Dm
	 vhGeT1fOq4eEJkaF7zNJkEjtAVdZN6J4KivR9QQWEYgRJjNi2L4MQg+3bWxWelwsVw
	 2A0uQ1Bk9EhNZyZeBPO9jLftDK0tLnTdfIlZZ8lCHi1Byooojort+J9Uxg3+kjMAnM
	 mAfr9Bodby5kRnBOQw0zPWMcJfz+MfaeW1HLLnU4BM11wFn2W5ObBqETCXELmtoJVG
	 uZxusMTaMgPWQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AAED317E0E95;
	Tue, 14 Jul 2026 13:45:25 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH v2 42/46] dt-bindings: display: mediatek: Introduce MT8196 2D Sharpness Processor
Date: Tue, 14 Jul 2026 13:44:10 +0200
Message-ID: <20260714114414.184512-43-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
References: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-326167-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DF0F75424D

Add documentation for the Two-Dimension Sharpness Processor, or
"TDSHP", found in many MediaTek SoCs including MT8196 and its
variants.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../mediatek/mediatek,mt8196-tdshp.yaml       | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml
new file mode 100644
index 000000000000..ccd6a8443443
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8196-tdshp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Display Two-Dimension Sharpness Processor (TDSHP)
+
+maintainers:
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+
+description:
+  The MediaTek 2D Sharpness Processor (TDSHP) is responsible for performing
+  image sharpness adjustments/enhancements in a display pipeline.
+  This hardware block supports adjusting the luma and contour 2d histograms,
+  frequency weighting, luma-chroma gain and others, with adaptive weights.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-disp-tdshp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
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
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+
+    required:
+      - port@0
+      - port@1
+
+  trigger-sources:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mediatek,mt8196-clock.h>
+    #include <dt-bindings/power/mediatek,mt8196-power.h>
+
+    tdshp@321e0000 {
+        compatible = "mediatek,mt8196-disp-tdshp";
+        reg = <0x321e0000 0x1000>;
+        clocks = <&dispsys0 CLK_MM_DISP_TDSHP0>;
+        power-domains = <&hpm_hwv MT8196_POWER_DOMAIN_DIS0_DORMANT>;
+        trigger-sources = <&disp0_mutex 53>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0>;
+
+                endpoint@0 {
+                    reg = <0>;
+                    remote-endpoint = <&resizer0_out>;
+                };
+            };
+
+            port@1 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <1>;
+
+                endpoint@0 {
+                    reg = <0>;
+                    remote-endpoint = <&ccorr0_in>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.54.0


