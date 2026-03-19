Return-Path: <devicetree+bounces-277542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id T9g6Echru2nGjwIAu9opvQ
	(envelope-from <devicetree+bounces-277542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:21:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B902C562F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 725AC302E7C0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3174368266;
	Thu, 19 Mar 2026 03:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gw7Xi9rK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE5176026
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773890501; cv=none; b=GAR+uTJYpfp9nDl7OMfwlR5BRrMlFUsEnadnpdhO9uXrI/uRJnIf4ZiaNp/F3uTaNDcqo32cbIxbvHU03CIavjHNn+jZS5/DbI7ll66e8KXueClFJU8dy0/R+GLbNKhkhIRsvYVuXB05jsVGGJrknVsg9vwAa3KfPYW7c6BJswM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773890501; c=relaxed/simple;
	bh=0Xwx8Y096fqNvdOg2Gqi/hyW5QeXgAUGtliYvN6cR4I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jQzzeRs3n/GK9mEYeo4dyoljCZzNd26COD91XS1GeX+wYh/stjIwpWyS+ZlJLWAlIU8D2VFXBeMJWCF1fgutIjFOznEXfpDDshbmmd1KFOz9siVqGi7nKJFk3jkT1vw5z1RXz35z+CQhOgqdBHhhICwfYl0Jx4m/bYVyqigqDd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gw7Xi9rK; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82a07738118so380381b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773890499; x=1774495299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/cJpgB2sqSWH7gwL6KE740g8AgYk5DfM8eUCnEJbI0=;
        b=gw7Xi9rKjYNqiAZT4YkbMHLyfWcuj4KV0N4A8Z/AErh4fdZnU7+2feOakOTTsZN9W+
         FL+RV2PlvSbqdJvSysL4egp1ALtRkAJcmKY9gBKRzXWNozZCxRetA7l7mQCzvYsxqApM
         aCMS4UBPpxY3Eoet+Ivfe0TSqanYKGmMNFDuaj/LTFnV/3IFgrFfOdTFOPDTvQ5a0ogd
         MVpGeQsd1826fPbi6NIm6C+j0aTi0eSaYgv97b/Ms5ubjaWnJjcICcH+rQJ9Wz3OKddv
         klftPiweeivrzaWAKdDtnQqjs/K4CbQ9mf6sb/5oZE13BgJwi6rXR5iA9MnczY/M0zT/
         PCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773890499; x=1774495299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/cJpgB2sqSWH7gwL6KE740g8AgYk5DfM8eUCnEJbI0=;
        b=dnvGHtMK++pQrzCd0Il/OO5+ZTSN28BtbAFb8Ur4BMFUOTZwXP5MLHXayvnRwe2Xtl
         /jrdvFabA2rImJpTTxonXSrFfWVE8BRjwebHBubUznHc0fey+PAUBwu2B2M6Tr4MYFWP
         /RquS2Gl5i3L/0EdWUU6vP8u7Vct4O76jBi4Z8LyRs77LT/e61bhhOJ1d2RzwnS8fanD
         Eed06SkRf3IO7zI4YDvf8K9kL2/o7YZLO+3cVeiCJKlVQ5kMZ65wxccn5+KjqFPevGiU
         IqGNJ5mnHTfK49dHjhoGPCBA3BC7dtIOw4gl7V2vgZuje5iNBL9iAKxfz4eo7+brxXRF
         i/aA==
X-Forwarded-Encrypted: i=1; AJvYcCWlLVpfjqBHULnDovIKZKy6pYBOw4cccjUicWKv2nTJS7KF6NN7rbC0BARbNMtS3oHwAELPhVtITj2r@vger.kernel.org
X-Gm-Message-State: AOJu0YxNP/2lUQV22YzOUBqeRHGVcTgW/YckSOxbMW7Me2u7RSMDZs25
	xTuLkBFxmrtAxT8sBJM+kXEETwmxHdQyk+ghfMvOkObnc/0qFMMwu5hB
X-Gm-Gg: ATEYQzxyjRNJQ82aTfaWO2MfwTgLQywONvVBF2YYvbdmnCNRjo2drNWMlb8/WuBG+7a
	kJyn2HpNMMgHMAP0WZIwlmu67r01Sx7UImGNN8EHj+I+PEXbwRUtz5ebDND1SmThuV5eES0bPp4
	+kZKH/GSLMIZ57asrIsLRhVEW782wSj3GOE0mqqeUPEKphFD7BjWPQestYVAjvk9T4P6ctHU48y
	rvEN3shGi4xZX7D3W+5e0Q6lmiDwHCRjnXNHLiZK1SEVcqSSaGvAD4td6FUmH8lqPPmGfl6N9aS
	nmzum4188An4l5RlG9mD6YCth/q6yNJ9gpLiyHgc20N7FL6W0cOizQUOEwGgRvu2Jd6CBQRvYBL
	xV5M/30JW8Kl9HzNwDmUO9NOOdBSOWlJG0MVTTiCGZPKLIPz8RFyHvgKSuA+kHqVEz/qjBqLEIz
	Fif+lDF2+tIuu5K1T7jgzA0PcKRYS8GP5L5aoZYRuCGip6L+CxJ2aEdJEbZp0Y+pU5Lef0YGRQ
X-Received: by 2002:a05:6a00:2183:b0:827:2995:3b99 with SMTP id d2e1a72fcca58-82a6ae6d829mr4566201b3a.31.1773890498744;
        Wed, 18 Mar 2026 20:21:38 -0700 (PDT)
Received: from chaitanya-virtualbox.. ([103.249.241.54])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6b52e67csm4058785b3a.2.2026.03.18.20.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:21:38 -0700 (PDT)
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
Date: Thu, 19 Mar 2026 08:51:12 +0530
Message-ID: <20260319032112.5251-1-chaitanya.msabnis@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277542-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NEQ_ENVFROM(0.00)[chaitanyamsabnis@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.896];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,f7118000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4B902C562F
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
index 000000000000..827ae1fbb8ab
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
+unevaluatedProperties: false
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


