Return-Path: <devicetree+bounces-4375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E4D7B237B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:15:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A66911C20A27
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFFE5124E;
	Thu, 28 Sep 2023 17:15:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013C213AFB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81242C433D9;
	Thu, 28 Sep 2023 17:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695921300;
	bh=kPaMMTfGtPFnEBE78lki4GvEmVbGnWmgp2jahe8ssow=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bRIO/tqPvZZaLyfasZtL28uvq5784eqAJZHcQYoLpV/QWRMlqYEZPmusgmDFmcur/
	 CySTWyS6IQMcCj1MMI8ET0MKNq9W0t/1YMHDLjBKHWJRjMNHjISuSAItaLEO3rSp14
	 BIPx0K6rTDH87+f6C2DJtRvJ8fOnvuGb97qCl8SaaZDFH9aamtbJ2FQFtK6thH6S55
	 y5G+Yo82NsmELSWy/pWHcVr2+qR+rSZtUeal/kObh9B2z9/UK/L4KvK/OHScqLKKnX
	 kYXsuk3igncpknX7/H46rJALXCnpnD3MWNlSF6QsU1SCCt2T4WZTgA6M8aV1ss1AQS
	 SF9IVmNxLclZQ==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: pwm: Add T-HEAD PWM controller
Date: Fri, 29 Sep 2023 01:02:53 +0800
Message-Id: <20230928170254.413-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230928170254.413-1-jszhang@kernel.org>
References: <20230928170254.413-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

T-HEAD SoCs such as the TH1520 contain a PWM controller used
among other things to control the LCD backlight, fan and so on.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 .../devicetree/bindings/pwm/pwm-thead.yaml    | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-thead.yaml

diff --git a/Documentation/devicetree/bindings/pwm/pwm-thead.yaml b/Documentation/devicetree/bindings/pwm/pwm-thead.yaml
new file mode 100644
index 000000000000..8a7cf7129321
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-thead.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/pwm-thead.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-HEAD PWM
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


