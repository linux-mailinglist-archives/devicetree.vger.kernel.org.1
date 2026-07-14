Return-Path: <devicetree+bounces-326165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2P/fFiMlVmrjzwAAu9opvQ
	(envelope-from <devicetree+bounces-326165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:01:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E187B754345
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:01:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Ji+nNJTZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326165-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326165-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FECF302738B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5993CEB9D;
	Tue, 14 Jul 2026 11:45:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210803CCFB4;
	Tue, 14 Jul 2026 11:45:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029529; cv=none; b=udITrzCuNE7+E0exg4CLThXGD0jCm4xPbqYlAmqI7KQT+gzSH/c8WfqSJoDxKuOz1XD05aFnYBC5Qsg/xtd/FMELbCsrD5sXESsIuSNDa7qeyHs1or36v0JRydrHVttTT+3mOcyTdI4rbx7BkrKg6XL7cx/ROxkx/U1focFJbGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029529; c=relaxed/simple;
	bh=U8wbtuZ0GvoDAp1lslwGMJcS1iFdvCK1ZvJJYPJhSSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NeieRuPuh4K1Vu5YjOvunZM92TK3TM0gT52TqgP26rJjJiCDVexix27C/9jf3PW/f65SqG5cwFa75hharsWWQfJw/L9xmb1Tynq3NOC9HB75I/ZHh7G5fEBd7mrrMs2R2VaAYmsaqsOCrIslT+x7ZykTqp30e2RS8HdWh7NzddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Ji+nNJTZ; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784029525;
	bh=U8wbtuZ0GvoDAp1lslwGMJcS1iFdvCK1ZvJJYPJhSSQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ji+nNJTZWXvTWQSbmF2AkkMNLjNj4HlM0dqQhdeKNaTl0lpgyN0G1BkXgQk2bsDmH
	 Bl9N8uWO/ErEIaGuBWu6DZc5PxKczFNaRKywqywgUYyOnulAfWCcFvDLeNagBAlEup
	 WwR3dxqm2UXiOwvBCc4X/7w6r+KVd6x9XIfXTHMuB2nQN0z/IsUfp2h8E0VfJkAQyy
	 4F/nAqdk8roWDfXKyVml7MexM0d821S00smLpvKi1sdQM+TVpK84fL5ymYjfoZJwms
	 Y5XUmz6SKirNS1LUTMzuR68+LlUNsBBN4BWGRABlcux4p9Jc9DGOk6H3qPG3fNoggO
	 Cvlv+XndG0YMQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C931217E0B89;
	Tue, 14 Jul 2026 13:45:24 +0200 (CEST)
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
Subject: [PATCH v2 41/46] soc: mediatek: mtk-mmsys: Populate multimedia subsystem subdevices
Date: Tue, 14 Jul 2026 13:44:09 +0200
Message-ID: <20260714114414.184512-42-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
References: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326165-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.5.7.0.0.1.0.0.e.5.1.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E187B754345

The multimedia hardware subsystem contains all of the multimedia
related sub-devices, and that really is by hardware design, not
anything software related.

In order to allow specifying a correct description of the hardware
in devicetrees, add support for probing subdevices of multimedia
controllers, specified as subnodes.

Acked-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-mmsys.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index f501a29a7697..6c02b898741c 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
 #include <linux/soc/mediatek/mtk-mmsys.h>
@@ -489,6 +490,13 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 		return PTR_ERR(clks);
 	mmsys->clks_pdev = clks;
 
+	ret = devm_of_platform_populate(dev);
+	if (ret) {
+		dev_err(dev, "Failed to populate child devices: %d\n", ret);
+		platform_device_unregister(clks);
+		return ret;
+	}
+
 	if (mmsys->data->is_vppsys)
 		goto out_probe_done;
 
-- 
2.54.0


