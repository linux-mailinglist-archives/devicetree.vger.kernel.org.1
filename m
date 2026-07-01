Return-Path: <devicetree+bounces-318491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PldULakIRWoR5goAu9opvQ
	(envelope-from <devicetree+bounces-318491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:31:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D57A6ED5DC
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:31:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=DN+xBgy2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318491-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318491-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 89E2F307A761
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9158C4C6EF6;
	Wed,  1 Jul 2026 12:21:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5534C0426;
	Wed,  1 Jul 2026 12:21:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908470; cv=none; b=vBIvO7OYF4MgDhtrMPqFPBxolmrNs2TiUmqnXMIks9fyGajuGkI7dTAOO6atG1L+TCt0rntFNHctg6a+9n/DKwDNQMXEMpcJx6lm1uaRhmEVlqnACb0DxHPgzYWin+Xb8mIWHyKdoxi7O2F+gODJkaCDs4H4BIEyo3SnV0XTq+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908470; c=relaxed/simple;
	bh=Dy+SzR29alcYD0tjn94WwKFgkpZ6fJbjcTNqeKHItxg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gQj+0ImY0R6CYZVle3d6HQML8UN98PfmYByFrpQC4xq5wBJroZ+GY4QAI7u2EtXmgPuioZHCHANChYi8EMd5esucXGMOzkgKkxp9/N4nv9S4OotTJtDgkGT4C4IlYhgEirTCyk6aSU+L6lYC6FKu8awwQDrd4TGXp6Z0z/kaOig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=DN+xBgy2; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908465;
	bh=Dy+SzR29alcYD0tjn94WwKFgkpZ6fJbjcTNqeKHItxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DN+xBgy2JNjCzbNJER4/ZI9EBpz9DDQHZurgO2WIxsPwVNr+tLUCH8Moej5Yarnnf
	 sjS0n052W1zI4Tkir99GukEp1BbOK+ZEXL4gscxglHyKVIDnqkXpxF7vRXBUohLl8m
	 i1ops6bKlUj5m0NRSQoH69R8/nvJjFE7+54vQoMY7XrfPtO0ItsvPTLBqn0df6OckO
	 L6R+H7BSQmwkvE0EzV9h6VrEPZNX2WN6n7cfsNKli//dr6+3e2vr5KltGIELi3jCqg
	 PafySA6esN0hL4Os35/V59Fvxr2/nwwugHQ01Z1oO+8/qFCGwNUeVgbOsIAxVHI8Cw
	 uHGTlt532GfNw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0DBB717E0CA2;
	Wed,  1 Jul 2026 14:21:05 +0200 (CEST)
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
Subject: [PATCH 04/42] drm/mediatek: Move mtk_ddp_comp_type enumeration to mtk-mmsys.h
Date: Wed,  1 Jul 2026 14:20:19 +0200
Message-ID: <20260701122057.19648-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318491-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D57A6ED5DC

In preparation for a major refactoring of MMSYS, MUTEX and of
mediatek-drm, move the mtk_ddp_comp_type enumeration to the
mtk-mmsys.h header, as this will be shared between multiple
MediaTek multimedia related drivers.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h | 25 ------------------
 include/linux/soc/mediatek/mtk-mmsys.h  | 34 +++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
index 99bf1e1015da..bbc66072fe6b 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
@@ -22,31 +22,6 @@ struct mtk_plane_state;
 struct drm_crtc_state;
 struct drm_dsc_config;
 
-enum mtk_ddp_comp_type {
-	MTK_DISP_AAL,
-	MTK_DISP_BLS,
-	MTK_DISP_CCORR,
-	MTK_DISP_COLOR,
-	MTK_DISP_DITHER,
-	MTK_DISP_DSC,
-	MTK_DISP_GAMMA,
-	MTK_DISP_MERGE,
-	MTK_DISP_MUTEX,
-	MTK_DISP_OD,
-	MTK_DISP_OVL,
-	MTK_DISP_OVL_2L,
-	MTK_DISP_OVL_ADAPTOR,
-	MTK_DISP_POSTMASK,
-	MTK_DISP_PWM,
-	MTK_DISP_RDMA,
-	MTK_DISP_UFOE,
-	MTK_DISP_WDMA,
-	MTK_DPI,
-	MTK_DP_INTF,
-	MTK_DSI,
-	MTK_DDP_COMP_TYPE_MAX,
-};
-
 struct mtk_ddp_comp;
 struct cmdq_pkt;
 struct mtk_ddp_comp_funcs {
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index 4885b065b849..3ddfdeac658d 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -84,6 +84,40 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_ID_MAX,
 };
 
+enum mtk_ddp_comp_type {
+	/* DISP Components */
+	MTK_DISP_AAL,
+	MTK_DISP_BLS,
+	MTK_DISP_CCORR,
+	MTK_DISP_COLOR,
+	MTK_DISP_DITHER,
+	MTK_DISP_DSC,
+	MTK_DISP_ETHDR_MIXER,
+	MTK_DISP_GAMMA,
+	MTK_DISP_MERGE,
+	MTK_DISP_MUTEX,
+	MTK_DISP_OD,
+	MTK_DISP_OVL,
+	MTK_DISP_OVL_2L,
+	MTK_DISP_OVL_ADAPTOR,
+	MTK_DISP_PADDING,
+	MTK_DISP_POSTMASK,
+	MTK_DISP_PWM,
+	MTK_DISP_RDMA,
+	MTK_DISP_UFOE,
+	MTK_DISP_WDMA,
+
+	/* MDP Components */
+	MTK_DISP_MDP_RDMA,
+
+	/* Keep Display outputs at the end for readability */
+	MTK_DPI,
+	MTK_DP_INTF,
+	MTK_DSI,
+
+	MTK_DDP_COMP_TYPE_MAX
+};
+
 void mtk_mmsys_ddp_connect(struct device *dev,
 			   enum mtk_ddp_comp_id cur,
 			   enum mtk_ddp_comp_id next);
-- 
2.54.0


