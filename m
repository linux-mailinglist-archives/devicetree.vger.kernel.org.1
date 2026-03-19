Return-Path: <devicetree+bounces-277769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBPZNunxu2nkqQIAu9opvQ
	(envelope-from <devicetree+bounces-277769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:54:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4922CB711
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70412322E268
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C963D3CF6;
	Thu, 19 Mar 2026 12:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="PKfVBF8s"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D00137DE9C;
	Thu, 19 Mar 2026 12:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924626; cv=none; b=obgic7X0MvBbTIqX6V7/BiLxmWdUfUBmT4TB/jiFdm2JHLtRLUecxAKWhPwrfVil5sSNfHLK+5uxtEUxFOvzjZyC/fn6n2fNSdA/ZIYAL9m/itJQkAUNFLGvKIY4ko4rdEBd98yRRbp9rYX4WyVoEy0nkCsa5StsODrWmntU8t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924626; c=relaxed/simple;
	bh=A/bqDA+Ga69tlQnQwEWvvkXmHv70BWaLrHo3o4H1Ds4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K7SFlxCAkAr4F7X2smBYjQ5qXTAkCLGiQdCTDeVADFa9ES0yhhfCWDH5sqQAql/7/u9gma9p+7quGlbNHvYe4Qkp06+95jHu5CdQCB8+ajyhXPWVMFYRZ3vS74CgEGiNGzFCE3+DbgnYxfsSr4iux4bPG9W+KdrSPjXSC3ayHbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=PKfVBF8s; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=h2qSlUqTr8wNPDdyq+3Q762lg3nRQahEQFIc9O272Y0=; b=PKfVBF8s5alY9AX11c0n8wcoPc
	zEwDYgfaBiu3Vpqw/4rcPTf+I0A5yaWuKzvpu7N85hXi/FqR99bHOHEe4QWbUgh46qCqNMP3f6QwG
	/KOfCbNOk9ZiYRJbEgkH+EHWrb+QdPZO7sXFH7f5j7axO782nRFMD9WAJmeZBYc1OqhANGC+iN8tl
	O3y4nTC1hoeFXbUAeSVQWhMQW8/7YlrHM0ua3k/jBPknCq3N0S8w0T1B6+Pq1XcQiFsue3L3mh33W
	A/shhoU3G7Ne3T4FzyqmnujW6nIgNVkmUOzqRRiBHb/ibW/S+biynAInBh/L8t+XUSu6Vw+K30V3e
	KSLfNOow==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3CpT-0009yL-1N;
	Thu, 19 Mar 2026 13:50:23 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3CpS-000MiA-26;
	Thu, 19 Mar 2026 13:50:22 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v2 3/3] arm64: dts: freescale: imx93-tqma9352-mba93xxla-mini: Add WLAN/BT overlay
Date: Thu, 19 Mar 2026 13:50:10 +0100
Message-ID: <20260319125013.2421621-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319125013.2421621-1-alexander.stein@ew.tq-group.com>
References: <20260319125013.2421621-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27945/Thu Mar 19 07:24:38 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277769-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 7E4922CB711
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Martin Schmiedel <Martin.Schmiedel@tq-group.com>

This overlay enables the LWB5+ M.2 wlan module from ezurio.

Signed-off-by: Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* None

 arch/arm64/boot/dts/freescale/Makefile        |  4 +++
 ...3-tqma9352-mba93xxla-mini-ezurio-wlan.dtso | 35 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index db536522600ac..9a55a86ad385b 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -495,6 +495,10 @@ imx8mm-kontron-bl-lte-dtbs		:= imx8mm-kontron-bl.dtb imx8mm-kontron-bl-lte.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-dl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl-lte.dtb
 
+imx93-tqma9352-mba93xxla-mini-ezurio-wlan-dtbs += imx93-tqma9352-mba93xxla-mini.dtb imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtbo
+
+dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtb
+
 imx8mm-venice-gw72xx-0x-imx219-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-imx219.dtbo
 imx8mm-venice-gw72xx-0x-rpidsi-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rpidsi.dtbo
 imx8mm-venice-gw72xx-0x-rs232-rts-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rs232-rts.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtso b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtso
new file mode 100644
index 0000000000000..12a14d8711035
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtso
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2025-2026 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Martin Schmiedel
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/dts-v1/;
+/plugin/;
+
+&lpuart7 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4329-bt";
+		vbat-supply = <&reg_3v3>;
+		vddio-supply = <&reg_3v3>;
+		shutdown-gpios = <&expander0 5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&usdhc3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	brcmf_sdio: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		reset-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
+	};
+};
-- 
2.43.0


