Return-Path: <devicetree+bounces-274190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE1hJgOJsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6936266675
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 994023027046
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 543353E0249;
	Wed, 11 Mar 2026 15:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="BPss/Iye"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE823E0231;
	Wed, 11 Mar 2026 15:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242570; cv=none; b=I0BA2NRRF44M1nLUgBnvMOq+FMxe1fcmQ6zBsmnCDgNHnHEx5kwJIvxfaN0OQs+iy2e6pmKyQ2AqpA8kqZzlwIOwPSwSsBiovRPsNrkuv6M31OCqRv6Jf924XOJ8ghYFqcPJ3U9L+UVw1/HOPJg1uKd4oT1R48pLm6B/WkEUOa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242570; c=relaxed/simple;
	bh=F+055il/OvN4uacNlBTxk0d8KhqQCg5t4xFZ1mkewI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pYiRCUYiO7bklvq78EfzSqAWtn/JbLCx8oFyYL7fd+v7QjVXOAspQCk3CJWpppDSbwMQ+9Zz16TAWIcqDwzQGDRox4BJjw2MA8tHcrFR1Y7qbMPDlbUau+M1TROmqh+A/Tkt/X3Q6moBwTPIbPr98CITyyyeZvrzuqLojB0rPps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=BPss/Iye; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=eWuktYYGFGWr7pyAiFwlIyxHt8j0hyF1IdPTFcAhi1g=; b=BPss/Iye/rk5X2qCDpusgy915Z
	EVpIePQgFbAicAZOP/BFmkvYp7ZQwGG1EInNl+6HIyVog8pwa6ioha1LyP0RPALDruYAyv13bg8h3
	26t6EUeIrWAnYX0E3Hy5Er9NTzW72vu8OMNzSDyNd2UU2MzZ3ke7kSQlOk4IRptEh31GJaB7zWIFp
	jEA/WXcH7HI8IhMYDvl13rTf1XhGDdY0x9FfjdOdJIAf8zkFQncBBr6eUlt4ReqtnuIkSXteIeKTc
	YJbQUIeWhdmHEibzwTX4Kb9gELlHrBebqsCqB1UMR8PS7ST8iRVP0Jh17r384Ts1ydNO3Io/94s6y
	OQTa/rVg==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KvH-0002J6-0Y;
	Wed, 11 Mar 2026 15:52:31 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KvG-0005cY-2D;
	Wed, 11 Mar 2026 15:52:30 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: imx8mn-tqma8mqnl-mba8mx-tm070jvhg33: Remove compatible from overlay
Date: Wed, 11 Mar 2026 15:52:18 +0100
Message-ID: <20260311145222.1749655-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311145222.1749655-1-alexander.stein@ew.tq-group.com>
References: <20260311145222.1749655-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27937/Wed Mar 11 07:24:53 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274190-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ew.tq-group.com:dkim,ew.tq-group.com:mid,tq-group.com:email]
X-Rspamd-Queue-Id: E6936266675
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is no reason to override the board compatible in a an overlay,
remove it. While at it, update the copyright year.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
index 29235e390a5d7..0f4cf1855bf3a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /*
- * Copyright (c) 2022-2023 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * Copyright (c) 2022-2026 TQ-Systems GmbH <linux@ew.tq-group.com>,
  * D-82229 Seefeld, Germany.
  * Author: Alexander Stein
  */
@@ -10,10 +10,6 @@
 
 #include <dt-bindings/gpio/gpio.h>
 
-&{/} {
-	compatible = "tq,imx8mn-tqma8mqnl-mba8mx", "tq,imx8mn-tqma8mqnl", "fsl,imx8mn";
-};
-
 &backlight_lvds {
 	status = "okay";
 };
-- 
2.43.0


