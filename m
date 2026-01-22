Return-Path: <devicetree+bounces-258602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA+tKw1pcmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AC66C250
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E41B30757D2
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:54:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BFA9367F25;
	Thu, 22 Jan 2026 17:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qn7KaNm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED8260565
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769104484; cv=none; b=ruI9gGI7ZcAoEnWR6JEENQxpWhSkQ0Y+unIWWiXYXJVE3BK0gEYT6tnvJ05FaRPNYswnQ6rTGf2pt5/Oe3nFyhXqFRdAqLdZpclpewhjY8DRafKbjAVMlRvdJuBTQixQX9quQ/Ob0TmXe2ppXbQR4/COAbLkyZjv5ikzo0RyW34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769104484; c=relaxed/simple;
	bh=n7boxvUn3Yk1HQ2wGXunhG0eYxqe8LzA2OtLvcsbp2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oTEG1cbHKpXQNaJfpr/Zv/EBn+NXrJQN6g080aLgbpkIpVDk1wUOiJOZf01VPAFvKcBlolMuJ+3VJOyxZ+9uOyvojud2RELvsGcQR7inItRMiGy90anIhLdfRFnrHIKCqwyMgCocl7YYz8NHgn43FUdjaNaalquVFqTPDJsc+Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qn7KaNm8; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-29f102b013fso10314975ad.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104472; x=1769709272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hr9aR0CWSK1c9Om5bLkEGlAjVnpQPsFLIXPSY4tyYVs=;
        b=Qn7KaNm8VIZXlIYcsDtG7rOZ6AE2R997Tg7CtlwNtDFTBz1TpWkSiTGUev/YqyEVYL
         7VmpFHB4bjGG68pgeNVfByeBk95gAyoqhfZ0Zy4BrTjF+jjfRP6XGTDYo+V4/NOdpDIn
         eZCjYE1ZsWayd8B4udRT+Ls7xQwhnkqltq2vs7jN7X06CYy+lSKWhIj/CNBtigX2+7E+
         QuSKERsNbOgHkgETFe1NymhJm8uTBt0W0zNwUL/4OgGC2yOIokES8fBqA4YkMG1vm72i
         oQdyc2YHkK6I8D2UK/na7vyZFECu6cC1u8JIIwKuwPEPjGdfkuTw/S9jLzSyh+BGdtmm
         Gizg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104472; x=1769709272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hr9aR0CWSK1c9Om5bLkEGlAjVnpQPsFLIXPSY4tyYVs=;
        b=ND9ntk9whH6jgVU2t5HACCh1Qmdjn4ZSthOP8pYlM4le5ihGeaGO1SG8e8Llv9UYaV
         NCezxzrcrGTCN3iLD+CCiaSlOIaeLoQlRPT9j9TNIbZeoZU8rd/hzOSZHCxO0N2STFHy
         XK3vZe+ykuvI2aDmiuomotrQ8IOWn/EJUC4AK0GRDI9O4tzKYYc6GxqIuLPFCSPC6Vep
         BV3OCfjp1fsGsZ3rGdGb1KY7uPB6MlH3+QabxaHBO7zGlfr844LCRsByRl9jkwCi876r
         2uAxMB4JM0mBgvlQmrpLH9rEOywewv1PLOH0wVjylg7WTTsAHBC2HkcPr2S2WzQ+LL6Q
         +ZVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOUXHZwhA45K7sqiXbwySAD7f6Es3R+1HcNC1C3FlIFDQA8xwhnN4UUnZIBCWiQe57HaFAhO33qqE6@vger.kernel.org
X-Gm-Message-State: AOJu0YwGrfDdxvpONGSljrm1g6iPtxWlM1cYOheLdtFKIfcLS37H76IF
	MGHsXhzBHsJaLZd1uh1J4UkrwfQ27tkMPyMKatSVI0O0pm5M8+pCl8sX
X-Gm-Gg: AZuq6aJWQcxoDSdniYMrX5/nRXlGQRdaHRi7QPCuLr6OypBlrpfwWmkJP/apowQufTW
	9bVMszQuQU4c+ZOAqZtAqUMmPyelpanJ/vsuHwFuAO3TcocBJQf7OnZdyKIzfe4WlhLTGrTp2yu
	ouiG7d/Y2H5qw3quAjdcj7NG9uQCnJ8YpHRvqOJkl9Pq+VcQy7HPEhZRiV3j+QRrNBS1tUsz/zr
	HeRNjoUlCNtpoSWb8x7O7f1hqCJ/Z/aNi68LCUqWIRgUQMmGOo8Qmms8/W0FKUB6RmIIPMKMho6
	oa8cPTvvPUBnpguO66Yhn72KS7AQYC48FKVSJ6fuE1aACWuiQp8G6JHuGF9232L3TR78AZ7BBzq
	uhzXKhSFQP1Jq1OnNFQJLuB6KNzV1N7Lk3UJf0iG7aYPUMMQW/XvFxiSJXb+6637dBj3E24ZXfU
	J0qVT13MPk7nsnkvVk6YIEqALWEvGOK6XwUNlPrIOYs0BW
X-Received: by 2002:a17:902:f652:b0:2a3:1b33:ae11 with SMTP id d9443c01a7336-2a7fe75705fmr1806385ad.53.1769104471890;
        Thu, 22 Jan 2026 09:54:31 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:58 +0000
Subject: [PATCH v3 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-ti-phy-v3-2-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258602-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,ti.com:email,4a096000:email,4a084400:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 27AC66C250
X-Rspamd-Action: no action

Convert TI PIPE3 PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'pcie-phy' to match nodes defined in DT.
- Drop obsolete "id" property from the schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 135 +++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..605f12f0f79a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,135 @@
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
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset controlling PHY power
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_0
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
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
+        reg = <0x4A096000 0x80>,  /* phy_rx */
+              <0x4A096400 0x64>,  /* phy_tx */
+              <0x4A096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...

-- 
2.52.0


