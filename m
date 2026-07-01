Return-Path: <devicetree+bounces-318452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4iS1LcEIRWoY5goAu9opvQ
	(envelope-from <devicetree+bounces-318452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:32:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 028196ED5E9
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:32:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=JZ9kR++y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318452-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318452-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AE4F31B0226
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562BD492538;
	Wed,  1 Jul 2026 12:20:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139049250B;
	Wed,  1 Jul 2026 12:20:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908407; cv=none; b=OyImO8CjbNB8p6l7m17Xi7jSgg2fwHufaog2wLUdrveio8CdLfqgt9o7VfzXbE6334/SHw4EDX9j37IJAusnRyrjCMhAb77YN6gSGWzMtA1sMekXEfLsgcvVGxW3gDXBnIMqv/iW5gHc9NIUZPXJ9RWK12+qHU5i79PfO9nwcoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908407; c=relaxed/simple;
	bh=0gPe20SEhbSKRx8YMF1loMW2r5BMkP9zKr6qfZ5JseA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dmG9xGLW03R/vUN8NwNJAJqNcQJ5en3JmgRTSzi02EW+NN9hJlGBTGZhF2BioFnT+N4eHL5AghS13fRhrSa+WnLptWOG6GtJAtFmYIfKRk1qn/FZwMXZk7K18+L1KaZ3Ch2c1RxQq9nuKu3xFVRHtruMAQvBl288z4diEWW92Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JZ9kR++y; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908403;
	bh=0gPe20SEhbSKRx8YMF1loMW2r5BMkP9zKr6qfZ5JseA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JZ9kR++ycUB2t7OH5iCE0tSPapmmQzeR/2khfPzlVnpVGDOLcl+Pfi2G33hc6pJ1H
	 nJ2KVjmXNuQjfqkt77i+Ne6iaD669x4ngJEP/byQs0z4gQltjNlYGM4yyHRb1TyzvT
	 Le/cDnhJqWXw4wrmbtZxqiuFEE9gYpIRYSoBViBnwkPy4kAt0NyYdkVgq/oLcwgKJE
	 XH/sl4CJF3g798vj3ZeXPrWZi92S05rz6OepVgupCWzoeGnCw9L2tm0oZ4R9yRY9hM
	 Y3wn5+rbEgc6qrxTm9+fmicnVwNKscS3KNxlEGbOmLyadlk0RQ+brB24dvaERkCeub
	 9iE20jWQepTkA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E15CD17E0F44;
	Wed,  1 Jul 2026 14:20:02 +0200 (CEST)
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
Subject: [PATCH 09/10] dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs
Date: Wed,  1 Jul 2026 14:19:49 +0200
Message-ID: <20260701121950.19454-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121950.19454-1-angelogioacchino.delregno@collabora.com>
References: <20260701121950.19454-1-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-318452-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 028196ED5E9

Multiple MediaTek SoCs have the Write DMA hardware in their Display
Controller: add the missing compatibles for Dimensity 1200 (MT6893)
and for Kompanio 500/520/820/1200 (MT8183/MT8186/MT8192/MT8195).

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index 97d052b0fb61..c3ed867d058d 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -22,11 +22,16 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - mediatek,mt6893-disp-wdma
           - mediatek,mt8173-disp-wdma
       - items:
           - enum:
               - mediatek,mt6795-disp-wdma
               - mediatek,mt8167-disp-wdma
+              - mediatek,mt8183-disp-wdma
+              - mediatek,mt8186-disp-wdma
+              - mediatek,mt8192-disp-wdma
+              - mediatek,mt8195-disp-wdma
           - const: mediatek,mt8173-disp-wdma
 
   reg:
-- 
2.54.0


