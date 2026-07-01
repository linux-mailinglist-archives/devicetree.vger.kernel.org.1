Return-Path: <devicetree+bounces-318428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8pS1LgoHRWqB5QoAu9opvQ
	(envelope-from <devicetree+bounces-318428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:24:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9376ED473
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:24:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=FihvsLWE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318428-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C004A30FD140
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12EC481249;
	Wed,  1 Jul 2026 12:19:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E02933A029;
	Wed,  1 Jul 2026 12:19:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908367; cv=none; b=afmelmuLyB835i9jONb8GFVapVnaDGN0Yp7nkisPhzoqTOfMGGfwddqgrwxd5esmkI6+dL+FVwfOXfnW4CcYnMS8m0GeURgfdGnFng2qqScmMofhF34lS/AkZHl9e78WN3d2Jokb7B2sEzYlc8pCsJC1n1fzTVKUKkwlXzIaeHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908367; c=relaxed/simple;
	bh=/pdnnneTXMs+v5rJuM64Y/X5xJKFYtEJFsSpji+UEmk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=emjCWNmPscFilvS+ti0bJ2kJubVeRuab4MMNnBo+w4qqjdQRO/SWo2CeTT4GrpK3KTdtX2b4o3rkmgw5y4eMbgD67uyiWpHNePIhtFptivB/wgNgyXhAz/Dc8g2hNObdNTC/BB0BDKINhgdwx9i03TBYZSEFdaC45jpc3V7OHVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FihvsLWE; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908364;
	bh=/pdnnneTXMs+v5rJuM64Y/X5xJKFYtEJFsSpji+UEmk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FihvsLWEeQzsBkAUghKQX0aqSpyaMM/onu0+LC2V1nUK4NlM43QrxnwEB54/N7CUR
	 Pxt6HZv/OR91ZB6kSMbHfwgD5rBih332wRlD+PIJqUebyt8zVr0L+3eWjqyolPh8V3
	 /jeNdqe52y0/vvulQvbbkElo1J0bDlWgUaTSy9/v6qD554QL3Z38MBheR3W0BVfXE6
	 8fpixKEWJT5bMV4F5wqQ7c6cNy+vtlnno+QLa8ftOTBs3DUSmj/MweYdkBFEuVhxOM
	 A+BolWtnJdJv50GKiU2p+nRxK5ZmR58Wk/+nYD92vo3tkqwfpCsuVOMl49sABi5Wsc
	 t6XOHa5kOK4qQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0496B17E0CA0;
	Wed,  1 Jul 2026 14:19:23 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: ulfh@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nfraprado@collabora.com,
	irving-ch.lin@mediatek.com,
	macpaul.lin@mediatek.com,
	aford173@gmail.com,
	mbrugger@suse.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	justin.yeh@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 1/4] dt-bindings: power: mediatek: Add support for MT8196 direct HFRP
Date: Wed,  1 Jul 2026 14:19:17 +0200
Message-ID: <20260701121920.19347-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
References: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318428-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C9376ED473

Add support for the HFRPSYS direct control power domains in the
MT8196 SoC, controlling power for the DisplayPort and for the
Embedded DisplayPort Transmitter IPs.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/power/mediatek,power-controller.yaml  | 1 +
 include/dt-bindings/power/mediatek,mt8196-power.h             | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index 07f046277f8a..070c6e5666dc 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -34,6 +34,7 @@ properties:
       - mediatek,mt8189-power-controller
       - mediatek,mt8192-power-controller
       - mediatek,mt8195-power-controller
+      - mediatek,mt8196-hfrp-power-controller
       - mediatek,mt8196-hwv-hfrp-power-controller
       - mediatek,mt8196-hwv-scp-power-controller
       - mediatek,mt8196-power-controller
diff --git a/include/dt-bindings/power/mediatek,mt8196-power.h b/include/dt-bindings/power/mediatek,mt8196-power.h
index 0f622a93c807..085790bf8124 100644
--- a/include/dt-bindings/power/mediatek,mt8196-power.h
+++ b/include/dt-bindings/power/mediatek,mt8196-power.h
@@ -30,6 +30,10 @@
 #define MT8196_POWER_DOMAIN_MM_PROC_DORMANT		0
 #define MT8196_POWER_DOMAIN_SSR				1
 
+/* HFRPSYS Multimedia Power Control (MMPC) - Direct Control */
+#define MT8196_POWER_DOMAIN_EDPTX			0
+#define MT8196_POWER_DOMAIN_DPTX			1
+
 /* HFRPSYS MultiMedia Power Control (MMPC) - HW Voter */
 #define MT8196_POWER_DOMAIN_VDE0			0
 #define MT8196_POWER_DOMAIN_VDE1			1
-- 
2.54.0


