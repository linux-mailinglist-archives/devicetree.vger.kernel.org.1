Return-Path: <devicetree+bounces-251779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D8BCF6E7F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 07:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D1733019360
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 06:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7A8305E01;
	Tue,  6 Jan 2026 06:31:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [207.46.229.174])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F63287517;
	Tue,  6 Jan 2026 06:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.46.229.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767681099; cv=none; b=tDEmPD06iju9waJxPlsIk5rRGuTLj0/dXa2/oVzz9MaPfw54D0zRQCOWILolzMCfF231fnEl6WN/NDxevgZ/x8noZ+WV1tzSeh0UtmJX0N62KtZrWZn1y3ocATUBd4BqrBY6JZezvD6wvtZ0iST+zHIX+v4vDH8ZnI29JKuLnNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767681099; c=relaxed/simple;
	bh=wa5KG97tX4aL3IFW5916woW61XxH3eQ/JYSSOJvfR2M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZmB2PCFD3ExLDkVpIc5W3MaBcaze7wA0hsXGWYZ8U1f2D4QQJ0OV7hdfkk5NAeOgFME0s5TvBd0PZjfcu7npR6KA6ZKLKK7GKIlosrZEcXrSdSY2cdm/0/QebRKu1m+A8poJJoaAFKWnh1N5es2JCJkhRgK9OxlvvDd9EzKxnJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=207.46.229.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgBnqq03rFxpNH+QAA--.12284S2;
	Tue, 06 Jan 2026 14:31:21 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
Date: Tue,  6 Jan 2026 14:31:16 +0800
Message-Id: <20260106063116.1712-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260106062944.1529-1-luyulin@eswincomputing.com>
References: <20260106062944.1529-1-luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgBnqq03rFxpNH+QAA--.12284S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ur1UuFWfCFWrur1kKrWkXrb_yoW8AFyfpa
	n7Gr97Xrn3Zr1I939xJ3WIkF1fJws3uFWYyr4xK3W5Krn8X3Z5tF4akF1Yva4UGr18Xay3
	XFsIgFy7Aa1UArJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wrylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7sRRKZX5UUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/

Document the SATA PHY on the EIC7700 SoC platform,
describing its usage.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
new file mode 100644
index 000000000000..1b3f8e114ac7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/eswin,eic7700-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Eswin EIC7700 SoC SATA PHY
+
+maintainers:
+  - Yulin Lu <luyulin@eswincomputing.com>
+  - Huan He <hehuan1@eswincomputing.com>
+
+properties:
+  compatible:
+    const: eswin,eic7700-sata-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: phy
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: port
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    sata-phy@50440300 {
+        compatible = "eswin,eic7700-sata-phy";
+        reg = <0x50440300 0x40>;
+        clocks = <&hspcrg 17>;
+        clock-names = "phy";
+        resets = <&hspcrg 0>, <&hspcrg 1>;
+        reset-names = "port", "phy";
+        #phy-cells = <0>;
+    };
-- 
2.25.1


