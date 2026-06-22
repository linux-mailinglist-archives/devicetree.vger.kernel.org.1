Return-Path: <devicetree+bounces-314352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bb+NDekBOWpVlQcAu9opvQ
	(envelope-from <devicetree+bounces-314352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:35:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 404C06AE4A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:35:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=lMpDLwRt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314352-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314352-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC065300AC90
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B420E39DBD4;
	Mon, 22 Jun 2026 09:35:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D73905EA;
	Mon, 22 Jun 2026 09:35:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782120927; cv=none; b=jE0icj9wJ9M7KMhvUFDWL9Wal6dqiR2XmRom2NAMv3bXzmoXlL5c+scPzRrQeu3WoR/uLHA8hKhaoFSgVJIgWiE39ZjApA2EMDeDApLvKHNGIgRCXq8AJRzcYi7oAVIx/Bzn8pq/jvf3W90xk0t2VpFJVvseiLRK8siq9VRYzAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782120927; c=relaxed/simple;
	bh=ZIo82ep7GovsrR8A2jpkssVrywg877Z3OT53FyuTn0U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mLGJqBqEq7Rc4UyVOoipn7z/D4UjwP7LZKTH8pPASKBJReBACkKMEgoBVfEl/pCoyGqEhkb+yx8DH8ku7MsJoIX7h6CcHMHyjQPYO6arvtfM9kxm9vBgTF5V9C5jpoGnSTJl4/f6PJEmh0Z4IljdOtnk91PJ21svpPHyWIHV7uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=lMpDLwRt; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb.. (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id B0C2E1FE54;
	Mon, 22 Jun 2026 11:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1782120916;
	bh=QDh8cyCuG0BvRFs/KskkYUXoHG61lWt4Q8mGTanX63I=; h=From:To:Subject;
	b=lMpDLwRto8FVTIVQFZ5qHScNPQEX4h6jcz7YL6kReq40+Yahq+8YmrBihWAQfbc0X
	 Y0kUQZAI29s7i3gqQkWUGmtfxMcryYE2MLUpykI20cHVAAQTwdXq5+Tx4QQYTuyRr0
	 DTv2yvV2l+kIYdonILIpiw8j6GLKURnHalAXJ34PAmF+omiLK9cnLR1PrKYYXvLp6/
	 kKvjlNzYSq2dloEwDUkh68UVzuLPUS2n9e/E5ypjgvzyUwMCyUvv3uGPhT9MQmxntg
	 zD6kYYtK7s0aP1JoRasSuqZ+G6aYel95NNNycys5atONlV8L88uQeDpTyCbKR9W7Vm
	 UJhZYA0tdBdLQ==
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
Subject: [PATCH v1] arm64: dts: freescale: imx95-toradex-smarc: add alias for lpuart5
Date: Mon, 22 Jun 2026 11:35:06 +0200
Message-ID: <20260622093507.44132-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:francesco.dolcini@toradex.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314352-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[dolcini.it:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 404C06AE4A3

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add alias for lpuart5 so the UART gets a stable line number.
Without this alias, the lpuart driver fails:

  fsl-lpuart 42590000.serial: failed to get alias id, errno -19

This prevents the Bluetooth controller connected to this UART from
working.

Fixes: 104a391bb6ff ("arm64: dts: freescale: imx95-toradex-smarc: Enable bluetooth on lpuart5")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index 7d760470201f..a6c5398a81e3 100644
--- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
@@ -24,6 +24,7 @@ aliases {
 		serial1 = &lpuart1;
 		serial2 = &lpuart6;
 		serial3 = &lpuart3;
+		serial4 = &lpuart5;
 	};
 
 	chosen {
-- 
2.47.3


