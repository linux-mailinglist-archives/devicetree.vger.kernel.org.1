Return-Path: <devicetree+bounces-262889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMsLBSRThGkx2gMAu9opvQ
	(envelope-from <devicetree+bounces-262889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:21:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6D6EFD25
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF4A1300EC89
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78034361DC5;
	Thu,  5 Feb 2026 08:21:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC7329D28F;
	Thu,  5 Feb 2026 08:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=206.189.21.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770279710; cv=none; b=P0fS3uHPZ/wlvPUT8RbmEsrMkrQLbmK/epTTlRwyw488WDnuurz3va8j8C+MianBTxZKA9RF67KMRpsam1+G+gSeKzHnKucv5aP8mXGJ4uEKLlQv4uFq0tOHJhsxPNg0HHaJsKSzg3DQqW+JiRAefbhz4W3M/eouWw3okjZeYi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770279710; c=relaxed/simple;
	bh=vYhFWsKkTIcyHc0xFgXO3/A+XR8rsbpeAtuozk0YoCE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZVlkyyBfY123gk9TioIypzKmfl/ZWb9/nfELOqmJxCVuvAlFChvrHK6/ERx+3QOqEIhqB85PoT+K0gVuoQBJxEpSh0yHMdmJIA+0vVG8hRlMytURG6vBADw55eFE+s8K4vu21kvAAEx0WnSMvmnEn/gxQftpHXAlVh7vABHmt7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=206.189.21.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgBntzcLU4RpG+oCAA--.13822S2;
	Thu, 05 Feb 2026 16:21:32 +0800 (CST)
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
	linmin@eswincomputing.com,
	fenglin@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
Date: Thu,  5 Feb 2026 16:21:29 +0800
Message-Id: <20260205082129.1482-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TAJkCgBntzcLU4RpG+oCAA--.13822S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCw4ruw47Kr1DtFy8trykGrg_yoW5XF18pF
	s3Wry8Xrn3uF17uw43G3WIkF1fJan7CF4Ykr4Igas0qFs0q3ZYqF4akF1Yk34UCr18Za47
	ZFsIq347Aa17ZrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VU13ku3UUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[eswincomputing.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262889-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	DBL_PROHIBIT(0.00)[3.1.168.108:email];
	FROM_NEQ_ENVFROM(0.00)[luyulin@eswincomputing.com,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[eswincomputing.com:mid,eswincomputing.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3D6D6EFD25
X-Rspamd-Action: no action

Document the SATA PHY on the EIC7700 SoC platform,
describing its usage.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
new file mode 100644
index 000000000000..fc7dbac77acf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
@@ -0,0 +1,92 @@
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
+  eswin,tx-amplitude-tuning:
+    description: This adjusts the transmitter amplitude signal, and its value
+      is derived from eye diagram tuning. The three values correspond to Gen1,
+      Gen2, and Gen3 parameters respectively.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      - description: Gen1 parameter.
+        minimum: 0
+        maximum: 0x7f
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x7f
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x7f
+    default: [0, 0, 0]
+
+  eswin,tx-preemph-tuning:
+    description: This adjusts the transmitter de-emphasis signal, and its value
+      is derived from eye diagram tuning. The three values correspond to Gen1,
+      Gen2, and Gen3 parameters respectively.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      - description: Gen1 parameter.
+        minimum: 0
+        maximum: 0x3f
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x3f
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x3f
+    default: [0, 0, 0]
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


