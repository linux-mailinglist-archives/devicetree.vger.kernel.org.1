Return-Path: <devicetree+bounces-259025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G/fDa+Wc2lgxQAAu9opvQ
	(envelope-from <devicetree+bounces-259025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:41:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8637C77E39
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA1123031CFA
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625C82DC763;
	Fri, 23 Jan 2026 15:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iF1+MoC3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E627D285C84
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769182774; cv=none; b=Fwq2dLVrFhhlz0ojYvnWufKbDEL1BTKzrRybDXxNpmjcNYGjae+HGGw6BrZOfTaMKIEm5v7OlMDOtpVmvAbmETsveTCe5RX8RUSdR+gsW3MlOId6UdxLLoartn+w2RJuH9rJgcsENbVsfvB1uKdvJfsKcFLOEX8YBfMRt43qp+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769182774; c=relaxed/simple;
	bh=EWRtX14XBOJn75+Yxu8XUThdANVXjkr8JgKSNkcgHfo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DZWqR8/E4E7efcRyB7aMxyravUSTpdFjdD02TCPCm0RxBGmMkNxu3ObLBhQ25zxkRd+OHcl6M3BvAurN6+R8NGK2Mt1CwOwmvQDjYzq57erCL3QP0t6gtA+eK183Zp9xBVWPp84boO19x4vpFEJRrcLLnrBoE0y2xTTjp1Fe1Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iF1+MoC3; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c62239decbeso808092a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182772; x=1769787572; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SaQlFGJc3VjbA6sYXTYZs4MxTaxJLLlXJGLonhTWD3Y=;
        b=iF1+MoC3fOWWKXVqBKAi9PEGOOKLXhjT9KIsbq/u4LCOZKWujMZGMjr5/C3TxvbBuR
         Gq2VX7wH5lGkdYscqNcUceWC3VPJIxIHL+UqOdsu8hWlNwA6P7+ojVaXcnmDfNhMH4mG
         7UjHihdCx8RZUPqfj93SwsH/jRmUvL3uBhfvJhgcRxPDKzQG22KtU7s76RJWCRYh83oG
         7YtaaUdYazIsbNEIDmeSf9mvZITXNfoBhDP/cw2aU5zzPPOdzgxJAACFDFtXbKsK6D/H
         vL9jurGCn95S+IDS3R1LClxE53E9rgCq4Bd/MSt2wOEtz+omAkjpMyml8HWmX8B/XnXs
         kqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182772; x=1769787572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SaQlFGJc3VjbA6sYXTYZs4MxTaxJLLlXJGLonhTWD3Y=;
        b=eqpQkrurxLT0nToqErXZUv1O8mNfNRxsFBiju7Qb7Q54d3aTQmD+PnjovELqxk4nmg
         UcTjBqM2r3N7WDKRKI836bQiOdpFZmkZMd9UgvvD4zaEYw/VkBZUDn7x3FBh1R06XASP
         lJ7GElj/xTCtcfcwFc7k2nc8S6/jbmr7ZhxpZ/GLDB7L/jH3NvLFGplgdVhzbGqUZv1d
         iD2ttGoA6yRoLIXtMNPFhgjZ+BTu1ombwJ7sFFc5difzEOKbesQOkBGGenLywpdEtU6H
         14zeMkG6yW55WPKkN+vBi5NKChjNFi5lNxxNkUqSWE6cdrmezNXBxX4tMX7Zhip9Eaem
         TUiA==
X-Forwarded-Encrypted: i=1; AJvYcCVxiToGIC7YAXxfYEyIOMq/xAiZ2P4vhxX56Z6VGQ4TaUiTOs93FLNgcu6sJJ5jK/MG7Eas4y/DBPsQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcVUfyiCKFWApodJhOXm0eF9Ios7ZWt7o8ghTQSQB4HnzaIW5M
	80TPyAmatxaKae6xtZH627W5vYeyTKrC7Kf7AfizjwtLPo7aJDvsPQqr
X-Gm-Gg: AZuq6aJDOzyn3OLCnkizHTqtiw77i+7MiwjcgCFk2YUjedSrckfC31MIkDtFVBCp9Hs
	4DqZJ5IwGOXsf4n7hgGY3YYU7Qn/gSjvIKW9hUSo3/3HQYUHElrCPyDzknMIJWgdHyMB1uoW/LZ
	vROeKtdnPEkKVzaASO4GONWexRDLpm3hzo05dNd5gXH2axh5vD0tJGqajGm4kbBBLTbEJVOJKSK
	B9FQmS5hBHmmVoCM49aVmQqiWAQQHzNqAJ1k1E1J7VCC7QGhWwwK2ML87nDJCxAqB5cqekdwyYo
	tc75JEaltTDGu4yN8q4A4qQfHzlhcDDlhWN7IXu236WcoQphuyrcbhpk6DYakgHQwfvtXyaZc6f
	+mGkxINL7bPA3OgMNqggNB9YuAVwXjYqBkQ8s5OQhobqnI5lXwWX/5R7+muJHhnTpOw6iYId86L
	ZAkNL1EEAgSqb3KYi7UHdjmQtdwMS7bpk5mw==
X-Received: by 2002:a17:903:32c9:b0:29f:3042:407f with SMTP id d9443c01a7336-2a7fe5740b5mr34186845ad.21.1769182772016;
        Fri, 23 Jan 2026 07:39:32 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 23 Jan 2026 15:39:03 +0000
Subject: [PATCH v4 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4a084400:email,4a096000:email]
X-Rspamd-Queue-Id: 8637C77E39
X-Rspamd-Action: no action

Convert TI PIPE3 PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'pcie-phy' to match nodes defined in DT.
- Drop obsolete "id" property from the schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..84f538aa587c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,138 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PIPE3 PHY Module
+
+maintainers:
+  - Roger Quadros <rogerq@ti.com>
+
+description:
+  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
+  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
+  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
+  interface standard, which defines a common physical layer for
+  high-speed serial interfaces.
+
+properties:
+  $nodename:
+    pattern: "^(pcie-phy|usb3-phy|phy)@[0-9a-f]+$"
+
+  compatible:
+    enum:
+      - ti,omap-usb3
+      - ti,phy-pipe3-pcie
+      - ti,phy-pipe3-sata
+      - ti,phy-usb3
+
+  reg:
+    minItems: 2
+    maxItems: 3
+
+  reg-names:
+    minItems: 2
+    items:
+      - const: phy_rx
+      - const: phy_tx
+      - const: pll_ctrl
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 7
+
+  clock-names:
+    minItems: 2
+    maxItems: 7
+    items:
+      enum: [wkupclk, sysclk, refclk, dpll_ref,
+             dpll_ref_m2, phy-div, div-clk]
+
+  syscon-phy-power:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset controlling PHY power
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_0
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset for PCS delay programming
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,phy-pipe3-sata
+    then:
+      properties:
+        syscon-pllreset: true
+    else:
+      properties:
+        syscon-pllreset: false
+
+required:
+  - reg
+  - compatible
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    /* TI PIPE3 USB3 PHY */
+    usb3-phy@4a084400 {
+        compatible = "ti,phy-usb3";
+        reg = <0x4a084400 0x80>,
+              <0x4a084800 0x64>,
+              <0x4a084c00 0x40>;
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        #phy-cells = <0>;
+        clocks = <&usb_phy_cm_clk32k>,
+                 <&sys_clkin>,
+                 <&usb_otg_ss_refclk960m>;
+        clock-names = "wkupclk", "sysclk", "refclk";
+        ctrl-module = <&omap_control_usb>;
+    };
+
+  - |
+    /* TI PIPE3 SATA PHY */
+    phy@4a096000 {
+        compatible = "ti,phy-pipe3-sata";
+        reg = <0x4a096000 0x80>,  /* phy_rx */
+              <0x4a096400 0x64>,  /* phy_tx */
+              <0x4a096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...

-- 
2.52.0


