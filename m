Return-Path: <devicetree+bounces-269416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BhiBcT6oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:12:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BB61BD5B8
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71198319E2EF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A948146AEFE;
	Fri, 27 Feb 2026 20:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rac4DazO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2FB46AF29
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222962; cv=none; b=HZGwxstMzr/auHvulwTt/XYzA0i8vNa+bmnOkg+BMcYxCya+9JHIFHxc/delP5cRNwqcHDQ4XV64NIG3J3sSnIbfqu5b0dn+Td77vzN0bO2WKnYdAZ3GvMOD2EhjYaEbne6hEesRB/g7oPwn6oPWEiEe8AQepjEY0SpSKN3P8Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222962; c=relaxed/simple;
	bh=vSZQQRG/U3IqpVWyqxBg5ON/SaXSy+ijC6dy2tk6QNw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JY2M928NJjui4qCzjQFfmWuLq6K6+J+L8GKsrVYvRcI/GoQ/Wh6X2qs8hrAr8gFtwJwyqh6346/GvnKTJVCUp4NS7uCjRs6rihjBgncecPFv/f7mR2kJ6UsOMoxFMd+lsz6C7bkKqqRgTnnb8A2auW+vi9928/Sm0Tthg+FZBXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rac4DazO; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a8584e3a2so2334261e0c.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772222955; x=1772827755; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1dJmF9hqgVYfbfdMZ4xY0oiqyHg2iwadEH7EM4qB1U=;
        b=Rac4DazOBk3Rqy8TlPYEYQPOb2yARpqL7orvgw+oifa7pLyDX9Br/SXs3mrJZV0teA
         fRDd536Ci+w4EXdsqeqPWfiIgkW9lOf8gfe/CI2TpxXN7UQOoOrHksMMX6EHRZ3x3Owa
         GDB3vuDgveSsF3BU528G++BptISjLqhFzPuibAW/OKaN9OxbS2p2C4LhYhpGR8zinxRr
         kZpemymPzxJrWr4wjzk9fgFay2exbSNG3DkR47v/uSRN72iDIOZRxtr3mXt2m1TEPCE6
         6z2cz1Fba6NYcg6J0lIQHBrraCmLRCXQ7NADpw05b9sEopVOfG/OLkY6dcnXi1cZXXFA
         0P6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222955; x=1772827755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X1dJmF9hqgVYfbfdMZ4xY0oiqyHg2iwadEH7EM4qB1U=;
        b=F46Bk0lK+iPYGAzPbzoDZL/7fGPJOYjdplmrDHSf66xBx191M31+UDO+URGOx7RaOw
         Q6Ui+7soMRAIf3GG2yOYo+e0l/fRepRHoDfxF10jItHf0q1dpjlvDXtMNQIo7nA+0Wzu
         JU6xyW/bI4Osdofh7z0iaVy6WQO/DNqq7BlKPauD9U2vb9doCV0ybwXOxXldyFOjSib1
         vOM3qADVMxoyAIUnmmS9hybBJ9kYT4pDHNnQamnmiO3SzKL2V6V53LVJiq4KoMqvRCYh
         pgb3L5OBrXXMTlTGvxqRBbz6DYnBA6FWFhqO027A/KP1fOkLPZEBq0g+RCNUWMC9oGAI
         3a2g==
X-Gm-Message-State: AOJu0Yy80m7kl85T/Qb1pXhRQoT8JqTkoJ7pqCF0/ZUFCDVKkSDl/a2Q
	4Q7zm3rLBmzGnm7ES72ix7cBt2kvqSPVODGmIooZaXdRXf4QMV0hzyQy
X-Gm-Gg: ATEYQzwuN7ndNDoDQjB2p+dOBpvd4CkDp+Ig2qSGiS+lu5JpYTUQUd8Dy2SG01CV91n
	0ZH4LVs+h7dTbm37QiDrj/fNrbDEpbYcO8RGN0wdbq7Tp0cOtRhd8z5N499u3D2jEiIK2He9VZB
	SueuLEFnplMqrEVZzowpFl4NimwS92ShH/99PB4HcKwNy9GnBX2QPg1IAR8gU9vh9pg2YIOdRUW
	AfOWnhO9DQH3EUm/pJFaoph066SpxvbuoN0aFzZVcwrBxqKFbsUsYFoB4Y0Tpqgel34qTWM/iZl
	MZf1PzCM3PdTNyVrr7FUlDFFxAweb8G493Hh3LB63+AdUyDjw8evTskGKMu/+dm5xuNAb33MUGg
	L5eZ83Cuptx707/QzaySMVeyA5k6HSDLkcl6XrGImg+8QcOPPdGhe5cTHGakcdNkPnjuWkRk5m+
	hdxVcaCacfyD0CcTC8Ww1686Fd
X-Received: by 2002:a05:6102:32d1:b0:5f5:3dbd:7007 with SMTP id ada2fe7eead31-5ff3227404cmr2552886137.4.1772222954939;
        Fri, 27 Feb 2026 12:09:14 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea6f7fesm6479027137.13.2026.02.27.12.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:09:14 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	ovidiu.panait.oss@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: misc: xlnx,axi-fifo-mm-s: convert to json-schema
Date: Fri, 27 Feb 2026 17:08:43 -0300
Message-ID: <20260227200857.50880-2-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
References: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269416-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 82BB61BD5B8
X-Rspamd-Action: no action

Convert the Xilinx AXI-Stream FIFO IP core bindings from legacy text
format to modern YAML json-schema.

While converting, the following changes were made:
- Updated property types for 'xlnx,use-rx-data' and 'xlnx,use-tx-data'
  from uint32 to boolean, as they represent hardware features.
- Removed the rigid 32-bit constraint on data width properties to
  better reflect hardware capabilities.
- Renamed the example node to "fifo" to follow generic naming conventions.
- Removed the legacy text binding file.

Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
---
 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 95 ++++++++++++++++++
 drivers/staging/axis-fifo/axis-fifo.txt       | 96 -------------------
 2 files changed, 95 insertions(+), 96 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
 delete mode 100644 drivers/staging/axis-fifo/axis-fifo.txt

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
new file mode 100644
index 000000000000..b3e6a2189289
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx AXI-Stream FIFO IP core
+
+maintainers:
+  - Jacob Feder <jacobsfeder@gmail.com>
+
+description: |
+  The Xilinx AXI-Stream FIFO IP core has read and write AXI-Stream FIFOs,
+  the contents of which can be accessed from the AXI4 memory-mapped interface.
+  This is useful for transferring data from a processor into the FPGA fabric.
+
+  See Xilinx PG080 document for IP details.
+
+  Currently supports only store-forward mode with a 32-bit AXI4-Lite
+  interface.
+
+properties:
+  compatible:
+    enum:
+      - xlnx,axi-fifo-mm-s-4.1
+      - xlnx,axi-fifo-mm-s-4.2
+      - xlnx,axi-fifo-mm-s-4.3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: interrupt
+
+  xlnx,axi-str-rxd-tdata-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 32
+    description:
+      AXI-Stream RX data width in bits. Only 32-bit is supported.
+
+  xlnx,axi-str-txd-tdata-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 32
+    description:
+      AXI-Stream TX data width in bits. Only 32-bit is supported.
+
+  xlnx,rx-fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Depth of RX FIFO in words.
+
+  xlnx,tx-fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Depth of TX FIFO in words.
+
+  xlnx,use-rx-data:
+    type: boolean
+    description: RX FIFO is enabled.
+
+  xlnx,use-tx-data:
+    type: boolean
+    description: TX FIFO is enabled.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - xlnx,axi-str-rxd-tdata-width
+  - xlnx,axi-str-txd-tdata-width
+  - xlnx,rx-fifo-depth
+  - xlnx,tx-fifo-depth
+  - xlnx,use-tx-data
+
+additionalProperties: false
+
+examples:
+  - |
+    fifo@43c00000 {
+        compatible = "xlnx,axi-fifo-mm-s-4.1";
+        reg = <0x43c00000 0x10000>;
+        interrupt-names = "interrupt";
+        interrupt-parent = <&intc>;
+        interrupts = <0 29 4>;
+        xlnx,axi-str-rxd-tdata-width = <0x20>;
+        xlnx,axi-str-txd-tdata-width = <0x20>;
+        xlnx,rx-fifo-depth = <0x200>;
+        xlnx,tx-fifo-depth = <0x8000>;
+        xlnx,use-tx-data;
+    };
+
diff --git a/drivers/staging/axis-fifo/axis-fifo.txt b/drivers/staging/axis-fifo/axis-fifo.txt
deleted file mode 100644
index 413b81a53202..000000000000
--- a/drivers/staging/axis-fifo/axis-fifo.txt
+++ /dev/null
@@ -1,96 +0,0 @@
-Xilinx AXI-Stream FIFO v4.1 IP core
-
-This IP core has read and write AXI-Stream FIFOs, the contents of which can
-be accessed from the AXI4 memory-mapped interface. This is useful for
-transferring data from a processor into the FPGA fabric. The driver creates
-a character device that can be read/written to with standard
-open/read/write/close.
-
-See Xilinx PG080 document for IP details.
-
-Currently supports only store-forward mode with a 32-bit
-AXI4-Lite interface. DOES NOT support:
-	- cut-through mode
-	- AXI4 (non-lite)
-
-Required properties:
-- compatible: Should be one of:
-    "xlnx,axi-fifo-mm-s-4.1"
-    "xlnx,axi-fifo-mm-s-4.2"
-    "xlnx,axi-fifo-mm-s-4.3"
-- interrupt-names: Should be "interrupt"
-- interrupt-parent: Should be <&intc>
-- interrupts: Should contain interrupts lines.
-- reg: Should contain registers location and length.
-- xlnx,axi-str-rxd-protocol: Should be "XIL_AXI_STREAM_ETH_DATA"
-- xlnx,axi-str-rxd-tdata-width: Should be <0x20>
-- xlnx,axi-str-txc-protocol: Should be "XIL_AXI_STREAM_ETH_CTRL"
-- xlnx,axi-str-txc-tdata-width: Should be <0x20>
-- xlnx,axi-str-txd-protocol: Should be "XIL_AXI_STREAM_ETH_DATA"
-- xlnx,axi-str-txd-tdata-width: Should be <0x20>
-- xlnx,axis-tdest-width: AXI-Stream TDEST width (ignored by the driver)
-- xlnx,axis-tid-width: AXI-Stream TID width (ignored by the driver)
-- xlnx,axis-tuser-width: AXI-Stream TUSER width (ignored by the driver)
-- xlnx,data-interface-type: Should be <0x0> (ignored by the driver)
-- xlnx,has-axis-tdest: Should be <0x0> (this feature isn't supported)
-- xlnx,has-axis-tid: Should be <0x0> (this feature isn't supported)
-- xlnx,has-axis-tkeep: Should be <0x0> (this feature isn't supported)
-- xlnx,has-axis-tstrb: Should be <0x0> (this feature isn't supported)
-- xlnx,has-axis-tuser: Should be <0x0> (this feature isn't supported)
-- xlnx,rx-fifo-depth: Depth of RX FIFO in words
-- xlnx,rx-fifo-pe-threshold: RX programmable empty interrupt threshold
-	(ignored by the driver)
-- xlnx,rx-fifo-pf-threshold: RX programmable full interrupt threshold
-	(ignored by the driver)
-- xlnx,s-axi-id-width: Should be <0x4> (ignored by the driver)
-- xlnx,s-axi4-data-width: Should be <0x20> (ignored by the driver)
-- xlnx,select-xpm: Should be <0x0> (ignored by the driver)
-- xlnx,tx-fifo-depth: Depth of TX FIFO in words
-- xlnx,tx-fifo-pe-threshold: TX programmable empty interrupt threshold
-	(ignored by the driver)
-- xlnx,tx-fifo-pf-threshold: TX programmable full interrupt threshold
-	(ignored by the driver)
-- xlnx,use-rx-cut-through: Should be <0x0> (this feature isn't supported)
-- xlnx,use-rx-data: <0x1> if RX FIFO is enabled, <0x0> otherwise
-- xlnx,use-tx-ctrl: Should be <0x0> (this feature isn't supported)
-- xlnx,use-tx-cut-through: Should be <0x0> (this feature isn't supported)
-- xlnx,use-tx-data: <0x1> if TX FIFO is enabled, <0x0> otherwise
-
-Example:
-
-axi_fifo_mm_s_0: axi_fifo_mm_s@43c00000 {
-	compatible = "xlnx,axi-fifo-mm-s-4.1";
-	interrupt-names = "interrupt";
-	interrupt-parent = <&intc>;
-	interrupts = <0 29 4>;
-	reg = <0x43c00000 0x10000>;
-	xlnx,axi-str-rxd-protocol = "XIL_AXI_STREAM_ETH_DATA";
-	xlnx,axi-str-rxd-tdata-width = <0x20>;
-	xlnx,axi-str-txc-protocol = "XIL_AXI_STREAM_ETH_CTRL";
-	xlnx,axi-str-txc-tdata-width = <0x20>;
-	xlnx,axi-str-txd-protocol = "XIL_AXI_STREAM_ETH_DATA";
-	xlnx,axi-str-txd-tdata-width = <0x20>;
-	xlnx,axis-tdest-width = <0x4>;
-	xlnx,axis-tid-width = <0x4>;
-	xlnx,axis-tuser-width = <0x4>;
-	xlnx,data-interface-type = <0x0>;
-	xlnx,has-axis-tdest = <0x0>;
-	xlnx,has-axis-tid = <0x0>;
-	xlnx,has-axis-tkeep = <0x0>;
-	xlnx,has-axis-tstrb = <0x0>;
-	xlnx,has-axis-tuser = <0x0>;
-	xlnx,rx-fifo-depth = <0x200>;
-	xlnx,rx-fifo-pe-threshold = <0x2>;
-	xlnx,rx-fifo-pf-threshold = <0x1fb>;
-	xlnx,s-axi-id-width = <0x4>;
-	xlnx,s-axi4-data-width = <0x20>;
-	xlnx,select-xpm = <0x0>;
-	xlnx,tx-fifo-depth = <0x8000>;
-	xlnx,tx-fifo-pe-threshold = <0x200>;
-	xlnx,tx-fifo-pf-threshold = <0x7ffb>;
-	xlnx,use-rx-cut-through = <0x0>;
-	xlnx,use-rx-data = <0x0>;
-	xlnx,use-tx-ctrl = <0x0>;
-	xlnx,use-tx-cut-through = <0x0>;
-	xlnx,use-tx-data = <0x1>;
-};
-- 
2.53.0


