Return-Path: <devicetree+bounces-269378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOtwGrLVoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:34:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E1B1BB830
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A3883152726
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2C341323A;
	Fri, 27 Feb 2026 17:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YLhp+SuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63E343E4AE
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772213460; cv=none; b=hLH8GIcXSu8OYt05Rjx68imVjhEcD7835ohznEZFjb4O4t+A8cj2nWptx0xBtQDGafzlyaaCZGpm25kXlLeuByrOVRdxDQlypiv6EVXzLGN5CYOai+WbIpnSjQxSW8XlgKVkBrwUwiImZSR2ZxB1LhfdVm5ozR8Nfu/LUkF0HCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772213460; c=relaxed/simple;
	bh=Zxivpf0/cCDdwEYuCXAfNIhhCxsN9cHLhwo/duhumFU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HPlq+YdSR6V1vixwvmLxNzCjJG1G5UEaQ1IX85c3xM+GzDtL9d8kKmv7BCs1vfF7JZaBirso2HQa4YYy03MIbVmI1Ru++h2z1Ma5CNWmOuOkXLCC8Bh9XW1m9El75GZelzyAh86eO92mRwl/fKGuWqkygG8+bjuOJnpTW0IGavQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YLhp+SuL; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94de4f5531eso737427241.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772213457; x=1772818257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ogLEycfNyB9C4wzVBB6luT7P1ohJ7+A4F0U3itdzkTU=;
        b=YLhp+SuLOocCJAvvnZXAAjq+UQdJeC1cJYWOVxsrA1H1gCVOgILEA7AXzUqm/AV4aZ
         Y3Lifa8OtmW1AiKF1uvmcov56twnFdYqhDB+FSTTzIp28FejvjNGTvItco742VA11Lau
         eH9mRVqqvhJbQreabirCc3oQNrc6203uxLhLWtelIqLgL6o2fQdqgwr6Opss+cUJOhbj
         uycVbFB4DbmIcFG5KFRBv9o/NLYmsXtAPoEoMauwErGOE4fI3cp29WC7BGsQIVim3XUo
         vddG/TXN3a/C0leEHFgo05Ep1e5YRtOmuzTou1PN8FSimjj22tFULY+G27UhFgm+nkMv
         +D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772213457; x=1772818257;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ogLEycfNyB9C4wzVBB6luT7P1ohJ7+A4F0U3itdzkTU=;
        b=sL9WRdYfj0gUh2uDK8PGZjewGWEt4l2IgiJjATViCHkR0F8PeUvs87DKlbAYIPMbJf
         huJSjU3zC3yUioOuRTB6i07+6FrRa5mNK6QiMBc2ocQSfGczsYwj1fJvz1rgTxPOcnh4
         6PzVexGRPiRpYqyVwV5cBclAK5sA6j2UDUBSj5L2qZyDLxiY46ITz838f2HKOPsNdBqo
         wu4XYsw33AIb/MjoNT2IsUr3wLqu5444A/bO4uAbDnWGYv9MgkBqX0LGT9E8RM+gEMPb
         W2AlQpenppkl4Bz4XnHMy7fRfONAFTuHS1Tkqs/qTvS1QBWfVLqsEJIdh0PXY1vas4HH
         9zrA==
X-Forwarded-Encrypted: i=1; AJvYcCUdTn3+zJbxllWpyvGqgrdvwfxyJYVfHU3OWyX4/AQ/jRgQMsRhc2XYYYXMVWkw5JBvJyuIN1dTmxl0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd6p5k4Ukcbb7T6pocL1W5uWmrFDDjzBGDp4P99VHeNZVluqQu
	We52O2W8AIivmD0uDpRnoeGSbMiux3M9uVjFkuwqnxEVxdAbH50YzvKL
X-Gm-Gg: ATEYQzzq6ILj+ZL1VWO5IRw84skc39/Lt+vbWvU9CTiBoannfuwvGAlMCmn3Z5irG8R
	bMXNtVIDQWRxmoukJ+6q6UrqkyXu2Ujc0yP390vofX1tNDNxGzA3620WyD5sbB2zoScq4OhSSFJ
	xVeSBWEDiCbu13vU4q0Le5DEytEQgkpEEoO7EOGQJn0Lirw24wCTfuHHBYCXuGs7kW4MF1S+4kB
	lETRJqE8FL6kJVm5Bd630zxpAyuemL22sqk/3fh3pIjAvuzvdEW7q9wlA5APxHNvD8exOUcoUJl
	HIXjpoj/Y9/KRi94x0vkDKM/69CVip22LkA8WgFzsfM7wK2h9Z8mZFka2AVnnT158IBAd0Ygp6s
	o5hAadxhlVC5iueR/+lLbTYy561MY7DH28894yt7BqZU6pFdeFYE1CNSLNWIQzLbJZmmTQBVFQH
	Hfv3NmLAerltka5F8Eb6lrD/bSmyn7Qmsj7dQ=
X-Received: by 2002:a05:6102:94e:b0:5f8:e305:d9dc with SMTP id ada2fe7eead31-5ff322805d8mr1569387137.7.1772213456660;
        Fri, 27 Feb 2026 09:30:56 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df6577693sm5216599241.9.2026.02.27.09.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:30:56 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jacobsfeder@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH] dt-bindings: misc: add schema for xlnx,axi-fifo-mm-s
Date: Fri, 27 Feb 2026 14:30:44 -0300
Message-ID: <20260227173048.29174-1-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269378-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: C8E1B1BB830
X-Rspamd-Action: no action

Add a proper YAML devicetree binding schema for the Xilinx AXI-Stream
FIFO IP core, documenting the three supported compatible strings:
xlnx,axi-fifo-mm-s-4.1, xlnx,axi-fifo-mm-s-4.2, and
xlnx,axi-fifo-mm-s-4.3.

This resolves the checkpatch warnings about undocumented DT compatible
strings.

Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
---
 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
new file mode 100644
index 000000000000..dbb5425e39d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -0,0 +1,102 @@
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
+  The driver creates a character device that can be read/written to with
+  standard open/read/write/close.
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
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      1 if RX FIFO is enabled, 0 otherwise.
+
+  xlnx,use-tx-data:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      1 if TX FIFO is enabled, 0 otherwise.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - xlnx,axi-str-rxd-tdata-width
+  - xlnx,axi-str-txd-tdata-width
+  - xlnx,rx-fifo-depth
+  - xlnx,tx-fifo-depth
+  - xlnx,use-rx-data
+  - xlnx,use-tx-data
+
+additionalProperties: false
+
+examples:
+  - |
+    axi_fifo_mm_s@43c00000 {
+        compatible = "xlnx,axi-fifo-mm-s-4.1";
+        interrupt-names = "interrupt";
+        interrupt-parent = <&intc>;
+        interrupts = <0 29 4>;
+        reg = <0x43c00000 0x10000>;
+        xlnx,axi-str-rxd-tdata-width = <0x20>;
+        xlnx,axi-str-txd-tdata-width = <0x20>;
+        xlnx,rx-fifo-depth = <0x200>;
+        xlnx,tx-fifo-depth = <0x8000>;
+        xlnx,use-rx-data = <0x0>;
+        xlnx,use-tx-data = <0x1>;
+    };
-- 
2.53.0


