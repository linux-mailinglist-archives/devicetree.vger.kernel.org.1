Return-Path: <devicetree+bounces-272823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPhdGqSermm2GwIAu9opvQ
	(envelope-from <devicetree+bounces-272823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:19:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E77236E5F
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 123FD3017DF6
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77AE38E112;
	Mon,  9 Mar 2026 10:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="U8Icu+/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF138E5DC
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773051551; cv=none; b=ifk3mKM+nzggSRQTobZsMvKuUyMcWVn89G+2Th3t0PN+LFhKkuHlLT+azqANsAfTAZAXQ1Gu56B8f0IcrYfWW7xt7dHb7jXE6Iup2b1jkb9dhzlrg1bCpVfoKFtzeeueoozEPM4JzBqyaV2vL575j3XjDVLydeKGRWiCLDywoAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773051551; c=relaxed/simple;
	bh=qi0On55lC0cVCddAXfvPm+qFc/hMgVO6VhgDVu9eXTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CoG1acKEqhcUXnayRZU2Vhl/Xi26MIs1FxLzmTW8pjgtaQmvk0wj37BMSYeTuzUd5XG1I3O8oYaSPn9Dfo0LSL6ioG53wN3YUBZmcJMS65VTazHtiR0NOcaDGxhueuZvqU5S6ZQFRDubna4+XsLBmyDGR0CwjvG6viSJaYbxItg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=U8Icu+/Q; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20260309100858c5452de8be000207df
        for <devicetree@vger.kernel.org>;
        Mon, 09 Mar 2026 11:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=iDk3y7kpS2VdUf8xuIK/B77qzlAoXAb+CIJ/uBVDXFw=;
 b=U8Icu+/QHOmg/jikK5z/4pYUjTMTs6tH2HJLQIqG4wnaeMwMKVnlts+XFJr090CzX33IQW
 ueGYUS7esEDvvBoXKT2GMi//o9tPgx6YO+VWTPyNBoJcPC/63FNBaYnIM0XNt/pjlvAs/wt3
 Ip1ic2/kGawfyA58hCkdDxmWc8vieo+9dMo1m/d4v3spHyAic09mZoE4fHRVV7kEP9l7nl4T
 nUOWxETyTRVpklwREgvj/2S7q83H2NlfzhVBFHIMZfrxCSvD8BFSDQIv5zUdj83w1OXZLMER
 KYbpfm95h7tdpFD3ABuHbWR5c6UyIQqTJ9M70rEid+fe2R9d3ZcFoRlg==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Andrew Davis <afd@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: soc/reset: ti: add binding for k3 platforms reset module
Date: Mon,  9 Mar 2026 11:07:53 +0100
Message-ID: <20260309100800.1134701-2-alexander.sverdlin@siemens.com>
In-Reply-To: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
References: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Rspamd-Queue-Id: F1E77236E5F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272823-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,devicetree.org:url,siemens.com:dkim,siemens.com:email,siemens.com:mid,0.0.70.250:email,2.144.103.186:email]
X-Rspamd-Action: no action

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add DT binding for Texas Instruments K3 Multicore SoC platforms reset
module present on AM64x and newer members of the K3 family and consists of
the RST_CTRL, RST_STAT, RST_SRC and RST_MAGIC_WORD registers.

The planned usage is to provide reset reason information.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
 .../bindings/reset/ti,am64-rst.yaml           | 39 +++++++++++++++++++
 .../soc/ti/ti,j721e-system-controller.yaml    | 11 ++++++
 2 files changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/ti,am64-rst.yaml

diff --git a/Documentation/devicetree/bindings/reset/ti,am64-rst.yaml b/Documentation/devicetree/bindings/reset/ti,am64-rst.yaml
new file mode 100644
index 0000000000000..5a17cee9c6528
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/ti,am64-rst.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/ti,am64-rst.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments K3 Multicore SoC platforms reset module
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+
+description: |
+  Texas Instruments (ARM64) K3 Multicore SoC platforms reset module is present
+  on AM64x and newer members of the K3 family and consists of the RST_CTRL,
+  RST_STAT, RST_SRC and RST_MAGIC_WORD registers.
+
+properties:
+  $nodename:
+    pattern: "^rst@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - const: ti,am64-rst
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rst@43018170 {
+        compatible = "ti,am64-rst";
+        reg = <0x43018170 0x10>;
+    };
diff --git a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
index f3bd0be3b279f..a2071a1668f96 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
@@ -86,6 +86,12 @@ patternProperties:
     description:
       This is the DSS OLDI CTRL region.
 
+  "^rst@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/reset/ti,am64-rst.yaml#
+    description:
+      The node corresponding to SoC reset module.
+
 required:
   - compatible
   - reg
@@ -133,5 +139,10 @@ examples:
             compatible = "ti,j784s4-pcie-ctrl", "syscon";
             reg = <0x4070 0x4>;
         };
+
+        rst@18170 {
+            compatible = "ti,am64-rst";
+            reg = <0x18170 0x10>;
+        };
     };
 ...
-- 
2.52.0


