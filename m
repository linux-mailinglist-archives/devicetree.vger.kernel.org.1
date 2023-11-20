Return-Path: <devicetree+bounces-17000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E94B7F0DC0
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:41:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FDCC1F222FB
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 643874A2D;
	Mon, 20 Nov 2023 08:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c2m91qd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07D7CEB
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:40:54 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c876e44157so18042141fa.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700469652; x=1701074452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Uja6WpBlyTBG5jgby6fiOGTUsSLknCmEeqWb3eouYXA=;
        b=c2m91qd37sKAC7md1tLXGmis4c0PJQszj8lhdgWHUtHGsgDEc3sFYCmIlFTIIHKz1s
         nfmG4JAJnqJy1p1WefOcvlbbYOyb37UkTX/NCevuc6I6oq8t6NCSQ3M6UGVBx/OLErcQ
         AHvVmByTss7pWvIqaqzcBXfdDkUOPbtrpUdM27p12o+8kPcuywFjsbPAmojVRxHW2uNr
         UGsU3B6sQXUPWuIvFm2xFFoTiUFccJI2gKSc+AOQc1Wp8e9b9UkyKm+3yMI6P+lCSDaD
         O8SKgcSK42PTCin9jQPNCUgGQQjaODTJxGJLHNEbKoibEPuzbZT4hxwB3AuZraBtC80D
         Tmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700469652; x=1701074452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uja6WpBlyTBG5jgby6fiOGTUsSLknCmEeqWb3eouYXA=;
        b=stf/ENt9WzcJCxkxQ+DvkROA9sb/H62W254YACtV3Nhnu7zFEGoLfuUbj5sROpKrtp
         9vgGaTBtXdMbCyhbQtfpGWccCoaQYtVpAunozIKvmlUdhITxB+jsGb5FLqBSuwWdxm7g
         C+MLz8v3AmgbznEEDiOWM+lAdr4Tl15VFPUePdfDX6aJZZuT9Km8VihKQawjk4UQ9tbK
         WG+jUrrHOtdsWf+0m3kdU+TrHNACG/acULB9Im4uYiWF8AkyQypsX41jpl6P2hYF6djw
         Tsn4b3hBj3Mjp/jLkwF+ThTu6mm+sVila95smUjP4slJfr5qGhKQt52a2S5WgrOi4UmI
         xUzQ==
X-Gm-Message-State: AOJu0YypJ9lfwxC5EzpQ/gmCrNRL13hRonWMrYwc5q84kDIyhKbEoomO
	t3BwCLPXAFja7PRgW3zpD/dbag==
X-Google-Smtp-Source: AGHT+IF2z2UJKmxACAGYnsgCuyDmhU5DSNYyJ8jl3UYFsf5HLqN43Rt4pV8YyXHZTojYeH5cxbBtXA==
X-Received: by 2002:a2e:bc0f:0:b0:2c6:eccb:344d with SMTP id b15-20020a2ebc0f000000b002c6eccb344dmr6049660ljf.40.1700469652204;
        Mon, 20 Nov 2023 00:40:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b0040772138bb7sm17248340wmq.2.2023.11.20.00.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 00:40:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrew Davis <afd@ti.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Nishanth Menon <nm@ti.com>,
	Olof Johansson <olof@lixom.net>,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Date: Mon, 20 Nov 2023 09:40:44 +0100
Message-Id: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document preferred coding style for Devicetree sources (DTS and DTSI),
to bring consistency among all (sub)architectures and ease in reviews.

Cc: Andrew Davis <afd@ti.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Michal Simek <michal.simek@amd.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Nishanth Menon <nm@ti.com>
Cc: Olof Johansson <olof@lixom.net>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Merging idea: Rob/DT bindings

Changes in v2
=============
1. Hopefully incorporate entire feedback from comments:
a. Fix \ { => / { (Rob)
b. Name: dts-coding-style (Rob)
c. Exceptions for ordering nodes by name for Renesas and pinctrl (Geert,
   Konrad)
d. Ordering properties by common/vendor (Rob)
e. Array entries in <> (Rob)

2. New chapter: Organizing DTSI and DTS

3. Several grammar fixes (missing articles)

Cc: linux-rockchip@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-arm-msm@vger.kernel.org
---
 .../devicetree/bindings/dts-coding-style.rst  | 163 ++++++++++++++++++
 Documentation/devicetree/bindings/index.rst   |   1 +
 2 files changed, 164 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dts-coding-style.rst

diff --git a/Documentation/devicetree/bindings/dts-coding-style.rst b/Documentation/devicetree/bindings/dts-coding-style.rst
new file mode 100644
index 000000000000..cc7e3b4d1b92
--- /dev/null
+++ b/Documentation/devicetree/bindings/dts-coding-style.rst
@@ -0,0 +1,163 @@
+.. SPDX-License-Identifier: GPL-2.0
+.. _dtscodingstyle:
+
+=====================================
+Devicetree Sources (DTS) Coding Style
+=====================================
+
+When writing Devicetree Sources (DTS) please observe below guidelines.  They
+should be considered complementary to any rules expressed already in Devicetree
+Specification and dtc compiler (including W=1 and W=2 builds).
+
+Individual architectures and sub-architectures can add additional rules, making
+the style stricter.
+
+Naming and Valid Characters
+---------------------------
+
+1. Node and property names are allowed to use only:
+
+   * lowercase characters: [a-z]
+   * digits: [0-9]
+   * dash: -
+
+2. Labels are allowed to use only:
+
+   * lowercase characters: [a-z]
+   * digits: [0-9]
+   * underscore: _
+
+3. Unit addresses should use lowercase hex, without leading zeros (padding).
+
+4. Hex values in properties, e.g. "reg", should use lowercase hex.  The address
+   part can be padded with leading zeros.
+
+Example::
+
+	gpi_dma2: dma-controller@800000 {
+		compatible = "qcom,sm8550-gpi-dma", "qcom,sm6350-gpi-dma";
+		reg = <0x0 0x00800000 0x0 0x60000>;
+	}
+
+Order of Nodes
+--------------
+
+1. Nodes within any bus, thus using unit addresses for children, shall be
+   ordered incrementally by unit address.
+   Alternatively for some sub-architectures, nodes of the same type can be
+   grouped together (e.g. all I2C controllers one after another even if this
+   breaks unit address ordering).
+
+2. Nodes without unit addresses should be ordered alpha-numerically by the node
+   name.  For a few types of nodes, they can be ordered by the main property
+   (e.g. pin configuration states ordered by value of "pins" property).
+
+3. When extending nodes in the board DTS via &label, the entries should be
+   ordered alpha-numerically.
+
+Example::
+
+	// SoC DTSI
+
+	/ {
+		cpus {
+			// ...
+		};
+
+		psci {
+			// ...
+		};
+
+		soc@ {
+			dma: dma-controller@10000 {
+				// ...
+			};
+
+			clk: clock-controller@80000 {
+				// ...
+			};
+		};
+	};
+
+	// Board DTS
+
+	&clk {
+		// ...
+	};
+
+	&dma {
+		// ...
+	};
+
+
+Order of Properties in Device Node
+----------------------------------
+
+Following order of properties in device nodes is preferred:
+
+1. compatible
+2. reg
+3. ranges
+4. Standard/common properties (defined by common bindings, e.g. without
+   vendor-prefixes)
+5. Vendor-specific properties
+6. status (if applicable)
+7. Child nodes, where each node is preceded with a blank line
+
+The "status" property is by default "okay", thus it can be omitted.
+
+Example::
+
+	// SoC DTSI
+
+	usb_1_hsphy: phy@88e3000 {
+		compatible = "qcom,sm8550-snps-eusb2-phy";
+		reg = <0x0 0x088e3000 0x0 0x154>;
+		#phy-cells = <0>;
+		resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+		status = "disabled";
+	};
+
+	// Board DTS
+
+	&usb_1_hsphy {
+		clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
+		clock-names = "ref";
+		status = "okay";
+	};
+
+
+Indentation
+-----------
+
+1. Use indentation according to :ref:`codingstyle`.
+2. For arrays spanning across lines, it is preferred to align the continued
+   entries with opening < from the first line.
+3. Each entry in arrays with multiple cells (e.g. "reg" with two IO addresses)
+   should be enclosed in <>.
+
+Example::
+
+	thermal-sensor@c271000 {
+		compatible = "qcom,sm8550-tsens", "qcom,tsens-v2";
+		reg = <0x0 0x0c271000 0x0 0x1000>,
+		      <0x0 0x0c222000 0x0 0x1000>;
+	};
+
+Organizing DTSI and DTS
+-----------------------
+
+The DTSI and DTS files should be organized in a way representing the common
+(and re-usable) parts of the hardware.  Typically this means organizing DTSI
+and DTS files into several files:
+
+1. DTSI with contents of the entire SoC (without nodes for hardware not present
+   on the SoC).
+2. If applicable: DTSI with common or re-usable parts of the hardware (e.g.
+   entire System-on-Module).
+3. DTS representing the board.
+
+Hardware components which are present on the board should be placed in the
+board DTS, not in the SoC or SoM DTSI.  A partial exception is a common
+external reference SoC-input clock, which could be coded as a fixed-clock in
+the SoC DTSI with its frequency provided by each board DTS.
diff --git a/Documentation/devicetree/bindings/index.rst b/Documentation/devicetree/bindings/index.rst
index d9002a3a0abb..cc1fbdc05657 100644
--- a/Documentation/devicetree/bindings/index.rst
+++ b/Documentation/devicetree/bindings/index.rst
@@ -4,6 +4,7 @@
    :maxdepth: 1
 
    ABI
+   dts-coding-style
    writing-bindings
    writing-schema
    submitting-patches
-- 
2.34.1


