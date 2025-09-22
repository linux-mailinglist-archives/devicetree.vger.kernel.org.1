Return-Path: <devicetree+bounces-220141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC2B922EE
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 18:18:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7F65173B9D
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B6531197D;
	Mon, 22 Sep 2025 16:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="zf5kQZCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D0F311941
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758557847; cv=none; b=bOh0KGTybW67+wXtf0PD3b1f6PTO4s048MEZUs++L5/sbcYnbVOonftN7U0BZevwVLkEBMQPO8Dvjlq4cib+Jz8kodcy/MnQKAhw6OuQm4iWzgexG6LVdwUd5xb5DEgYMLeLaK0kxi+x5U2mFf5SF8YewRGvSBJGG4EZrFvL0hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758557847; c=relaxed/simple;
	bh=edCRzSVTiYPJ0Iq/9l/vZR4EeBvsYuqnxRx4p4KIrD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RB6fmjeDtwZzJ6b7hY8LxJag75HQnpH9IwFNuRxEgblwk4oWALphwC+xZqfRexN9NHkAlAUKgCT8wVcRXF7gyrWt/qymydfh0pAD7OI5HkI3cLLjwTlLcT5xtn1AIZ6GqJacXJMJ/8uVy3Yknnh9E0jP6Tkxd4xSA7zWZ+gjVdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=zf5kQZCF; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-4257b2781d8so4340355ab.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758557843; x=1759162643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wga3pOieT58b7cDMHJFs+GN/WnPHhePS4hUJ36fp+DA=;
        b=zf5kQZCFuIa9ybqObgR5G0V5L9W25XMU279E1qJ8bbyK+OBMyjblIfTd6PO+spHWtw
         2eq2U63FsrTD1qfVDTiKcQSyuGTvMk9rfaKye4XOSDUGCR3qI7nTqLaslhMOaUX8cTl4
         5wqFzglRXUrKNBVjyrBc5nHEEjeGsxb777M0iNRbSaHZimftWQOvee6JWHsMssLb+TTC
         65W5CduqogqxHU6MsWEjsWHLMdV84GXWrwv9qnkN0kVXJmTLExW504Go3Fd2qW24doO3
         xXjpo50dL50BFiON6LJ9hqVLIuqD43RSye3asGFMKgDss3MHetY31wgmdjC1zUEevFwd
         8NdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758557843; x=1759162643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wga3pOieT58b7cDMHJFs+GN/WnPHhePS4hUJ36fp+DA=;
        b=mOcgSgMhukhyW/C291jjZUYQX4CInAR+lRNrwmB12467r2GLmTfkteNtQOuppBLcyz
         fPdFWX7hXS/Xp3f7iT171rrGFhQ7sFtRDADe5/2mV4SFE7TuHTNsDfxynesLjszsOmsQ
         HfO+Vj1Hihv1cYrJz0pt0HExwldmkg/f8Uz1RISyURvkVlf/NfLCHkBwJaeRFlZupYdP
         M0202GZl0AjzhvhkH+mV/OMirTJJnR8fX2VhLAbHMOYXXwKzItZBKa1e4MvaRdinnh45
         zTj2p9Up+YzLUhgSxpPV95mOJLNs2k0ysDjuhFAvAow7EehH6lsCs6ZCrJS8y85gxbE3
         NmxA==
X-Forwarded-Encrypted: i=1; AJvYcCWjqm93pdSJCvGMuFYErPMvJaoAuo9YwDVFuHegCMffOd+1AeRhJVQ28uYJx2yRm/Ld7WWTHbNEkN4q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy6JXERPJpXZ5/pwWX8iyv/8JxHNAiNlh9BP5cAiUi+uelwunT
	vv6GIZnxEj2EpYvcw4d4hWFoIRCa4PJ5d8g7rsidjhRg1WRhSyBN3smD13LwcZbO4ew=
X-Gm-Gg: ASbGncsjwKpFsdm767mdAtSOTwnYxR1cd9WM80ffFGlMFZgvblVw3pbop7bIV8j4xwS
	dR3MFrZ1eqPNatNcwa8dXdnHV0qbNAyRMlZOy1p0tT0OzSVLUW4tB1OETepjvuUbh74QWvbC+Yp
	ns/Io6V+Tif2mRda8KgCEO51PnFUx6mFSomJOMu144kUNjG8WkRtNfGT1sQcgYV2nKOkWAi8ou/
	8bj6fVUck/XXomBvuHNNnUAwq8rnOkh2NeWJyCrnMVomwQ21WWZ3w2EAGQ5K8113SkCtfJvEye/
	MDPD7KM1UPkZBFZtEep526kKIAVdZMp4V+UHVJlUtw6QFOfIuRB2sHMMo8tAyEifqbD3Kp7E9+Z
	ocwhZWZv4Z0pm1Lc634waxsBaDH/64SsteqLP6QE9fla7lnnM5/KRrGcQn/Jyc34bn6c42QXuDk
	AU
X-Google-Smtp-Source: AGHT+IFNEIkWwdlkmnsrsDiii/iS29yCgoX4Tp67gfiF8B5e/yODsUx/VWOVNEk4pntvfOCoXkV5mw==
X-Received: by 2002:a05:6e02:1a82:b0:424:5970:3d20 with SMTP id e9e14a558f8ab-4248190bd99mr219210245ab.12.1758557843518;
        Mon, 22 Sep 2025 09:17:23 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-425711d9aa0sm25207185ab.48.2025.09.22.09.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 09:17:23 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	ziyao@disroot.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: spi: add SpacemiT K1 SPI support
Date: Mon, 22 Sep 2025 11:17:14 -0500
Message-ID: <20250922161717.1590690-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250922161717.1590690-1-elder@riscstar.com>
References: <20250922161717.1590690-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the SPI controller implemented by the SpacemiT K1 SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v3: - Add Conor's Acked-by
    - Add Rob's Reviewed-by

 .../bindings/spi/spacemit,k1-spi.yaml         | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
new file mode 100644
index 0000000000000..a6978212ff570
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spacemit,k1-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 SoC Serial Peripheral Interface (SPI)
+
+maintainers:
+  - Alex Elder <elder@kernel.org>
+
+description:
+  The SpacemiT K1 SoC implements a SPI controller that has two 32-entry
+  FIFOs, for transmit and receive.  Details are currently available in
+  section 18.2.1 of the K1 User Manual, found in the SpacemiT Keystone
+  K1 Documentation[1].  The controller transfers words using PIO.  DMA
+  transfers are supported as well, if both TX and RX DMA channels are
+  specified,
+
+  [1] https://developer.spacemit.com/documentation
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-spi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock
+      - description: Bus clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: bus
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: RX DMA channel
+      - description: TX DMA channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    spi@d401c000 {
+        compatible = "spacemit,k1-spi";
+        reg = <0xd401c000 0x30>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        clocks = <&syscon_apbc CLK_SSP3>,
+                 <&syscon_apbc CLK_SSP3_BUS>;
+        clock-names = "core",
+                      "bus";
+        resets = <&syscon_apbc RESET_SSP3>;
+        interrupts = <55>;
+        dmas = <&pdma 20>,
+               <&pdma 19>;
+        dma-names = "rx",
+                    "tx";
+    };
-- 
2.48.1


