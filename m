Return-Path: <devicetree+bounces-277216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODf6BICkummyZwIAu9opvQ
	(envelope-from <devicetree+bounces-277216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C92F12BBFAF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95C8A3021401
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FE93D75CA;
	Wed, 18 Mar 2026 13:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b="JOKvZnUa"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E9B3D6CCC;
	Wed, 18 Mar 2026 13:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.37.255.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839467; cv=none; b=VMA0b9qHwrmECVzW3aom4PcwTZJqJmnFtbVJ9CK0M8eHHqHKD/vAoNRqiu/rBsZMkpIl7mNbKkD9vCU9JLPplzStR4zd0acndFetimhTKXhoZjntXC/0JEC+7L1bQatsgKnCWIZHC3qLbJq78dHpAeJVRZ266gpZmY6G3xkq5zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839467; c=relaxed/simple;
	bh=1L4THCkCO+XGUN+DFmc52NTUCpiuPGNIjSexVb+8x3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:Cc; b=BY4lbYSbkqN8okr+WhwqICji/Lbhv5HbWVXItvZYWyGHIJ4OdPgN4MlmhJbZjLo2VjyQo/bXpvigm+3yIPndACtd72JFMytv8Gxssh55d2hG7YA6i9x31mSD4qmiMPn695IWAO9BVXdXHCdDsXe9O9x6i4P6sPsy8bA7Ffa6j2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b=JOKvZnUa; arc=none smtp.client-ip=194.37.255.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=5551b3f26e=fe@dev.tdt.de>)
	id 1w2qfp-004Xtm-8z; Wed, 18 Mar 2026 14:10:57 +0100
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1w2qfo-002Wnz-Kn; Wed, 18 Mar 2026 14:10:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1773839456;
	bh=GPbGyghnsu67AOwAIHensctjvc30v31DOj9zu4cnB98=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JOKvZnUaeFzhs1CNhbEI9CNjHITmy3MMrXOuR1ppAghS83yu2R/E6QTjmRffg6vrk
	 IVwOfWtjx1ATE3iKul2y96AGC4zG0jQHupr4gUVxeIfKzGZVFyjya6N0qJCnm/DBcu
	 KZKG0Zm5FdHZdOSv04vExVOep/33m8rOsT7j/CyRy/y9cYOXAACupoFQGSUXk4/u9Y
	 cteiqzN9+8HjWJTawX7OhXIF6Nk48v+tbRgojf8MsOYOhhX8igw8itsSU+luiaiKHL
	 G+yFVPxqiqVufR3wcLwCT+/iPOu0MMOcADW29igqZDrNnN9zhEjF2AQLTJdT5yn6pz
	 fdOZnTlRhcnwA==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id 29D0E240041;
	Wed, 18 Mar 2026 14:10:56 +0100 (CET)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id 236C2240036;
	Wed, 18 Mar 2026 14:10:56 +0100 (CET)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id BAC48236D4;
	Wed, 18 Mar 2026 14:10:55 +0100 (CET)
From: Florian Eckert <fe@dev.tdt.de>
Date: Wed, 18 Mar 2026 14:10:40 +0100
Subject: [PATCH 1/2] dt-bindings: Add Lightning Mountain MSI interrupt
 controller bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de>
References: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
In-Reply-To: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
To: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
	ms@dev.tdt.de
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773839451; l=1609;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=1L4THCkCO+XGUN+DFmc52NTUCpiuPGNIjSexVb+8x3A=;
 b=zPe23CzAvdW7vDDgmTIczI7dKbYIs5XsgGzxHEGKJC6JpCKcL5kr6T4Rxw7MyXrszARw4iiNI
 VpXvSryPQvxBBOsXNaMqH9FoAZgwJv2J5MgGR9m8yQQyj94PrgAVG6K
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
X-purgate-ID: 151534::1773839457-0E4BE118-E16CDA6C/0/0
X-purgate: clean
X-purgate-type: clean
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tdt.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[dev.tdt.de:s=z1-selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,dev.tdt.de:dkim,dev.tdt.de:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,e00e0000:email];
	DKIM_TRACE(0.00)[dev.tdt.de:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277216-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fe@dev.tdt.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C92F12BBFAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree bindings for the Lightning Mountain (LGM) MSI interrupt
controller.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 .../interrupt-controller/intel,soc-msi.yaml        | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5ab295c7dd000059817ae411abe3d57713a83ee8
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025 TDT AG.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/intel,soc-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel LGM Interrupt Controller
+
+maintainers:
+  - Florian Eckert <fe@dev.tdt.de>
+
+description: |
+  This interrupt controller is found in the Intel LGM.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - intel,soc-msi.yaml
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    soc_msi: soc_msi@e00e0000 {
+        compatible = "intel,soc-msi";
+        reg = <0xe00e0000 0x800>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };

-- 
2.47.3


