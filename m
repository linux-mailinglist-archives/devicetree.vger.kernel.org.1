Return-Path: <devicetree+bounces-275962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCtQKtart2nkUAEAu9opvQ
	(envelope-from <devicetree+bounces-275962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 113EE2955D1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDF6C30125F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813DA34D382;
	Mon, 16 Mar 2026 07:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="ZZ6lPJqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84F2269B1C
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773644754; cv=none; b=p2fQ9Zt6j+fboeUkZHiOLZ+F2eNsWrKfl9KtHMy+qr348hN3xG3kIPRSgqXcIOEM3XcQ/TRxYCX/8E5w19vYghpOpXQntykRGZ2WapkipsbASR3whYFuUnetNvhH4lZWUXREfpL4TiCjj0C1aScBp/jnIN9tKW3CiJcBV9uCB3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773644754; c=relaxed/simple;
	bh=iKOTiWuxtHnqgEUoB0jQIio7TepUaLlC/w9x0+mrdqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NlFBwrS2NCwIwdsChSt3fC7bCCxTRH54WX90dQNfrHgYOwGVr0hfyvAPT5CRu+VmsyPKd4goKIpf+F0yyZUdLO9OWJ4L988czi+u4MSIVCqLHZsbF5Wf/R+OmNbCVubnMUK33GGGv2z7qx+FmOHQAwo8O3bbIv2t6EwmvPAwZzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=ZZ6lPJqc; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 202603160705418703286458000207a7
        for <devicetree@vger.kernel.org>;
        Mon, 16 Mar 2026 08:05:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=iMmUMDZrYnEz/CbNgCyWMh1qW53DcWwSxTsAKK1B7Rc=;
 b=ZZ6lPJqcW02dDWMMEConDNy30m9XX+2yRbXm/FA6paPKFtJuLlcUE2yknRPk50UXSgWbzt
 PSsEFLpLv4Ke8YS1zlKloV1KhGtlGrr8q9ruOrw9vbeTR5JhiRtNE5I/+MPQTgiO+HBiKlkf
 1U6N8ohxdSLCp51tWs5WHoFdtqL2mCsKuFt/0n82kfP4f8vs6pReiMnsnc5w4HYQ95Og2Sj4
 vqB9gKmq9SYOlEqsiBgu86D/rPO2PvTkYaDmLqzFlkSDHfH6KBxibyBaXhXNsVmWPphxkHrL
 iw8LilA8j0Y575oyve0V9/7RNOeLTjS/m4KoavWolrwLnE3ZUwPvzbTg==;
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
Subject: [PATCH v2 1/3] dt-bindings: mfd: syscon: add binding for TI K3 platforms reset registers
Date: Mon, 16 Mar 2026 08:04:23 +0100
Message-ID: <20260316070429.1545707-2-alexander.sverdlin@siemens.com>
In-Reply-To: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
References: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275962-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.70.250:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:dkim,siemens.com:email,siemens.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 113EE2955D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add DT binding for Texas Instruments K3 Multicore SoC platforms reset
registers present on AM64x and newer members of the K3 family and consist
of the RST_CTRL, RST_STAT, RST_SRC and RST_MAGIC_WORD.

The planned usage is to provide reset reason information.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
Changelog:
v2: amended mfd/syscon.yaml instead of separate reset/ti,am64-rst.yaml

 Documentation/devicetree/bindings/mfd/syscon.yaml     |  1 +
 .../bindings/soc/ti/ti,j721e-system-controller.yaml   | 11 +++++++++++
 2 files changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index e57add2bacd30..564fcb153a688 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -240,6 +240,7 @@ properties:
               - ti,am62-usb-phy-ctrl
               - ti,am625-dss-oldi-io-ctrl
               - ti,am62p-cpsw-mac-efuse
+              - ti,am64-rst
               - ti,am654-dss-oldi-io-ctrl
               - ti,j784s4-acspcie-proxy-ctrl
               - ti,j784s4-pcie-ctrl
diff --git a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
index f3bd0be3b279f..b8063548f50ad 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
@@ -86,6 +86,12 @@ patternProperties:
     description:
       This is the DSS OLDI CTRL region.
 
+  "^rst@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    description:
+      The node corresponding to SoC reset registers block.
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


