Return-Path: <devicetree+bounces-318305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 46AZLsfiRGpz2goAu9opvQ
	(envelope-from <devicetree+bounces-318305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:49:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F83F6EBBBF
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:49:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b="jQrFf5/I";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318305-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318305-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9E1E30534DA
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C9493FC5A5;
	Wed,  1 Jul 2026 09:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347713F8236;
	Wed,  1 Jul 2026 09:45:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782899127; cv=none; b=h+zn9DUsg6HEAqmpVv1l4PcfYm6PGbCf00CfYabDMPZfFL/sMy7cmxIRkMNBbsVUdLeAk4hVKCvbYFskoaaPh2364zDt+ZgYLPC+8X1PRuSpQYRWtWc4pGhmfXIGWKwYOKD7Z0jOxKvQ00zDpN2HS8fZ9JB1uMnFYOJ27MXriNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782899127; c=relaxed/simple;
	bh=RHuTnTruQ9oJg5y7F/Q1JPAzF2SlrZEoHfcl3aFighs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tmGnp03gbdUdBJtETzBqTMs+f8gr+Kji0P3wgUU4pBme+JJG3ydBk3uWOmDxEPD77jYeEGzIeli87nwu6Eje8eqdsNQGZpmZEb4ylWT5lKjgMZBwB7G3gKsM2tdwu40qP7oZ/HznwSRlFLZKGtp2RveTMzb5TelHr9ROTLfOSyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=jQrFf5/I; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=S5CD9RCGzTJ8lEWCXCyIZVGHOFsiCgVXwE8Z7g69M4c=; b=jQrFf5/IjpRWnpMNXSB11D6z+8
	zzx6sCrx6XRbFWE3+I/L/ThV1vsBBSW2gWNmf1jMIsXIoUmd9n1ioU2iIRUATvigGkNkXZ2D7Dfp1
	YtN8xXr3otSf0zQnN18xGcDprra3IefSKll4N3TxBRDik4MeoWjqu+ll3tvuNZB9/yqdLNHPpBggn
	azRfeBdA62Ryx1vPeoGgHUXnohYgj+YNzsTVFaZOLPMTEpniJXPJAoUbmZpF/AdD8wyFxedNWKVY3
	DAWzWQZyOWRxzCkpf9lOT4FsutupWe5kFUn3Cz7bTi+xDakejCH/yWXag6EUDruS8eIUeE/632B6v
	U/b2VZHA==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <Max.Merchel@ew.tq-group.com>)
	id 1werVT-000Fue-2j;
	Wed, 01 Jul 2026 11:45:23 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <Max.Merchel@ew.tq-group.com>)
	id 1werVT-000DCq-1P;
	Wed, 01 Jul 2026 11:45:23 +0200
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6qdl-tqma6: add nvmem-layout
Date: Wed,  1 Jul 2026 11:45:18 +0200
Message-ID: <20260701094520.1482697-1-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28047/Tue Jun 30 23:29:24 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-318305-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:Max.Merchel@ew.tq-group.com,m:linux@ew.tq-group.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ew.tq-group.com:dkim,ew.tq-group.com:mid,ew.tq-group.com:from_mime,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F83F6EBBBF

TQMa6x has board-information located in EEPROM at offset 0x20.
Add necessary nodes and properties for nvmem cell.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi | 10 ++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
index 67f8f59aff5ae..2fa116e1ca9a6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
@@ -39,6 +39,16 @@ m24c64_50: eeprom@50 {
 		reg = <0x50>;
 		pagesize = <32>;
 		vcc-supply = <&sw4_reg>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			module_info: module-info@20 {
+				reg = <0x20 0x60>;
+			};
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
index db552802554d4..4361c7efb9d73 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
@@ -32,6 +32,16 @@ m24c64_50: eeprom@50 {
 		reg = <0x50>;
 		pagesize = <32>;
 		vcc-supply = <&sw4_reg>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			module_info: module-info@20 {
+				reg = <0x20 0x60>;
+			};
+		};
 	};
 };
 

base-commit: be5c93fa674f0fc3c8f359c2143abce6bbb422e6
-- 
2.43.0


