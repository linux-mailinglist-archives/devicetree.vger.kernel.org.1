Return-Path: <devicetree+bounces-240396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B7798C70B01
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 1E56028D8C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F7E2DC34F;
	Wed, 19 Nov 2025 18:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KWZOlnL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5059318139
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578061; cv=none; b=qlZUVNwtSHehuICWIlxe4VIb0S0iQ+Df472Ldut1LwwGk0ZuSi824zqM8c7g836JRkSx9QgqrmgFh6x7hII+ovZzVnVxJ7BviUiIxPJG1k2JNPyvVziMuiZ6x+2iGfqEIosYLnEmaJVF3ZJXT+TBMu0sN/KjvYmFkoTxLwcr4ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578061; c=relaxed/simple;
	bh=U8TCrBTBHMBDeRXWEsimFplzVxGZZOM7cBfndCP4s3g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K8lKC9q9bvS6TRmeSNAP4fcmOB0B042lLE9TPjGKrLsqCMWCScerzjosX+XixA55aJ1fAoYUKYMob35JgE/Ubasu81tx5pZMHWL4mTpcZZKvgZBQJJQpjYyWVZr25BKUqAW3UjJ1j2bIbRK2XAHX01JHCVO/KYuiqZd2fiSHAbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KWZOlnL7; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779a637712so616105e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763578052; x=1764182852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RR3qWt/sDG3G1Q99fkPxp94915dORCZ61UZ5fAGW9WI=;
        b=KWZOlnL7cLAs4HvV+SBMXOJbOWC2F0AKzFCc9tMMGnpNG406AY/hke/G4n0U/Tis7R
         xZfiLB0wEHrQmwKSDQO0D1IW/IVxbWo9XdRZ4ZKspgIyC7g21USgJ+z0t2tsp2+P+Rec
         DoTh0kj+hyUX0AoH8sQ18qPkJnFTKmp9Nx00wEwebRwAXHj4fU4L4MVnFJvK6K64i75m
         E7/QAY50fVCJp5UGdu6OKsoFh4nwThKcRo36BYfUg77qFv0vGbXHB/pvPY/LgwsiYrp9
         OO85GNefK1v8ZiTSfhwCmMKJONa6v290pTsXmwfov501NtULcK5r7AnODeSja8+0VPF6
         IFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763578052; x=1764182852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RR3qWt/sDG3G1Q99fkPxp94915dORCZ61UZ5fAGW9WI=;
        b=u89zsR/cx4kPACnS6QYViyqjDoMYbU+PdTAs0X1GDlNk+qyeauDN1TQ/Y4lpjP0DUa
         sc1gTriaJBmkh9Di0rWAHuhDlYPwDeqtem3ma5MA65zEkklx2gQUPr7ujTy0XZcnWv7+
         iJJjGRHbNd9blSxTe++yrnkp9IRWANiZ7xBSmRa7N6rFAyOfir/zndSvhzkXlUfApQiK
         40nDDO7AMB8p+6XpSQkar8UnAX2BiMkP1qaOLDKqFZDdo6kwjj4cFYS3xD4N8tlPckBC
         1BoZ8hdu0iGEJSK6FTWMoXEWgycDHc6h4SFQXoGRL9E9ytL5S+tCq0udA7V3ekeHbvwZ
         mY9A==
X-Forwarded-Encrypted: i=1; AJvYcCXu+J+1W/YRTTBbYG9g3e3i0JuYZYV3MFJovuCiUiDAHHj8SnSJ0M5rMrm+W95UeBsiGLjub64ijWcF@vger.kernel.org
X-Gm-Message-State: AOJu0YysisC9HYVBhlMJfnz9vmgVnxQQlbY6dtLY/FgMmLMQxH2qEyZy
	kYsgJedgA0nBrspKIzfVaZjUduYceRxwKyPrM5I4PgcSCJaQD1H/ZUb1
X-Gm-Gg: ASbGncuj4C/+7KW9hWH7mS8vzsOLtzC+ewL+G5IZfbNtoRhW6hW8SAOAComMpjJsJnU
	0tN7LnNaXNg6GOHi7hWr/cGYl0GmLp7CGA1pC0wq6Ymsq61aaeHzWEy86dLI8GXp5B10HSlmiTe
	2AdjL+Jb8hIrbhviC7qvWw4n8gUaeIEDHe4r+l7reeWCv2pYDnzzeq5j/9foP5/PmZ6W6uZNcYR
	z38ennsbLyhuIaKSebedZ4t7VEB78s++ltKNdn1luDWJNw+tK9MLcszgGN/px4l/ecbvIqFcR5S
	dWyWrVnn4NzW4E66P5215x0mCbmR21pE40xC6AAm9OTbNdRBW3wqMWt1RLsomXlflZqoFOLWKJ9
	RhpQjLfUb9vsVI4h98r3w/joQuNpXhhUgvmcRDL0tjSuzEx+M3YfbjT6EJfvK55feJwuHH39zBW
	tBfAfRDS1qHPguw4wzni8kuUmGWA1WZSalKbZ7AHRuKwUeHxaaU+ygne9KIE7qflQ257pXsl+xu
	jmGwp6wepc7Wj/kBY+EeULH
X-Google-Smtp-Source: AGHT+IGWVqRzVIdI2HiJbqd9d8aRb1UulJ8h0GdhVCJ4DwCO+QpTMuGuwBn/M4IYR3NluDI6T041PQ==
X-Received: by 2002:a05:600c:458a:b0:477:7a78:3016 with SMTP id 5b1f17b1804b1-477b8a50e23mr2549755e9.8.1763578052194;
        Wed, 19 Nov 2025 10:47:32 -0800 (PST)
Received: from iris-Ian.fritz.box (p200300eb5f27c400b58af32dfc3cbd97.dip0.t-ipconnect.de. [2003:eb:5f27:c400:b58a:f32d:fc3c:bd97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm4909795e9.8.2025.11.19.10.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:47:31 -0800 (PST)
From: iansdannapel@gmail.com
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	mdf@kernel.org,
	yilun.xu@intel.com,
	trix@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	kever.yang@rock-chips.com,
	dev@kael-k.io,
	iansdannapel@gmail.com
Subject: [PATCH v5 2/3] dt-bindings: fpga: Add Efinix SPI programming bindings
Date: Wed, 19 Nov 2025 19:47:05 +0100
Message-ID: <20251119184708.566461-3-iansdannapel@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119184708.566461-1-iansdannapel@gmail.com>
References: <20251119184708.566461-1-iansdannapel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ian Dannapel <iansdannapel@gmail.com>

Add device tree bindings documentation for configuring Efinix FPGA
using serial SPI passive programming mode.

Signed-off-by: Ian Dannapel <iansdannapel@gmail.com>
---
 .../bindings/fpga/efinix,trion-spi.yaml       | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fpga/efinix,trion-spi.yaml

diff --git a/Documentation/devicetree/bindings/fpga/efinix,trion-spi.yaml b/Documentation/devicetree/bindings/fpga/efinix,trion-spi.yaml
new file mode 100644
index 000000000000..9ac37e5e5094
--- /dev/null
+++ b/Documentation/devicetree/bindings/fpga/efinix,trion-spi.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/fpga/efinix,spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Efinix SPI FPGA Manager
+
+maintainers:
+  - Ian Dannapel <iansdannapel@gmail.com>
+
+description: |
+  Efinix FPGAs (Trion, Topaz, and Titanium families) support loading bitstreams
+  through "SPI Passive Mode".
+  Note: Additional pins hogs for bus width configuration must be set
+  elsewhere, if necessary. Only bus width 1x serial is supported.
+
+  References:
+  - https://www.efinixinc.com/docs/an006-configuring-trion-fpgas-v6.3.pdf
+  - https://www.efinixinc.com/docs/an033-configuring-titanium-fpgas-v2.8.pdf
+  - https://www.efinixinc.com/docs/an061-configuring-topaz-fpgas-v1.1.pdf
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - efinix,trion-spi
+      - efinix,titanium-spi
+      - efinix,topaz-spi
+
+  spi-cpha: true
+
+  spi-cpol: true
+
+  spi-max-frequency:
+    maximum: 25000000
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      reset and re-configuration trigger pin (low active)
+    maxItems: 1
+
+  cdone-gpios:
+    description:
+      optional configuration done status pin (high active)
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+      fpga-mgr@0 {
+        compatible = "efinix,trion-spi";
+        reg = <0>;
+        spi-max-frequency = <25000000>;
+        spi-cpha;
+        spi-cpol;
+        reset-gpios = <&gpio4 17 GPIO_ACTIVE_LOW>;
+        cdone-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+      };
+    };
+...
-- 
2.43.0


