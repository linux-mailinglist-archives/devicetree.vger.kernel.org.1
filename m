Return-Path: <devicetree+bounces-217371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 282CCB576ED
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:46:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23F76188BA72
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF1B2FE59C;
	Mon, 15 Sep 2025 10:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PmS1tAYG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAA02FE56D
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933163; cv=none; b=Kt2bUTKcYmc3CcoeXf4s9YzZo0U49xBC3go6Eoi7uoG6cAGli3JmXNPFPow1cOhqiXRTdUGTeqmaxrMwHQLD8nirdqdW1pBIn4pCAzO08vR0ckkhoPy/dPHsro9C0PawkpV2jD1bXBxCzmX6SKiGc51CxjNrocwuwrKOwPt8AZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933163; c=relaxed/simple;
	bh=MZ6PxAvurXG1uH1QIJpzbJ63J+I3jr0ROI56K6VM/XA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MDAGAsm9nPIUlBOz3tqIowOp3280G3S1PB5k9nRTiOOFfpiBtMcItX7v3cQWgmQOHwcSJlm983rMYt2JrTD5CP1Se37iAow/4DGj+gvtMLSO8lb4O0vsOapNS5kd40gQzweRvdwBOzoEA1HdpCf44tBVatMGa7aN8YPuRoMsKfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PmS1tAYG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso30931995e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757933160; x=1758537960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1Rt7Xhagla/1sOuAXTb1PZ0PCjuu0lMg8zPkfBBc8c=;
        b=PmS1tAYGx3YFhUrmcRcn78W0kBTXP+8FPEImz2UpvnpU9ktwkZxD+v41qXtG6E5SM0
         w6eG9OShEVgGS252a7Qmw7fsnxyef6EETkOyoOwu6IfibI301jxV0JXGc8L0SmOcEJdR
         +F8wTystCjySqKiNa0aZZqUEIdCsRKQC4cIMryJZQPzD/5vmlYEa66RmcZ/nLPHmruqD
         00T7srAgTVqJ/+aAdCkN8YBNL+muhc2UR8f8c21jNohA9KJM1Ya4yEIFmG3daiWbP9ND
         OMKxd1mnn2Cq6KLTTAMkTI0SgK1NxkWeQOXi4hWh7x/3iDNTiKVULPNShLbY8jVA1P6Q
         ROkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933160; x=1758537960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1Rt7Xhagla/1sOuAXTb1PZ0PCjuu0lMg8zPkfBBc8c=;
        b=Wq4r7+OZmOR0BtMJ3RWuwDxYOtK3Sqq3Rc3XWUCtiN7MNW22LlnYyuozGCfNlSp8HV
         t51wd3Y78rwQ4F+pD5J7SYz0uyV4tKTbpLKVVyuw8D58wtATYWb+TSoj6vFys6QnVVTP
         bZ3rOFhBaoylFDksx/RABP3/QvaP40yiASMPfYAqQcBF06rEaaTDkiNyq6wgQ3eq6c+D
         SZqj1tXpf/hVwhDx9E7df2JrgOuhOzZUN5iGIqESY6TxH1sD7dtHFRqIolvWifsrybjM
         cUpRFTXWpoDSBFO/eWGb1dWwtDL8kYqAuZbicyTD8EomolF2g+Pq6HdcqjDUzanvv3+z
         MhLg==
X-Forwarded-Encrypted: i=1; AJvYcCWLJ9K9MjRGoUBfyhhlJJuCAnB6n8Xa/krmXhr28jNYVa9q4qbSX5kjtVqgdayBBeTr5J6tvXEmJijS@vger.kernel.org
X-Gm-Message-State: AOJu0YyvWzHuJW1y807zNmHnkppiyKg9TJPJDd24s84PtnvGba+0foWO
	ZfKn5hyTYYNjd2UEPUu5NXBqeTO3od3CugyBICBMQ7FbBVGDW36EdNZV
X-Gm-Gg: ASbGncsJxubfVQTDlcqf+Z6UkPb4Lk7CGW44defvx40bvZbx3SvyDOfOU539aDHJb+B
	Q9lIjWCkxD+a49+XxvT/IT+mrryiRAqlOnXWuCilE61sydJxvohqB3Pn+evHVfb78fqZJuluYhx
	iI7CBBcLxld48BGhUSHBzgWPNM+5BBtRHyZf9x4BMRsDOyz9KWpwOqPv1j8O+vbP4gzU8o8QcSo
	sqWp7gL9Yy28siB69QdoYQq4vBlKToWy8zPTx4mIgSIAt6+ojXz6sX8BNrqKIRY1FCCl/mzcyW/
	19gAwjGT8juNnMwCI6VvpQAQF+ZlRkHZ0iFv96JR/ytM9N9E47MrPFNSu1hNpPc8kkZM1a4FBXH
	NvHossyQlM6JsQTA6jpV6vmO4SfWooxQEp45zAaNDixtMqrW2N4VgGZCvtVp3bOvm0ihDfZB4QA
	Jyx0SY7A==
X-Google-Smtp-Source: AGHT+IHn4QLGPQ32OnxYflof94cfwBR4YL3okJ8ndlhTf6v4TgxqEb87g0moZGj6t1FQ3d/i+gVHEA==
X-Received: by 2002:a05:600c:4453:b0:459:dde3:1a55 with SMTP id 5b1f17b1804b1-45f211f2fbemr135949525e9.24.1757933160050;
        Mon, 15 Sep 2025 03:46:00 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm67163365e9.0.2025.09.15.03.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:45:59 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	Daniel Golle <daniel@makrotopia.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next PATCH v18 2/8] dt-bindings: net: Document support for AN8855 Switch Internal PHY
Date: Mon, 15 Sep 2025 12:45:38 +0200
Message-ID: <20250915104545.1742-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250915104545.1742-1-ansuelsmth@gmail.com>
References: <20250915104545.1742-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for AN8855 Switch Internal PHY.

Airoha AN8855 is a 5-port Gigabit Switch that expose the Internal
PHYs on the MDIO bus.

Each PHY might need to be calibrated to correctly work with the
use of the eFUSE provided by the Switch SoC. This can be enabled by
defining in the PHY node the NVMEM cell properties.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/net/airoha,an8855-phy.yaml       | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/airoha,an8855-phy.yaml

diff --git a/Documentation/devicetree/bindings/net/airoha,an8855-phy.yaml b/Documentation/devicetree/bindings/net/airoha,an8855-phy.yaml
new file mode 100644
index 000000000000..d2f86116badf
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/airoha,an8855-phy.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/airoha,an8855-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN8855 Switch Internal PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  Airoha AN8855 is a 5-port Gigabit Switch that expose the Internal
+  PHYs on the MDIO bus.
+
+  Each PHY might need to be calibrated to correctly work with the
+  use of the eFUSE provided by the Switch SoC.
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - ethernet-phy-idc0ff.0410
+  required:
+    - compatible
+
+properties:
+  reg:
+    maxItems: 1
+
+  nvmem-cells:
+    items:
+      - description: phandle to SoC eFUSE tx_a
+      - description: phandle to SoC eFUSE tx_b
+      - description: phandle to SoC eFUSE tx_c
+      - description: phandle to SoC eFUSE tx_d
+
+  nvmem-cell-names:
+    items:
+      - const: tx_a
+      - const: tx_b
+      - const: tx_c
+      - const: tx_d
+
+required:
+  - compatible
+  - reg
+
+dependentRequired:
+  nvmem-cells: [ nvmem-cell-names ]
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@1 {
+            compatible = "ethernet-phy-idc0ff.0410",
+                         "ethernet-phy-ieee802.3-c45";
+
+            reg = <1>;
+        };
+
+        ethernet-phy@2 {
+            compatible = "ethernet-phy-idc0ff.0410",
+                         "ethernet-phy-ieee802.3-c45";
+
+            reg = <2>;
+
+            nvmem-cells = <&shift_sel_port0_tx_a>,
+                          <&shift_sel_port0_tx_b>,
+                          <&shift_sel_port0_tx_c>,
+                          <&shift_sel_port0_tx_d>;
+            nvmem-cell-names = "tx_a", "tx_b", "tx_c", "tx_d";
+        };
+    };
-- 
2.51.0


