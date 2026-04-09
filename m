Return-Path: <devicetree+bounces-286082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK1oJJVz12nTOAgAu9opvQ
	(envelope-from <devicetree+bounces-286082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 11:38:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C35AB3C89A1
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 11:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF19530022AA
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 09:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3923AEF2E;
	Thu,  9 Apr 2026 09:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="C+P/oFvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A94E33A70E;
	Thu,  9 Apr 2026 09:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775727201; cv=none; b=utgyBoHt+bzeSH3r/wx8HAP6Qxmnik5Bdj0up5e+hzXZWiFZM4/OXv6AEHqckYZa/QeqhgPOL3S+8AyQCkXEbiLXNJhgmqeLJI/xBEKyvthRbDzmJYtnXHJEzO6UvaH17FmkcNAo+ORfAbV9y37+GpMWUbpbJ3clmJGkSipB7S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775727201; c=relaxed/simple;
	bh=qFmJXVhKlV2z7bI+qd54SbZEdUkWMlJD2hheBQTVhc8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BKhSxCAFfxVYF0gLfuPEEadQ2+spXO35rIEPyQFjXjKnLx/f5X2Z+ARtUassjEChgAuNa/VzJPwr+UUh/tWgKLxTGcGJC/pdUDVVcLDw0UNXhEYTzoQt1v2laJymE4k9DzOOciVP0Y4eg+P970ShBCcLNYaTAtxkPaBoMO2stoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=C+P/oFvC; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.. (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 0BC611F920;
	Thu,  9 Apr 2026 11:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1775727192;
	bh=N5jGRa8k8ho44x6kxKXfOn0v5fdgNOC2UYBlehneq68=; h=From:To:Subject;
	b=C+P/oFvCdmVwP4vHysF2vWWDgKM/64WHarjEP+UGhuf8l2Z4GAha7Sg3Bmq1HzMn9
	 gkAVLAIyt98JV1NojyNqNxBhKoMlyZ5Xqbs1+mOfV5pXoHMZNI7lYXSArsa9pwP3Kq
	 CmCIwZpM6qBbeJ6BT9zvZarvKvuSMhnoArqO1jCGQsGhQ/ZvXlZYD0ZgT38H5LPrBB
	 WmQAfRSHk83NQ4CUyVjpd7n0XxgRoq2XfXmavDC7i/SVhVnhhCXTM8pO+D9oz7QgtS
	 MruburPXk2RTlwqfVj4i30KXX4/TBjnn22ew77kX4QhsSX6+0SFDv61C0jtYG9SmWM
	 B6hZ0te5O0vlQ==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: freescale: imx95-verdin-ivy: fix RS485 RTS polarity
Date: Thu,  9 Apr 2026 11:33:04 +0200
Message-ID: <20260409093307.56471-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-286082-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dolcini.it:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,toradex.com:email]
X-Rspamd-Queue-Id: C35AB3C89A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Fix the RS485 functionality, the RS485 RTS signal is active high on Ivy.

Fixes: f33a1f9a942c ("arm64: dts: freescale: imx95-verdin: Add Ivy carrier board")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi b/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi
index 8337c8b25f05..ff31f7c48cfb 100644
--- a/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi
@@ -452,7 +452,6 @@ &lpuart7 {
 
 /* Verdin UART_2, through RS485 transceiver */
 &lpuart8 {
-	rs485-rts-active-low;
 	rs485-rx-during-tx;
 	linux,rs485-enabled-at-boot-time;
 
-- 
2.47.3


