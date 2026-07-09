Return-Path: <devicetree+bounces-323461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aw0aB9xgT2oTfgIAu9opvQ
	(envelope-from <devicetree+bounces-323461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:50:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6353D72E7BD
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:50:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=IzqBCxq0;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323461-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323461-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 391A33015E3D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43C33E639C;
	Thu,  9 Jul 2026 08:46:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253FD3E4C7F;
	Thu,  9 Jul 2026 08:46:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586803; cv=none; b=C+x1f1ltnXmMwb559Ecg+yEGaX5cmw6w8S0wv2Ntk2CmMoYo/j1CXB76O6LhwhVmB9j69SwCzLDwy02PfmmxcTgk3jd8OKY/QY6pvHx93qcxw3rpGMRXdBKcy0ASYfnB2hSspdK86kTtKASa+R4UGUhs+6W6JehgSvRyCec+t44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586803; c=relaxed/simple;
	bh=5cG0A2p0dlO1yjnfX1PXqAS5ejqeFnCrhtr+/kbgOJY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hUgEUUSxnTbr9b6mgSpOPIheT0gF4P/F6pMMiOpkf+74BaVF2ULliPNKgjjdC/enoe/DXXnFhsaILi+zq/rK7T+CN3AAXHNyFJonW6PcAkL11rNIBfF1aixyefa6WCwT4NQvm0Mox43+GPIEdha15X1i6LhOJ7Ira7oaBnDvqKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=IzqBCxq0; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783586800;
	bh=5cG0A2p0dlO1yjnfX1PXqAS5ejqeFnCrhtr+/kbgOJY=;
	h=From:To:Cc:Subject:Date:From;
	b=IzqBCxq0cEnlJD/CkMZb3Selaz3Cn4HEItsk9rO9IdOeRn/HEdOnzcU+0zNrwmxI9
	 2NFRvh4LOtEF8kYUkOus/py1+me5WVNfM2v40zT6q1RnjCzyH4ytPUDa9+LvDq6vMe
	 Z7uWmrkUlINDUHGmwdpqXAqyyZyrV+c53m44+Ljb3U2aVTSIfMeryXRBMldToz6UVi
	 YOaED1nqNy98OBwlKD4Z8xQ82u6oRWzXpoOszo1eeYuz6ce0jHdZvEJNejn0Xblkjx
	 3gDU2W0VypwzoHRn0X4xXOGeOU7oqpg8Ny6sHSgvr6Ha10umIV2vRVwC7ZDXFSunc1
	 2z1EE7hAYVjxQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 85A4F17E0886;
	Thu, 09 Jul 2026 10:46:39 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: ulfh@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nfraprado@collabora.com,
	irving-ch.lin@mediatek.com,
	macpaul.lin@mediatek.com,
	aford173@gmail.com,
	mbrugger@suse.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	justin.yeh@mediatek.com,
	kernel@collabora.com
Subject: [PATCH v3 0/5] pmdomains: Fixes and add support for HFRP Direct
Date: Thu,  9 Jul 2026 10:46:30 +0200
Message-ID: <20260709084635.24912-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323461-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6353D72E7BD

Changes in v3:
 - Added new Fixes commit for possible null pointer kp during cleanup
   of internal on-check
 - Added proper error state cleanup support for SIMPLE_PWRSEQ domains

Changes in v2:
 - Fixed return value checking in power off path

This series adds support for the DirectCTL HFRPSYS power domains found
on the MT8196 SoC (the ones without HW Voter support) and also adds a
fix to respect the power domain relationships during error cleanup,
which avoids HW lockups in case probe deferrals in the specific case
of "almost fully probed" power domains (where most of them probed and
got set up but a probe deferral happened almost at the end), behavior
seen on the MT8189 SoC during bringup (but honestly I have no idea how
are the current ones working fine without this fix...!).

This was tested on MT8173, MT8186, MT8188, MT8189, MT8192, MT8195 and
also on MT8196, over months of development, both manually and over CI,
with no regressions detected.


AngeloGioacchino Del Regno (5):
  dt-bindings: power: mediatek: Add support for MT8196 direct HFRP
  pmdomain: mediatek: Fix possible nullptr KP in HWV cleanup/on-check
  pmdomain: mediatek: Respect PD relationships during error cleanup
  pmdomain: mediatek: Add support for Direct CTL simple power sequence
  pmdomain: mediatek: Add support for MT8196 HFRP DirectCTL domains

 .../power/mediatek,power-controller.yaml      |   1 +
 drivers/pmdomain/mediatek/mt8196-pm-domains.h |  27 +++
 drivers/pmdomain/mediatek/mtk-pm-domains.c    | 184 ++++++++++++++----
 drivers/pmdomain/mediatek/mtk-pm-domains.h    |   1 +
 .../dt-bindings/power/mediatek,mt8196-power.h |   4 +
 5 files changed, 184 insertions(+), 33 deletions(-)

-- 
2.54.0


