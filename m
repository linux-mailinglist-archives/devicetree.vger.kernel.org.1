Return-Path: <devicetree+bounces-318508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8xDbJawQRWpA6QoAu9opvQ
	(envelope-from <devicetree+bounces-318508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:05:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1CF6EDD0D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:05:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=XCW5gznU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318508-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318508-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5270328B43F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504074D8DA3;
	Wed,  1 Jul 2026 12:21:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9E648C40B;
	Wed,  1 Jul 2026 12:21:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908495; cv=none; b=MsJMPjX9CT92k4F8bXX4pk89NUhhttTk8W7/DviFkiawW21LwVQE1XlK7FKQepIhkc30mnZIFZ/7tykDF5XSerxhH2N+ua+AyOTZ2qvobFSQaTNPFtX2V4FgoIcBW67O23QJkTjCpYFmG61NHO09SBopbIpr8kZlWkNRSuhGI2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908495; c=relaxed/simple;
	bh=GHTuSs66oG/01+0w93FaDKtJj2yb08VuTz9Ap4IIaZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bePEddulF+HsYDI9TO4oYbCEVE4SUIwJmPZmRLrejHXoIQ1C43BmPr3tU8TqF4mBl0gJit9pHVgLuCBSMY9VFfAde2GM/Apk51tzPYhzbBe6BWdHqStA/ToXyA1lbHhz0gMzx3/cZadEUFp+kE7PjLcE/F7RY7AHj7Kvha7gQAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XCW5gznU; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908492;
	bh=GHTuSs66oG/01+0w93FaDKtJj2yb08VuTz9Ap4IIaZ0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XCW5gznUmLImn0YtTBTdj/QWVJpbW5bZQQhSE6WKcV/bfZd7E3k7x5ahTKQTC0/uJ
	 EAxpMMGSl1ck5Tj1H1ER4Rgv/HNw71sTrvd6d2GbWJNMUW1tvFOSBtfsuF0XUisueI
	 DFjJbQdTu4+Lc2bJLWPrewotoOrc06Qol32fuB1j3LNiH7Fo/KRKggS6CT8yBYfULQ
	 CEZOF7nWawXk3iGvvtDmP0fbq4uhcIR2oiOUhyQfzbTYDQzW0hE3wQNV0DHLNR3HXD
	 hUuOl/XXT3me2tsTsUczUeA0naGbJjXedScRGS9gkDW0QqF1I+BFPAmhUZbC5/teje
	 uFAtOCH5QmUfQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 80C7E17E0FAA;
	Wed,  1 Jul 2026 14:21:31 +0200 (CEST)
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
Subject: [PATCH 23/42] dt-bindings: display: mediatek: Introduce Digital Video Output HW
Date: Wed,  1 Jul 2026 14:20:38 +0200
Message-ID: <20260701122057.19648-24-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318508-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D1CF6EDD0D

Add documentation for the Digital Video Output (DVO) IP found in
the newer generation SoCs MT8196, MT8189 and their variants.

This is effectively a more capable block replacing the DisplayPort
Interface (DPI/DP_INTF) one found in older SoCs.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../display/mediatek/mediatek,mt8196-dvo.yaml | 142 ++++++++++++++++++
 1 file changed, 142 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml
new file mode 100644
index 000000000000..8e73586e74b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml
@@ -0,0 +1,142 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8196-dvo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Digital Video Output (DVO) Controller
+
+maintainers:
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+
+description:
+  The MediaTek Digital Video Output (DVO) hardware provides 120-bits (4P) data,
+  video timing and info data for the Embedded DisplayPort, hardware-abstracting
+  the previous generation Display Port Interface (DPI/DP_INTF) blocks, other
+  than providing new capabilities.
+  This hardware block supports 1/2/4 pixels per iteration in both its input and
+  output and provides 8/10-bit RGB, YUV422 and YUV444 data formats in output,
+  other than supporting input/output video window cropping and padding.
+  Digital Video Output also provides Panel Self Refresh (PSR) and Multi-SST
+  Operation (MSO) features for eDP 1.3/1.4.
+
+properties:
+  compatible:
+    - const: mediatek,mt8189-dp-dvo
+    - const: mediatek,mt8189-edp-dvo
+    - const: mediatek,mt8196-edp-dvo
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Pixel Clock
+      - description: Engine Clock
+      - description: DVO PLL
+
+  clock-names:
+    items:
+      - const: pixel
+      - const: engine
+      - const: pll
+
+  pinctrl-0: true
+  pinctrl-1: true
+
+  pinctrl-names:
+    items:
+      - const: default
+      - const: sleep
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
+        description: Digital Video Output's input port
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: DVO output to an HDMI, LVDS or DisplayPort encoder input
+
+    required:
+      - port@0
+      - port@1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: dvo
+
+  trigger-sources:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
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
+    dvo@324c0000 {
+        compatible = "mediatek,mt8196-edp-dvo";
+        reg = <0x324c0000 0x1000>;
+        interrupts = <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&dispsys1 CLK_MM1_DISP_DVO0>,
+                 <&dispsys1 CLK_MM1_MOD6>,
+                 <&apmixedsys_gp2 CLK_APMIXED2_TVDPLL3>;
+        clock-names = "pixel", "engine", "pll";
+        power-domains = <&hpm_hwv MT8196_POWER_DOMAIN_DIS0_DORMANT>;
+        pinctrl-names = "default", "sleep";
+        pinctrl-0 = <&dvo_pins_default>;
+        pinctrl-1 = <&dvo_pin_sleep>;
+        trigger-sources = <&disp1_mutex 29>;
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
+                    remote-endpoint = <&directlink_output>;
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
+                    remote-endpoint = <&displayport_input>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.54.0


