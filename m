Return-Path: <devicetree+bounces-325517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9VGHDdXhVGqJgQAAu9opvQ
	(envelope-from <devicetree+bounces-325517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:02:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AB474B390
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:02:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=B8Rj6tMB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325517-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325517-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7990030125E9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEDF340F8F8;
	Mon, 13 Jul 2026 13:01:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FA225A2B5;
	Mon, 13 Jul 2026 13:01:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783947673; cv=none; b=k6vHj/BKWSS32NzJMSUJouvV9zv3h/dBiQwjoYYWVeh6KShRqbKWs6EHNU1LI3MDovJJP6SLGJhVUTZHUdp5c9z0To3DUB7bTKIZUBg1u7uNBXw+MYdsCinmC8Bw716WbYBPVbE6tiemUSZ82B1h20cZeiumc4iA8bQsUW2gRGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783947673; c=relaxed/simple;
	bh=U1Um1krP/Rf5ibWhrYA/URHxTs0a6hkg0vKOZ5rZihE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KRYjHtD0XJEOUn9jAFz6j5e2iMLYL+vCoKF1+c9qnQ8uWHL0vJ+0PUwsuwYx6q0ZXhAw75qeLeilAhq0uBAmLD45aYsuTDro6eI0ACgN0NUC+PWytPjutDSUxkYSB3vWJG9Yx/Gmh4sq2it3vTBvCLTHWLGNz0FRrF36Q0pF5GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=B8Rj6tMB; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783947670;
	bh=U1Um1krP/Rf5ibWhrYA/URHxTs0a6hkg0vKOZ5rZihE=;
	h=From:To:Cc:Subject:Date:From;
	b=B8Rj6tMBY8fV3kazWVE3uxb++OMlIifjcy7Lmd9x7k3jF6XsmYlFJ/bVzozOwuZsv
	 CQ+gOEuBNHzz6HaVZim0EJPgum9Dt3jRX6BQVKsB+L+uQnvBe3YcPCtSoMHMEPf/tf
	 TBaYlmhnv6y9Dop0fc3aG2decSeSd3WZLEGOxuqqdYt7Y013yfS/PzafVKjGgacPvb
	 wJt3ZWZHyUeKPGizsvjRCM+9qZSxcTzCBvQs7TwYyq/wRe7lskYf3d99D+xS6wECX3
	 hs9s6yyOQUNZ1edwgLIQpbTKxDywMvvgIIbLQ+j7JLt0GO3nUqDFsLjH+XaGO5XgZE
	 fdvttvFQVT6Wg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 81DEE17E0076;
	Mon, 13 Jul 2026 15:01:09 +0200 (CEST)
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
Subject: [PATCH v3 00/10] drm/mediatek: Add DSC, WDMA, MT8189/96 DSI support
Date: Mon, 13 Jul 2026 15:00:53 +0200
Message-ID: <20260713130103.34654-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325517-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:dkim,collabora.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31AB474B390

Changes in v3:
 - Changed mtk_dsi DSC implementation to use a different DSI_PS
   setting function for compressed or uncompressed, as the dsc one
   is way simpler than the regular one and becomes way shorter
 - DSC: Fixed missing PPS 19 register write
 - DSI: Anticipated call to devm_pm_runtime_enable() to before
   registering the DSI Host interface
 - DSI: Anticipated installing IRQ handler before registering the
   dsi host interface, which wasn't a problem before, but now it
   would be one because the interrupt is being enabled when binding!
 - DSI: Fixed some possible calculation overflows that may happen in
   MT8189 and MT8196 because of the higher supported resolutions
 - WDMA: Use devm variant of pm_runtime_enable()
 - Change WDMA interrupt handler to allow signaling WB complete even
   if there is no specific vblank callback installed to avoid very
   long timeouts (in any case, WB is complete for real even if there
   is no vblank_cb, just a bit useless without, but still complete)
 - Fixed WDMA register writes as register id was in function signature
   for mtk_wdma_ddp_write_dst_addr() but the function itself never
   used it in DISP_REG_WDMA_DST_ADDRX() macro

Changes in v2:
 - Rebased on next-20260706

This series adds support for:
 - Display Stream Compression (DSC) for DSI and DisplayPort for both
   legacy (8188/92/95 and others) and for Kompanio Ultra MT8196 SoCs
 - Write DMA (WDMA) Engine (for legacy only at this time) as a step
   to enable Writeback support (coming later with a restructuring of
   the entire mediatek-drm driver)
 - Newer MIPI DSI IP revisions, found in MT8189 and MT8196 SoCs

AngeloGioacchino Del Regno (10):
  dt-bindings: display: mediatek: dsc: Add MT8196 compatible
  drm/mediatek: Implement Display Stream Compression support
  dt-bindings: display: mediatek: dsi: Document MT8189 and MT8196
  drm/mediatek: mtk_dsi: Enable interrupt at component bind time
  drm/mediatek: mtk_dsi: Transfer register offsets to per-SoC const
  drm/mediatek: mtk_dsi: Add support for MT8189
  drm/mediatek: mtk_dsi: Add support for MT8196
  drm/mediatek: mtk_dsi: Enable PM Runtime on probe
  dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs
  drm/mediatek: Add Write DMA (WDMA) Engine for Writeback support

 .../display/mediatek/mediatek,dsc.yaml        |   4 +-
 .../display/mediatek/mediatek,dsi.yaml        |   2 +
 .../display/mediatek/mediatek,wdma.yaml       |   5 +
 drivers/gpu/drm/mediatek/Makefile             |   2 +
 drivers/gpu/drm/mediatek/mtk_crtc.c           |  21 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c       |  64 +-
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h       |   9 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  29 +
 drivers/gpu/drm/mediatek/mtk_disp_dsc.c       | 455 ++++++++++
 drivers/gpu/drm/mediatek/mtk_disp_wdma.c      | 617 ++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   8 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   2 +
 drivers/gpu/drm/mediatek/mtk_dsi.c            | 782 ++++++++++++++----
 13 files changed, 1811 insertions(+), 189 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_dsc.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_wdma.c

-- 
2.54.0


