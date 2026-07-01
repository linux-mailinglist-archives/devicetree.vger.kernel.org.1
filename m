Return-Path: <devicetree+bounces-318481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rMqIH/gJRWp+5goAu9opvQ
	(envelope-from <devicetree+bounces-318481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:37:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 059296ED6C1
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:37:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Z0SLQdhS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318481-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318481-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3360316B0FC
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4C14BC028;
	Wed,  1 Jul 2026 12:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5B348165B;
	Wed,  1 Jul 2026 12:20:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908451; cv=none; b=ftOODSeEuQjTf5aXz9mx/f/WkIQYyjusyduCptmI2v7HGUlIqt7g8RMM1bhQfZYa6pBCtSbB0RSpaFPS3typOwtR6NFwamdzpSvZKCnRXtQ873MeZBy3hXKqKvtr89y3PLUVP0utZM2bgpXHqJuR0VpjgMeEeX0gCQXHlMLBydU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908451; c=relaxed/simple;
	bh=wgHgcm8xmrhSZqBKw4j7YQgDPCGbEX4RDBXbqihHAaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tbqmXPtQGAN4MZG0aRjqCWqvAELQDA4GAAh42LZZdrHqA8JM30u5eqOR/8zN7NqGCeqoqBuyn4h0VCTqKqp8baBqaut2xB+RqaAjNBpO5xhnZ0chQFiidPrlu3wvydC/lXJsr8Sru3vHapDbGybGhtvs+FBUtI6iZwPmHqtjBSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Z0SLQdhS; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908449;
	bh=wgHgcm8xmrhSZqBKw4j7YQgDPCGbEX4RDBXbqihHAaY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z0SLQdhSwyJDbeiKvQ+HrIpTUxzjvAh0AcbNdueDIZSowjEUHOYjSYGxglQmEumKU
	 KPSvzcVFxC0eFa6W+31sk7e3oWPUQM5zsYoh+h7tLjjxf95WIyt6utg/hWq9YmjqFG
	 QvCNvCCYWffKv8ESM+vDbZtK+WWSCC5Vedq3t5QMNysXlxERskkI4Y7qnhpLaJOEiO
	 ePcbSt60kXV72W4i39Q54yZQkqBXHfqBwAX37QLO5Jx8zSjjnDEEjDHb8UDD5HLiaq
	 /KTLPKC7aMMka9VzSWl3/TYLfAL1P/oBdEO5/CNnzufbLu4RsluuEFixa382hfSP+8
	 zyBpU2nwIjF6w==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 25B3817E0CF4;
	Wed,  1 Jul 2026 14:20:48 +0200 (CEST)
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
Subject: [PATCH 2/6] dt-bindings: soc: mediatek: mutex: Allow #trigger-source-cells
Date: Wed,  1 Jul 2026 14:20:39 +0200
Message-ID: <20260701122043.19612-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
References: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,foss.st.com,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-318481-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 059296ED6C1

This hardware controls trigger sources, and there's even a generic
binding just for that: allow #trigger-source-cells in MuteX, so
that this is allowed to provide triggers to external HW.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/soc/mediatek/mediatek,mutex.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
index 1ba086ad749d..429ea149068e 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
@@ -57,6 +57,9 @@ properties:
     items:
       - description: MUTEX Clock
 
+  '#trigger-source-cells':
+    const: 1
+
   mediatek,gce-events:
     description:
       The event id which is mapping to the specific hardware event signal
@@ -119,6 +122,7 @@ examples:
             interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
             power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
             clocks = <&mmsys CLK_MM_MUTEX_32K>;
+            #trigger-source-cells = <1>;
             mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
                                   <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
         };
-- 
2.54.0


