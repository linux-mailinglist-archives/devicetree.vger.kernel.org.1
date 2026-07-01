Return-Path: <devicetree+bounces-318500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v030MWEQRWot6QoAu9opvQ
	(envelope-from <devicetree+bounces-318500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:04:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 226786EDCD1
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:04:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=OpzQalm+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318500-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318500-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F9C631C61B0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B154C9572;
	Wed,  1 Jul 2026 12:21:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCC64C954E;
	Wed,  1 Jul 2026 12:21:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908482; cv=none; b=tWpVWnWeqd26BSXZvFn8Y9hhh/WUwupZWfn9kaQcS+yYnGluB1nGv0PdCCv0kfsLU1sGg4L3ny8ZBn+K2WubnP74G6NXEpWc5QwVDEs1W3fa4GRPErWRw2M3EdTLLjbbsOl57opfHPhMOU43gYFjJr9BH6z9yzRt5JYC7fLCitM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908482; c=relaxed/simple;
	bh=xxtYdKDQGl2oTn57SJAbcDVtVzfSRsM6ZukEjORTD2E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HBXWXWeqLiTW5f7f9XRSdTkIxtGP22+BzBxS6TblOC0uCcURr77ZH0MqK7Kbp3GTVg7MOut/h38wf8jK4RAfsOA+K5YO4Evs8KGungJhUJ206R2tivUsqd2jLZohgqkpPZ9qWsoCyQtdOG8LhqLqos9LJ24rCfg1RpN0D08CMvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OpzQalm+; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908480;
	bh=xxtYdKDQGl2oTn57SJAbcDVtVzfSRsM6ZukEjORTD2E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OpzQalm+HgtuqiTekeSmXJgtIfDjjE0YPQtJRzjQcQRc+vNeGnqU03+JFQDjg13C8
	 tfbMW0K/YBPMqBJ96OQfPoa4d27LverVbjI4c4bWQuupmC2+Hk5K3teNBMKdt+MZfe
	 d0n/G9YfLMtfmY3Fi14Uz6LsSjZyMTW3IojRwbKKmlotKUEXKjdt0FUfhcSC7bPiS1
	 ejLMTc7d0Ne1uqGn4S24aZGZLiMF1SeryQPQgqh1Hg6Jgm8f3eiLdrRShY1myKrCue
	 RZTDLgIG48GqTt1SAdsbwXztgvRf/8x6AJdudB+Cpy0ZrhJ3BErbAvVYcgJviEyJz/
	 ATEUz0vaZqiyw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3673917E0FAA;
	Wed,  1 Jul 2026 14:21:19 +0200 (CEST)
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
Subject: [PATCH 15/42] drm/mediatek: mtk_crtc: Complete documentation for struct mtk_crtc
Date: Wed,  1 Jul 2026 14:20:30 +0200
Message-ID: <20260701122057.19648-16-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318500-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 226786EDCD1

The mtk_crtc structure was missing many member descriptions, for
which reason, a while ago it was demoted from kerneldoc to code
comment.

Add documentation for all of the missing structure members and
promote it back to kerneldoc.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_crtc.c | 33 +++++++++++++++++++----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.c b/drivers/gpu/drm/mediatek/mtk_crtc.c
index 8656b56618a2..e543fae9c580 100644
--- a/drivers/gpu/drm/mediatek/mtk_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_crtc.c
@@ -41,18 +41,31 @@ struct mtk_crtc_hw_layer {
 	u8 layer_stages_nr;
 };
 
-/*
+/**
  * struct mtk_crtc - MediaTek specific crtc structure.
- * @base: crtc object.
- * @enabled: records whether crtc_enable succeeded
+ * @base:            CRTC object
+ * @enabled:         Records whether crtc_enable succeeded
+ * @pending_needs_vblank: Records whether pending config operation needs a VBlank to finish
+ * @event:           VBlank event to signal upon completion of state update
  * @hwlayers:        Array of mtk_crtc_hw_layer structures, one for each overlay plane
  * @hwlayer_nr:      Number of hwlayers
- * @mmsys_dev: pointer to the mmsys device for configuration registers
- * @mutex: handle to one of the ten disp_mutex streams
- * @ddp_comp_nr: number of components in ddp_comp
- * @ddp_comp: array of pointers the mtk_ddp_comp structures used by this crtc
- *
- * TODO: Needs update: this header is missing a bunch of member descriptions.
+ * @pending_planes:  Planes pending atomic configuration operation
+ * @pending_async_planes: Planes pending asynchronous configuration operation
+ * @cmdq_client:     CMDQ Mailbox Client structure
+ * @cmdq_handle:     Handle to CMDQ Packet structure, used to send a packet
+ * @cmdq_event:      Bitmask of GCE Events that CMDQ listens to (to send packets on event)
+ * @cmdq_vblank_cnt: Number of VBlanks after which CMDQ packet sending operation times out
+ * @cb_blocking_queue: Wait queue for sending blocking command packet through CMDQ Mailbox
+ * @mmsys_dev:       Pointer to the MMSYS device for configuration registers
+ * @dma_dev:         Pointer to the DMA device (usually linked to an IOMMU)
+ * @mutex:           Pointer to the MediaTek MuteX device for HW triggers mute/unmuting
+ * @ddp_comp_nr:     Number of HW components in ddp_comp structure
+ * @ddp_comp:        Array of HW components used in one Display Controller pipeline
+ * @num_conn_routes: Number of alternative connection routes for a pipeline
+ * @conn_routes:     Array of HW components usable as alternative connection route
+ * @hw_lock:         Display HW access mutex lock
+ * @config_updating: Tracks whether an asynchronous config update operation is in progress
+ * @config_lock:     Spinlock to protect config_updating variable
  */
 struct mtk_crtc {
 	struct drm_crtc			base;
@@ -82,10 +95,8 @@ struct mtk_crtc {
 	unsigned int			num_conn_routes;
 	const struct mtk_drm_route	*conn_routes;
 
-	/* lock for display hardware access */
 	struct mutex			hw_lock;
 	bool				config_updating;
-	/* lock for config_updating to cmd buffer */
 	spinlock_t			config_lock;
 };
 
-- 
2.54.0


