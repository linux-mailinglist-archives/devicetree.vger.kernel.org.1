Return-Path: <devicetree+bounces-326140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qz9fLhokVmpxzwAAu9opvQ
	(envelope-from <devicetree+bounces-326140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:57:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1355A75428C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:57:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=b7LSY2zB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326140-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326140-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C2B7327D1AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317023939A5;
	Tue, 14 Jul 2026 11:44:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6051A374169;
	Tue, 14 Jul 2026 11:44:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029493; cv=none; b=EBsRnih0Nc+yrSM5k+O2hRdK0VXhZ8/gInXsWkJbpE+/ceHp8xtCipM/OMwP7+cWOTbxcnmG6LpyHpsr8FSV/1ZTkAlkT+CtE3UvxVwpoiNSyDOePV+8tAB3HFQuHa3R7mSEkZpsENbzs0nWbtvzQ56PLsGDHWu0IEMTrIu1rGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029493; c=relaxed/simple;
	bh=bouJrrAmvaCef0ljEylZ0CN770Hr5Qsn4ItcvLnxm7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qc/WG3/82D62yUh3gLuLEFzcJ/5FSuEhm//2IZ9w2eZZfJ/1j36JaQWcfmFosA4L09xa7RAqVAqGlFkbSgSoROMqyVGlNx9b+YsxB2IvA5TsD2c6KqYnZUFcf5QgWL1kO0Ww/nH8RNlKMD7vTbYTdyqd6UfQTo0CSTDyi74fImQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=b7LSY2zB; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784029488;
	bh=bouJrrAmvaCef0ljEylZ0CN770Hr5Qsn4ItcvLnxm7g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b7LSY2zBf6X1nDN1trT0Gv33LqqikMQwxFuMJ2cj93xW2Z3OMCH04NFktC8xtWCvg
	 mmAs3kTdeFpuZBCw1nNeZ0HIv5HD43Ox34sxiMoZg09Bf1wSqREpZ8zfYrTjp31MZS
	 CM+46mZni895xj07+LZnUBZGU8vPkYQCd5B9yZaGJrcYXvFTQvl/Hjzv8RLLFhcFef
	 TnyA4YUwBpbF7mmrjbXWf2hQrAkF0GxDFbnF8S+mjmCouY1Anxt8g1zK7fkjTkINgb
	 TMfPgLj8UkuGC6o1x31Z1R+ESosFlfKHH/n7yBqfFvGvinSpGd3Hiwup6NGK1U8XOJ
	 M5dE1dBkRAsUQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E381B17E07A2;
	Tue, 14 Jul 2026 13:44:47 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH v2 15/46] drm/mediatek: ovl_adaptor: Add special MERGE component check
Date: Tue, 14 Jul 2026 13:43:43 +0200
Message-ID: <20260714114414.184512-16-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
References: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-326140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1355A75428C

On the legacy ovl_adaptor for MT8195 and MT8188, four MERGE IPs
from VPPSYS are used, and those shall be exclusive to the OVL
Adaptor driver.

For this reason, add a branch in mtk_ovl_adaptor_is_comp_present()
to check if the component that is being checked is MERGE and, if
so, iterate through the list of component matches to understand if
it is one of those that must be exclusive to OVL Adaptor.

This resolves a corner case happening when mediatek-drm retries to
probe after a probe deferral, where all MERGE components would get
added to both "normal" and OVL Adaptor pipelines.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
index ed9a2e35ba8a..bbf1d8ccda05 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
@@ -519,6 +519,17 @@ bool mtk_ovl_adaptor_is_comp_present(struct device_node *node)
 	if (type >= OVL_ADAPTOR_TYPE_NUM)
 		return false;
 
+	/* Check if this is one of the MERGE components used in OVL Adaptor */
+	if (type == OVL_ADAPTOR_TYPE_MERGE) {
+		int id = of_alias_get_id(node, private_comp_stem[type]);
+
+		for (int i = OVL_ADAPTOR_MERGE0; i <= OVL_ADAPTOR_MERGE3; i++)
+			if (comp_matches[i].alias_id == id)
+				return true;
+
+		return false;
+	}
+
 	/*
 	 * In the context of mediatek-drm, ETHDR, MDP_RDMA and Padding are
 	 * used exclusively by OVL Adaptor: if this component is not one of
-- 
2.54.0


