Return-Path: <devicetree+bounces-16374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEAE7EE67F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 813FA1C20A29
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC068487A3;
	Thu, 16 Nov 2023 18:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DY7/6Zww"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD304D5E
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:12:22 -0800 (PST)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7788fb06997so67497085a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700158342; x=1700763142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qsPp3Fy1desywxNmmnzNYZYsXy6qDHsAAEUlLMwI4gw=;
        b=DY7/6ZwwgPWrUqyXx4wamMC64sG+Lz4ucPWt66uTyG+AcjOvdO0ICEI9UIihs9IAxE
         aLa2pFgVq0bV61DsQmgDrTBg5wL33sfwZCkvlPE18G19NnOG2kSdtOTNp5tqaHCBdYIc
         E3nChv0X6tCbJ9U4dpS9DrlVtNiUKFZRcr7VcpC35B+SqGYvG1jqdv6NhB0YhPtJsK54
         1H3plTCAZtBd4KniF9UqHiI4OU3p84TV+kLrrYbFn3DFwpWUMTFos3560Xsp7HLyp6IC
         t0nf0EPJU/sBcAG93jRsU6HAK8QSv4bRiJMoxaAgvsHgBwT7IWRMawAwBnTNtzcq7ymO
         fkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700158342; x=1700763142;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qsPp3Fy1desywxNmmnzNYZYsXy6qDHsAAEUlLMwI4gw=;
        b=q7sJ3Zi8zyc3lu1qIVkz5n29LDCCZgbgwizkP9lmCTJ0pO4+R+tvAt0x1PSm4LGfsX
         JQ8mQI2QXcCdJxUu8dIisUBFuwL4HsjNxfHCyc2yYhs1MkHcv9l5JRRRjg08xhoPhxEr
         wpyCRjuHMcRyjY4WbhQHPok+fj5iAzJ0BxFqH0mDs+VJPInFW7ESzj1JEMI8mTd5Xjmx
         E8NR0ABwH2UR832jwddEr68P1o1aIeT441N2KcG3RxQEGwy0kzTS1RSZPaRwN6FwiVwv
         D3/J/TiDA3B2yP7oR53Xj6rCh68sedXLIZV2uaFc3a2JC73DJ2c7MUsbs5hj8fGZqo3C
         lmhQ==
X-Gm-Message-State: AOJu0YxF7/jYziOWCc400uSReuKoUWZnnIrTa7irB4ghYLZr7d8vQBKD
	NZ3Vj0otZ0rGz7y4SKeh1dSKpQ==
X-Google-Smtp-Source: AGHT+IEUAEMwn525zLxKlq8kwsBwqVgCDbURv4TkRqfwlWo2ARVujUHR3TMjuBm8UCeKexd2jgeynw==
X-Received: by 2002:a05:620a:191b:b0:772:63d9:5264 with SMTP id bj27-20020a05620a191b00b0077263d95264mr5460176qkb.59.1700158341764;
        Thu, 16 Nov 2023 10:12:21 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.169])
        by smtp.gmail.com with ESMTPSA id i8-20020a05620a0a0800b00774652483b7sm4461715qka.33.2023.11.16.10.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 10:12:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Michal Simek <michal.simek@amd.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Nishanth Menon <nm@ti.com>,
	Olof Johansson <olof@lixom.net>
Subject: [PATCH] docs: dt-bindings: add DTS Coding Style document
Date: Thu, 16 Nov 2023 19:12:18 +0100
Message-Id: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
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
---
 Documentation/devicetree/bindings/index.rst   |   1 +
 .../devicetree/bindings/writing-dts.rst       | 137 ++++++++++++++++++
 2 files changed, 138 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/writing-dts.rst

diff --git a/Documentation/devicetree/bindings/index.rst b/Documentation/devicetree/bindings/index.rst
index d9002a3a0abb..975449be4862 100644
--- a/Documentation/devicetree/bindings/index.rst
+++ b/Documentation/devicetree/bindings/index.rst
@@ -5,5 +5,6 @@
 
    ABI
    writing-bindings
+   writing-dts
    writing-schema
    submitting-patches
diff --git a/Documentation/devicetree/bindings/writing-dts.rst b/Documentation/devicetree/bindings/writing-dts.rst
new file mode 100644
index 000000000000..10c477ec1eed
--- /dev/null
+++ b/Documentation/devicetree/bindings/writing-dts.rst
@@ -0,0 +1,137 @@
+.. SPDX-License-Identifier: GPL-2.0
+.. _writingdts:
+
+===================================================
+Writing Devicetree Sources (DTS) - DTS Coding Style
+===================================================
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
+   * lowercase characters:: [a-z]
+   * digits:: [0-9]
+   * dash:: -
+
+2. Labels are allowed to use only:
+
+   * lowercase characters:: [a-z]
+   * digits:: [0-9]
+   * underscore:: _
+
+3. Unit addresses should use lowercase hex, without leading zeros (padding).
+
+4. Hex values in properties, e.g. "reg", should use lowercase hex.  Any address
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
+
+2. Nodes without unit addresses should be ordered alpha-numerically.
+
+3. When extending nodes in board DTS via &label, the entries should be ordered
+   alpha-numerically.
+
+Example::
+
+	// SoC DTSI
+
+	\ {
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
+4. All properties with values
+5. Boolean properties
+6. status (if applicable)
+7. Child nodes
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
+2. For arrays spanning across lines, preferred is to align the continued
+   entries with opening < from first line.
+
+Example::
+
+	thermal-sensor@c271000 {
+		compatible = "qcom,sm8550-tsens", "qcom,tsens-v2";
+		reg = <0x0 0x0c271000 0x0 0x1000>,
+		      <0x0 0x0c222000 0x0 0x1000>;
+	};
-- 
2.34.1


