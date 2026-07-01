Return-Path: <devicetree+bounces-318454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CuPoMB0HRWqE5QoAu9opvQ
	(envelope-from <devicetree+bounces-318454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 818FC6ED480
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=QUaIaxby;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318454-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318454-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8707A3062908
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229B14949EF;
	Wed,  1 Jul 2026 12:20:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A621C481AB6;
	Wed,  1 Jul 2026 12:20:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908414; cv=none; b=Hp+1/5qD39IPsVUlc/yeqT9Nn7yGwLjNlyEQKdULdYCbw9h9QB71iFEvklhud+oVmjc8d+orfV1rdYpuJbJjU+J5QbvMh7vA/rMcTts/iOjiP0hIlPp9zTxx1g55nhZ7GuUCcHHaQcV3Mj9dbu+RxML6zM5E71c9EGynT1Q91gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908414; c=relaxed/simple;
	bh=iqUVt8CT1sNuLpB4ADp03oE5HGlCBS0SsQI49Nsa4eQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CRltIpXLnv9xBplJLRZwOdKnddE9mZ05n2W4Bp9PDmYQcH4v9XiOAuz9pz/66JciX202gadeYT0kopg9NPgQ3YkE6yZ2djP6uitrdnRp/rDyqJjZx/1QKOzh4KSqcpYUneegD+MyT7xnz8EQOeepFWwmPj8RCpdcSLRWIf4Bpzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QUaIaxby; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908411;
	bh=iqUVt8CT1sNuLpB4ADp03oE5HGlCBS0SsQI49Nsa4eQ=;
	h=From:To:Cc:Subject:Date:From;
	b=QUaIaxbyrZQOlh7ks8EESor+JN9AidmGzqUX1tmQWbSgDYaUgDbybErYDZGLFNfpK
	 zSP3F8wpXdojJAaC13vCJjI3D2VV/WfunK89WyxOQc/2jCHtKlcVsH0q09j2w+Tuyp
	 E29G+h5OK/MrD14TQ7odgiT+8kAOQoUuO9+DSGNyCBdJZmyQvhikZqf/5RuIMLoHMq
	 Md8XSr0EvhXzn7n9FEmAvrMH8rgrkGViFLITZib+reD2qab8s5U8/l1dYPBygQndm2
	 OJcAdZh11UfS3cG7vNNqOsT5elaZNa2393Y4cJp6euDeigGtJn/J7E7iL/OyYT86w1
	 u8fLlcO/DRDjA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 978BE17E0909;
	Wed,  1 Jul 2026 14:20:10 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH 00/12] PHY: MediaTek DP PHY refactor and MT8196 eDP
Date: Wed,  1 Jul 2026 14:19:56 +0200
Message-ID: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-318454-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 818FC6ED480

This series performs major refactoring on the MediaTek DisplayPort PHY
driver, makes it probe with devicetree instead of getting registered
by the mtk_dp DRM driver, adds power_on/off() callbacks, and honors
the phy configure opts' set_lanes and set_voltages for, respectively,
varying the number of lanes and setting the voltage pre-emphasis and
swing on the PHY, for each lane.

This driver now also properly gets the PHY (EYE) Calibration Data from
NVMEM (eFuse array) if provided, instead of getting it (improperly)
injected by the mtk_dp driver.

Additionally, all of the driving parameters calculations and most of
the other register definitions were refactored to greatly enhance the
human readability of this code.

As a last step, this also transfers the register offsets for both the
digital and analog phy registers in arrays assigned to soc specific
data, in an effort to both introduce support for new minor revisions
of the MediaTek DisplayPort PHY and to have a clearer view of the
register related differences between those (for example, it is easily
understandable that the analog part remained exactly the same between
MT8195 and MT8196, but the digital part gets a slight update).

Speaking of which, as a last step, this also adds support for the
MT8196 SoC (and its derivatives), which uses this PHY only for its
Embedded DisplayPort (eDP) IP (spoiler: the DP one seems to be way
too different and requiring an entirely new PHY driver).

In this state, this driver can also easily support the MT8189 SoC
with a few lines of code: even though I do have clean code to add
support for this one, I was not (*yet*) able to test it on upstream
based kernels, and for this reason I decided to leave that one out
for now (but it's coming later for sure).

NOTE!
Despite all the apparently breaking changes in the refactoring, full
compatibility with older MTK_DP driver and with old devicetrees was
retained and carefully tested on multiple platforms!

P.S.: I am aware of the BUILD_DRIVING_PARAM_0( 0, 2, 4, 7) checkpatch
warning and I didn't fix it in bigger favor of human readability.

AngeloGioacchino Del Regno (12):
  dt-bindings: phy: Document MT8195 and MT8196 DisplayPort PHYs
  phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
  phy: phy-mtk-dp: Allow probing with devicetree match
  phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata
  phy: phy-mtk-dp: Implement power_on and power_off PHY callbacks
  phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup
  phy: phy-mtk-dp: Support setting volt swing and preemphasis values
  phy: phy-mtk-dp: Add support for digital and analog calibration
  phy: phy-mtk-dp: Rewrite and document default driving param macros
  phy: phy-mtk-dp: Add bitrate register val definitions to SoC data
  phy: phy-mtk-dp: Add PHYD Lane EN register mask to SoC data
  phy: phy-mtk-dp: Add support for MT8196 eDP PHY

 .../bindings/phy/mediatek,mt8195-dp-phy.yaml  |  77 ++
 drivers/phy/mediatek/phy-mtk-dp.c             | 828 ++++++++++++++++--
 2 files changed, 808 insertions(+), 97 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml

-- 
2.54.0


