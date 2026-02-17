Return-Path: <devicetree+bounces-266222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MrJOamklGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:26:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB3214E962
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB6BE30214FB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B43136F419;
	Tue, 17 Feb 2026 17:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gyVA+x00"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1207836C58C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349084; cv=none; b=pUNfTNNYTQ6wKYRdKBwMUc6qH8FzliVFNfw+u5FxxPKsAROnso28aiOCeJMD52LNFN7cXezxRzv+hxrMTCdm9ss1tke//XvZd7SBGH6YUl8H2L3xyOwoBxuDV3GcjQ+/aExYRxx0iCClDSFuYwodEs9/WOAdyyLfH6wJnixh244=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349084; c=relaxed/simple;
	bh=WT/Nex6LhWJuxQIQqYevEIvzCquwHFS8ilGh7u90V20=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bhVOQjPFx0a3zbbfjaRXThQIn44RLGcsemRPG8r2ctRVQHAQ9gxwEeFaln7IGRdecYLLGb6xAg6Fq6xwmzMBeLNuYB639AWTz8QUt7uf7HUTv1XL+FX2RpXSQKnrSB3/UZBHi8E1fLHI9UBuNW4PLv708FJt0GH/qjmS8aDZjsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gyVA+x00; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a962230847so37517235ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349082; x=1771953882; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nrbi/BNck6gogzlmgUXX3Bih1hj4rkVvdTxnIGaO4yo=;
        b=gyVA+x00gJS8Bcw3HVL1HNRoBaum8OlY7F+HlJfmQTDw1iwvOSqape6SMqY8fNgEQV
         6qL2Yn82kTWPjeZ/VOgXKtnBQz1Qn4RDjcxbcrDiVzY/UJvlKl2ZMxn+zLhSF3ksGvba
         PYGuFm4ShAkh8ZFWn7yOLJ2Usc5pKgkJlk6jhPhANvg2zcEeg7oq9B0GICOogg1qHRho
         9jrCe3Pq/e+xNk53M2I1szeGYUFjP+O7WvFZTZdD7vnu2pqrY9AWQxgbA/A0XwqEF4CR
         B76CNp1GXL2L3R9izRoJmQuAY1YhSzkU+LnMR85zbH/Rntk/NvScBqLQvx9xlFSEni3Z
         ktSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349082; x=1771953882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nrbi/BNck6gogzlmgUXX3Bih1hj4rkVvdTxnIGaO4yo=;
        b=m/Z4bd+ltaEb/tXX+FEqA/EK6+K3x+D07TmikmleAA5vcikQRWwe4R2NGcV/uf+dF/
         oZqnEUPxoJAhgwJIDW4y8FVNJJ0167pZXIIehQHooPOCq6/fGtockpUm1W6sookWN10s
         vcCarrkPNIL7H9nE9KhLtoIR+vCQp2XnDTiMn/pvjzJ+qxEvy1BxigJv3bi2jSQ7qk/9
         j7QQST8I9igUVMos85aI4lluSXhGtjWmFm7FZspAESUZPN5M3LZT/HxaUyxb0PYAmGX7
         PqYRyBLppIbcFGZODeFf9M3iW5SwrFnhRUTU/mzVciez2GXLTRTY41gE80W2zTclt4Dn
         BtaQ==
X-Gm-Message-State: AOJu0Yz1EDj12g0qlAUgZs0vKtPZOKij5pDvjX2RlGrQ9tU4FyvuQi9D
	tkSTNMpySCGkIBsOTrSc4SxCgEgNLuhjda/MUXQYE2y0ew6ozed8iaDM
X-Gm-Gg: AZuq6aI3Z3l1y5Tmf+4S6f86iNIuucyPDrgjD1EivKBjhrOWQKIspMqtGUQjYlBcLYW
	ayYD72uXAsVrowBTDoxeityEgq/OUlVQTwj1bj2Kgm23VwW8eKl0ZdC9nr9XXlWy8c6aTeriwDe
	19Zt8M2s2cVxrw6L0SmiFAxybTMLc7S4xPSCH5OW0iRowHDFxuJ6/78P2/0BYc0sf9Azj70eSU5
	WQ5oMMaBXFnydzcIXkeCtH7VNnqUhMUpRQB8+bpll2pgNEskJJ5PHDyA0j1F12dJXxXd1Ri2Stw
	4JjwSw8dHO++vbHZSsDC+bm1Lq2wEy8z/8xpTSqB0LanBx4fA+FbAEw3i4omMcNfQZRLIAgaumN
	A/BO+2aFvYQ5W6GtgrxslSNBCfl8ryJg1zD5GpHt0vw13nuo2KhVRcFswomqF2DKR5Qw+Kg0JST
	Ptr+hO72L/pPTVw7329n2nFjcVP/IgP3rCmkgN4/fIVZWQ/qtY8c82OPVkCIk=
X-Received: by 2002:a17:903:1b6f:b0:2a7:5751:5b27 with SMTP id d9443c01a7336-2ab5059ac0emr180983385ad.39.1771349082331;
        Tue, 17 Feb 2026 09:24:42 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:41 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 17 Feb 2026 17:24:21 +0000
Subject: [PATCH 3/5] dt-bindings: arm: microchip,sam9x60-pit64b : convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-arm-microchip-v1-3-ae5d907e10e3@gmail.com>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
In-Reply-To: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266222-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,microchip.com:email]
X-Rspamd-Queue-Id: 5FB3214E962
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
format.
Changes during conversion:
- Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
compatible "microchip,sam9x60-pit64b".

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
new file mode 100644
index 000000000000..6bf8e81d4c72
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIT64B 64-bit Periodic Interval Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
+
+description:
+  The Microchip PIT64B is a 64-bit periodic interval timer used in
+  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
+  SAMA7D65 families. It provides extended timing range, flexible
+  clock selection and supports both periodic and one-shot interrupt
+  generation modes.
+
+properties:
+  compatible:
+    oneOf:
+      - const: microchip,sam9x60-pit64b
+      - items:
+          - const: microchip,sama7d65-pit64b
+          - const: microchip,sam9x60-pit64b
+      - items:
+          - const: microchip,sama7g5-pit64b
+          - const: microchip,sam9x60-pit64b
+      - items:
+          - const: microchip,sam9x7-pit64b
+          - const: microchip,sam9x60-pit64b
+
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    oneOf:
+      - const: pclk
+      - items:
+          - const: pclk
+          - const: gclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    timer@f0028000 {
+        compatible = "microchip,sama7g5-pit64b", "microchip,sam9x60-pit64b";
+        reg = <0xf0028000 0x100>;
+        interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
+        clock-names = "pclk", "gclk";
+    };
+...

-- 
2.43.0


