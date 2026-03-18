Return-Path: <devicetree+bounces-277428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC3KMy70ummHdQIAu9opvQ
	(envelope-from <devicetree+bounces-277428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:51:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 014602C19D0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:51:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EEA7F304A87D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364193B8943;
	Wed, 18 Mar 2026 18:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P9VzqLKX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E705B1D6193
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773857658; cv=none; b=jNwNW7VeD84fFSKC2/t+smO9MpfFi3DHjz5cJvSl/+FCI+GUsWPKWUW4vynDVHUc/SESqljXFkJkUWcnUIWbvnUTaOxjDNobsv2cCnPbmrh2I+IVjJqvbVHeLVLzcvyIyGQbOKfcWMUWiF+ADWMQghyIIo6TzhEtQ2OXeV6vaiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773857658; c=relaxed/simple;
	bh=igC4GtGcZsVAZDSM5+M30pXkTVcmavnjQO89/dgMWsM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C6DD6zSmRm6NzcZGo2e77KCCknx/zjWPMjvdo77AdxrJVSz0sOoLjSk87PxQUQhZq4IRnuuh64ssUqAk5v+hfuqoLt7s1ZGbk70rYijeUDepumnksuU5/8o6SIrbQ2FBrJCypfe/l9Y+oiz8vKjM5OU31Bthnd5Zfw/mi8lcH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P9VzqLKX; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c741699483bso43726a12.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773857656; x=1774462456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7pQsVn9jrlP82x/zoMf5r2Nw6PzXMQncCNeTmBbiDt4=;
        b=P9VzqLKX0YqDtLZkBRPD0IRK+h6KqqeYbBNeBMGA8E/snLVNCVWXfjqK8PhYE4k1JN
         2cc5oe1L/u6Salxrfgf7tXMyvJoCP7E1xLrlaiubhIf2vWfqVvNf3r2EdFFEeLN6gybH
         iT6juVFplHz8MGiUYFy5EQeyCRvpVzxkX2FpqK6Pl8Oq7aVYcPlfDn2996CkT842PAav
         YLKWc5ue33MidAner8D0NbUNWeSU4znIACUeEefVNJr383ux5o32yhzdRwRQUyBiA9ze
         hXj/lCwH1UsieoWCLehFBNMZewTcGuqNn0OOhYR3V6uVo0o5WNeZcAuuo9f1BVh78YI3
         XG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773857656; x=1774462456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pQsVn9jrlP82x/zoMf5r2Nw6PzXMQncCNeTmBbiDt4=;
        b=gXoOO3pOGpgPzprT7J3wBRTisyEjM0sA9kLWruqkmPVzxA6COPz9hmE8GQ4CwHv/tM
         +XtC3yI2bfW1SUwXJ6awjfd/rMnWF4W6BgQuAn4mO0cW5xafG4xvJ5hcpeg0MFJ5gaQz
         Qo0HztE3/I3sDI0uoiOo19QwCzgsN41VEjrH/RRENUjyHn98L392ZnhQVRmuH62KYVEx
         Y+qhMxtr3d8XQQ6Cb/hlCP0cY+vdmT0WvpHcOwZ3tdBDDzMjPCnnmMSGYiwM7l5RPSqe
         yXOpSfBzX1g74x19gIzPzxwQJYdeme9Ab1gz9gW+iESHATlVU0Y+Gg9Lfr8V+6ald2Aw
         vN5A==
X-Forwarded-Encrypted: i=1; AJvYcCUcsVqN7bAG46aHwDqzqWit41TPtPSBG16UZmcOuv3Qbk5HtSqOdCcJEdZ3E4iHz0FITubde57pz4Sf@vger.kernel.org
X-Gm-Message-State: AOJu0YyifJbhRnUrUzXcM9RY9EbFVNVFXLsgTdsR0L0KM39Z6Alj0D2Z
	RzBY3SAVKoo6NYcsH97nppa0OLssGCK4Xc9bu1zXLsjeBN2tdjQlFvPF
X-Gm-Gg: ATEYQzwoX86XxOCZLmziIfx7z4cP7teTsYYMS2G6l1TE0tcXFJGqEnMnQ04Lg9d1hHL
	Ag83w9FTkBcQ8x76zmV6rnS4E+nNG0VFLphJVzhnPVkZb+05cwJqg5HisIuX8oBZLxa6yhH3SnL
	JMm6mIUgybdIsVUHtnS22HEldRk7VF+FNqeml28qPcTDudOSh6lm2P6QK/anIdL91iCS5hvmDhN
	9gVqURipaUg5kkS+P7AnefWrNioyPRsmNdGBSmHREjEG1bEoEr+OarWigMEfDQ7y0hIWcJicf+N
	n0GFJPd1FattchjR8YGgUkT6EnQJRY5SGK6jJsyiVNU+gzO8az2oH/ZtZ9dvN0vEadXucSUIKTq
	Hs82x494LPsTmx5l2xXd/fZjVesf4eZu5unUCfxtf34Lc3nVv5SgZSTkyMPs9M8eUUPotsaBknv
	shhkvc36KaI72GrLbPmJ31+7gQeHWC8gFtb6SSkFI24myQebvC/xDUQe9fV8NzH4hlTqyD23G0
X-Received: by 2002:a17:903:b8f:b0:29f:301a:f6cf with SMTP id d9443c01a7336-2b06e4073ecmr43361215ad.35.1773857656176;
        Wed, 18 Mar 2026 11:14:16 -0700 (PDT)
Received: from chaitanya-virtualbox.. ([103.249.241.54])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e41927bsm44617185ad.10.2026.03.18.11.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 11:14:15 -0700 (PDT)
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
Subject: [PATCH] dt-bindings: sound: Convert Hisilicon hi6210 I2S to dt-schema
Date: Wed, 18 Mar 2026 23:43:03 +0530
Message-ID: <20260318181303.5262-1-chaitanya.msabnis@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277428-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[chaitanyamsabnis@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.896];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 014602C19D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Hisilicon hi6210 I2S controller hardware binding from
legacy plain text to modern YAML dt-schema format.

Signed-off-by: Chaitanya Sabnis  <chaitanya.msabnis@gmail.com>
---
 .../bindings/sound/hisilicon,hi6210-i2s.txt   | 42 ----------
 .../bindings/sound/hisilicon,hi6210-i2s.yaml  | 77 +++++++++++++++++++
 2 files changed, 77 insertions(+), 42 deletions(-)
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
index 000000000000..ba740ebfc2f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml
@@ -0,0 +1,77 @@
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


