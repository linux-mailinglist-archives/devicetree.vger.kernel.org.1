Return-Path: <devicetree+bounces-5754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1267B7C60
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 591741F220D5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02F6410A27;
	Wed,  4 Oct 2023 09:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AFD10A0B
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:39:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA5C8C433C9;
	Wed,  4 Oct 2023 09:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696412378;
	bh=2KYQTHHdlxj8qqNgAA+KrAtJZX+1U+xrdvGAdks0XNs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=utRM5di0La3cVCDAD+xziNd9r09uI+BdzTNkawHSEMsjrfMSGfdB9f8RbvFjsQA/C
	 cBi28Tr4ExoqyTA7H2xEFRkAFSRrC9M19/IF3uPaIHOUK7xb0gN8+GAelTJQe8LvLP
	 FsgOzK1tKxXwMKsZZ5XF8SG5hzhW6zWjj7H29K7h53DyvKcwW3oO9KUDPsXey2n7UC
	 UZLgRJuFdx1wQOtURVCRzYnTvBH8OTDyLH/rsFH0m4UoVd25uvp7DgZtfcS7+VmVJQ
	 F+ZM2UC6PGFlrzTeR8gbJ+mR0IKD2Pj96wn758sUIC7ysPapwJP8B1q9pXt8XPJ+Cj
	 FDSHmhO9UmFOQ==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: pwm: Add T-HEAD PWM controller
Date: Wed,  4 Oct 2023 17:27:30 +0800
Message-Id: <20231004092731.1362-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231004092731.1362-1-jszhang@kernel.org>
References: <20231004092731.1362-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

T-HEAD SoCs such as the TH1520 contain a PWM controller used
to control the LCD backlight, fan and so on.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 .../bindings/pwm/thead,th1520-pwm.yaml        | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml b/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
new file mode 100644
index 000000000000..b9c88f758a39
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/thead,th1520-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-HEAD TH1520 PWM
+
+maintainers:
+  - Jisheng Zhang <jszhang@kernel.org>
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    enum:
+      - thead,th1520-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+
+    pwm@ec01c000 {
+        compatible = "thead,th1520-pwm";
+        reg = <0xec01c000 0x1000>;
+        clocks = <&clk 1>;
+        #pwm-cells = <2>;
+    };
-- 
2.40.1


