Return-Path: <devicetree+bounces-323560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id haT0Np9zT2oahAIAu9opvQ
	(envelope-from <devicetree+bounces-323560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:10:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F272F69D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:10:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=a9vzMPoL;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323560-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323560-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A87C7303ED8F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F46C408602;
	Thu,  9 Jul 2026 10:06:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE6B404BCD;
	Thu,  9 Jul 2026 10:06:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591585; cv=none; b=bRI65wQ3RB++sUzsmVoxi0/BtFBIyw/sQ9Nr4pfgf+MQK1uCv2pYmsiz5im+LNlVIjbsFfC5jnCmEcA8da87wUHyX9iyBCLlzcVH35k50zOGJAlT+9R2e6/AjjdAy6qkZCKPNlhkcGo1H9rzewTTVm+YI0B9zUCZIvtr9NBMDDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591585; c=relaxed/simple;
	bh=1otDgvY7i8uKJGdVJXGeWZacEAhNqHGnr9b13jU33xk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IBFoDpRKmvps2u0aA5OVwn9IRLzn468w/39SCYc8VbNl6P+NyhYEb+qIiua7f6tLCJJfcAbPJ7O1zto5mcpWfJyIDbSYWomvH4qp2fMmj0MR8TYMnYNBzq7XJrrtOoEnhEO49jLkP+lxPw0W6tB5tmsRWSGcFjXtC5KmxumjrxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=a9vzMPoL; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783591581;
	bh=1otDgvY7i8uKJGdVJXGeWZacEAhNqHGnr9b13jU33xk=;
	h=From:To:Cc:Subject:Date:From;
	b=a9vzMPoL7NNxYdcyAellRVvPv0FDhGDFWFrhOFmcDzHcaehiSVu7QHnmtLI544EM1
	 YVvdYH0gWohbjz12srNzw06DlTP7hkKTZRT0ajA/uCEJhAw9eVltK90PVhRIubzX8j
	 4rDm0/YYz73Ok7SEcDZBRH001jBNCt1cc1hW/ksLqqVppaAd69Itfsk6u/6UtU4pOU
	 q16zVRtv01rL8gf0jTFNRFDCgxHjejQMwoyhXhzSBQyYfpONr6hocXYKQODP665KyN
	 z9+vZUBnvAF0BDwKyg6ajHGcP/o+mjIwXbYu9O1xspB1Ri0FCsYm9hwUL9C7o03fqf
	 nAKaYEbimf6sA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D59FF17E05D3;
	Thu, 09 Jul 2026 12:06:20 +0200 (CEST)
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
Subject: [PATCH v2 00/11] drm: MediaTek DisplayPort cleanups and MT8196 eDP
Date: Thu,  9 Jul 2026 12:06:06 +0200
Message-ID: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,mediatek.com,baylibre.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-323560-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD1F272F69D

Changes in v2:
 - Fixed all audio_pdev unregister issues (wrong pointer and double
   free in case of error)
 - Fixed double free of phy_dev in case of devm_add_action_or_reset()
   error in legacy probe path
 - Fixed legacy phy registers erroneously offset by legacy_regoff
 - Added abstraction of AUX interrupts to legacy transmitter ones
   for hotplug detection
 - Fixed forgotten addition of SDP_DP13_EN_DP_ENC1_P0 in mask
 - Fixed new register mask for interrupt debounce threshold time

This series performs some very much needed cleanups to the MediaTek
DisplayPort driver, including a fix for the audio codec and PHY driver
unregistration, a refactor to finally correctly use the PHY (!) and
introduces support for the Embedded DisplayPort (eDP) IP in MT8196.

Note that this deprecates the nvmem related properties in this driver
because those are NOT related to the DisplayPort IP, but rather to the
DisplayPort PHY, and were therefore transferred there instead (code in
a different series, updating the PHY driver).

On legacy devices, this driver was carefully tested with both NEW and
OLD devicetrees, so both with the new, proper PHY usage, and with the
old platform device registration strategy and eFuse retrieval from DP
instead of PHY driver.

This was also successfully (manually) tested in a kernel that misses
the PHY driver updates on devices using old devicetrees (mt8195/88)
and no regressions were experienced.

AngeloGioacchino Del Regno (11):
  dt-bindings: display: mediatek: dp: Deprecate nvmem efuse data
  dt-bindings: display: mediatek: dp: Add compatible for MT8196 eDP
  drm/mediatek: mtk_dp: Fix hdmi codec and phy driver unregistration
  drm/mediatek: mtk_dp: Clarify SMC eDP/DP video unmute commands
  drm/mediatek: mtk_dp: Rework register offsets for proper PHY usage
  drm/mediatek: mtk_dp: Use PHY API for PHY power sequences
  drm/mediatek: mtk_dp: Add support for PHY from devicetree
  drm/mediatek: mtk_dp: Move max link rate to SoC specific data
  drm/mediatek: mtk_dp: Add support for HotPlug Detection in DP AUX
  drm/mediatek: mtk_dp: Add support for eDP1.5 IPs and MT8196 SoC
  drm/mediatek: mtk_dp: Clarify XTAL freq and Debounce registers

 .../display/mediatek/mediatek,dp.yaml         |   5 +-
 drivers/gpu/drm/mediatek/mtk_dp.c             | 623 +++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         | 328 +++++----
 3 files changed, 713 insertions(+), 243 deletions(-)

-- 
2.54.0


