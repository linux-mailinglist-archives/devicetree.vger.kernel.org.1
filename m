Return-Path: <devicetree+bounces-318435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6MD5FJkGRWpj5QoAu9opvQ
	(envelope-from <devicetree+bounces-318435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:22:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 052966ED421
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:22:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=LwYCS+xt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318435-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318435-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 59CE4309BEA9
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7836481FB6;
	Wed,  1 Jul 2026 12:19:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBAE481244;
	Wed,  1 Jul 2026 12:19:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908375; cv=none; b=jkof3jfWaO4ghvWGaj6W1a4Nuf8IngViAjdAwKs3QDU3ZSNKCs1Sw3dYEADUXUaNGHMw8bhng3lvTb64ASY3T+I92SqNywU4Zw0NcEDyf1NX99Bpmisb1+8OWb5WRfwGWPm9LfT8mxIimdF6OhHlcYI6xWAoBvQMJWaord9bvGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908375; c=relaxed/simple;
	bh=k8gRabJ0ojQ3AdJqjRNNwX5ZebkOglKCv5qFLpZE2uw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iQ7LBQ+UG7bZDSFycdDcCb/YouDMsQuzZnHHTdExKWj0niFpoKQD8jxtChj8J3K4a/U6O9g4lViqzj0IR6RFVe2iByUiyIySmwAdxcuJlODm9/pnLZiUVOnMpfQg5QeyIczW4Rtsg5yQ+336sZVUSuVnt3eE+ykrCy1RtVzFjio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LwYCS+xt; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908371;
	bh=k8gRabJ0ojQ3AdJqjRNNwX5ZebkOglKCv5qFLpZE2uw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LwYCS+xtgmjY7nAF2fOKzDYcu3vi751HRewIZlIlHjXwAIlFCf/q9M+rAXyxwLVFV
	 3WF29bZlbF48NYN81gUWjaxJBEOqKY2i9CZYsVfyaQeSXtZxzb1ol85uFCKTTr70NZ
	 fbEpuF3dxJr1NPRVD04SEy48qklQAY8MqUWLtE7IIBCNt4Y0EI8dY+vaqHy7jcryB0
	 tByGNzFeSuVggPfQ+OY3pTKl/wTKH8yfBfUZuyI55KSGlFxG2F6IowFXL4LpeoKNgh
	 ii1b+E8rkJo9fPgl2rdDuTlI9rAOE75fRVa1/nYoCjoKGSiYG7YQonfkipjdLfp8V9
	 gt6xsxmVRaqAg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1700517E0D72;
	Wed,  1 Jul 2026 14:19:31 +0200 (CEST)
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
Subject: [PATCH 1/7] arm64: dts: mediatek: mt6795: Remove deprecated UART DMA property
Date: Wed,  1 Jul 2026 14:19:23 +0200
Message-ID: <20260701121929.19374-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
References: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318435-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 052966ED421

Remove the mediatek,dma-33bits property as it is now deprecated
and, while at it, also remove the fallback compatible as it was
not entirely right to use anyway, because this IP is not fully
compatible with the one found in MT6577 and would create more
issues than the ones it could resolve (as in - it's better to
not probe the controller than to probe it and manage it in some
incorrect way).

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6795.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
index dcbb7495835c..2d3db0c6fcf5 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
@@ -548,8 +548,7 @@ uart1: serial@11003000 {
 		};
 
 		apdma: dma-controller@11000380 {
-			compatible = "mediatek,mt6795-uart-dma",
-				     "mediatek,mt6577-uart-dma";
+			compatible = "mediatek,mt6795-uart-dma";
 			reg = <0 0x11000380 0 0x60>,
 			      <0 0x11000400 0 0x60>,
 			      <0 0x11000480 0 0x60>,
@@ -569,7 +568,6 @@ apdma: dma-controller@11000380 {
 			dma-requests = <8>;
 			clocks = <&pericfg CLK_PERI_AP_DMA>;
 			clock-names = "apdma";
-			mediatek,dma-33bits;
 			#dma-cells = <1>;
 		};
 
-- 
2.54.0


