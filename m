Return-Path: <devicetree+bounces-260218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLtJJZXBeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:58:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 129E19DECF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 670933003D13
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BF118DF80;
	Wed, 28 Jan 2026 07:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eEL5hsx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F5C32B9B5
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587090; cv=none; b=QqcbODLIvjBEynXMUtRCN2cXUDD5Dk5Q1lgTWUSVXhwxP+EpAZno/0MX2YTGZfOJS7j+WRZSH5hjV1hs405O6944eJkSPh+2fXwsZ2uZR4z8lD+GVxa2DUj/psSQ1lkQXSxDvZlR+Ujpi7A6/OImub8ek3GUKzmd/9iZ3snTAvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587090; c=relaxed/simple;
	bh=bH60zwy4kzvGbeQCYqvSHn9Nhub4oAeTIQUiMNUNaZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uJD6xp84LBXICBEVYU5DD90aI3Qp067beKDJoAkWXVQ43Izmbf6PTfGP1obfFC656gUghvJdCbbRgTNE4DUsKu2Fo0zQEVtD6RLxdK6YjBzwkU4ik7ctUq1C6DP1DJxhrohJs57FwJ1vAlDB0gw5tQ3mPeltiRJBfUgWUjZ6eCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eEL5hsx5; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3532aa9a77eso3029204a91.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769587088; x=1770191888; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GaIybHUeWAWPBlqCbml8/y9/Q+UCstHaUvRUJsd/Kic=;
        b=eEL5hsx56iwGbqJH+JtkwaIywe6tm0vuBLHG2/R7sB6FkzE+r1yERiAVP2GFyqBPJD
         mYvTBRjU7UGIvzLSsfFoZ7bYG5ygQSBP07YQyD5LfmVSGsAoP0dzQjMeZWS0Nu+fGog2
         LuemZsgb9VfRbYZ2+ocsYYgZOAgVj1g2PpjnpiSlbLTwtQEegJ8fDEHSBVAo3g09jdQb
         r3K7EBRVOTG32ZgIv0TuhHkM6q/OIIDVf3k0g+dZwTgLJ+c7ZkENNKsGJ6LEy7y8r0+o
         thiWso7W7jXOSs7/Ftycdt4hRey1A3k/ja9bSsdoBsmjjnaWoNDQW2tRuGjQ8CRyBIbr
         CDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769587088; x=1770191888;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaIybHUeWAWPBlqCbml8/y9/Q+UCstHaUvRUJsd/Kic=;
        b=bhFEVVIeF5zja9V8Z1L4mUwszSg/uDrq9WIyx7SstVO/XotC9+ozu/tgba5YAOTkPC
         vBqdL2DvPonH25/T9mjfb85w+3Ke3wFu81+TM0kgjglt1eEn8u0/OHpcvnmjY6LMAMvn
         IFBYs7kFGkc6zcUYWSlbvhQ56d5llsFKYwsi4jVKu9ilFqNJK63XRn59p6FnRNEsbEwJ
         fqhC5FgfFwDR2coq207A+JIEqAf0hXajOzFBN/ZJuFsG3O9/dlNRAcorr9kWVNxxV6vC
         eOPIFZMxRmNATwiS77RNaYhl4h51sg2Cgc3tflNOKOMJ2iwQBoxhxLBNauxfs0ObzGFq
         MpCA==
X-Forwarded-Encrypted: i=1; AJvYcCWgR6v+95A9M3ekpsCxqdYSqozDdz8VrNl5xRcpz5pbGu09MNjIzgxPLoas44M8IsjJKwrSRHCc7Vai@vger.kernel.org
X-Gm-Message-State: AOJu0YzMyXl31bGj55ra8UkJpum+fExhlMIBAVcmp3KOe8r2myUCu0lm
	QiEKi8v6GboR3YE+ItaD/zB5HM/vCw1nIHEgdgMbO1bWVsqk8eX5XZMU
X-Gm-Gg: AZuq6aLuzvZr5o+t3zeUhkJ62jhQE2Mc6qp2LEcSyn9Z2OWvhHsDlxrFsQAmLAW+UvH
	Spu4dih9DD/HqOiisoV9+jzP3iY9wLMHdZAbp8leB03GF2EqZaHKTXiL0qv3KNLkCezZBkkEZno
	OlN9BjSKlK8dSO0hXT/q2opTkDCGhQD4PEwUR9JsgjKdRGkHNyxXRibvH5n15ZBvNEvJ0vl9KH4
	JXJP+uIGci0bwpKdt+3YnM6oRTgZLxP2gGdZChJNLWfj995SibGOJiiqTmsEkoLkrawBh6X/I+8
	EUYRFQX9K5OcClPWrmf8OYEdRo5C0qwax7/ydqgOgQgcXriovifjaWK+osTqeZY2yL+azXxDYsL
	M9CmnpVKuXZKy7P337suAFS5xwPGfojhLYWAu9lUTuc7ZLKPnxHQxlYH1neLOa1YZzN6HsNd/dc
	jkuBFxw6TmqdsEoB8CKu4f5ALQqYnTmjkHDOBf
X-Received: by 2002:a17:90b:1d48:b0:340:bc27:97bd with SMTP id 98e67ed59e1d1-353fecde7d8mr3872814a91.9.1769587088304;
        Tue, 27 Jan 2026 23:58:08 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.119.57])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-353f61e0230sm4637149a91.11.2026.01.27.23.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 23:58:08 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Wed, 28 Jan 2026 07:58:00 +0000
Subject: [PATCH v2] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller:
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIfBeWkC/03MSwrCMBSF4a2UOzaS3DaNOHIf0kHIo71gUkkkV
 Er2biwIDv/D4dshu0Quw7XbIblCmdbYAk8dmEXH2TGyrQE5jlwgsrCRYVFHy9SA4tILlI730P7
 P5Dxth3WfWi+UX2t6H3QR3/WnjH9KEUwwKZX1g+bWa3Wbg6bH2awBplrrB4bQS+qiAAAA
X-Change-ID: 20260122-mxic-nand-742183125e03
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mason Yang <masonccyang@mxic.com.tw>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260218-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,43c30000:email]
X-Rspamd-Queue-Id: 129E19DECF
X-Rspamd-Action: no action

Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Add "Mason Yang" as maintainer.
- Link to v1: https://lore.kernel.org/r/20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com
---
 .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 78 ++++++++++++++++++++++
 .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
 2 files changed, 78 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
new file mode 100644
index 000000000000..97fe6681cc8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/mxic,multi-itfc-v009-nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Macronix Raw NAND Controller
+
+maintainers:
+  -  Mason Yang <masonccyang@mxic.com.tw>
+
+description:
+  The Macronix Multi-Interface Raw NAND Controller is a versatile flash
+  memory controller for embedding in SoCs, capable of interfacing with
+  various NAND devices. It requires dedicated clock inputs for core, data
+  transmit, and delayed transmit paths along with register space and an
+  interrupt line for operation.
+
+allOf:
+  - $ref: nand-controller.yaml#
+
+properties:
+  compatible:
+    const: mxic,multi-itfc-v009-nand-controller
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: ps
+      - const: send
+      - const: send_dly
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    nand-controller@43c30000 {
+        compatible = "mxic,multi-itfc-v009-nand-controller";
+        reg = <0x43c30000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+        clock-names = "ps", "send", "send_dly";
+
+        nand@0 {
+            reg = <0>;
+            nand-ecc-mode = "soft";
+            nand-ecc-algo = "bch";
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
deleted file mode 100644
index 46c55295a3e6..000000000000
--- a/Documentation/devicetree/bindings/mtd/mxic-nand.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Macronix Raw NAND Controller Device Tree Bindings
--------------------------------------------------
-
-Required properties:
-- compatible: should be "mxic,multi-itfc-v009-nand-controller"
-- reg: should contain 1 entry for the registers
-- #address-cells: should be set to 1
-- #size-cells: should be set to 0
-- interrupts: interrupt line connected to this raw NAND controller
-- clock-names: should contain "ps", "send" and "send_dly"
-- clocks: should contain 3 phandles for the "ps", "send" and
-	 "send_dly" clocks
-
-Children nodes:
-- children nodes represent the available NAND chips.
-
-See Documentation/devicetree/bindings/mtd/nand-controller.yaml
-for more details on generic bindings.
-
-Example:
-
-	nand: nand-controller@43c30000 {
-		compatible = "mxic,multi-itfc-v009-nand-controller";
-		reg = <0x43c30000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
-		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
-		clock-names = "send", "send_dly", "ps";
-
-		nand@0 {
-			reg = <0>;
-			nand-ecc-mode = "soft";
-			nand-ecc-algo = "bch";
-		};
-	};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260122-mxic-nand-742183125e03

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


