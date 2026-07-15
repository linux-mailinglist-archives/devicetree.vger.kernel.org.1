Return-Path: <devicetree+bounces-327077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 492sDeqSV2pLXQAAu9opvQ
	(envelope-from <devicetree+bounces-327077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:02:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B07475F1BC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:02:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ToviEbuX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327077-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-327077-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A712308DB41
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31925330B2D;
	Wed, 15 Jul 2026 13:57:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB7C31716D;
	Wed, 15 Jul 2026 13:57:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123830; cv=none; b=LXEfX95ZVVsyuTcykk17OfaO/0Gg/87uHNHGG40tarly7/5zsK/JghiDcS0wZa40VqfPlzhwEomV67FzlWNMcpkccsNSbJIDRqV/xOblvKWWec1OUCeI9pyNYbNVZSnsQFb458EOO1VKksxpXFFsFvAe6HClCjrefmQnE9oN3Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123830; c=relaxed/simple;
	bh=mLEpbIZzyf5QF4ZJIobPOSNnmQwDc249pvOWkW0Ykmk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UXB+0SQpl72fvFRFMno6sTkm+7lirkfbKcdVAvFfk0eGihN3nqeBY8vry2d4db7FJF9ByQzrEuCzL4L7/YDPt43O/qewL3n0cVcvRt6rO4Ql8qvQMwjNXVw2yEJMvARtt8UGXajVO3aDnbI3YdAqAr4mnqGxE0Wr+qpozPalW1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ToviEbuX; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784123826;
	bh=mLEpbIZzyf5QF4ZJIobPOSNnmQwDc249pvOWkW0Ykmk=;
	h=From:To:Cc:Subject:Date:From;
	b=ToviEbuX2mrmrvo321X2X54+5Yi281p15CXMi4CdL2ReZhDOFa/Hl1E5v6X1IRosD
	 4bYGuj7awPg0DzmY2c1AhnUxTKRQTti8w0tWpIQnuhsB/CSU5ZlW4ZVgFgSTUcU1+M
	 IyA/CLuAcR84mEvfjkd7reW1lHjVkSoiyXwa6ZoyYkKNkCnr4rG++xhOh1hjQOcpY5
	 JZKT8YUYZZeq0BpeZDZpcar+tP5WRFK/MDFyZHsmaSZc6RXjtnBon5TZAsbdBguhMf
	 x9BuH9WnLoz5hzBDDh6TTinlwVd7AYKjDTDxBiFU7mydNY80WQaLYtuyRfHT8sbC+G
	 Yu0af3elKyfmA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E890A17E0928;
	Wed, 15 Jul 2026 15:57:05 +0200 (CEST)
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
Subject: [PATCH v6 00/11] drm/mediatek: Add DSC, WDMA, MT8189/96 DSI support
Date: Wed, 15 Jul 2026 15:56:52 +0200
Message-ID: <20260715135703.46540-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	TAGGED_FROM(0.00)[bounces-327077-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jitao.shi@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RSPAMD_EMAILBL_FAIL(0.00)[angelogioacchino.delregno@collabora.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B07475F1BC
X-Rspamd-Action: no action

Changes in v6:
 - Fixed .remove function name in wdma (ugh...)

Changes in v5:
 - Clarified commit description for WDMA binding compatibles addition
   explaining why Dimensity 1200 is not compatible with MT8173
 - Added missing mediatek,mt8189-dsi compatible in mtk_drm_drv.c
 - Added fix in mtk_dsi for failing device_reset_optional() producing
   a possible use-after-free issue

Changes in v4:
 - WDMA: Delete the .remove() callback from WDMA as not needed anymore
 - WDMA: Add comments explaining no bus errors will happen if writing
   to INT_ENABLE, INT_STATUS registers while unpowered or unclocked
 - Return error in mtk_wdma_wb_atomic_check() error conditions, oops!
 - DSC: Fix dsc_pad_num calculation (missing parenthesis...)
 - DSI: Change dsc slice check error to dev_dbg instead to avoid spam
 - DSI: Correctly cleanup dsi->dsc upon component_add failure
 - DSI: Make sure the CKTX_CKL_WC register is correctly programmed in
   DSI w/DSC case

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


AngeloGioacchino Del Regno (11):
  dt-bindings: display: mediatek: dsc: Add MT8196 compatible
  drm/mediatek: Implement Display Stream Compression support
  dt-bindings: display: mediatek: dsi: Document MT8189 and MT8196
  drm/mediatek: mtk_dsi: Cleanup encoder if reset fails during bind
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
 drivers/gpu/drm/mediatek/mtk_disp_wdma.c      | 628 ++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  10 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   2 +
 drivers/gpu/drm/mediatek/mtk_dsi.c            | 801 ++++++++++++++----
 13 files changed, 1842 insertions(+), 190 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_dsc.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_wdma.c

-- 
2.54.0


