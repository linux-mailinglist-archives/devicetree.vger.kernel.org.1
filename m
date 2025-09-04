Return-Path: <devicetree+bounces-212838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E37BDB43D9D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B074E1C854A6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71678305E00;
	Thu,  4 Sep 2025 13:47:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7208B304BB6
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993638; cv=none; b=TG1BcBvKY1JecObs1B/1YQ6IE67/9r0Ty4MpoqrEAVpvlYyPnrzw0kqbv8zXufvsL/3Sztg9qVbjHY3VcQvpuHXo2GBxmaljsUGNKC/5bYLNDi30p+eJmAw1OLEreCjMyduJUCag8VGM7AT+bPyZhKPMWXVXADGEzRMXmP44S+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993638; c=relaxed/simple;
	bh=313xgOa50TqeHlIyjdVLh5YsJ07aec4ygcAkRRcDZNc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oCC/gy7n0uLtiGRUuf3/v17ju/4mCo7NmP8sgDDIEuEUt3SbvHyo/wnHld1u5UAkRHAXHsZdwC9Cv/6yp3J+ir+Kvu2HLHxmkw8zAyudUtcvTRlXwnZiClx5epRrZ7+l4G3Lbq+zKhLWmtSf4Odwf3UQOnoyXB3RHGnShV8anjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com; spf=pass smtp.mailfrom=douglass.dev; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=douglass.dev
Feedback-ID: 3578:1022:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 240022050;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Thu, 04 Sep 2025 13:47:00 +0000 (UTC)
From: Woodrow Douglass <wdouglass@carnegierobotics.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Woodrow Douglass <wdouglass@carnegierobotics.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] regulator: pf530x: dt-bindings: nxp,pf530x-regulator
Date: Thu,  4 Sep 2025 09:46:50 -0400
Message-Id: <20250902-pf530x-v5-1-658c403e6a52@carnegierobotics.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250902-pf530x-v5-0-658c403e6a52@carnegierobotics.com>
References: <20250902-pf530x-v5-0-658c403e6a52@carnegierobotics.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1912; i=wdouglass@carnegierobotics.com; h=from:subject:message-id; bh=313xgOa50TqeHlIyjdVLh5YsJ07aec4ygcAkRRcDZNc=; b=owEBbQGS/pANAwAKAewLuLlPNh4UAcsmYgBouZU5PFoE7KcLpFUch/tGXJw87ePS2B89GQVpW Bu9Q6w/UgOJATMEAAEKAB0WIQSIUqjrbDLQw0mgxHLsC7i5TzYeFAUCaLmVOQAKCRDsC7i5TzYe FIYNCACZJ+va/QooNoLqtJFwbhtLUbwl9uhvVTR36FE8nUYGK1TM6H7vqI0hm6P7EATxTlrKy8O +3SedifBJCLF29FQr3mOfZSbOifxxmw6HCeg1FSRCpoyhyM0oeBIWjCJWC20TF7e1HlcpnTu1oY j0+siLLCMtZwzuMjrM5+/yXPzVBnFITabwUUX69kFIW6m69TzKsXk961Y7HfyU/k+LWcRoNTYzx uVhDqbQ3av1rA760hoGftImwhGOVwAvWh/119TjcDmKEI93KK6zS8tvqYFw5sEhM/0QkeiiDDeC wSWf8WQMw1BvvcqTzSK1nvHvVhhDWqg795j7iJKDJuWsIoFJ
X-Developer-Key: i=wdouglass@carnegierobotics.com; a=openpgp; fpr=8852A8EB6C32D0C349A0C472EC0BB8B94F361E14
Content-Transfer-Encoding: 8bit

Bindings for the pf530x series of voltage regulators

Signed-off-by: Woodrow Douglass <wdouglass@carnegierobotics.com>
---
 .../devicetree/bindings/regulator/nxp,pf5300.yaml  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/nxp,pf5300.yaml b/Documentation/devicetree/bindings/regulator/nxp,pf5300.yaml
new file mode 100644
index 000000000000..72f2f7fd2c68
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/nxp,pf5300.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/nxp,pf5300.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PF5300/PF5301/PF5302 PMIC regulators
+
+maintainers:
+  - Woodrow Douglass <wdouglass@carnegierobotics.com>
+
+description: |
+  The PF5300, PF5301, and PF5302 integrate high-performance buck converters,
+  12 A, 8 A, and 15 A, respectively, to power high-end automotive and industrial
+  processors. With adaptive voltage positioning and a high-bandwidth loop, they
+  offer transient regulation to minimize capacitor requirements.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,pf5300
+      - items:
+          - enum:
+              - nxp,pf5301
+              - nxp,pf5302
+          - const: nxp,pf5300
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@28 {
+            compatible = "nxp,pf5302", "nxp,pf5300";
+            reg = <0x28>;
+
+            regulator-always-on;
+            regulator-boot-on;
+            regulator-max-microvolt = <1200000>;
+            regulator-min-microvolt = <500000>;
+        };
+    };

-- 
2.39.5


