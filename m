Return-Path: <devicetree+bounces-323607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HeRaKxl+T2peiAIAu9opvQ
	(envelope-from <devicetree+bounces-323607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:55:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DB672FED9
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:55:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=mkDqeFKn;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323607-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323607-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A64B1310C21D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944DB40E8D8;
	Thu,  9 Jul 2026 10:34:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B2F40DFAF;
	Thu,  9 Jul 2026 10:34:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593291; cv=none; b=kVVyUPS0uHOfiWEMwctvuu1HGFOsOz8L3xHtnftogTBvq2DlwmOJNXPkwOlD8cXlXaDBCqFDDFdBizuGDMr2iUaZEYW+B7hHOEZXKKeLfAmd33uFJtwXVeLUa2VSCKgFdgbqRrUonzAg8XQlJii8JIyz3WemmCmCv9cm/8sxIs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593291; c=relaxed/simple;
	bh=vIeXSGmYnuqXbWuVwNEh8u50bCXMZ/MRUIXV/uBPzrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fs9NUhYSmh0n92lO3JxjZ0ocSsHLWSNBE2pwuHkSoiDRlBWOQAw+T3I8vs0/3O2/d4dYjW5NVHeCP7wjLuxbJhz/NuYE7w4LpeNjiJOedRxDdiE058SvK3OJGb2kq+BtshLwJX2c+cZcVPKLIE7D9QjHS25uPy48SQF2ub5F8lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=mkDqeFKn; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783593288;
	bh=vIeXSGmYnuqXbWuVwNEh8u50bCXMZ/MRUIXV/uBPzrM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mkDqeFKnl8UPm7GoZibunaQIGBBH8LniswwaihdQbKR5qR/PRnB6l3C6Qzqmz5dZI
	 84YZgpyk9OPWJT/dqIDITyH1xzfivFt8Svouo6eJ5iqLBQxfVUSJ1XOV0mjK724Ncr
	 k1CsDTGL1/S8O+A2d+IvzqOj/Scc3Gws3IsKbegKgw3xWDdM0ZHWHV4x/0+HqNnW2j
	 JnmQJPIbh5XgN65R8C/GGJHyN2xGD4DqB9KXiTk2ugfeWwx3P+qdJnu1LrFE7sEhWH
	 7R79OwBUlrOYe2+eOhtUun6pPfx9fShUwITnHopF1HQGJcyQNIIBCJzAWuajflBlgo
	 MjbBeYvEkr9nQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 74B4317E0EE1;
	Thu, 09 Jul 2026 12:34:47 +0200 (CEST)
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
	jitao.shi@mediatek.com,
	granquet@baylibre.com,
	rex-bc.chen@mediatek.com,
	dmitry.osipenko@collabora.com,
	ck.hu@mediatek.com,
	amergnat@baylibre.com,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v3 11/11] drm/mediatek: mtk_dp: Clarify XTAL freq and Debounce registers
Date: Thu,  9 Jul 2026 12:34:31 +0200
Message-ID: <20260709103431.46616-12-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260709103431.46616-1-angelogioacchino.delregno@collabora.com>
References: <20260709103431.46616-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,mediatek.com,baylibre.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-323607-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jitao.shi@mediatek.com,m:granquet@baylibre.com,m:rex-bc.chen@mediatek.com,m:dmitry.osipenko@collabora.com,m:ck.hu@mediatek.com,m:amergnat@baylibre.com,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3DB672FED9

Clarify the meaning of the sub-fields in the crystal frequency and
transmitter interrupt debounce registers, with the only purpose of
increasing human readability.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c     | 35 ++++++++++++++++-----------
 drivers/gpu/drm/mediatek/mtk_dp_reg.h |  6 +++--
 2 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 7151421984ca..3790675d9dc4 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -1216,9 +1216,15 @@ static void mtk_dp_initialize_settings_v2p1(struct mtk_dp *mtk_dp)
 
 static void mtk_dp_initialize_settings(struct mtk_dp *mtk_dp)
 {
+	/*
+	 * Set DP XTAL freq to 26MHz and accumulator to 1.
+	 * Valid values for XTAL freq are 12 and 26.
+	 */
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_342C,
-			   XTAL_FREQ_DP_TRANS_P0_DEFAULT,
-			   XTAL_FREQ_DP_TRANS_P0_MASK);
+			   FIELD_PREP_CONST(XTAL_FREQ_DP_ACCUM_NUM_MASK, 1) |
+			   FIELD_PREP_CONST(XTAL_FREQ_DP_CLOCK_MHZ_MASK, 26),
+			   XTAL_FREQ_DP_ACCUM_NUM_MASK | XTAL_FREQ_DP_CLOCK_MHZ_MASK);
+
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3540,
 			   FEC_CLOCK_EN_MODE_DP_TRANS_P0,
 			   FEC_CLOCK_EN_MODE_DP_TRANS_P0);
@@ -1260,28 +1266,29 @@ static void mtk_dp_initialize_aux_hpd_detect_settings(struct mtk_dp *mtk_dp)
 
 static void mtk_dp_initialize_hpd_detect_settings(struct mtk_dp *mtk_dp)
 {
-	u32 val;
-
 	/* Mask AUX TOP interrupt, as this uses transmitter for HPD */
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_IRQ_MASK,
 			   AUX_TOP_IRQ_MSK, AUX_TOP_IRQ_MSK);
 
-	/* Debounce threshold */
+	/* Set Hotplug debounce threshold time: xtal_period * deb_thd */
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
 			   8, HPD_DEB_THD_DP_TRANS_P0_MASK);
 
-	val = (HPD_INT_THD_DP_TRANS_P0_LOWER_500US |
-	       HPD_INT_THD_DP_TRANS_P0_UPPER_1100US) << 4;
-	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
-			   val, HPD_INT_THD_DP_TRANS_P0_MASK);
-
 	/*
-	 * Connect threshold 1.5ms + 5 x 0.1ms = 2ms
-	 * Disconnect threshold 1.5ms + 5 x 0.1ms = 2ms
+	 * Set interrupt debounce threshold time
+	 * VAL  |  0     1     2     3  INT_THD
+	 * Low  | 100   300   500   700 uS
+	 * High | 700   900  1100  1300 uS
 	 */
-	val = (5 << 8) | (5 << 12);
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
-			   val,
+			   FIELD_PREP_CONST(HPD_INT_LOW_THD_DP_TRANS_P0_MASK, 2) |
+			   FIELD_PREP_CONST(HPD_INT_HIGH_THD_DP_TRANS_P0_MASK, 2),
+			   HPD_INT_THD_DP_TRANS_P0_MASK);
+
+	/* Connection and Disconnection thresholds: 1.5ms + (5 x 0.1) ms = 2ms */
+	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
+			   FIELD_PREP_CONST(HPD_DISC_THD_DP_TRANS_P0_MASK, 5) |
+			   FIELD_PREP_CONST(HPD_CONN_THD_DP_TRANS_P0_MASK, 5),
 			   HPD_DISC_THD_DP_TRANS_P0_MASK |
 			   HPD_CONN_THD_DP_TRANS_P0_MASK);
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3430,
diff --git a/drivers/gpu/drm/mediatek/mtk_dp_reg.h b/drivers/gpu/drm/mediatek/mtk_dp_reg.h
index 9caf743f4fe6..ce47b99dddc4 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp_reg.h
+++ b/drivers/gpu/drm/mediatek/mtk_dp_reg.h
@@ -253,6 +253,8 @@
 #define MTK_DP_TRANS_P0_3410				0x1410
 #define HPD_DEB_THD_DP_TRANS_P0_MASK				GENMASK(3, 0)
 #define HPD_INT_THD_DP_TRANS_P0_MASK				GENMASK(7, 4)
+#define HPD_INT_HIGH_THD_DP_TRANS_P0_MASK			GENMASK(7, 6)
+#define HPD_INT_LOW_THD_DP_TRANS_P0_MASK			GENMASK(5, 4)
 #define HPD_INT_THD_DP_TRANS_P0_LOWER_500US			(2 << 4)
 #define HPD_INT_THD_DP_TRANS_P0_UPPER_1100US			(2 << 6)
 #define HPD_DISC_THD_DP_TRANS_P0_MASK				GENMASK(11, 8)
@@ -267,8 +269,8 @@
 #define IRQ_MASK_DP_TRANS_P0_INT_IRQ				(BIT(3) << 4)
 #define IRQ_STATUS_DP_TRANS_P0_MASK				GENMASK(15, 12)
 #define MTK_DP_TRANS_P0_342C				0x142c
-#define XTAL_FREQ_DP_TRANS_P0_DEFAULT				(BIT(0) | BIT(3) | BIT(5) | BIT(6))
-#define XTAL_FREQ_DP_TRANS_P0_MASK				GENMASK(7, 0)
+#define XTAL_FREQ_DP_ACCUM_NUM_MASK				GENMASK(1, 0)
+#define XTAL_FREQ_DP_CLOCK_MHZ_MASK				GENMASK(7, 2)
 #define MTK_DP_TRANS_P0_3430				0x1430
 #define HPD_INT_THD_ECO_DP_TRANS_P0_MASK			GENMASK(1, 0)
 #define HPD_INT_THD_ECO_DP_TRANS_P0_HIGH_BOUND_EXT		BIT(1)
-- 
2.54.0


