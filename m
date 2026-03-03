Return-Path: <devicetree+bounces-270748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHoNKN5Ep2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:30:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 282571F6C92
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2503307C4A3
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC125156C6A;
	Tue,  3 Mar 2026 20:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="Rvv/wlB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout1.routing.net (mxout1.routing.net [134.0.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F352F1862;
	Tue,  3 Mar 2026 20:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569817; cv=none; b=e4EDeNDFpQDlsXmQEwOpBiJCQ/MCpCpJGAcX03i3EjvuThzfNC4cPYFkpKlkidXwyVMYYpBWKUoHjgyPg2ITQyqcy4COOH+jEX7fwJffIEWcW2uFlFCnMzvdqbOUe7WrJf/DWDbmPdvG+m9zVEa1er6p0/GiQewPY9ZdqQRadpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569817; c=relaxed/simple;
	bh=xZOTCVl1mdCmqHAgWfISRmw4vVPcOdzhN00gyaNGQ80=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K6rAXxMyrV9anYmtVYHSscyT0l4IIatJKNtbFLyPxoYr63KMOmfnoZdqKS8WLqbVsUBRJmNPvKlcm9DdQnJnOmnZvpLSCvvNa7InDZ0J1KuDSlYYtRXDIgYbLb84+VLR373byAKvuRWiU+m9nDjJ0CbxZNudEBQPLAcLTIOgYvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=Rvv/wlB1; arc=none smtp.client-ip=134.0.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout1.routing.net (Postfix) with ESMTP id 8087F40252;
	Tue,  3 Mar 2026 20:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1772569215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=g2z52IdWgskYeOiZeBZcRxQieKJEbjxt8gRN0ppFkwA=;
	b=Rvv/wlB1CnEwf/0AyjW5t6+vkFmi+9s7wkdl0DK/lAvOmmMIdJ1y/b7APPZHp8TaEOkD/M
	oOUNXAt1mVvA1Rp9JmgRuBm3bycdnlds/+5HlnHbhpm3BH18h7VuLbWfk6WqSqsQc/WZFS
	R6qVRWnNbJjZiQtIWQZTkZ3AUBPboLc=
Received: from frank-u24.. (fttx-pool-217.61.147.65.bambit.de [217.61.147.65])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id 4F9A91226DC;
	Tue,  3 Mar 2026 20:20:15 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daniel Golle <daniel@makrotopia.org>,
	Andrew LaMarche <andrewjlamarche@gmail.com>
Subject: [PATCH] arm64: dts: mediatek: mt7988a-bpi-r4pro: rename mgmt port to lan5
Date: Tue,  3 Mar 2026 21:20:06 +0100
Message-ID: <20260303202006.37515-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 282571F6C92
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[mailerdienst.de:s=routing];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270748-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[public-files.de,vger.kernel.org,lists.infradead.org,makrotopia.org,gmail.com];
	DMARC_NA(0.00)[fw-web.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@fw-web.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailerdienst.de:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mailerdienst.de:dkim,public-files.de:email]
X-Rspamd-Action: no action

From: Frank Wunderlich <frank-w@public-files.de>

It turns out that the label mgmt confuses users and now official case is
released where the port is labeled with number 5. So just rename it to
lan5 to follow naming convension (lan1-4 from mxl switch and lan6 for lan-
combo).

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
index a48132f09411..1175ee156cb3 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
@@ -207,7 +207,7 @@ &gsw_phy0_led0 {
 };
 
 &gsw_port0 {
-	label = "mgmt";
+	label = "lan5";
 };
 
 /* R4Pro has only port 0 connected, so disable the others */
-- 
2.43.0


