Return-Path: <devicetree+bounces-272762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qB9RHruNrmnlFwIAu9opvQ
	(envelope-from <devicetree+bounces-272762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:07:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7728E235E2A
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EE7093002B77
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 08:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4E4370D4F;
	Mon,  9 Mar 2026 08:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="CNXdO+dP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28F836F42C;
	Mon,  9 Mar 2026 08:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773046730; cv=none; b=dbEOZTA/yA6wUjlPsHsjLujmF2uG++joPXr8cnMTj73fCK/H6YeMekGATSxZJl24yJoflo9IRUFT0uoLvT8dvbP5m33xJjcg4RZgZrcc5qLBechv2yhemyJKtxbnt07HQuUphiaUDO0O/lpKuCGVud3TB4+yMYPot7mZqxRN4z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773046730; c=relaxed/simple;
	bh=alfksuUsaIMwwikJNXi8Mz/rONNZgs1R0FswmS9hGp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nFN3BiIL5QkKivusYHw9ZXJj3+zl3HnqvhhjrNj7oGG+DNkExDPkiQ6OBjhqBQVvqoBdOTxzqBjcwdOA8vMH/kB2E/nMChJOf2LKsyK4EKFVZETIEFdAjFix0vShZSvXF+qnZxdGXU1m0N8xpRS4lDlanUgg7t5h50w0BIKGj/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=CNXdO+dP; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1773046719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sNGBrZbcItuL87F8eu29arIhBMtm0lZwX1AAsxQD8uE=;
	b=CNXdO+dP8JYgZs6IcsExtMJTi8AL7PMVvrZNXM2VJ61/M6ZpwGGSQOc6IYXLi3tLq14smU
	EzLz8KmUgvMulY3uL1fklO8APl3znyDfGZrK5ek5BMWU+Q+s7r4H9LpMmZ9ti2EKvairuB
	KxpaIi/s5M7N7UCBLcpAZMc/j1vYTsgq4KhRdE8MijyunvWwBXMRedFAJwu4K3LOiOvOVu
	IPC6evVX1wpfA4xq79/8dbqL2EXfQrgnnL1xqCSkZ+sqQdzoRbW1OVhDIxd9e5VTp11OQ0
	BXWroxT8nNOEhc+b47JOGBHQZdqzdy5tX1guWLsFGIXZGSMhlzdtGSWuOZ8Qtw==
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Annette Kobou <annette.kobou@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 2/2] arm64: dts: imx8mp-kontron: Fix boot order for PMIC and RTC
Date: Mon,  9 Mar 2026 09:57:43 +0100
Message-ID: <20260309085749.25747-3-frieder@fris.de>
In-Reply-To: <20260309085749.25747-1-frieder@fris.de>
References: <20260309085749.25747-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7728E235E2A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.84 / 15.00];
	SPAM_FLAG(5.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-272762-lists,devicetree=lfdr.de];
	GREYLIST(0.00)[pass,body];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fris.de:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kontron.de,gmail.com,pengutronix.de];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,fris.de:dkim,fris.de:mid,0.0.0.52:email]
X-Rspamd-Action: no action

From: Annette Kobou <annette.kobou@kontron.de>

The PMIC provides a level-shifter for the I2C lines to the RTC.
As the level shifter needs to be enabled before the RTC can be
accessed, we need to make sure that the PMIC driver is probed
first.

As the PMIC also provides the supply voltage for the RTC through
the 3.3V regulator, we can simply express this in the DT to
create the required dependency.

This fixes sporadic boot hangs that occurred when the RTC was
accessed before the level-shifter was enabled.

Fixes: 946ab10e3f40f ("arm64: dts: Add support for Kontron OSM-S i.MX8MP SoM and BL carrier board")
Signed-off-by: Annette Kobou <annette.kobou@kontron.de>
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
index b97bfeb1c30f8..bc1a261bb000e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
@@ -330,6 +330,12 @@ rv3028: rtc@52 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_rtc>;
 		interrupts-extended = <&gpio3 24 IRQ_TYPE_LEVEL_LOW>;
+		/*
+		 * While specifying the vdd-supply is normally not strictly necessary,
+		 * here it also makes sure that the PMIC driver enables the level-
+		 * shifter for the RTC before the RTC is probed.
+		 */
+		vdd-supply = <&reg_vdd_3v3>;
 	};
 };
 
-- 
2.53.0


