Return-Path: <devicetree+bounces-16733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FA57EF843
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98E9B281144
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E2E45941;
	Fri, 17 Nov 2023 20:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ekVvqiLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3938D10C6
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:53 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3b6f4d8ddccso1389391b6e.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252032; x=1700856832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m9n1o/iZUaxSEnICaWfmjkoxeuoE9nljoI9vgcv8+Pc=;
        b=ekVvqiLE2X0AyxL40gEGgL8S9/W3gsGfadcgVpEJCyZECyqemP4b6NMfF4Btphzf8l
         QTRUSjCfVzye+1ry7lGnCcoVXAOhDm+841XSEM+Nq1Tu6oEyh8wUnwzJ2E4fxhqF4dJY
         G6DlfTtXOszf77/l8q8/mFhcBVx53JNYB2KQm9TX/X8dfvSouFQpiDgxdGQKLvFMYnWo
         zNIKoyHRhPXqlK0wrCsdRSkZGN2iz/F0m2hKzp44BJEn0gTBMhd9aI4bkk28a4cNpAlF
         PL6/DYGxqlh3hRdm3R4AOXgdgAshcm2JjospjAhMea+ZcEBAbKyFC//NOhZTv0rTsZTh
         SRNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252032; x=1700856832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m9n1o/iZUaxSEnICaWfmjkoxeuoE9nljoI9vgcv8+Pc=;
        b=oC3FoWr/nH2vWkxYXqAoOgyiRxcTZtWtpBTetdnbqJS7sdLFMFXcjqHfQB31cNuIOd
         C29pKK+mNQKGij/5vJy618iwPRM/unbppZ/K/pgyOo9VAqZiLhthtyd7X2PFkSdzn+Z7
         +ez/iavdrU4FdR4nEhnxB0u1XQXDX1tpuXjvr+eISGaVUIvUMGlWL4zL+i9FVlIbLwjm
         7YRZT+vxbebCxpKt7a5CLzjSahLQfyxYl4FM1E69WxI4vRqkAYOaleRA4KY7txduZJap
         I9qO2fmQHjqZ9zBDb2CVQJgMPFT1DE+N7Yt74OCSdZPDAIQFTA29N90o8+UQ4uGScd6V
         eMuA==
X-Gm-Message-State: AOJu0YxBj1UPOInydb2Ppkd3wF9XKBgNNFXpcsZclxHg2NNUg+pYYXyR
	1blTB9phD+h7iyktHfO22fThjg==
X-Google-Smtp-Source: AGHT+IGOxWWmVTcro47+CfoBzs66smlpjH26pJyUOrimWvjymyEudIaiiZt12oijMWo9J4oq49iVOg==
X-Received: by 2002:a05:6808:308a:b0:3a7:4161:44ee with SMTP id bl10-20020a056808308a00b003a7416144eemr509227oib.6.1700252032112;
        Fri, 17 Nov 2023 12:13:52 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:51 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/14] dt-bindings: spi: axi-spi-engine: convert to yaml
Date: Fri, 17 Nov 2023 14:12:52 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-1-cc59db999b87@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This converts the axi-spi-engine binding to yaml.

There are a few minor fixes in the conversion:
* Added maintainers.
* Added descriptions for the clocks.
* Fixed the double "@" in the example.
* Added a comma between the clocks in the example.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

Note: This work is being done by BayLibre on behalf of Analog Devices Inc.
This is why the maintainers are @analog.com rather than @baylibre.com.

 .../devicetree/bindings/spi/adi,axi-spi-engine.txt | 31 ----------
 .../bindings/spi/adi,axi-spi-engine.yaml           | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.txt b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.txt
deleted file mode 100644
index 8a18d71e6879..000000000000
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-Analog Devices AXI SPI Engine controller Device Tree Bindings
-
-Required properties:
-- compatible		: Must be "adi,axi-spi-engine-1.00.a""
-- reg			: Physical base address and size of the register map.
-- interrupts		: Property with a value describing the interrupt
-			  number.
-- clock-names		: List of input clock names - "s_axi_aclk", "spi_clk"
-- clocks		: Clock phandles and specifiers (See clock bindings for
-			  details on clock-names and clocks).
-- #address-cells	: Must be <1>
-- #size-cells		: Must be <0>
-
-Optional subnodes:
-	Subnodes are use to represent the SPI slave devices connected to the SPI
-	master. They follow the generic SPI bindings as outlined in spi-bus.txt.
-
-Example:
-
-    spi@@44a00000 {
-		compatible = "adi,axi-spi-engine-1.00.a";
-		reg = <0x44a00000 0x1000>;
-		interrupts = <0 56 4>;
-		clocks = <&clkc 15 &clkc 15>;
-		clock-names = "s_axi_aclk", "spi_clk";
-
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		/* SPI devices */
-    };
diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
new file mode 100644
index 000000000000..d48faa42d025
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/adi,axi-spi-engine.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AXI SPI Engine Controller
+
+description: |
+  The AXI SPI Engine controller is part of the SPI Engine framework[1] and
+  allows memory mapped access to the SPI Engine control bus. This allows it
+  to be used as a general purpose software driven SPI controller as well as
+  some optional advanced acceleration and offloading capabilities.
+
+  [1] https://wiki.analog.com/resources/fpga/peripherals/spi_engine
+
+maintainers:
+  - Michael Hennerich <Michael.Hennerich@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: adi,axi-spi-engine-1.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The AXI interconnect clock.
+      - description: The SPI controller clock.
+
+  clock-names:
+    items:
+      - const: s_axi_aclk
+      - const: spi_clk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi@44a00000 {
+        compatible = "adi,axi-spi-engine-1.00.a";
+        reg = <0x44a00000 0x1000>;
+        interrupts = <0 56 4>;
+        clocks = <&clkc 15>, <&clkc 15>;
+        clock-names = "s_axi_aclk", "spi_clk";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* SPI devices */
+    };

-- 
2.42.0


