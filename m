Return-Path: <devicetree+bounces-128627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F749E9283
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EBFA1886805
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BF22206AC;
	Mon,  9 Dec 2024 11:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VBoJFHLP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F7D21D017
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733744055; cv=none; b=k15dGhtbuQ1FCF+wQLW6jv1CAOxkP3kuVTtUJir/qJqv5AWgGRzAeh0lpfq89IeZckLNQIfgMpovXStgslnRI61ImcBc3k5PFm1B+V5kLjLKp6pW8wJiyFYol9gQd08g6qoNRx5uda2kZbC6xXX5gNcXYRxp3Vp+q0dB5x+LD1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733744055; c=relaxed/simple;
	bh=LOIAnWwmFuWbefHt/yb5amtmi2kf/iUi+mT7cG4vT6A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UwKUDVZbFwQVfMYGig01BPbR+/S+VdE+XWZELK3o6qsRd0r8Ug7jPpTmSUxLxsMKlDnH1hMuhAYr9aqb0hMAxk5IpBhSwSqQ1xQkPjLTr8hgtwRAc7vXKeuujGOWzoBPNHpB05zWalVzwqjUNnI/wYCTkJyQJSWAhbwCYSLQisc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VBoJFHLP; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa65f707419so39972766b.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733744050; x=1734348850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RqH0dlrlbRQJY6hV8nIShWo9I2kKBRUgR2UyDp6lXjU=;
        b=VBoJFHLP+WJiZaThLUhCyXNCkAONN3YbJaf9cW4PojEDIvpOdgZwLHgjQtYZ9l+zpR
         9EciI6RFOLPX1Ay4B9W641//DdEqGkJUNq19GQmfOD14SAYudAwpFAPSpofas4iGQQnl
         H6htMYs696YsS+lEU25GwBycgTJecbAidW/MRmky0rnj23wu5OHKrj949ZrfgLqKkyeD
         EdBCaASB3y0KZhbA7W5un/JEV3GAsC6j2Zt80wCCAb2cJGDYNj9QFIOhojOSgMhio22i
         S7t60KwWeyJOojdo3OgPh5/vJZq5UukFcUk4470HOtbhhME6dkZTxQSj5/bEsqNlNrHk
         W3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733744050; x=1734348850;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RqH0dlrlbRQJY6hV8nIShWo9I2kKBRUgR2UyDp6lXjU=;
        b=O8lp5+OzYpYO+A2gl2uk5TJtrK2MGHrNqBZtvaYst0M1N2ajS5t4C/mmH94l5h2M+C
         wUlTfqgInGoXu7SmLWO3JztnNpRFL3g0+N4BK7QZC1WQToOwZXt90WqPEcjXGMH0srAK
         07GF/IKxMM7U7N7uL79f9UU7FmiQQhJqqDurFTtUUeEKsSXZCbKANZAaIij6+Wp0PF7z
         9VhCRBAtEgB4Epf2BshqLZqMCJI2FDqXFs9WF5YoEcLrfBNsN5E6+Gu0HoP4Vai33AqC
         JOpuHtFQI2Um/WNOEoB+B0hky+ERiDzPBXuSIvTLtWE3t0hzYojW/PviatJSTim0vO66
         XZcw==
X-Forwarded-Encrypted: i=1; AJvYcCXDmmxr1SqgYJbK682fMWlhYp/uaGf/a3qRpk8H7g27/G9HCQHcO9leBhEdjl6wiAdKyjin700xMcoO@vger.kernel.org
X-Gm-Message-State: AOJu0Yycn5iTKZcwzwqxa7453E/bgVILffDgWSGdkd4OrksjGh48G+Z6
	PFekwTcOHsilFplcDAwhfDAtZ+99QIT4KAifE0fOdbs9uNxgCIoVhljMfDdVAdY=
X-Gm-Gg: ASbGnctybG0AVYbcLPLMdafh29oNHCuCSb2afnI+tblP1K+HJM8H1DwjvUIMbI6Mj2g
	gamc0DqE65C0eYQZh+B9d2Ga0ssPjRyQ64BZuwM/wBkswJdbHijrSgDgS2h4kB3u1Qi2L0IrYCS
	6f0MgJIHTPdzKyI7+l5lUzHs3v9idETqktz7GNyBzAecPmgh65wrFYJVehKigK+lzuHJr4KMxVd
	haI4Bn3Yfa6ufQ7asMWqnvGIJ2uXob9sRUiXP2J3z8gSgk8AL8XjLmUjVO8kqX9
X-Google-Smtp-Source: AGHT+IEUwOZ9YFvIosvQUmmKdASOWnMUlhYJRR8cEOp3nz5ctbynKBiSrS7H9SVLSEx6wlTFIk5CRQ==
X-Received: by 2002:a17:907:3dab:b0:aa6:6e2e:b8b with SMTP id a640c23a62f3a-aa66e2e15a6mr265628966b.1.1733744050339;
        Mon, 09 Dec 2024 03:34:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa695c3ac07sm61789166b.66.2024.12.09.03.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:34:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Ming Qian <ming.qian@nxp.com>,
	Zhou Peng <eagle.zhou@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Tiffany Lin <tiffany.lin@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Viktor Prutyanov <viktor.prutyanov@phystech.edu>,
	Shijie Qin <shijie.qin@nxp.com>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Emil Velikov <emil.velikov@collabora.com>,
	Del Regno <angelogioacchino.delregno@somainline.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH] media: dt-bindings: trivial white-space and example cleanup
Date: Mon,  9 Dec 2024 12:34:05 +0100
Message-ID: <20241209113405.74226-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Minor cleanups without funcitonal impact:
 - There should not be an empty blank line after SPDX tag,
 - Convention is to indent DTS examples in coding style with 2- or
   4-space indentation (4 is preferred),
 - Drop unused labels in DTS examples.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

No comments since August... Can it be applied?

---


 .../media/allwinner,sun50i-h6-vpu-g2.yaml     |  1 -
 .../bindings/media/amlogic,meson-ir-tx.yaml   |  1 -
 .../bindings/media/amphion,vpu.yaml           |  1 -
 .../bindings/media/fsl,imx6ull-pxp.yaml       |  1 -
 .../media/mediatek,vcodec-decoder.yaml        |  1 -
 .../media/mediatek,vcodec-encoder.yaml        |  1 -
 .../media/mediatek,vcodec-subdev-decoder.yaml |  1 -
 .../media/microchip,sama5d4-vdec.yaml         | 17 ++++----
 .../bindings/media/nxp,imx8mq-vpu.yaml        | 41 +++++++++----------
 .../bindings/media/qcom,msm8916-camss.yaml    |  1 -
 .../bindings/media/qcom,msm8996-camss.yaml    |  1 -
 .../bindings/media/qcom,sdm660-camss.yaml     |  1 -
 .../bindings/media/qcom,sdm845-camss.yaml     |  1 -
 .../bindings/media/qcom,sm8250-camss.yaml     |  1 -
 .../bindings/media/rockchip,rk3568-vepu.yaml  |  1 -
 .../bindings/media/rockchip-vpu.yaml          | 29 +++++++------
 16 files changed, 42 insertions(+), 58 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
index a4f06bbdfe49..8ba5177ac631 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/allwinner,sun50i-h6-vpu-g2.yaml#
diff --git a/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
index 377acce93423..6da8a6aded23 100644
--- a/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
+++ b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/amlogic,meson-ir-tx.yaml#
diff --git a/Documentation/devicetree/bindings/media/amphion,vpu.yaml b/Documentation/devicetree/bindings/media/amphion,vpu.yaml
index 9801de3ed84e..5a920d9e78c7 100644
--- a/Documentation/devicetree/bindings/media/amphion,vpu.yaml
+++ b/Documentation/devicetree/bindings/media/amphion,vpu.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/amphion,vpu.yaml#
diff --git a/Documentation/devicetree/bindings/media/fsl,imx6ull-pxp.yaml b/Documentation/devicetree/bindings/media/fsl,imx6ull-pxp.yaml
index 84a5e894ace4..3f47744459aa 100644
--- a/Documentation/devicetree/bindings/media/fsl,imx6ull-pxp.yaml
+++ b/Documentation/devicetree/bindings/media/fsl,imx6ull-pxp.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/fsl,imx6ull-pxp.yaml#
diff --git a/Documentation/devicetree/bindings/media/mediatek,vcodec-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek,vcodec-decoder.yaml
index b401c67e3ba0..d726d141a434 100644
--- a/Documentation/devicetree/bindings/media/mediatek,vcodec-decoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek,vcodec-decoder.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/mediatek,vcodec-decoder.yaml#
diff --git a/Documentation/devicetree/bindings/media/mediatek,vcodec-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek,vcodec-encoder.yaml
index b45743d0a9ec..110e8f5f1f9e 100644
--- a/Documentation/devicetree/bindings/media/mediatek,vcodec-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek,vcodec-encoder.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/mediatek,vcodec-encoder.yaml#
diff --git a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
index a500a585c692..5865e6f0be89 100644
--- a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/mediatek,vcodec-subdev-decoder.yaml#
diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
index 59b805ca47c5..ede086d55add 100644
--- a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
+++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#
@@ -36,12 +35,12 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/clock/at91.h>
-        #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
 
-        vdec0: vdec@300000 {
-                compatible = "microchip,sama5d4-vdec";
-                reg = <0x00300000 0x100000>;
-                interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
-                clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
-        };
+    vdec@300000 {
+        compatible = "microchip,sama5d4-vdec";
+        reg = <0x00300000 0x100000>;
+        interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+    };
diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 3d58f02b0c5d..19528262810a 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#
@@ -44,26 +43,26 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/clock/imx8mq-clock.h>
-        #include <dt-bindings/power/imx8mq-power.h>
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-        vpu_g1: video-codec@38300000 {
-                compatible = "nxp,imx8mq-vpu-g1";
-                reg = <0x38300000 0x10000>;
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
-                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
-                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
-        };
+    video-codec@38300000 {
+        compatible = "nxp,imx8mq-vpu-g1";
+        reg = <0x38300000 0x10000>;
+        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+    };
   - |
-        #include <dt-bindings/clock/imx8mq-clock.h>
-        #include <dt-bindings/power/imx8mq-power.h>
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-        vpu_g2: video-codec@38300000 {
-                compatible = "nxp,imx8mq-vpu-g2";
-                reg = <0x38310000 0x10000>;
-                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
-                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
-        };
+    video-codec@38300000 {
+        compatible = "nxp,imx8mq-vpu-g2";
+        reg = <0x38310000 0x10000>;
+        interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
+    };
diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
index 9cc0a968a401..3469a43f00d4 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/qcom,msm8916-camss.yaml#
diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
index 5cb0e337ea6e..644646de338a 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/qcom,msm8996-camss.yaml#
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
index 584106e275f6..68d8670557f5 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/qcom,sdm660-camss.yaml#
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
index d32daaef1b50..289494f561e5 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/qcom,sdm845-camss.yaml#
diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
index 06db2c1e6079..a372d991e652 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/qcom,sm8250-camss.yaml#
diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
index 947ad699cc5e..d246f5d38427 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/rockchip,rk3568-vepu.yaml#
diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index 719aeb2dc593..8c2501634080 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
@@ -92,18 +91,18 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/clock/rk3288-cru.h>
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-        #include <dt-bindings/power/rk3288-power.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3288-power.h>
 
-        vpu: video-codec@ff9a0000 {
-                compatible = "rockchip,rk3288-vpu";
-                reg = <0xff9a0000 0x800>;
-                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "vepu", "vdpu";
-                clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
-                clock-names = "aclk", "hclk";
-                power-domains = <&power RK3288_PD_VIDEO>;
-                iommus = <&vpu_mmu>;
-        };
+    video-codec@ff9a0000 {
+        compatible = "rockchip,rk3288-vpu";
+        reg = <0xff9a0000 0x800>;
+        interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "vepu", "vdpu";
+        clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+        clock-names = "aclk", "hclk";
+        power-domains = <&power RK3288_PD_VIDEO>;
+        iommus = <&vpu_mmu>;
+    };
-- 
2.43.0


