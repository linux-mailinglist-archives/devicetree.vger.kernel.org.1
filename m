Return-Path: <devicetree+bounces-262025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALJYHSZsgWmwGAMAu9opvQ
	(envelope-from <devicetree+bounces-262025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:31:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE3DD425B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16AF63059F23
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 03:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E7E324707;
	Tue,  3 Feb 2026 03:31:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10B1242D78;
	Tue,  3 Feb 2026 03:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770089471; cv=none; b=A1Dv4Wd1UNPHO25Wl+PD1c0uAP30nQJ6SAXWPNY4AesCIa/U0KdRYANTMiTg+ttHErXpWZxeTvlrWxPhkORV/5MO5jHBh9oJnLQL3MhuPkWSbNeqoghoT4ZteqQOXegtXx+xSlxJ9OCirj7KdxbsJTXksdvr9AqmKtOLuocNyu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770089471; c=relaxed/simple;
	bh=nSo81XDH3g+0IhsQkmlg4apJPpZay88RgQZ5h1VpL2k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=R82cRzmkELChLGhdl7wPZ1m0JhwiPCActp0doiVADZsonA89/ang6Mgi0Und4seY3dBSoBLWLJ7BVykVg9y0ve/BkA7xrelUcVX41qSJAoSuP16yZLVM3zN6lVsU2afae+LnoV0a/RgY6pKi0k1qZ5BDbJ+2ks+0jcZP1bNai4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 3 Feb
 2026 11:31:04 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 3 Feb 2026 11:31:04 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Date: Tue, 3 Feb 2026 11:30:53 +0800
Subject: [PATCH RESEND v9 1/3] dt-bindings: phy: aspeed: Add ASPEED PCIe
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260203-upstream_pcie_rc-v9-1-899ee4efe94e@aspeedtech.com>
References: <20260203-upstream_pcie_rc-v9-0-899ee4efe94e@aspeedtech.com>
In-Reply-To: <20260203-upstream_pcie_rc-v9-0-899ee4efe94e@aspeedtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770089464; l=1554;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=nSo81XDH3g+0IhsQkmlg4apJPpZay88RgQZ5h1VpL2k=;
 b=EpOlOH6dAdG3xn3L59ETFlwWx4735wKZK8l4QYz3heoFxGnMWb1RSAldXKGknJ+uDgu7HbTDu
 Q8Tzg7MVvj8AHBIEDbCPoJS6PawWjxmlWuZxWASlNijDD9vSYUgSFmJ
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262025-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacky_chou@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:mid,aspeedtech.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: CBE3DD425B
X-Rspamd-Action: no action

Introduce device-binding for ASPEED AST2600/2700 PCIe PHY.
The PCIe PHY is used for PCIe RC to configure as RC mode.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/aspeed,ast2600-pcie-phy.yaml      | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml
new file mode 100644
index 000000000000..71a5cd91fb3f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/aspeed,ast2600-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED PCIe PHY
+
+maintainers:
+  - Jacky Chou <jacky_chou@aspeedtech.com>
+
+description:
+  The ASPEED PCIe PHY provides the physical layer functionality for PCIe
+  controllers in the SoC.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - aspeed,ast2600-pcie-phy
+          - aspeed,ast2700-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@1e6ed200 {
+      compatible = "aspeed,ast2600-pcie-phy";
+      reg = <0x1e6ed200 0x100>;
+      #phy-cells = <0>;
+    };

-- 
2.34.1


