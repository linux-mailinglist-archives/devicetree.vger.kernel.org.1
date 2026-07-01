Return-Path: <devicetree+bounces-318432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CrljIS0IRWrj5QoAu9opvQ
	(envelope-from <devicetree+bounces-318432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D21A36ED553
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="AYI/d8hC";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318432-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318432-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 393D63143853
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973C5481A93;
	Wed,  1 Jul 2026 12:19:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A378481AA5;
	Wed,  1 Jul 2026 12:19:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908373; cv=none; b=jZmrD81zG6tbXtoUAO9OtZEOa+KO/FqjsGNj6x+PqhtLEVWvynp6SjMsi/56dx61AQnbR409nuhd1wpvoRfz+iElvz0mnevk88p+8N+aNMxoSbtYZI/I4b8sEKzTU66R/nGhLbz1JVwfIEPQVuBLBG9JE11SSyQ2mf7PpUsnvCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908373; c=relaxed/simple;
	bh=kbx+lTdyEsXZ3uWdB95PP/4FKwIOE+bfq+rrqsUS3DY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KjPn3IL/87LaxgPofp3ArGQy/FUbetgkrh3rT9Ikq3S2I9pAqCRRQfs7J0xZTN9PAOeHHN/6rgR21p0ejoHmj1w62GCQarhoh0HngfmrI0uwrxwNBB2dkMwaqHsClnCWChNW700Hyy48IOzmn1MFTGqVwYP+aVhpslrynXTSZ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AYI/d8hC; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908370;
	bh=kbx+lTdyEsXZ3uWdB95PP/4FKwIOE+bfq+rrqsUS3DY=;
	h=From:To:Cc:Subject:Date:From;
	b=AYI/d8hC9oZArEbIiw8Qcmcpl+xNDRhfM0pWFwibjUAx+K9pGxMbQlQ7KD09z2qRm
	 rpA09pW3tQujBGBMvjx/Chm5ShvccJmpjpOD0P8uk/8O8pgA5Jr9yg/0Wr31/G0xC2
	 g6IVZLgcOtV7rJHvVJ4b2fX5EVlDCPc7cuNmjX25eJwzMPWTb/QZ0XyWaYrKTpXxpy
	 S32+q5bz7jEKhFvJ8xJtv3UqCmiFqkq6n/J6dJALOdUGUDUjWU8CJhFRY7BUkG1ZYf
	 qH+8heL5W6MT1BEP7bcEJrUluTeA2G43BOlV6AvpLHN2V3AfWAjmF8vq77BpJfFi6u
	 SQKlM9KPSTIPg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 719DA17E0CA0;
	Wed,  1 Jul 2026 14:19:30 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	justin.yeh@mediatek.com
Subject: [PATCH 0/7] dts: Add and use UART AP_DMA controller on MTK SoCs
Date: Wed,  1 Jul 2026 14:19:22 +0200
Message-ID: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318432-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,mediatek.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-mediatek@lists.infradead.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:justin.yeh@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D21A36ED553

First of all: not all of them will use this and that's sure - but the
devicetree describes hardware, and this hardware was not described on
any of the SoCs that support the UART AP_DMA controller.

Besides, there is also driver support for this controller for all SoCs!

Let's add support for this IP in all of the SoCs that have it.

AngeloGioacchino Del Regno (7):
  arm64: dts: mediatek: mt6795: Remove deprecated UART DMA property
  arm64: dts: mediatek: mt8173: Add and use UART AP_DMA controller
  arm64: dts: mediatek: mt8183: Add and use UART AP_DMA controller
  arm64: dts: mediatek: mt8186: Add and use UART AP_DMA controller
  arm64: dts: mediatek: mt8188: Add and use UART AP_DMA controller
  arm64: dts: mediatek: mt8192: Add and use UART AP_DMA controller
  arm64: dts: mediatek: mt8195: Add and use UART AP_DMA controller

 arch/arm64/boot/dts/mediatek/mt6795.dtsi |  4 +--
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 27 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 22 ++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 22 ++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 33 +++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 17 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 37 ++++++++++++++++++++++++
 7 files changed, 159 insertions(+), 3 deletions(-)

-- 
2.54.0


