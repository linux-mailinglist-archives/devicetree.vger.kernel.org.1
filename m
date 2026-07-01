Return-Path: <devicetree+bounces-318431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Su0GMxkHRWqD5QoAu9opvQ
	(envelope-from <devicetree+bounces-318431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:24:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 475DD6ED47B
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:24:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=OZqsj0bV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318431-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318431-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DF223121F2B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A24F481A83;
	Wed,  1 Jul 2026 12:19:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82D5480DFD;
	Wed,  1 Jul 2026 12:19:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908370; cv=none; b=Q+d+iEjnm+acZMTqnz1KgMfOMoo+WjrXGqTAY9N9s+Zcgcljv5cW6uuesh70vMieHCZYwhJYxwhvxxPxgjIBxF5wJydAdTH8pVdoHj2ukgkOLQh615vc8E37x/oFDG5UHm9NXITcEVb3jt3CCju6lp+eYmMRuTdpGDbJ1w1qIB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908370; c=relaxed/simple;
	bh=nFaHAQDWvz/QYHBbsjAstFu2Yh0VdHVUTI4SPQHE5lU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tqzBNf0an2SXuKoKaTwBAELiW8fMGvTI1ctILwyuuRBwI6QHU3FZxjNNerRZ3Le0zCO51+q9e3jUXgI2/98hMJbCbAB5EHbX/toIwiWVmcmKjC01bFFeuUcqyZ7W0IC5Sv4ZD8AIPtfud/EhBm9AzjLq5Uiyo+cyQOvTfvKil7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OZqsj0bV; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908367;
	bh=nFaHAQDWvz/QYHBbsjAstFu2Yh0VdHVUTI4SPQHE5lU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OZqsj0bVFvsIXSdjZIFcl0e8Or8atOk2QqGzlp/Z42eqkmHtz44e2bf+VOIWbE9E1
	 cqhly5hVX7T6B33F5PfpGQTT1jpuzOyFpMTGbcreSY1gDovvwoxK49QIhVjP9zRzmy
	 hTjfkWfwL6ecDO0mm1W3CsR0lyCVuQpOZAMfoYovHLbUsBYu0lqoEXQVxyhWZacri0
	 ORDkQoz6l/mx4zKrtrat+fTs+Ev+cJ6MpI8jp2qj3Kw1apySAefZeKPZJMNqoPPdeL
	 vUSeIGP2511zH5bjRTyzjKJaUJdRt+xY0T9ew+fsydQnOVrYzinbDvZkwZk77AcylN
	 TzeBGYVUHqQWw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9733217E0FAA;
	Wed,  1 Jul 2026 14:19:26 +0200 (CEST)
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
Subject: [PATCH 4/4] pmdomain: mediatek: Add support for MT8196 HFRP DirectCTL domains
Date: Wed,  1 Jul 2026 14:19:20 +0200
Message-ID: <20260701121920.19347-5-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-318431-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 475DD6ED47B

Add support for the power domains provided by the HFRPSYS Power
Controller of the MT8196 SoC.
Those control power to the eDP and DP Transmitter IPs.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/pmdomain/mediatek/mt8196-pm-domains.h | 27 +++++++++++++++++++
 drivers/pmdomain/mediatek/mtk-pm-domains.c    |  4 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/pmdomain/mediatek/mt8196-pm-domains.h b/drivers/pmdomain/mediatek/mt8196-pm-domains.h
index 2e4b28720659..d704c9fa9337 100644
--- a/drivers/pmdomain/mediatek/mt8196-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mt8196-pm-domains.h
@@ -602,6 +602,27 @@ static const struct scpsys_hwv_domain_data hfrpsys_hwv_domain_data_mt8196[] = {
 	},
 };
 
+static const struct scpsys_domain_data hfrpsys_domain_data_mt8196[] = {
+	[MT8196_POWER_DOMAIN_EDPTX] = {
+		.name = "edp-tx",
+		.sta_mask = MT8196_PWR_ACK,
+		.sta2nd_mask = MT8196_PWR_ACK_2ND,
+		.ctl_offs = 0x74,
+		.pwr_sta_offs = 0x74,
+		.pwr_sta2nd_offs = 0x74,
+		.caps = MTK_SCPD_SIMPLE_PWRSEQ,
+	},
+	[MT8196_POWER_DOMAIN_DPTX] = {
+		.name = "dp-tx",
+		.sta_mask = MT8196_PWR_ACK,
+		.sta2nd_mask = MT8196_PWR_ACK_2ND,
+		.ctl_offs = 0x78,
+		.pwr_sta_offs = 0x78,
+		.pwr_sta2nd_offs = 0x78,
+		.caps = MTK_SCPD_SIMPLE_PWRSEQ,
+	},
+};
+
 static const struct scpsys_soc_data mt8196_scpsys_data = {
 	.domains_data = scpsys_domain_data_mt8196,
 	.num_domains = ARRAY_SIZE(scpsys_domain_data_mt8196),
@@ -616,6 +637,12 @@ static const struct scpsys_soc_data mt8196_scpsys_hwv_data = {
 	.type = SCPSYS_MTCMOS_TYPE_HW_VOTER,
 };
 
+static const struct scpsys_soc_data mt8196_hfrpsys_data = {
+	.domains_data = hfrpsys_domain_data_mt8196,
+	.num_domains = ARRAY_SIZE(hfrpsys_domain_data_mt8196),
+	.type = SCPSYS_MTCMOS_TYPE_DIRECT_CTL,
+};
+
 static const struct scpsys_soc_data mt8196_hfrpsys_hwv_data = {
 	.hwv_domains_data = hfrpsys_hwv_domain_data_mt8196,
 	.num_hwv_domains = ARRAY_SIZE(hfrpsys_hwv_domain_data_mt8196),
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index 5276adea1d04..f69cf69ba0f6 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -1252,6 +1252,10 @@ static const struct of_device_id scpsys_of_match[] = {
 		.compatible = "mediatek,mt8196-power-controller",
 		.data = &mt8196_scpsys_data,
 	},
+	{
+		.compatible = "mediatek,mt8196-hfrp-power-controller",
+		.data = &mt8196_hfrpsys_data,
+	},
 	{
 		.compatible = "mediatek,mt8196-hwv-hfrp-power-controller",
 		.data = &mt8196_hfrpsys_hwv_data,
-- 
2.54.0


