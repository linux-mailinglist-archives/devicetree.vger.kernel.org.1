Return-Path: <devicetree+bounces-318479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SnXdKzoIRWrt5QoAu9opvQ
	(envelope-from <devicetree+bounces-318479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0886ED575
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=UdHzJ3oK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318479-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318479-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D11673091A70
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BDC34BC007;
	Wed,  1 Jul 2026 12:20:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FBE4ADDBA;
	Wed,  1 Jul 2026 12:20:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908449; cv=none; b=P115m7Eil4LYUaai9uuXQ9R/VuwAZtq6xT+xT2gLc8If19ae/3pO9aYUYvXAY0XaPYrdQTRyVfDWJRTy1ZTPdylfu+BibliToJszyYfEDT8RbK0Rg2mDRvGEGA/r2KBop1sflIeRh3iRohFdA8d6pJHka7iz/HLi4pReJuviD0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908449; c=relaxed/simple;
	bh=m6sJ153mTEtGqqARntkJHomU856d72WMcKy3EMNBfdA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EVnPHh8AwlAWtcLUVh6Z60BDBYqs2R4Q1knMxjwvb8Whmbo8Fe4AzlIX8FpCXMfrgmx6eAfu5D2VhFTx/tic0JAqG2sVozlbJJrJPyQG1mfBkpRMIab4ZRb1jwhPh0k/yGr5pytbF+7T65rGtNGa14oIpovK7AS/1FGe/1NAbT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UdHzJ3oK; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908446;
	bh=m6sJ153mTEtGqqARntkJHomU856d72WMcKy3EMNBfdA=;
	h=From:To:Cc:Subject:Date:From;
	b=UdHzJ3oKReCUM8CMjgYobeK2cYD0xqTaw9zVy9oOW3jjlQ8dli3+zy7x6/FrKbNIC
	 F6DKQVvkx8hl8FMqpY7/7MNEpwFaEVOu+XvIFD13MRWW9hGQ30sRRZf2faShcOZNTP
	 6uZdv4d2uYiO0PKtTI7QQF58ZuT1hIK1MGl9uqbAPr4h2mFz6FwBjzLtbycO+Xh1Qe
	 zI2xEsMa1XUDENfAEOWl3tUuFbQr6sczfbOixO6NQ1lJqRZFQcjZNe2TugkBhQw0h3
	 SEHLwpCkJBG8XMMDbCar3ZE7CT/31SzfVT9rVc9fvOIMmdw6wq2rnVwLvy46dWmMxZ
	 NoBlTHgqlhLhA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BC1D817E0857;
	Wed,  1 Jul 2026 14:20:45 +0200 (CEST)
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
Subject: [PATCH 0/6] MediaTek MMSYS/Mute-X new-style part 1
Date: Wed,  1 Jul 2026 14:20:37 +0200
Message-ID: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,foss.st.com,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-318479-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A0886ED575

This series part 1 of a huge restructuring of the entire multimedia
part of MediaTek SoCs, especially mediatek-drm, and contains only a
set of changes that don't require any simultaneous updates in the
mediatek-drm driver.

This adds support for correctly advertising the MediaTek Mute-X IP
as a source of trigger signals (because that's what it is), hence
for adding #trigger-source-cells in the Mute-X devicetree node and
for specifying a Mute-X trigger-source in all of the MTK Display
Controller components supporting or requiring one, as previously
it was kind of hacked up as a static array in the Mute-X driver,
for both MDP and DISP components, which is, well, depending on the
point of view, actually wrong.

Moreover, this goes on with the first part for a rework of MediaTek
MMSYS, which is a requirement for the upcoming huge restructuring
of the mediatek-drm driver; this starts adding boilerplate required
for setting up MMSYS entries with decoupling of "component type" to
"component instance number".

As of now, all of the components in MediaTek DRM, hence also in the
MMSYS driver, are thrown in a catch-all enumeration that does not
make any distinction between Type-Instance relationship, and it is
like so (mock-up names ahead):

DISPLAY_DITHER0
DISPLAY_DITHER1
DISPLAY_DSI0
DISPLAY_DSI1

... and so on.

Since the number of components is now becoming uncontrollably large,
the catch-all enumeration poses a big issue as the mediatek-drm driver
is allocating a huge array that will be only half full (optimistically,
because usually it's way less than half full) and with repeated ops
assignment for each and every instance of the very same Sub-IP,
effectively treating every instance of a Sub-IP like it is completely
different from one another (for example, like DSI0 and DSI1 are as
different as DITHER0 and DSI1).

This has to change. It had to change months ago, but now it has become
not only a maintenance burden, but also a... (sorry) big mess.

And well, that... especially looking forward to add support for newer
SoCs, using even more components in one pipeline, and using different
and newer components (of new types...), making the catch-all enum to
grow of another ~20 entries or more.

So, this is PART 1 of this huge restructuring, which will impact many
drivers, including soc/mediatek's mutex and mmsys, most of drm/mediatek
and, in the future, also media/mediatek/mtk-mdp3 (and eventually its
firmwareless implementation which, for components handling, will be
as complicated as mediatek-drm and, without this restructuring, would
be yet another boulder).

AngeloGioacchino Del Regno (6):
  dt-bindings: soc: mediatek: mutex: Improve title and description
  dt-bindings: soc: mediatek: mutex: Allow #trigger-source-cells
  dt-bindings: display: mediatek: Allow trigger-sources on relevant HW
  soc: mediatek: mtk-mutex: Add new functions to add/remove triggers
  soc: mediatek: mtk-mmsys: Rework routes to specify component ID
  soc: mediatek: mtk-mmsys: Use MMSYS_ROUTE() in default routing table

 .../display/mediatek/mediatek,aal.yaml        |   3 +
 .../display/mediatek/mediatek,ccorr.yaml      |   3 +
 .../display/mediatek/mediatek,color.yaml      |   3 +
 .../display/mediatek/mediatek,dither.yaml     |   3 +
 .../display/mediatek/mediatek,dp.yaml         |   3 +
 .../display/mediatek/mediatek,dpi.yaml        |   3 +
 .../display/mediatek/mediatek,dsc.yaml        |   3 +
 .../display/mediatek/mediatek,dsi.yaml        |   3 +
 .../display/mediatek/mediatek,ethdr.yaml      |   3 +
 .../display/mediatek/mediatek,gamma.yaml      |   3 +
 .../display/mediatek/mediatek,merge.yaml      |   3 +
 .../display/mediatek/mediatek,od.yaml         |   3 +
 .../display/mediatek/mediatek,ovl-2l.yaml     |   3 +
 .../display/mediatek/mediatek,ovl.yaml        |   3 +
 .../display/mediatek/mediatek,padding.yaml    |   3 +
 .../display/mediatek/mediatek,postmask.yaml   |   3 +
 .../display/mediatek/mediatek,rdma.yaml       |   3 +
 .../display/mediatek/mediatek,split.yaml      |   3 +
 .../display/mediatek/mediatek,ufoe.yaml       |   3 +
 .../display/mediatek/mediatek,wdma.yaml       |   3 +
 .../bindings/soc/mediatek/mediatek,mutex.yaml |  21 +-
 drivers/soc/mediatek/mt6893-mmsys.h           |  34 +-
 drivers/soc/mediatek/mt8167-mmsys.h           |  21 +-
 drivers/soc/mediatek/mt8173-mmsys.h           |  28 +-
 drivers/soc/mediatek/mt8183-mmsys.h           |  14 +-
 drivers/soc/mediatek/mt8186-mmsys.h           |  22 +-
 drivers/soc/mediatek/mt8188-mmsys.h           |  78 ++---
 drivers/soc/mediatek/mt8192-mmsys.h           |  20 +-
 drivers/soc/mediatek/mt8195-mmsys.h           | 181 +++++------
 drivers/soc/mediatek/mt8365-mmsys.h           |  20 +-
 drivers/soc/mediatek/mtk-mmsys.h              | 299 ++++++++----------
 drivers/soc/mediatek/mtk-mutex.c              |  60 ++++
 include/linux/soc/mediatek/mtk-mutex.h        |   6 +
 33 files changed, 474 insertions(+), 390 deletions(-)

-- 
2.54.0


