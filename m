Return-Path: <devicetree+bounces-136588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C1A059EB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39BC07A0643
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:32:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C743B1FF60D;
	Wed,  8 Jan 2025 11:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Zo8EnbO/"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E800C1FF1C9;
	Wed,  8 Jan 2025 11:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335719; cv=none; b=PujJUCTvnwSmRJ4Nd1xUE4UpFBB+9Klp2SztEcPacPnomS9AZMuPLLfEaQgAAkI8/jyT/5qOi9FvNNFZDmHPQd77xemVFSlD+UVUZMEeaESSydIwWHBHQOLRtK2bJrJobbrt1a9HZTgkc2qQBWdMKGetVO72sPu8j/9ZH4pShk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335719; c=relaxed/simple;
	bh=pLhlG57+SQvd60y5MP0xy4zvXb7jdGKKoIMddsezeuY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O/m4bcxEjSLRz4IGWsU2lZZl52JjRORKIBOIxdDvhhKu99qzg3M+z6uFr1T7WuxzClQM8damyi9TIUHxXMUymG35vseP8wKVSTrUwT/Wi52S8GsQBvCyoy2nD2s+KTVHaxxXlvUAUY/UWupFoRRj9AhaIR6LfWKVTM14VzoNQqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Zo8EnbO/; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335716;
	bh=pLhlG57+SQvd60y5MP0xy4zvXb7jdGKKoIMddsezeuY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Zo8EnbO/sBbbspjWw+6ANGIUuaTMzUBYSakig5Wg8N1VIWV4j3lUl/j7x9gf8UHV7
	 yxshpX0Jxzvn2fZRarnMk2SN6jkIQE18mGjTxAEOXUh6sUC9+ZWwgV/9rnEHJBjzHu
	 eF2QTOxdcSxdoGQ/rEZXaTPger+8RfM1BelwyPItioxT6OL/Iae45zxnNIqyrr/kTZ
	 7p+W8ePYP+6vVsuSQqopPyZquOFS7RsGkXzZLlBVMnT1VG2K5yQGP3em6V7bHWUITR
	 1nP6AIrr+30jI9hXLIwT4dxx5SBe0TmVy6Yz8OEqU7TNFSAof9Eog9Iy3MaIwdlAHg
	 Y5/P/wZ42JXtA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3378417E156A;
	Wed,  8 Jan 2025 12:28:35 +0100 (CET)
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
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com,
	ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v4 25/34] drm/mediatek: mtk_hdmi: Remove ifdef for CONFIG_PM_SLEEP
Date: Wed,  8 Jan 2025 12:27:35 +0100
Message-ID: <20250108112744.64686-26-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the SIMPLE_DEV_PM_OPS macro and the pm pointer are anyway
defined when CONFIG_PM_SLEEP is not set, remove the ifdef for it
and indicate that the mtk_hdmi_{remove,suspend} functions may be
unused (as they are, in case PM support is not built-in).

While at it, to improve readability, also compress the
SIMPLE_DEV_PM_OPS declaration as it even fits in less
than 80 columns.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 772032b59ef0..6043739fcf3c 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1692,8 +1692,7 @@ static void mtk_hdmi_remove(struct platform_device *pdev)
 	mtk_hdmi_clk_disable_audio(hdmi);
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int mtk_hdmi_suspend(struct device *dev)
+static __maybe_unused int mtk_hdmi_suspend(struct device *dev)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
@@ -1702,7 +1701,7 @@ static int mtk_hdmi_suspend(struct device *dev)
 	return 0;
 }
 
-static int mtk_hdmi_resume(struct device *dev)
+static __maybe_unused int mtk_hdmi_resume(struct device *dev)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 	int ret = 0;
@@ -1715,9 +1714,8 @@ static int mtk_hdmi_resume(struct device *dev)
 
 	return 0;
 }
-#endif
-static SIMPLE_DEV_PM_OPS(mtk_hdmi_pm_ops,
-			 mtk_hdmi_suspend, mtk_hdmi_resume);
+
+static SIMPLE_DEV_PM_OPS(mtk_hdmi_pm_ops, mtk_hdmi_suspend, mtk_hdmi_resume);
 
 static const struct mtk_hdmi_conf mtk_hdmi_conf_mt2701 = {
 	.tz_disabled = true,
-- 
2.47.0


