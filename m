Return-Path: <devicetree+bounces-277541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCdGEOhou2kbjwIAu9opvQ
	(envelope-from <devicetree+bounces-277541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:09:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3E92C54EC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 254B43016721
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7DE34EF09;
	Thu, 19 Mar 2026 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FQAwmkrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E753368BD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773889763; cv=none; b=QuvB2WIquFX9a5F2P4NjMDcYnro/QDBExt7pyVGKupeXQBMFWuZdErfQbQRwQBGn7eDsc2Zx7DLQfn0CcchxHVd2rx7dHoquXYzfVPHOy7Q1c7csGU7K7smEuvHtOoHqHxRdPXtkLKjD7smu+/JQovIam4nLL1TmovYp9myijjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773889763; c=relaxed/simple;
	bh=VKUZN6Dn+MNBZmbMp8LKYUzCDVr8JKHldS7jXtj9P/E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gHHlynEiOAL2Lm9/b44L8nYkJBdwl32fI9fegkzJX1d/vSAr0jZPlrTwOUSq7445yexwx13hjbmVrybvpB3q1Q+nKtIW4Lz0aQeVdNA++JPLk/a2/AzLozZrIA07inf8DCtfJrHniE3SLsX2d3gdx1aj/o4pjiZK6BZwqAYPmos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FQAwmkrd; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-829b2019b39so335548b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773889761; x=1774494561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zo4omf2aXz5d4OsApGKGaUmtbTmmR9r/c/VeF2cAJKU=;
        b=FQAwmkrduZah2X/tSiRaCntA3d+LEkZC30iLEzmMIW6YAUnqcXBbsh7lw1+Sb1VVQm
         cLYO1eOxhgrzObBChbv+GID+M8ThZ2otlZm2JFoBPFQr65yIgkCJsl9+c487KUdHUwNB
         nLp7mIqEXODDq6B7RpgjdylexMowTDMSxX8PgczTyRQeQDF7ecWKTV7NQ7X9D6ei80KI
         8HI/K74KnWGu/baq+KJFa95UOvrIA+WcqLUjGvspei3qM9bYX/M8yQudUWm/H6vmPOaa
         94/3I+fvra/cx1n835gffKd2SAx0WO3cqu7gVDcZUS6aTILI3yaXOWurtcnSIjZNW9DK
         NPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773889761; x=1774494561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zo4omf2aXz5d4OsApGKGaUmtbTmmR9r/c/VeF2cAJKU=;
        b=aALkpP/4aDvc/AJD2++GQd/4urAaTBoAmccXOcA6iSKixHaoEkA0Ib7HkHeDywFmWk
         Ko7RrgUp0OwHOvlF2kQgC3cvJ19N3P0Gy+B8Cp7uHF77WGZYLXAQ9AQ8yT9ug/pDgj9H
         Gza04EBIm4+sIJhg6/PTu8n3/UpAApxcvZ6f1s3W1MFrGnvnECZI2TCNXMDopd2IG0jD
         VUCeq/7Q3Y5eHyk+5+oJ7cZr4M/84ptl5V9AYctWZnszFWv66UryEso2YuLqp5W0DSIq
         OA+oBgKtuLw6ZKdNJfuAV2JheEIqqVXJD/5rQFMk7Powv/+qpbIlh3fhm2P5kzIjlpoy
         oSjA==
X-Forwarded-Encrypted: i=1; AJvYcCV8A9pmN5aLuNE7lN1R+tQ+IYHQKhNML8M6LH8I1hntx1JbEDOetFMuQ+W+swvY/sFBWESJ9bQy5jPi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+6w3ArpcqqDAUL6Nk25M/PGjgFtljeLZo9pxJVApIlkI+m2SB
	aoWz4iLe2Qkc0yNV9wPDBbirtkjX7oD8Sb9tjAetQ4WqQlkaRTrL6rar
X-Gm-Gg: ATEYQzxB6i0604l3laeShn2aYig+VA8FPABSWm4cdefMmL12ZRfCxiPRMuVNQeHtxV4
	LB1mZ2BLAj3O7Cish7KSlqeGeSI0D1zWSXHfN4OUwCN04fwhOOZK8MSWD9hJ1UXFmG2zNu7UXlc
	1p/7fyKPY6b+prZPWmF/7yVkiZrbLWvEOkr101KWI8WkdzMR0naNCA9Qfn2WYod3ugMEYBJRrXa
	K/yhEpWrrv2yzpLx+KKlI2pH85jzJ7OuAOu+///yMIdfuRF50+HwXiKQAqtSHGI8r9D1e3SZbak
	GwNNiPKcnhRUkBKXSPryLl4wVgwG2MKrkH+VUhGDrHlTZL7ue+UwvyX3MiEhBnrdXOjkZ08kLvn
	NxbvsrVkSgiIhK/EUXOnUl7SJkvpBXrzenwqo/fE7FiKJlCm5iLnoN5YX0QCE9fLYQpnR9OzTpp
	Z8s/M6ZTfTd/fkhgpRd7dpBOrbY3yJ8Ip/nIsqATB5vSe9IKpyOkdZObd18HXBlzL8/IHisajj
X-Received: by 2002:a05:6a00:3395:b0:81f:5238:5560 with SMTP id d2e1a72fcca58-82a6ac8a7bbmr5037317b3a.13.1773889760886;
        Wed, 18 Mar 2026 20:09:20 -0700 (PDT)
Received: from chaitanya-virtualbox.. ([103.249.241.54])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bbb2802sm4248271b3a.31.2026.03.18.20.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:09:20 -0700 (PDT)
From: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Subject: [PATCH v2] ASoC: dt-bindings: hisilicon: Convert hi6210 I2S to dt-schema
Date: Thu, 19 Mar 2026 08:38:26 +0530
Message-ID: <20260319030826.4792-1-chaitanya.msabnis@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277541-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[chaitanyamsabnis@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.925];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: BE3E92C54EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Hisilicon hi6210 I2S controller hardware binding from
legacy plain text to modern YAML dt-schema format.

Signed-off-by: Chaitanya Sabnis  <chaitanya.msabnis@gmail.com>
---
 .../bindings/sound/hisilicon,hi6210-i2s.txt   | 42 ----------
 .../bindings/sound/hisilicon,hi6210-i2s.yaml  | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
 create mode 100644 Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt b/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
deleted file mode 100644
index 7a296784eb37..000000000000
--- a/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-* Hisilicon 6210 i2s controller
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "hisilicon,hi6210-i2s"
-- reg: physical base address of the i2s controller unit and length of
-   memory mapped region.
-- interrupts: should contain the i2s interrupt.
-- clocks: a list of phandle + clock-specifier pairs, one for each entry
-  in clock-names.
-- clock-names: should contain following:
-   - "dacodec"
-   - "i2s-base"
-- dmas: DMA specifiers for tx dma. See the DMA client binding,
-  Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should be "tx" and "rx"
-- hisilicon,sysctrl-syscon: phandle to sysctrl syscon
-- #sound-dai-cells: Should be set to 1 (for multi-dai)
-   - The dai cell indexes reference the following interfaces:
-       0: S2 interface
-       (Currently that is the only one available, but more may be
-        supported in the future)
-
-Example for the hi6210 i2s controller:
-
-i2s0: i2s@f7118000{
-	compatible = "hisilicon,hi6210-i2s";
-	reg = <0x0 0xf7118000 0x0 0x8000>; /* i2s unit */
-	interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>; /* 155 "DigACodec_intr"-32 */
-	clocks = <&sys_ctrl HI6220_DACODEC_PCLK>,
-		 <&sys_ctrl HI6220_BBPPLL0_DIV>;
-	clock-names = "dacodec", "i2s-base";
-	dmas = <&dma0 15 &dma0 14>;
-	dma-names = "rx", "tx";
-	hisilicon,sysctrl-syscon = <&sys_ctrl>;
-	#sound-dai-cells = <1>;
-};
-
-Then when referencing the i2s controller:
-	sound-dai = <&i2s0 0>; /* index 0 => S2 interface */
-
diff --git a/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml b/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml
new file mode 100644
index 000000000000..8b76e973312a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/hisilicon,hi6210-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon hi6210 I2S controller
+
+maintainers:
+  - Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: hisilicon,hi6210-i2s
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: dacodec
+      - const: i2s-base
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  hisilicon,sysctrl-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to sysctrl syscon
+
+  "#sound-dai-cells":
+    const: 1
+    description: |
+      The dai cell indexes reference the following interfaces:
+        0: S2 interface
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+  - hisilicon,sysctrl-syscon
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/hi6220-clock.h>
+
+    i2s@f7118000 {
+        compatible = "hisilicon,hi6210-i2s";
+        reg = <0xf7118000 0x8000>;
+        interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&sys_ctrl HI6220_DACODEC_PCLK>,
+                 <&sys_ctrl HI6220_BBPPLL0_DIV>;
+        clock-names = "dacodec", "i2s-base";
+        dmas = <&dma0 15>, <&dma0 14>;
+        dma-names = "rx", "tx";
+        hisilicon,sysctrl-syscon = <&sys_ctrl>;
+        #sound-dai-cells = <1>;
+    };
-- 
2.43.0


