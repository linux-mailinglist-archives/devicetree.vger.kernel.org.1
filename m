Return-Path: <devicetree+bounces-325520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hcl6MabhVGpygQAAu9opvQ
	(envelope-from <devicetree+bounces-325520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:01:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5974B33F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:01:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Y0AQVpnd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325520-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325520-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF73330174E2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88327410D38;
	Mon, 13 Jul 2026 13:01:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134EA41166B;
	Mon, 13 Jul 2026 13:01:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783947680; cv=none; b=EvIvNDAJGkAtS73o8J+kPybbPIKu2xaNb0q5A6zAWMGjS8HAmCPqw1ajDFUXwfcc0z/LmM+6NIfJaPwgK1ezfHKljwZiJcXAHDE1qsidd5hwRqCuFjm8ZXgw0gBiJLCQnKEmM6870FDCeAueP4IUPe1sLFbcm5OYTOPaVKbxhIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783947680; c=relaxed/simple;
	bh=gsYAIXlViwS5g5QjHJFm9cbpi53ezhz4q/D38V/P3nQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gy0UrZeHnR7Bj9uOCQgLn4bE1Go486vrUqV8IG2bjU71dztbesTw3Q3pL2SEcXx+JXaJd6Nf3TBGkJxqeNNo6wB29HwjSXi/zT2J/nxZOIMb9vXhd9JgIqCdcErtS/homM3q5UdMC30x8hn/V+UaXTXtvlKl4B3zhrBr+e1K+MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Y0AQVpnd; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783947675;
	bh=gsYAIXlViwS5g5QjHJFm9cbpi53ezhz4q/D38V/P3nQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y0AQVpndfm1kakjuywdqRbhF90ow7JoWZmjkl4aqpFUin5mURI0gwn9lDSMZ8TT9G
	 8a/OYH5uQGeR6KeI30A9PSuUffbCOUbjpUVfdawT+Y5QbfAT8GkJpiP/NXck79XJjS
	 sKXKaAlRoEkhRRJ6tSuoaNxUSHz9x3rLqXa009W/cw2KIJwar6cjqVTxy3n3msEahK
	 2WwwzcBA2NJCNsecWM67xHI2BUoHXMgsLT8rsP2b7w4oiquPSRwX1SkuolCjsB1C4D
	 pE5zV70K8Uy/E7Na4Fcg0d3sgRYzH4yDsymrtNCd1Gto3nE9xIPRi3rN/lIYf/kVdD
	 Ngz9bTkAgaVvw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ADD2817E0DE6;
	Mon, 13 Jul 2026 15:01:14 +0200 (CEST)
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
Subject: [PATCH v3 04/10] drm/mediatek: mtk_dsi: Enable interrupt at component bind time
Date: Mon, 13 Jul 2026 15:00:57 +0200
Message-ID: <20260713130103.34654-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260713130103.34654-1-angelogioacchino.delregno@collabora.com>
References: <20260713130103.34654-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325520-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jitao.shi@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RSPAMD_EMAILBL_FAIL(0.00)[angelogioacchino.delregno@collabora.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AED5974B33F

Having the DSI interrupt enabled before actually binding the DSI
component to the display controller driver is both useless and
dangerous: the main purpose of this interrupt is to signal CMD
done, LP RX data ready, or VideoMode done, or to reset the HW
engine if this doesn't come.

Should this interrupt come too late (during probe), the HW will
be reset only at the next occurrence of a timeout, which slows
down boot and may render artifacts to the DSI display.

Moreover, clearing the DSI interrupt while the display controller
is not ready yet, may result in an interrupt storm.

In order to prevent this from happening, request the interrupt
with IRQF_NO_AUTOEN, and enable it only when binding DSI to its
display controller component master.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4d9c38908da5..28e432d21f98 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -225,6 +225,7 @@ struct mtk_dsi {
 	int refcount;
 	bool enabled;
 	bool lanes_ready;
+	int irq;
 	u32 irq_data;
 	wait_queue_head_t irq_wait_queue;
 	const struct mtk_dsi_driver_data *driver_data;
@@ -1088,7 +1089,13 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	return device_reset_optional(dev);
+	ret = device_reset_optional(dev);
+	if (ret)
+		return ret;
+
+	enable_irq(dsi->irq);
+
+	return 0;
 }
 
 static void mtk_dsi_unbind(struct device *dev, struct device *master,
@@ -1096,6 +1103,8 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 {
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
+	disable_irq(dsi->irq);
+
 	drm_encoder_cleanup(&dsi->encoder);
 }
 
@@ -1328,7 +1337,6 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 {
 	struct mtk_dsi *dsi;
 	struct device *dev = &pdev->dev;
-	int irq_num;
 	int ret;
 
 	dsi = devm_drm_bridge_alloc(dev, struct mtk_dsi, bridge,
@@ -1361,9 +1369,9 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	if (IS_ERR(dsi->phy))
 		return dev_err_probe(dev, PTR_ERR(dsi->phy), "Failed to get MIPI-DPHY\n");
 
-	irq_num = platform_get_irq(pdev, 0);
-	if (irq_num < 0)
-		return irq_num;
+	dsi->irq = platform_get_irq(pdev, 0);
+	if (dsi->irq < 0)
+		return dsi->irq;
 
 	dsi->host.ops = &mtk_dsi_ops;
 	dsi->host.dev = dev;
@@ -1372,17 +1380,15 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dsi);
 
+	ret = devm_request_irq(&pdev->dev, dsi->irq, mtk_dsi_irq,
+			       IRQF_NO_AUTOEN, dev_name(&pdev->dev), dsi);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "Failed to request DSI irq\n");
+
 	ret = mipi_dsi_host_register(&dsi->host);
 	if (ret < 0)
 		return dev_err_probe(dev, ret, "Failed to register DSI host\n");
 
-	ret = devm_request_irq(&pdev->dev, irq_num, mtk_dsi_irq,
-			       IRQF_TRIGGER_NONE, dev_name(&pdev->dev), dsi);
-	if (ret) {
-		mipi_dsi_host_unregister(&dsi->host);
-		return dev_err_probe(&pdev->dev, ret, "Failed to request DSI irq\n");
-	}
-
 	dsi->bridge.of_node = dev->of_node;
 	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;
 
-- 
2.54.0


