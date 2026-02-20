Return-Path: <devicetree+bounces-266901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILF7CKA5mGmFDQMAu9opvQ
	(envelope-from <devicetree+bounces-266901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:38:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2C0166E36
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A51330888C5
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368A733F394;
	Fri, 20 Feb 2026 10:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="sAsj1GdN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail2.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F2733E37D;
	Fri, 20 Feb 2026 10:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583814; cv=none; b=mW2+UKcbDrpV/H/RfjhrCYPZ/aWo2P6RYn75u79QgmfMYgZ6A+DeOkNfNgq1IOAHvpCMJT46OR5JxJccn5pqonWpBW7pmjTHCPelM64t94cHYAuI1CMYiRnARCjcayPMVl1kQZzSchokmqnK+Kr77hpJAeJ2NYSZhK1Du1er0xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583814; c=relaxed/simple;
	bh=o/Kn47OIJzbhhBAN37bkYpI8xAnDYFpd3oEYxc5XEds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tc3rEXK/kSl+HoxAuUoUGihigd77T8a1q1Bden24t2WbElSvBdw4G/AApNpfsRULH/Yme0kUa+BT+SgABChtWz6c+VgXvKEJHEOYe9vccgKJO7LcvgpZewYETsJz5dOzAAOXOXhe1NERsFwtij1O+rb+ahHI/Nwjkabvj/F4uK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=sAsj1GdN; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1771583810;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lVNtYA9QYyCyxJhprnVzLPW9iVvkaqf7WAZnQ/Wheq4=;
	b=sAsj1GdNA83T0bXSX7w/pf3Twi+bsk9hg1RhyEdAnGn9c1QhX5bTxY6Tl4wrFPOMQRbra5
	MHrQFY4BI2HV4aguAQESQ9jGPA/7z5h7/ElqzXAtQZ/UOzfU2ImPeTSAOX7viYuLYsO3OF
	pOFH/205YOoFN6xO+8jfOB6/oSNSjubfY9PJUlVJGD5z41lQEg4NKL1gJGd+ehOsgugX23
	hKc7ju6ZuXcvD85TXmxoNh/UbEs3dPsxVDry+zZXAK+wQoU9sk9kfT1d4mCbTEXz+5leYP
	DCPGAo1866nXojAJcmI6xLuaiaZzKTq4m+J6r9lWn0+CfaTulQD3eKMfqxR5xQ==
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 4/4] arm64: dts: imx8mp-kontron: Use GPIO/IRQ defines in DL devicetree
Date: Fri, 20 Feb 2026 11:36:19 +0100
Message-ID: <20260220103636.9697-5-frieder@fris.de>
In-Reply-To: <20260220103636.9697-1-frieder@fris.de>
References: <20260220103636.9697-1-frieder@fris.de>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kontron.de,gmail.com,pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266901-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fris.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,5d:email,kontron.de:email,fris.de:mid,fris.de:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D2C0166E36
X-Rspamd-Action: no action

From: Frieder Schrempf <frieder.schrempf@kontron.de>

To make the code more readable, use the macros for the GPIO and IRQ
settings.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
index 7131e9a499ae1..41a2bb74f1565 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
@@ -7,6 +7,7 @@
 /plugin/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 #include "imx8mp-pinfunc.h"
 
 &{/} {
@@ -80,11 +81,11 @@ touchscreen@5d {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_touch>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <6 8>;
-		irq-gpios = <&gpio1 6 0>;
+		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		irq-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
 		AVDD28-supply = <&reg_vcc_panel>;
 		VDDIO-supply = <&reg_vcc_panel>;
-		reset-gpios = <&gpio1 7 0>;
+		reset-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
 	};
 };
 
-- 
2.52.0


