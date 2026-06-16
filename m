Return-Path: <devicetree+bounces-312476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dSlZHC8rMWpqdAUAu9opvQ
	(envelope-from <devicetree+bounces-312476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:53:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B504A68E7F5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:53:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=PL91a9QS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312476-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312476-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B363F306B344
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEC742883B;
	Tue, 16 Jun 2026 10:50:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84B9436344;
	Tue, 16 Jun 2026 10:50:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781607043; cv=none; b=fqnG8pgIKzlghlZWRz41h68tAccjrAoJ3Xp09eQTPFvQ7zHZFtf+fg2HNjziPjmBNrarJnC3L1Enm/c9VMw45QnZ/Ai7T/Z6xuCFwJZAW5CTHpRqtwC09l8eLbCIEGP4OMDPf/6i/9LK8xTk62Q2Z3K8Mf8IV+wOxQWwyTIulMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781607043; c=relaxed/simple;
	bh=b46aCoqnoLSoLadUdvsDz6SLzPSkV+jIMYvkj7+NJvM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y5GHynBcgdJ6p+z3SlenBNhnXkZBYniSDZ5DUDZvYkaF2WRAcDG9L0UYR3/BRVDmXp4qwL2ukgcDPoo66q682ZlYMvjvhtjA28u3cnqaIKnkMDMDIbHKR0K7X+xm3lyYxBU+s/ryPSi6xFLBgBX6l9zMpWjUiq0+G6INE/8D2vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=PL91a9QS; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781606606;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aThhbPVkViZDOYmIYsh1qACbccOEM0HdUC2kdMlFlcg=;
	b=PL91a9QSRz3tmG5n8pe+J3lwK33NYmKe9lP8mm3WxE3siVmeHJkiEOFqjgXVZl7Vr8BMlW
	zqQweswwx+xeGdpjya0FGfWwYtppajdQiwhk/bj/p524ExcJdhfypSHFzHx9S7qyzOITS2
	hWJs6OYYGYAEPC1Z972NLh7xdeo5NU/3KfrpCd5j0OsettVYCC+lHZ/jbsjzF7P0IWaX+e
	j1v5Sqk7Sorp20b4gAN96dsBOSjI9kNckLKi4IY7HpY+LKMda6/XU/VI2joEWk2lZ/ciUY
	NXnnCQoA83ab8wgdKn5luV6OwqE5VPY5Ob4pKqET3xLishJuJr7jV3uz+xiv4Q==
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
Cc: Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH] arm64: dts: imx93-kontron: Fix memory node
Date: Tue, 16 Jun 2026 12:43:09 +0200
Message-ID: <20260616104311.633297-1-frieder@fris.de>
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
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312476-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@nxp.com,m:frieder.schrempf@kontron.de,m:imx@lists.linux.dev,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:s.hauer@pengutronix.de,m:shawnguo@kernel.org,m:festevam@gmail.com,m:kernel@pengutronix.de,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,pengutronix.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,kontron.de:email,fris.de:dkim,fris.de:mid,fris.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B504A68E7F5

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The start address of the DRAM area is 0x80000000. The minimal
size of the DDR on the SoM is 1 GiB. Fix this.

Fixes: 2b52fd6035b7 ("arm64: dts: Add support for Kontron i.MX93 OSM-S SoM and BL carrier board")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
index c79b1df339db..f881912cde46 100644
--- a/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
@@ -15,9 +15,9 @@ aliases {
 		rtc1 = &bbnsm_rtc;
 	};
 
-	memory@40000000 {
+	memory@80000000 {
 		device_type = "memory";
-		reg = <0x0 0x40000000 0 0x80000000>;
+		reg = <0x0 0x80000000 0 0x40000000>;
 	};
 
 	chosen {
-- 
2.54.0


