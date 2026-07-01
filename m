Return-Path: <devicetree+bounces-318483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I012HckPRWr76AoAu9opvQ
	(envelope-from <devicetree+bounces-318483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:02:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C42736EDC43
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:02:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=J9AwQjsR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318483-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318483-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6287B3180E0C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE0648B36C;
	Wed,  1 Jul 2026 12:20:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDCD48B361;
	Wed,  1 Jul 2026 12:20:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908455; cv=none; b=E3vM/jFbD/CB9huzaUsH9SGypaMbKo2DZ977ibH4oQVthpbjkoG4bkf3GWEW1qLDAyuSMY8DnJJ2iHqJT/S6bE6EIHmBPdB1FSbaF5q/8vqIAlp1bUhRlgWwoCwuYP/2Ao4zRnuDyKLaBkpSJ1JYDi6aw7NAycd148oE/AIfqhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908455; c=relaxed/simple;
	bh=knL125EqyeDrxGL3Ld+yoYxozWxizbjazjQr+Cmfeww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Uex8btsnb4s+BKTA8Qem2H/XxihDl/VNqhRRQB1I20O9hxo71qGzduCsSr5QEE462g6Os7M2RxV6GbqOUCfxmZajXdKRSzdAeQhpKYenMpnrV+tmqwAm7gIDBdgRZ7wvh1deKpJ07Y7mkDfX96PlpBb0an8ODm6ZV0TEloyGFow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=J9AwQjsR; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908452;
	bh=knL125EqyeDrxGL3Ld+yoYxozWxizbjazjQr+Cmfeww=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J9AwQjsRjbU+eOAh5iRR3sAr+iiBXCt944cwy3yqYQeus2HgH1dvBLmfxuvG874Oh
	 5/rIavH3IYSPgKEvRrreXsWhp4qaj7HKFStCQXj1yCrDSzp3J0C3ttQOHGp7CnqXF1
	 VLXu8o6BUJsU9egdpFa4o4QWbxLqB9tZMpTLQ48EzQLgJh83r6oo6hvDP45Sp35rxC
	 4gBjxcp4WqhWOlFS8rT84GHKkGOhgDC8pG3vPbCh0za/C/jcFnmyVucp+Y32HEPT0T
	 XqZ2WQj9BnpJOPzooTYilY/1+Hc0u+6YGhW2V0Mtx4S03jbFMml41jpCZBMip1p/FU
	 3G4C5ZxF2hZ2Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EA5E317E0FAA;
	Wed,  1 Jul 2026 14:20:50 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	andi.shyti@kernel.org,
	djakov@kernel.org,
	broonie@kernel.org,
	jitao.shi@mediatek.com,
	ck.hu@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 4/6] soc: mediatek: mtk-mutex: Add new functions to add/remove triggers
Date: Wed,  1 Jul 2026 14:20:41 +0200
Message-ID: <20260701122043.19612-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
References: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,foss.st.com,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-318483-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:andi.shyti@kernel.org,m:djakov@kernel.org,m:broonie@kernel.org,m:jitao.shi@mediatek.com,m:ck.hu@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C42736EDC43

Add new mtk_mutex_add_trigger() and mtk_mutex_remove_trigger() to
replace, in the near future, their older style equivalents such as
mtk_mutex_add_comp() and mtk_mutex_remove_comp() for the Display
Controller related MuteX triggers.

The same functions will be used to also replace the Media Data
Path 3 (MDP3) specific mtk_mutex_write_mod(), unifying the MuteX
handling across all of the currently supported multimedia-related
drivers for MediaTek SoCs.

While at it, this also takes into account the upcoming refactoring
of mtk_mmsys and mediatek-drm, which are about to migrate to a new
Component "Type -> Hardware ID" mapping, by adding a new function
parameter "hw_inst_id" to support that.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-mutex.c       | 60 ++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-mutex.h |  6 +++
 2 files changed, 66 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
index 6ffdcb673ae9..28715b07e668 100644
--- a/drivers/soc/mediatek/mtk-mutex.c
+++ b/drivers/soc/mediatek/mtk-mutex.c
@@ -960,6 +960,65 @@ void mtk_mutex_unprepare(struct mtk_mutex *mutex)
 }
 EXPORT_SYMBOL_GPL(mtk_mutex_unprepare);
 
+static enum mtk_mutex_sof_id mtk_mutex_get_sof_trig(enum mtk_ddp_comp_type type,
+						    unsigned int hw_inst_id)
+{
+	switch (type) {
+	case MTK_DISP_DSI:
+		return MUTEX_SOF_DSI0 + hw_inst_id;
+	case MTK_DISP_DPI:
+		return MUTEX_SOF_DPI0 + hw_inst_id;
+	case MTK_DISP_DP_INTF:
+		return MUTEX_SOF_DP_INTF0 + hw_inst_id;
+	default:
+		break;
+	}
+
+	return DDP_MUTEX_SOF_MAX;
+}
+
+void mtk_mutex_add_trigger(struct mtk_mutex *mutex, enum mtk_ddp_comp_type type,
+			   unsigned int hw_inst_id, unsigned int mtx_trig_id)
+{
+	struct mtk_mutex_ctx *ctx = container_of(mutex, struct mtk_mutex_ctx, mutex[mutex->id]);
+	enum mtk_mutex_sof_id sof_id = mtk_mutex_get_sof_trig(type, hw_inst_id);
+	const u32 offset = DISP_REG_MUTEX_MOD(ctx, mtx_trig_id, mutex->id);
+	u32 val;
+
+	if (sof_id < DDP_MUTEX_SOF_MAX) {
+		const u32 sof_offset = DISP_REG_MUTEX_SOF(ctx->data->mutex_sof_reg, mutex->id);
+
+		writel(ctx->data->mutex_sof[sof_id], ctx->regs + sof_offset);
+		return;
+	}
+
+	val = readl(ctx->regs + offset);
+	writel(val | BIT(mtx_trig_id % 32), ctx->regs + offset);
+}
+EXPORT_SYMBOL_NS_GPL(mtk_mutex_add_trigger, "MTK_MUTEX");
+
+void mtk_mutex_remove_trigger(struct mtk_mutex *mutex, enum mtk_ddp_comp_type type,
+			      unsigned int hw_inst_id, unsigned int mtx_trig_id)
+{
+	struct mtk_mutex_ctx *ctx = container_of(mutex, struct mtk_mutex_ctx, mutex[mutex->id]);
+	enum mtk_mutex_sof_id sof_id = mtk_mutex_get_sof_trig(type, hw_inst_id);
+	const u32 offset = DISP_REG_MUTEX_MOD(ctx, mtx_trig_id, mutex->id);
+	u32 val;
+
+	if (sof_id < DDP_MUTEX_SOF_MAX) {
+		const u32 sof_offset = DISP_REG_MUTEX_SOF(ctx->data->mutex_sof_reg, mutex->id);
+
+		val = readl(ctx->regs + sof_offset);
+		writel(val & ~ctx->data->mutex_sof[sof_id], ctx->regs + sof_offset);
+		return;
+	}
+
+	val = readl(ctx->regs + offset);
+	writel(val & ~BIT(mtx_trig_id % 32), ctx->regs + offset);
+}
+EXPORT_SYMBOL_NS_GPL(mtk_mutex_remove_trigger, "MTK_MUTEX");
+
+/* TODO: Legacy - Scheduled for removal */
 void mtk_mutex_add_comp(struct mtk_mutex *mutex,
 			enum mtk_ddp_comp_id id)
 {
@@ -1011,6 +1070,7 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
 }
 EXPORT_SYMBOL_GPL(mtk_mutex_add_comp);
 
+/* TODO: Legacy - Scheduled for removal */
 void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
 			   enum mtk_ddp_comp_id id)
 {
diff --git a/include/linux/soc/mediatek/mtk-mutex.h b/include/linux/soc/mediatek/mtk-mutex.h
index 635218e3ac68..5368206dd62c 100644
--- a/include/linux/soc/mediatek/mtk-mutex.h
+++ b/include/linux/soc/mediatek/mtk-mutex.h
@@ -67,16 +67,22 @@ enum mtk_mutex_sof_index {
 	MUTEX_SOF_IDX_MAX		/* ALWAYS keep at the end */
 };
 
+enum mtk_ddp_comp_type;
+
 struct mtk_mutex *mtk_mutex_get(struct device *dev);
 int mtk_mutex_prepare(struct mtk_mutex *mutex);
 void mtk_mutex_add_comp(struct mtk_mutex *mutex,
 			enum mtk_ddp_comp_id id);
+void mtk_mutex_add_trigger(struct mtk_mutex *mutex, enum mtk_ddp_comp_type type,
+			   unsigned int hw_inst_id, unsigned int mtx_trig_id);
 void mtk_mutex_enable(struct mtk_mutex *mutex);
 int mtk_mutex_enable_by_cmdq(struct mtk_mutex *mutex,
 			     void *pkt);
 void mtk_mutex_disable(struct mtk_mutex *mutex);
 void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
 			   enum mtk_ddp_comp_id id);
+void mtk_mutex_remove_trigger(struct mtk_mutex *mutex, enum mtk_ddp_comp_type type,
+			      unsigned int hw_inst_id, unsigned int mtx_trig_id);
 void mtk_mutex_unprepare(struct mtk_mutex *mutex);
 void mtk_mutex_put(struct mtk_mutex *mutex);
 void mtk_mutex_acquire(struct mtk_mutex *mutex);
-- 
2.54.0


