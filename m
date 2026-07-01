Return-Path: <devicetree+bounces-318480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tCszBEEIRWrv5QoAu9opvQ
	(envelope-from <devicetree+bounces-318480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 988F56ED57F
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Uu9+yMvR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318480-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318480-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F0F99306C824
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FF54BC017;
	Wed,  1 Jul 2026 12:20:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52658481258;
	Wed,  1 Jul 2026 12:20:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908450; cv=none; b=q4LZjDiTJAHZD5Z9jrJQx9flOMxqsC6IyhkmM3tb12tKj2wckNY9bdspGUXkqs0ROoG0NJK8GjpJdIkmjAJ9T4/tIxFpguZby2VKzXRMaPdmPwNziQlakGbRmKt+/OeAAza8uMGOgmytesfMmXe1mXXCCwactb/3UX+biocKIyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908450; c=relaxed/simple;
	bh=10CwvtT4kY3WD8DU6fNrUFwHds9K/lWQ7/9XIIUig4s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DUCztzilmu6TZfSU/+4omAZyCoOCsV6oHfWpFL/+816O46DVuKaoZicm1HN1tbdN5l7qbm+scjdiDzvkKawqWudWwf1CYXrZnE5WptdzyOvS8wcPCcgX7v1aDnMXT+MdxlLNOolneLAXLUb/GtIv0wrFw/JUUdbGNXT+Bf2pKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Uu9+yMvR; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908448;
	bh=10CwvtT4kY3WD8DU6fNrUFwHds9K/lWQ7/9XIIUig4s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uu9+yMvRjGLMKFl9yW+/o2Vic+6LDilccI6IflxLeP2DCne9qMZqxR0PSBjnRW51d
	 vv2L5JmyVP7yDZUqFi1E2Ltg20qiPBYVzY/5SVcsCN1f+/xz6F+SdCEPEO1oepjrJ9
	 6AMVIVO25Ntbrp4NUK/dnOemc17i0YE7fhnbLnRkCCEqYTfdGFW5MAISY4pKL3NYvV
	 Lk5LqfKjYJawd1dRKqfZvdFjbsSMoON4+HLUpNIUywTUv5ZKTqejaY4YnHDDIzqvyU
	 vl9EkdBex3Czq9sFxiVVeYUXhWLPjPklNlOsN4zxaM0jIjLv6+xtCrNU1dNCbw9fR2
	 fzRKWxUbdJNaQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC2C217E0F44;
	Wed,  1 Jul 2026 14:20:46 +0200 (CEST)
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
Subject: [PATCH 1/6] dt-bindings: soc: mediatek: mutex: Improve title and description
Date: Wed,  1 Jul 2026 14:20:38 +0200
Message-ID: <20260701122043.19612-2-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,foss.st.com,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-318480-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,devicetree.org:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,pengutronix.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 988F56ED57F

Improve both the title and the description of this hardware to
disambiguate its functionality from a hardware mutex and/or from
a hwspinlock.

Though in datasheets this is called "DISP_MUTEX", the meaning is
is "Mute-X" (where "X" means "any hardware trigger signal") really
as this is what this piece of hardware does: muting or unmuting of
signals in each sub-IP of the display or other multimedia related
controllers.

Based on that, also clarify the description text, as to make sure
that the information is actually accurate.

While at it, also avoid forcing literal blocks in the description
as there is nothing in there needing that (no ascii graph or other
stuff that needs a literal block anyway), and add myself in the
list of maintainers.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/soc/mediatek/mediatek,mutex.yaml   | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
index 5267cfe92572..1ba086ad749d 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
@@ -4,18 +4,21 @@
 $id: http://devicetree.org/schemas/soc/mediatek/mediatek,mutex.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek mutex
+title: MediaTek Mute-X
 
 maintainers:
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
   - Chun-Kuang Hu <chunkuang.hu@kernel.org>
   - Philipp Zabel <p.zabel@pengutronix.de>
 
-description: |
-  Mediatek mutex, namely MUTEX, is used to send the triggers signals called
-  Start Of Frame (SOF) / End Of Frame (EOF) to each sub-modules on the display
-  data path or MDP data path.
-  In some SoC, such as mt2701, MUTEX could be a hardware mutex which protects
-  the shadow register.
+description:
+  MediaTek Mute-X, namely MUTEX, is used to "mute" or "unmute" trigger signals
+  like Start Of Frame (SOF), End Of Frame (EOF), Tearing Effect (TE / VSYNC)
+  and others to each hardware sub-modules in the Display Controller IP or in
+  the Media Data Path (MDP) IP.
+  In some SoCs like MT2701, this hardware module may feature functionality
+  to, for example, protect shadow registers by blocking auto write triggers
+  upon operation (usually frame push) completion.
   MUTEX device node must be siblings to the central MMSYS_CONFIG node.
   For a description of the MMSYS_CONFIG binding, see
   Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
-- 
2.54.0


