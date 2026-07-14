Return-Path: <devicetree+bounces-326136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UbSAJoYhVmqozgAAu9opvQ
	(envelope-from <devicetree+bounces-326136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:46:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B37540F0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:46:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=mgwGgJXC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326136-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326136-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2360D3024758
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7716F38F92F;
	Tue, 14 Jul 2026 11:44:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60D53914E2;
	Tue, 14 Jul 2026 11:44:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029491; cv=none; b=Xg6vbpV8XWSqIgTojz9cjkWcKubhYko2RJbOkbXLkuYfA1JLZJmaw96GLD+hBmVohquAcy2e+sKCj1KvMKOSFP3w4JpNTwv130KnHo8gPtG8hEFZeC3+tJ9yJ4U48+8Xm6BJmmjPkEC+EkRKuH1cnBIRt7vEJKSWaSPrZUh+F64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029491; c=relaxed/simple;
	bh=a3Zk9VtwjzQZ0fQ39QCCtxiwLry/La2QPCCPr/aNPEs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a9K/q4Ak7zwsQ/siWEpIyylc9vrKamPKZ/2RG0XnXf5jK7So04ALfiH61o9eTwT2Oik/e3SKGeWIC167h7+Fx/6iBnukxEcguQ7XQSzIIdGC7lwyXmMPpj1Oa5XiRAtux3XRNKz2hp4kmErZ71Iqz8C1sOmOUg6HETZ12wLmBr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=mgwGgJXC; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784029479;
	bh=a3Zk9VtwjzQZ0fQ39QCCtxiwLry/La2QPCCPr/aNPEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mgwGgJXCRzEOdwC7wAnqJJ7sLRdNLOHiObE/1iZpQOdcG6n4pJfi6iEKexkOQjxq+
	 i8e8psG6eMH5lVecw5Nr8KhpUq+f2zjRf1A+3Wm1JJ5BHocNWmkmf60VpO22yjdQRX
	 I6lNxyVTEpEPx1Lk27kOJaFJsRgDKF4DxaGY6LYzJR8BjBqc5UCajlkcTfaKRuPP8p
	 2GwzFEb26cMPTcQke3Gqlib1mMClMDhGlx19H3ygr+NHOlhnCn9ZDgdXMMqtKJwcIv
	 3+M64jqq7dw9yhabTlAb3/U5PfJftdueXyGJPePhQQW8U16GPB7Iis6Vu2D+cf8Bp6
	 NsTfA0h0uYY2Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 54F1317E010F;
	Tue, 14 Jul 2026 13:44:38 +0200 (CEST)
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
	kernel@collabora.com,
	CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v2 08/46] drm/mediatek: ddp_comp: Move internal component register in function
Date: Tue, 14 Jul 2026 13:43:36 +0200
Message-ID: <20260714114414.184512-9-angelogioacchino.delregno@collabora.com>
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
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326136-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:ck.hu@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,mediatek.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA2B37540F0

In preparation for adding an helper serving the purpose of finally
removing duplicated code to check for internal/simple components,
and for improving human readability in the up coming refactoring,
move the internal/simple component registration logic to its own
mtk_ddp_comp_init_internal_comp() function.

This brings no functional changes.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c | 55 +++++++++++++++----------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index d716fd9f8a70..2ba2123238b3 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -629,6 +629,38 @@ static void mtk_ddp_comp_clk_put(void *_clk)
 	clk_put(clk);
 }
 
+static int mtk_ddp_comp_init_internal_comp(struct device *dev, struct device *comp_dev)
+{
+	struct device_node *comp_node = comp_dev->of_node;
+	struct mtk_ddp_comp_dev *priv;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->regs = devm_of_iomap(dev, comp_node, 0, NULL);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
+
+	priv->clk = of_clk_get(comp_node, 0);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	ret = devm_add_action_or_reset(dev, mtk_ddp_comp_clk_put, priv->clk);
+	if (ret)
+		return ret;
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	ret = cmdq_dev_get_client_reg(comp_dev, &priv->cmdq_reg, 0);
+	if (ret)
+		dev_dbg(comp_dev, "get mediatek,gce-client-reg fail!\n");
+#endif
+	dev_set_drvdata(comp_dev, priv);
+
+	return 0;
+};
+
 int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 		      struct mtk_drm_comp_list *hlist,
 		      unsigned int comp_id)
@@ -636,7 +668,6 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	struct platform_device *comp_pdev;
 	struct mtk_ddp_comp *comp;
 	enum mtk_ddp_comp_type type;
-	struct mtk_ddp_comp_dev *priv;
 	int ret;
 
 	if (comp_id >= DDP_COMPONENT_DRM_ID_MAX)
@@ -686,29 +717,9 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	    type == MTK_DISP_DSI)
 		goto end;
 
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->regs = devm_of_iomap(dev, node, 0, NULL);
-	if (IS_ERR(priv->regs))
-		return PTR_ERR(priv->regs);
-
-	priv->clk = of_clk_get(node, 0);
-	if (IS_ERR(priv->clk))
-		return PTR_ERR(priv->clk);
-
-	ret = devm_add_action_or_reset(dev, mtk_ddp_comp_clk_put, priv->clk);
+	ret = mtk_ddp_comp_init_internal_comp(dev, comp->dev);
 	if (ret)
 		return ret;
-
-#if IS_REACHABLE(CONFIG_MTK_CMDQ)
-	ret = cmdq_dev_get_client_reg(comp->dev, &priv->cmdq_reg, 0);
-	if (ret)
-		dev_dbg(comp->dev, "get mediatek,gce-client-reg fail!\n");
-#endif
-
-	platform_set_drvdata(comp_pdev, priv);
 end:
 	hash_add(hlist->ddp_list, &comp->lnode, comp->id);
 
-- 
2.54.0


