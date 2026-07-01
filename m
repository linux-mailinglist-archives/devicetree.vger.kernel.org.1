Return-Path: <devicetree+bounces-318528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E55OH0cKRWqP5goAu9opvQ
	(envelope-from <devicetree+bounces-318528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:38:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9BF6ED6F0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:38:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Pqz3I5hF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318528-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318528-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC737307E327
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C754E3771;
	Wed,  1 Jul 2026 12:22:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF54DD6E0;
	Wed,  1 Jul 2026 12:21:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908520; cv=none; b=YMs85hroe3IsKA0s2N4Vg6EKkszGdk4OiCIfgtm7P/EfMAyIDErDrTRtyk/zGTiRdOntW6KnVD2rtqSj5jP9gO/kNJztND12oVK9OEEpDAsWzByt5+em+QJ4sIbWKfj199Io4jTxjtjzOH1alXz6vKbuvFxxiHYjIYAG/GMbaDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908520; c=relaxed/simple;
	bh=uu8wJ1s5TWs2lno7lmR5awOKX1/OE5RoeHGMPhn0IuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c4mKOMq0kjHijcP84PIrONFR3UBmyOKr7v+z4LFpfJcOnwtOH9S9tp9F3SsR7VM5mp9HT7ApOLWDMMzLrW4743m55Wpy6iDVLSLvtrdg6a9wF21oMwrN4bGzE8q9H6z8fcs6/88d/LM7GFfVG3HiRzHOo5BB6vqNs922AMgFxX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Pqz3I5hF; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908517;
	bh=uu8wJ1s5TWs2lno7lmR5awOKX1/OE5RoeHGMPhn0IuQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pqz3I5hFJsi0cdI86xdAiBVhN0NtAe+ilBgw6glokfvpo8r7iwqBuW3vR8fX1OWpL
	 nKgo6k8GfGHLODhfYp52nwQS8edL5pslfMJI1Zj0ec+n5BnAKiK8Lb9A4beidPz92u
	 lUIE/Zwk8HIBwHVNBT1yRp1CO9Ts1qJzHbfUadwEsXxaCZwaN8dsadgHLpcZ96BeG2
	 YDDtTiW0oK9W60Oho25EYrWSz0fvYPgiSGKM7uKiLhn8H9Hye8NA/qos859qJy00ii
	 y1/lUimaZOiRcoybVfAtnR5izy8ISH+ItGXISVbcfyklQUZT0S5SeyvaAsdBLIFHco
	 OZuR6w99I0CNg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 21C8717E0F44;
	Wed,  1 Jul 2026 14:21:57 +0200 (CEST)
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
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 42/42] drm/mediatek: mtk_drm_drv: Fail init only if all paths are invalid
Date: Wed,  1 Jul 2026 14:20:57 +0200
Message-ID: <20260701122057.19648-43-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B9BF6ED6F0

Up until now, if not all display controller paths were valid, the
driver would fail probing and refuse to bind components: while
that was a good idea before, now that mediatek-drm gained much
more flexibility, it is finally possible to gracefully handle
this situation and register only the valid paths while leaving
the invalid ones unregistered, without any crash.

Count how many output paths are found, and then count how many
have failed probing: if there is at least one valid path, avoid
erroring out, so that at least some outputs will just work.

Of course, any path failing is not a clean situation and must be
resolved: in this case, function mtk_crtc_create() still prints
error messages so, even though some output works, that will not
go unnoticed, as a quick check in kmsg will show the errors that
made a certain path not to register.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index f5c9fe1588d0..65a891815408 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -379,6 +379,8 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	struct mtk_drm_private *priv_n;
 	struct device *dma_dev = NULL;
 	struct drm_crtc *crtc;
+	int num_failed = 0;
+	int num_paths = 0;
 	int ret, i, j;
 
 	if (drm_firmware_drivers_only())
@@ -445,15 +447,29 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 			if (!priv_n->data->output_paths[i].len)
 				continue;
 
+			num_paths++;
+
+			dev_vdbg(drm->dev,
+				 "[CTRL%d-CRTC%d] Path Len:%d, Controller Order:%u\n",
+				 j, i, priv_n->data->output_paths[i].len,
+				 priv_n->data->output_paths[i].order);
+
 			ret = mtk_crtc_create(drm, i, j,
 					      priv_n->data->conn_routes,
 					      priv_n->data->num_conn_routes);
+			if (ret == 0)
+				break;
 
-			if (ret)
-				goto err_component_unbind;
+			num_failed++;
 		}
 	}
 
+	if (num_failed == num_paths) {
+		dev_err(drm->dev, "No valid Display Controller path! Going out.\n");
+		ret = -ENODEV;
+		goto err_component_unbind;
+	}
+
 	/* IGT will check if the cursor size is configured */
 	drm->mode_config.cursor_width = 512;
 	drm->mode_config.cursor_height = 512;
-- 
2.54.0


