Return-Path: <devicetree+bounces-325413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2t1tOC/AVGqWqgMAu9opvQ
	(envelope-from <devicetree+bounces-325413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:38:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA482749E39
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:38:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=XADnlWxA;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325413-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325413-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FF953006D6D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825D037CD52;
	Mon, 13 Jul 2026 10:38:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0166037A835;
	Mon, 13 Jul 2026 10:38:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783939095; cv=none; b=s+md/oHTGtSzfL5o1UhhjDyfXA0IlD1CRTYhDKp+cJNcQEGKMa3rjK/BqhgoAG7xMWSx2dRIFMOxmfmm4PJZw5eRby1F0etWkLt06estQhBul8Dtmqx9mQyZ4cZU69TRuz9EgqNGkx4W5mfa8BR/5dbLWG2U/sePGodpXMjrjag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783939095; c=relaxed/simple;
	bh=4E+jdeyxHU72SDz0s7k3Q69ptccQSHWPz/W0Q42mOCY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VdnOmQI5KB/UhCEx0RBX/NvCbB3N2Iqd+vunTVLuD8X3PuXeKiQ7CKPb42GbSOBIeHsRvOC5X9pDHL43RmJhDDpcn2ea6fSGwr1dyee+cQOpi9G4kTjfCbaU339z1fKqhRs8FqjxGhCeAhZI6yHmA+8uDCxV3TtUiQ6puh/tdV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XADnlWxA; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783939092;
	bh=4E+jdeyxHU72SDz0s7k3Q69ptccQSHWPz/W0Q42mOCY=;
	h=From:To:Cc:Subject:Date:From;
	b=XADnlWxANguGJN7bl+NRzpLu1SRZZIU6um8d4jvJq6Sneksd0SUAmz1YhyvMqRHyQ
	 zdQ1JI1iP8aENu2q1GsS/WT+qfgENxK9OqH6JWjxV1Dt67+K8FZS2NGILxc+achbDr
	 oUjdJPxqi2sSjjGI8b3LuLsaPTt50zTDkMw+bFacMZ+ddJZpKWuPy9VPATLICGk1DU
	 hwR0nRXdzZfAfD4xu9/DaAziNJAiJRfBEG9anUTUZ72k0kFXz5hW2FRSMw6KY5YGpa
	 J8xTL9cjtVX4/v/VKG6FkbHwbatsWOWCE8XB4c2m59OQbrlEA788KXpEWErRRmCq+Q
	 fGByR+Cx9fpVQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A900C17E05D3;
	Mon, 13 Jul 2026 12:38:11 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v3 0/2] PHY: Add support for MT8196 DSI PHY
Date: Mon, 13 Jul 2026 12:38:03 +0200
Message-ID: <20260713103805.23030-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,pengutronix.de,gmail.com,collabora.com,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-325413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:dkim,collabora.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA482749E39

Changes in v3:
 - Actually sent the correct patch series (sorry, I had messed up v2)
 - Added definitions for minimum and maximum PLL rates

Changes in v2:
 - Added a few comments and fix scheduling while atomic issue in clk
   enable ops by waiting with udelay() instead
 - Removed one unnecessary delay after clk/pwr isolation disablement

This series adds support for the DSI PHY found in the newer MediaTek
Dimensity 9400 (MT6991), Genio Pro 5100 (MT8894) and Kompanio Ultra
(MT8196) SoCs.

AngeloGioacchino Del Regno (2):
  dt-bindings: phy: mediatek,dsi-phy: Add support for MT8196
  phy: mediatek: Add support for MT8196 MIPI DSI PHY

 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 drivers/phy/mediatek/Makefile                 |   1 +
 .../phy/mediatek/phy-mtk-mipi-dsi-mt8196.c    | 201 ++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-mipi-dsi.c       |   1 +
 drivers/phy/mediatek/phy-mtk-mipi-dsi.h       |   2 +-
 5 files changed, 205 insertions(+), 1 deletion(-)
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c

-- 
2.54.0


