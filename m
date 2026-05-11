Return-Path: <devicetree+bounces-295454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OC+UMS2tAWoMhwEAu9opvQ
	(envelope-from <devicetree+bounces-295454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:19:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F3350BC75
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F2CE302E301
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 10:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91243CEBB0;
	Mon, 11 May 2026 10:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="lU4KqCcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332453CA483;
	Mon, 11 May 2026 10:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778494451; cv=none; b=HrCut+PZuqBd527iFzvxxtRj9p1mwa9bKLMGEG1gHyeyIeAIA0hVC58mN1ziSSt2hxPLv+hXjibXQFY4rlkv927G58TyiI15LKUC6uhaQE3bUFrCMFmDa1hChaGH3IqHHrjfv0X5HDOszLtly7yVbus5Yi/BWXXgjcCO+rKexQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778494451; c=relaxed/simple;
	bh=RLK0bmNgqkncwSjSF0auY09mTQs7f3xCWXcuesgdBPg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mDKbb7rqqUZ8WxfSOZXhX7nUg088hB2x4jQZtJIzEzZRBnWkLmRzJNUfoNG7kopHBQsQGWZupr037UFwV90iw3IpX/3jFoAhn/vgQLInlxadE7ll37ezvID85Zy0YHJb/Ruh5ZJsB0J5FcVvxBKSmPgoVtiGOlXiIaq6KN3RmGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=lU4KqCcJ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778494447;
	bh=RLK0bmNgqkncwSjSF0auY09mTQs7f3xCWXcuesgdBPg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lU4KqCcJZX8G3At4cO1r3SSkQx1+pUMqkCOgRdJYGKkrqDr9wNcTCbsbEU/pNSuFV
	 UjgK0Pz2L2kFky+t63dQ7WKgQCOCzZ8l7O37kGhTS8JJ8lZngjyaPnngB+sOvRHNWf
	 IkXkdW2MuRtzyrSiznqfmGE5uLtQlvI86+iVaOeR5iZmlYVs1GIBuDrDDWlnon1oBO
	 0S5ayWA02flmEmddBPYW+QiFzdYsS0tAJQqtVJMzU5NS7mEmiXoIF7x5bKnBxMAcYM
	 nbMTcldC0xNEPgmVePe4i7l7N7CQ6dkre4BTq9y+mhVn7iG7NasVJUtjXAV7a4jsSh
	 weUy+fZelPFBQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EEBCA17E040C;
	Mon, 11 May 2026 12:14:06 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>
Subject: [PATCH v12 4/5] dt-bindings: mfd: Add binding for MediaTek MT6363 series SPMI PMIC
Date: Mon, 11 May 2026 12:13:54 +0200
Message-ID: <20260511101355.122478-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260511101355.122478-1-angelogioacchino.delregno@collabora.com>
References: <20260511101355.122478-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 31F3350BC75
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,chromium.org];
	TAGGED_FROM(0.00)[bounces-295454-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.30:email,0.0.3.232:email,collabora.com:email,collabora.com:mid,collabora.com:dkim,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.4:email]
X-Rspamd-Action: no action

Add a binding for the MediaTek MT6363/6373 (and similar) multi
function PMICs connected over SPMI.

These PMICs are found on board designs using newer MediaTek SoCs,
such as the Dimensity 9400 Smartphone chip, or the Chromebook
MT8196 chip.

Reviewed-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/mfd/mediatek,mt6363.yaml         | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml
new file mode 100644
index 000000000000..ee90d16053e9
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/mediatek,mt6363.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek MT6363 series SPMI PMICs multi-function device
+
+maintainers:
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+
+description: |
+  Some MediaTek Power Management ICs (PMICs) found in board designs with
+  the Helio, Dimensity and/or Kompanio series of SoCs are interfaced to
+  the chip via the System Power Management Interface (SPMI) bus.
+
+  These PMICs are multi-function devices with various sub modules.
+  For example, those may include one, or more of the following:
+  - Auxiliary ADC Controller
+  - Clock Controller
+  - eFuses
+  - GPIO Controller
+  - Interrupt Controller
+  - Keys
+  - LEDs Controller
+  - Regulators
+  - RTC
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt6363
+      - mediatek,mt6373
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 3
+
+patternProperties:
+  "^adc@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/iio/adc/mediatek,mt6359-auxadc.yaml#
+
+  "^regulators@[0-9a-f]+$":
+    type: object
+    oneOf:
+      - $ref: /schemas/regulator/mediatek,mt6363-regulator.yaml#
+      - $ref: /schemas/regulator/mediatek,mt6373-regulator.yaml#
+
+required:
+  - compatible
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/spmi/spmi.h>
+
+    spmi {
+      #address-cells = <2>;
+      #size-cells = <0>;
+
+      pmic@4 {
+        compatible = "mediatek,mt6363";
+        reg = <0x4 SPMI_USID>;
+        interrupts = <4 64 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #address-cells = <1>;
+        #interrupt-cells = <3>;
+        #size-cells = <0>;
+
+        regulators@30 {
+          compatible = "mediatek,mt6363-regulator";
+          reg = <0x30>;
+
+          vio18 {
+            regulator-name = "pp1800-vio18-s3";
+            regulator-min-microvolt = <1800000>;
+            regulator-max-microvolt = <1800000>;
+            regulator-allowed-modes = <0 2>;
+            regulator-allow-set-load;
+            regulator-over-current-protection;
+          };
+        };
+
+        adc@1000 {
+          compatible = "mediatek,mt6363-auxadc";
+          reg = <0x1000>;
+          #io-channel-cells = <1>;
+        };
+      };
+    };
-- 
2.53.0


