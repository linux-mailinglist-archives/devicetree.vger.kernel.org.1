Return-Path: <devicetree+bounces-263925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLIIJVawiWndAgUAu9opvQ
	(envelope-from <devicetree+bounces-263925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:00:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CE510DE7D
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A233A3009B02
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000DC36606B;
	Mon,  9 Feb 2026 09:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="TkaWu855"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B330366051;
	Mon,  9 Feb 2026 09:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770631061; cv=none; b=sTuQ/GRpqIn+mhMJRA3DFXIi6GbtY2OX2JYqbLRqzJPevNeIxQasR+AjP8VkXWP0tClRsd2vt4qF57OQ5gxY7Wud55zb7IxHX2Y9KQzRSzg8UsswXD5dPCpsnyvUQx7DEIAQy/seS/C/4YDV6wOx/wkHKAlCO6YRm3ScHrx0lOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770631061; c=relaxed/simple;
	bh=2eXSGPP5bHZvIZVUTzZbcAndWWo39uIzV1dzMrzYILw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=d1mcEqnnWRCxGPao01kgRkOq18W5ULgxQffqVAzPQSL9dbsyXWMzofGCYlK5AE3CHnIFZ2gbUEKKRoQNgkvPsNC6wvfirn3eRlAhzCQ8XEUJfS6tx14Z3e4UBS0lj+G6shkEcNqW795XZ9LCARo9YghOLCDtz5/GnmmnJhdTTjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=TkaWu855; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770631060; x=1802167060;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=2eXSGPP5bHZvIZVUTzZbcAndWWo39uIzV1dzMrzYILw=;
  b=TkaWu855B/NIlQKec+sFPTvKFucOmj1eTJwqrDS3OTU7n6RkhmkgLh5V
   kY3llYCMvTj6Uv9TonC9d7FYx1JSoeBMCF5ViMwF9F5guxCKPVypHgj/q
   w77fU2R8WX5O1JxRaGYiZKs0r0tEnOOPOi4+ks0yKK6watB77jIQbZd+v
   i1kpOUE1GKuVe90Cq5fF/6mZ6H8pO9jm8OXvESCHd7XbecrWpnMhIE1I4
   R3ZedBq3q/wGpyEmBnkIs0WK7TQa3fIW+iUCtoOEwdck3Inbem4vTpyi0
   PODIDKNBh274h4KlSBXiMGebBB18Az5ZYzXg4j1Q4KTaI3CiKbSD1i7m+
   w==;
X-CSE-ConnectionGUID: ndl2L5WnRr+m1f1i6lcTaw==
X-CSE-MsgGUID: Zd5JlMiSTzm2GrUaENqJnw==
X-IronPort-AV: E=Sophos;i="6.21,281,1763449200"; 
   d="scan'208";a="60386962"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 02:57:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Mon, 9 Feb 2026 02:57:13 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 9 Feb 2026 02:57:10 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 9 Feb 2026 10:56:44 +0100
Subject: [PATCH v7 1/5] dt-bindings: gpu: add bindings for the Microchip
 GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260209-cpitchen-mainline_gfx2d-v7-1-0c12e64a0950@microchip.com>
References: <20260209-cpitchen-mainline_gfx2d-v7-0-0c12e64a0950@microchip.com>
In-Reply-To: <20260209-cpitchen-mainline_gfx2d-v7-0-0c12e64a0950@microchip.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	"Alexandre Belloni" <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	Cyrille Pitchen <cyrille.pitchen@microchip.com>, Conor Dooley
	<conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1828;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=2eXSGPP5bHZvIZVUTzZbcAndWWo39uIzV1dzMrzYILw=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2bn+txsQR7G7+Wz3TY7G3jJGe6adyvIv/vw83tBa6cac
 Cccv3e0o5SFQYyLQVZMkeXQm629mcdfPbZ7JSoFM4eVCWQIAxenAExknxDDP+2+VftqXpftujTX
 NcQr70dvzu9zJx/p2ogsrEt2UZO5dISRoVPWbefbxw4cp/ZMO3vrzafCntbfLNNnFE+su+F5/0D
 Mcx4A
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263925-lists,devicetree=lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[devicetree.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.b.d.0.0.1.0.0.e.a.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[cyrille.pitchen@microchip.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[nicolas.ferre.microchip.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,microchip.com:dkim,microchip.com:mid,f0018000:email]
X-Rspamd-Queue-Id: 13CE510DE7D
X-Rspamd-Action: no action

The Microchip GFX2D GPU is embedded in the SAM9X60 and SAM9X7 SoC family.
Describe how the GFX2D GPU is integrated in these SoCs, including
register space, interrupt and clock.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 .../bindings/gpu/microchip,sam9x60-gfx2d.yaml      | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1c0faef83900e5771746032f1ad6fa9388f16da1
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/microchip,sam9x60-gfx2d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip GFX2D GPU
+
+maintainers:
+  - Cyrille Pitchen <cyrille.pitchen@microchip.com>
+
+properties:
+  compatible:
+    enum:
+      - microchip,sam9x60-gfx2d
+      - microchip,sam9x7-gfx2d
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
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    gpu@f0018000 {
+      compatible = "microchip,sam9x60-gfx2d";
+      reg = <0xf0018000 0x100>;
+      interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+      clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+    };
+
+...

-- 
2.51.0


