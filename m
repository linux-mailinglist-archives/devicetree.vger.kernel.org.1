Return-Path: <devicetree+bounces-326914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hVyALkd0V2qiOQEAu9opvQ
	(envelope-from <devicetree+bounces-326914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:51:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5795775DC68
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:51:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=B69TCoVJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326914-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326914-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D158C3045A24
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9EA44A701;
	Wed, 15 Jul 2026 11:49:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347E644BCB4;
	Wed, 15 Jul 2026 11:49:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116182; cv=none; b=j/inO8528yuClPPL/+6AcdP49YY+zF2B0uVv2UxlXYla80P+GI5F1MbL/VkCILbQtxWrWVILZAKEn8o9iJfYUMGUpv6jRMfgFFh0H1PP/kS7qz+bPqq6QU/NkCzxqTlRW6XdwzyYOQ+2PCAhVvAvVDYtHKxn19LKe5UvtLXxAAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116182; c=relaxed/simple;
	bh=iz0KnuVGcck2z6u+H3eYklRaAOtKKQAC++LigpNKgoM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iTbIa0DurZ3symAZ4deJYpcvZNhu/Uh6dA6s/3y4PzmHIlrNaheYYuXMZ1P65H5IHYB0R4ux/vn7CqdswgeAyoaOg+XCgLyeYPv7gZgFfACeVw5RsP2GqZynC6b4fX3smKKw7kBX948jXeyhj+lAB5d74WPaaJHqEAunVnIS9bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=B69TCoVJ; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784116175;
	bh=iz0KnuVGcck2z6u+H3eYklRaAOtKKQAC++LigpNKgoM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B69TCoVJ1ghk4U/PTGjfsyqD264dozWazvNTZXpV6y2hSPldfRPnbyFUBc2hZA8tE
	 oT1XefyEnFS583GND1Uozq9C/+biHlTXB3Wrz/g4ukaqGsehFvdSK5RSoEzzSdGCy/
	 R+dli0nfBmPCNib8zrlWm3afZ80PlMYQLyeyJ9NRywAAYEwILTcQSRy3U4086P96Nf
	 7ElLgjoleIfNxgfrRt/NCSPa73cA2N8qSweww0JRPZeMXelfUZuCJmbjlLe1XdjXrq
	 YL/v/BC84ZE+m/BQ8kWF+yrjxn5uYN10/3Hgt7MDn4rtMDm89jRp21Js1uJuKGbAXW
	 p+e5gG4ub/5fw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6D7FA17E071A;
	Wed, 15 Jul 2026 13:49:34 +0200 (CEST)
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
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	jitao.shi@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v5 07/11] drm/mediatek: mtk_dsi: Add support for MT8189
Date: Wed, 15 Jul 2026 13:49:12 +0200
Message-ID: <20260715114916.19690-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-326914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jitao.shi@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5795775DC68

Add support for the DSI IP found in the MT8189 SoC: this one is
similar to the IPs found in the most recent already supported SoCs
with the only difference being that it supports a higher link rate
of 2.5Gbps instead of 1.5Gbps.

To support the higher rate, add a new "max_link_rate_mbps" member
to the mtk_dsi_driver_data, assign the correct one to all of the
supported SoCs, other than to the newly introduced MT8189, and
use it in the .mode_valid() callback in place of the hardcoded
1.5Gbps value.

Since .mode_valid() is supposed to run just for resolution changes
the link rate was expressed in Mbps and gets multiplied on the fly
to save some bits.

As a note, starting with MT8189, higher maximum pixel clock rates
are achievable: while at it, also make sure that calculations are
not overflowing by casting to u64 where needed.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c |  2 ++
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 29 ++++++++++++++++++++++++--
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index bd2d17017bd2..08f6be311dd1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -826,6 +826,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DSI },
 	{ .compatible = "mediatek,mt8188-dsi",
 	  .data = (void *)MTK_DSI },
+	{ .compatible = "mediatek,mt8189-dsi",
+	  .data = (void *)MTK_DSI },
 	{ }
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index c5db63b93ff9..3f58683be70f 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -235,6 +235,8 @@ struct mtk_dsi_driver_data {
 	const u16 *reg_main;
 	const u16 *reg_adv;
 
+	const u16 max_link_rate_mbps;
+
 	bool has_size_ctl;
 	bool cmdq_long_packet_ctl;
 	bool support_per_frame_lp;
@@ -926,7 +928,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	}
 	bit_per_pixel = ret;
 
-	dsi->data_rate = DIV_ROUND_UP_ULL(dsi->vm.pixelclock * bit_per_pixel,
+	dsi->data_rate = DIV_ROUND_UP_ULL((u64)dsi->vm.pixelclock * bit_per_pixel,
 					  dsi->lanes);
 
 	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
@@ -1101,13 +1103,21 @@ mtk_dsi_bridge_mode_valid(struct drm_bridge *bridge,
 			  const struct drm_display_mode *mode)
 {
 	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+	const struct mtk_dsi_driver_data *data = dsi->driver_data;
+	u64 wanted_link_rate, max_link_rate;
 	int bpp;
 
 	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
 	if (bpp < 0)
 		return MODE_ERROR;
 
-	if (mode->clock * bpp / dsi->lanes > 1500000)
+	wanted_link_rate = mode->clock;
+	wanted_link_rate *= bpp;
+	max_link_rate = data->max_link_rate_mbps;
+	max_link_rate *= dsi->lanes;
+	max_link_rate *= KILO;
+
+	if (wanted_link_rate > max_link_rate)
 		return MODE_CLOCK_HIGH;
 
 	if (dsi->dsc) {
@@ -1547,28 +1557,42 @@ static void mtk_dsi_remove(struct platform_device *pdev)
 static const struct mtk_dsi_driver_data mt8173_dsi_driver_data = {
 	.reg_main = mtk_dsi_regs_main_v1,
 	.reg_adv = mtk_dsi_regs_mt8173,
+	.max_link_rate_mbps = 1500,
 };
 
 static const struct mtk_dsi_driver_data mt2701_dsi_driver_data = {
 	.reg_main = mtk_dsi_regs_main_v1,
 	.reg_adv = mtk_dsi_regs_mt2701,
+	.max_link_rate_mbps = 1500,
 };
 
 static const struct mtk_dsi_driver_data mt8183_dsi_driver_data = {
 	.reg_main = mtk_dsi_regs_main_v1,
 	.reg_adv = mtk_dsi_regs_mt8183,
+	.max_link_rate_mbps = 1500,
 	.has_size_ctl = true,
 };
 
 static const struct mtk_dsi_driver_data mt8186_dsi_driver_data = {
 	.reg_main = mtk_dsi_regs_main_v1,
 	.reg_adv = mtk_dsi_regs_mt8186,
+	.max_link_rate_mbps = 1500,
 	.has_size_ctl = true,
 };
 
 static const struct mtk_dsi_driver_data mt8188_dsi_driver_data = {
 	.reg_main = mtk_dsi_regs_main_v1,
 	.reg_adv = mtk_dsi_regs_mt8186,
+	.max_link_rate_mbps = 1500,
+	.has_size_ctl = true,
+	.cmdq_long_packet_ctl = true,
+	.support_per_frame_lp = true,
+};
+
+static const struct mtk_dsi_driver_data mt8189_dsi_driver_data = {
+	.reg_main = mtk_dsi_regs_main_v1,
+	.reg_adv = mtk_dsi_regs_mt8186,
+	.max_link_rate_mbps = 2500,
 	.has_size_ctl = true,
 	.cmdq_long_packet_ctl = true,
 	.support_per_frame_lp = true,
@@ -1581,6 +1605,7 @@ static const struct of_device_id mtk_dsi_of_match[] = {
 	{ .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
 	{ .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
 	{ .compatible = "mediatek,mt8188-dsi", .data = &mt8188_dsi_driver_data },
+	{ .compatible = "mediatek,mt8189-dsi", .data = &mt8189_dsi_driver_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_dsi_of_match);
-- 
2.54.0


