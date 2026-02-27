Return-Path: <devicetree+bounces-269112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKq0BHBHoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C241B3DF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B391302604F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B9F36BCFA;
	Fri, 27 Feb 2026 07:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SNUNLjFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5223624B3;
	Fri, 27 Feb 2026 07:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177256; cv=none; b=A40MpTFCy1r7OKXMCvxjqak+8jeuBR4uhUZi33D/KusX8I0vCXtQraSyKxA7Qs4mSGqPlBJikF2KrUo1yaRDTkwutQZk8gTiXwyExQoQ7m/g7aGVsTJ7Y1iLj5Tk1ZTV4EHSFFl/DhQKyTSZ3kBki61C+njsRaPJRSt+xmWrQh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177256; c=relaxed/simple;
	bh=kVHyKdXMwsNIWhQaP4qKTESuh4r152o4fSFZKbWily4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rwQp5INkti/n1TscVq1t+Fxa7QEmSvmio/C2jaapi5v0VJtuCCUUhBVDQ4DEEiySDUnW8LFRa75/73xIKyJgsKbTom1NQ3xDOGAwPe/ych1eISlCBkHUAGt4Uxv03voOh04NroIoW2A8aEnAswR90FLRDn9HEkRH/lFfzZ4+XYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SNUNLjFl; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772177254; x=1803713254;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=kVHyKdXMwsNIWhQaP4qKTESuh4r152o4fSFZKbWily4=;
  b=SNUNLjFloSCQyQ5FKEEcce3Z6hbh9zK5zerAaEZxkjm1WGo3h6o8A71E
   q6AqbJXI12curbs85b4maPvnjoUi0eOc8W78fD7AiHyD+BuP+eBou/kGD
   uMkf7ilJ/Ba3A7rTx48u15+72dnjY7y6VfCp2QQgHcZzzQ6T+iRfLMPF3
   Gu5hXhhA2sSoqrqDo/Gf9Fy6F75V8nkBWOZQZV7wwmQHRQC0yxD+/VfTI
   arePmYYWnSIcmwSecJ3G2he51cy1xom+dwSAmR4jVTPb4FiU52tOHMsZg
   y/yKbFtWzSa7Z2LKhVUSyrj1tWEndqWTurvW0zrZ9C5hwsYcNKbP0kH0X
   A==;
X-CSE-ConnectionGUID: jgzAQDc5SNWECLRCNKXXGw==
X-CSE-MsgGUID: g24CtAmqTNSJbk9j26uH/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="83961742"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="83961742"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 23:27:34 -0800
X-CSE-ConnectionGUID: 3kawyxXeRSCUFzlkmGnvrg==
X-CSE-MsgGUID: 5L76ZgtgQFC22nJOQmR/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="221326597"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa004.jf.intel.com with ESMTP; 26 Feb 2026 23:27:31 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 2DADF9B; Fri, 27 Feb 2026 08:27:30 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 2/2] dt-bindings: bus: Remove unused bindings
Date: Fri, 27 Feb 2026 08:26:26 +0100
Message-ID: <20260227072726.1142944-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269112-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,1f059000:email]
X-Rspamd-Queue-Id: 16C241B3DF2
X-Rspamd-Action: no action

As stated in [1] the Baikal platforms are not supported and
the respective driver code has just been removed. Remove
unused bindings.

Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 .../bindings/bus/baikal,bt1-apb.yaml          |  90 ---------------
 .../bindings/bus/baikal,bt1-axi.yaml          | 107 ------------------
 2 files changed, 197 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml

diff --git a/Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml b/Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml
deleted file mode 100644
index 37ba3337f944..000000000000
--- a/Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml
+++ /dev/null
@@ -1,90 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-# Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/bus/baikal,bt1-apb.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Baikal-T1 APB-bus
-
-maintainers:
-  - Serge Semin <fancer.lancer@gmail.com>
-
-description: |
-  Baikal-T1 CPU or DMAC MMIO requests are handled by the AMBA 3 AXI Interconnect
-  which routes them to the AXI-APB bridge. This interface is a single master
-  multiple slaves bus in turn serializing IO accesses and routing them to the
-  addressed APB slave devices. In case of any APB protocol collisions, slave
-  device not responding on timeout an IRQ is raised with an erroneous address
-  reported to the APB terminator (APB Errors Handler Block).
-
-allOf:
-  - $ref: /schemas/simple-bus.yaml#
-
-properties:
-  compatible:
-    contains:
-      const: baikal,bt1-apb
-
-  reg:
-    items:
-      - description: APB EHB MMIO registers
-      - description: APB MMIO region with no any device mapped
-
-  reg-names:
-    items:
-      - const: ehb
-      - const: nodev
-
-  interrupts:
-    maxItems: 1
-
-  clocks:
-    items:
-      - description: APB reference clock
-
-  clock-names:
-    items:
-      - const: pclk
-
-  resets:
-    items:
-      - description: APB domain reset line
-
-  reset-names:
-    items:
-      - const: prst
-
-unevaluatedProperties: false
-
-required:
-  - compatible
-  - reg
-  - reg-names
-  - interrupts
-  - clocks
-  - clock-names
-
-examples:
-  - |
-    #include <dt-bindings/interrupt-controller/mips-gic.h>
-
-    bus@1f059000 {
-      compatible = "baikal,bt1-apb", "simple-bus";
-      reg = <0x1f059000 0x1000>,
-            <0x1d000000 0x2040000>;
-      reg-names = "ehb", "nodev";
-      #address-cells = <1>;
-      #size-cells = <1>;
-
-      ranges;
-
-      interrupts = <GIC_SHARED 16 IRQ_TYPE_LEVEL_HIGH>;
-
-      clocks = <&ccu_sys 1>;
-      clock-names = "pclk";
-
-      resets = <&ccu_sys 1>;
-      reset-names = "prst";
-    };
-...
diff --git a/Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml b/Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml
deleted file mode 100644
index 4ac78b44e45e..000000000000
--- a/Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml
+++ /dev/null
@@ -1,107 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-# Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/bus/baikal,bt1-axi.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Baikal-T1 AXI-bus
-
-maintainers:
-  - Serge Semin <fancer.lancer@gmail.com>
-
-description: |
-  AXI3-bus is the main communication bus of Baikal-T1 SoC connecting all
-  high-speed peripheral IP-cores with RAM controller and with MIPS P5600
-  cores. Traffic arbitration is done by means of DW AXI Interconnect (so
-  called AXI Main Interconnect) routing IO requests from one block to
-  another: from CPU to SoC peripherals and between some SoC peripherals
-  (mostly between peripheral devices and RAM, but also between DMA and
-  some peripherals). In case of any protocol error, device not responding
-  an IRQ is raised and a faulty situation is reported to the AXI EHB
-  (Errors Handler Block) embedded on top of the DW AXI Interconnect and
-  accessible by means of the Baikal-T1 System Controller.
-
-allOf:
-  - $ref: /schemas/simple-bus.yaml#
-
-properties:
-  compatible:
-    contains:
-      const: baikal,bt1-axi
-
-  reg:
-    minItems: 1
-    items:
-      - description: Synopsys DesignWare AXI Interconnect QoS registers
-      - description: AXI EHB MMIO system controller registers
-
-  reg-names:
-    minItems: 1
-    items:
-      - const: qos
-      - const: ehb
-
-  '#interconnect-cells':
-    const: 1
-
-  syscon:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description: Phandle to the Baikal-T1 System Controller DT node
-
-  interrupts:
-    maxItems: 1
-
-  clocks:
-    items:
-      - description: Main Interconnect uplink reference clock
-
-  clock-names:
-    items:
-      - const: aclk
-
-  resets:
-    items:
-      - description: Main Interconnect reset line
-
-  reset-names:
-    items:
-      - const: arst
-
-unevaluatedProperties: false
-
-required:
-  - compatible
-  - reg
-  - reg-names
-  - syscon
-  - interrupts
-  - clocks
-  - clock-names
-
-examples:
-  - |
-    #include <dt-bindings/interrupt-controller/mips-gic.h>
-
-    bus@1f05a000 {
-      compatible = "baikal,bt1-axi", "simple-bus";
-      reg = <0x1f05a000 0x1000>,
-            <0x1f04d110 0x8>;
-      reg-names = "qos", "ehb";
-      #address-cells = <1>;
-      #size-cells = <1>;
-      #interconnect-cells = <1>;
-
-      syscon = <&syscon>;
-
-      ranges;
-
-      interrupts = <GIC_SHARED 127 IRQ_TYPE_LEVEL_HIGH>;
-
-      clocks = <&ccu_axi 0>;
-      clock-names = "aclk";
-
-      resets = <&ccu_axi 0>;
-      reset-names = "arst";
-    };
-...
-- 
2.50.1


