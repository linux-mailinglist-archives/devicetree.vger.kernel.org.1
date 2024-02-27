Return-Path: <devicetree+bounces-46501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAE2869D15
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:04:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73EF328D712
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 17:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C54F2CCD5;
	Tue, 27 Feb 2024 17:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=udima.es header.i=@udima.es header.b="m4BDBgQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E120B38
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 17:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709053471; cv=none; b=CJ/6JQq8Q7YMbcm108esbfavD97EXp9oSIdFbaIQQ1578JSQbkmLAxsEN9FNKyrNyGhkcXWkX93slopERWTCryf6SfscKB5SPu33W1rbY/K4QETh2iJT9gFsP+FEDCNKbQZrYg1u6+s6hIAiAmIfQd7BVOF3t2ZlNLCdNk7tF1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709053471; c=relaxed/simple;
	bh=3Bc4JcS7h3uh1nH/uBs22YCORPrgVtcxn5c73BZBvQs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mhNFoU4QjW0YRnsv8NR0IjHTfHiADxc8e/scDvHvXXGDpf3R2ZDyFK8W5dEGZ1I1qs2enVohqH5B1FmS7JgWLsrwKpDRy1D5ch9SrHrvJjt839PyCqqt5Q/ZHYF2M6Szl/L4el2uAjGl4ytNnCbQKz6Le2/0BTGnMR1YRrJf06Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=udima.es; spf=pass smtp.mailfrom=udima.es; dkim=pass (1024-bit key) header.d=udima.es header.i=@udima.es header.b=m4BDBgQa; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=udima.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=udima.es
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-412a588c8b4so15963335e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 09:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=udima.es; s=google; t=1709053466; x=1709658266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=95wAwQRxYUW01FCwrYdkBVJ1oY3jiTOrAj5JhsuFKJA=;
        b=m4BDBgQad81TVza+0OI/6wCY4KyKoA+RnRkwbPHmJtBa18ydRGofiWs4VL2hTQHU0X
         dE+p887HVmMBmoLTWD5bcg+Uf2oTNfNG6c1AS2JVvOHY/S5ZU/9Qy5bm6Mx7S7OP1hq2
         IaoM9mZ2I67UhPfioAlTexQrHSmQvA2ZLHqJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709053466; x=1709658266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95wAwQRxYUW01FCwrYdkBVJ1oY3jiTOrAj5JhsuFKJA=;
        b=oAi8xX9nnN3nYdNv9IFU02qFXDHSP85Gno7/Z13bnSy6kupaDoL+yu8eOHlJqK3s6J
         aKOBzuOvkfNFwg740sUGhHyLnFjJ/CSkMeOc4I2+uSaahCk7desr4IHURF3krjDadgyq
         f4JS+c24rC/+Avh+AcnTTTMYdr1lNoPKT273WU7AkLc3t9iub/QFERxRZ+9md0OqYA+J
         RIKUUnC5PWwtb7JG/zQ3fFAAL11Rs1x6YMx3vqn9286fxIZyy6l+IqdVHqVsS7r+YpXk
         SaduIKtz678tUJ5VNmTagiqbGe99BSAG2VZL8a0wCQ+aYG6zO2qOwElTb3RtaWt5lU1b
         TZRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUbv8Iukc0wtDJiaEc4VbXfbRPLb4ngSeY0bXOWc9EwEEnQpVQ23ft7KtTYKNTBONhQJbtZ4axgkPxh/NeshVsVcDOqGk6QnjI2A==
X-Gm-Message-State: AOJu0Yx4Ajwr/Px/bHWo75fbibdgVowdwN3aLX98a+N7B+EzxpQupigF
	W6qp8dDKTObxTY2tcrTqCAe63TaeBPd17EAG43ERpvE8OAGZCVzLske6+wJ7FWg=
X-Google-Smtp-Source: AGHT+IGB1KvOAfDXWLVJwto/yIheyZ7CkEm/iZR711gDYwaMLA+8/p2ysr7MGqvci2mwbSoHCmzwMA==
X-Received: by 2002:a05:600c:3508:b0:412:b0ed:f18f with SMTP id h8-20020a05600c350800b00412b0edf18fmr640238wmq.21.1709053466496;
        Tue, 27 Feb 2024 09:04:26 -0800 (PST)
Received: from portatil76.udima ([79.116.0.170])
        by smtp.googlemail.com with ESMTPSA id j12-20020a05600c190c00b00412a5a24745sm6316878wmq.27.2024.02.27.09.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 09:04:26 -0800 (PST)
From: =?UTF-8?q?Javier=20Garc=C3=ADa?= <javier.garcia.ta@udima.es>
To: 
Cc: daniel.baluta@nxp.com,
	javier.garcia.ta@udima.es,
	daniel.baluta@gmail.com,
	broonie@kernel.org,
	krzysztof.kozlowski@linaro.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] ASoC: dt-bindings: img,spdif-in: Convert to dtschema
Date: Tue, 27 Feb 2024 18:03:56 +0100
Message-ID: <20240227170400.705862-1-javier.garcia.ta@udima.es>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227123602.258190-1-javier.garcia.ta@udima.es>
References: <20240227123602.258190-1-javier.garcia.ta@udima.es>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Convert the Imagination Technologies SPDIF Input Controllerto DT schema.

Signed-off-by: Javier García <javier.garcia.ta@udima.es>
---
Changes since v1 and v2:
  - re-written the subject inline to include relevant prefix

  - Node name changed to spdif@18100e00 to be more generic

  - Added maintainers from Documentation/devicetree/bindings/sound/ who
    should be added to the maintainers list?

  - Drop reg description

  - Drop resets description

  - Added $ref for dai-common.yaml

  - Removed unused dt-bindigs/gpio/gpio.h include

  - Added reset and reset-names in the example

  - changed example hex to be lowercase

 .../bindings/sound/img,spdif-in.txt           | 41 ----------
 .../bindings/sound/img,spdif-in.yaml          | 81 +++++++++++++++++++
 2 files changed, 81 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/img,spdif-in.txt
 create mode 100644 Documentation/devicetree/bindings/sound/img,spdif-in.yaml

diff --git a/Documentation/devicetree/bindings/sound/img,spdif-in.txt b/Documentation/devicetree/bindings/sound/img,spdif-in.txt
deleted file mode 100644
index f7ea8c87bf34..000000000000
--- a/Documentation/devicetree/bindings/sound/img,spdif-in.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-Imagination Technologies SPDIF Input Controller
-
-Required Properties:
-
-  - compatible : Compatible list, must contain "img,spdif-in"
-
-  - #sound-dai-cells : Must be equal to 0
-
-  - reg : Offset and length of the register set for the device
-
-  - dmas: Contains an entry for each entry in dma-names.
-
-  - dma-names: Must include the following entry:
-	"rx"
-
-  - clocks : Contains an entry for each entry in clock-names
-
-  - clock-names : Includes the following entries:
-	"sys"	The system clock
-
-Optional Properties:
-
-  - resets: Should contain a phandle to the spdif in reset signal, if any
-
-  - reset-names: Should contain the reset signal name "rst", if a
-	reset phandle is given
-
-  - interrupts : Contains the spdif in interrupt, if present
-
-Example:
-
-spdif_in: spdif-in@18100e00 {
-	compatible = "img,spdif-in";
-	reg = <0x18100E00 0x100>;
-	interrupts = <GIC_SHARED 20 IRQ_TYPE_LEVEL_HIGH>;
-	dmas = <&mdc 15 0xffffffff 0>;
-	dma-names = "rx";
-	clocks = <&cr_periph SYS_CLK_SPDIF_IN>;
-	clock-names = "sys";
-	#sound-dai-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/sound/img,spdif-in.yaml b/Documentation/devicetree/bindings/sound/img,spdif-in.yaml
new file mode 100644
index 000000000000..ab8f96cc37cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/img,spdif-in.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/img,spdif-in.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Imagination Technologies SPDIF Input Controller
+
+maintainers:
+  - Liam Girdwood <lgirdwood@gmail.com>
+  - Mark Brown <broonie@kernel.org>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - img,spdif-in
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: rx
+
+  clocks:
+    items:
+      - description: The system clock
+
+  clock-names:
+    items:
+      - const: sys
+
+  '#sound-dai-cells':
+    const: 0
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: rst
+
+required:
+  - compatible
+  - reg
+  - dmas
+  - dma-names
+  - clocks
+  - clock-names
+  - '#sound-dai-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/pistachio-clk.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/mips-gic.h>
+    #include <dt-bindings/reset/pistachio-resets.h>
+    spdif_in: spdif@18100e00 {
+        compatible = "img,spdif-in";
+        reg = <0x18100e00 0x100>;
+        interrupts = <GIC_SHARED 20 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&mdc 15 0xffffffff 0>;
+        dma-names = "rx";
+        clocks = <&cr_periph SYS_CLK_SPDIF_IN>;
+        clock-names = "sys";
+        resets = <&pistachio_reset PISTACHIO_RESET_SPDIF_IN>;
+        reset-names = "rst";
+
+        #sound-dai-cells = <0>;
+    };
-- 
2.43.0


