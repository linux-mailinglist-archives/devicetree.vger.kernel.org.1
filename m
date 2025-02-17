Return-Path: <devicetree+bounces-147527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DF5A3887E
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C542F3A68B1
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 15:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30ECF22B8C7;
	Mon, 17 Feb 2025 15:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XoTY0z3E"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C0222B5B7;
	Mon, 17 Feb 2025 15:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739807405; cv=none; b=VNefNwof39v5bf8HsJgvNB0Cu4dBNi6lCkASNN1LAUBRNfmvQ9F466eUENtpD1f8dZQ82toX62NT+wD3+zp0q1IZgE6Zntpz4nOZkQQuweKtm2bTTEm0UeL9uOtuldSAyXen0BZ6BtmtdF3vfGFUujEgwE9gRJfDNArcY39hQJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739807405; c=relaxed/simple;
	bh=V+KHf5MkE3c1nGyrXyMmzx1q/Q9KjCQRqCjL2TEtDYs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Tb8TEC4aiUUARD+VBLN/ZwUXsnQOW6AyNhWAc8O2cyRdo6oDrvBXZXqMVUHEooyhlFdencR87bkv47F5m0TK6WNDiao9iUm6mouAe4Jf8WjHnWbgz8kI0zdECL7qoQbGmZMdAKrjXK8DKECT4m8SMagrTwwOS8knC22kiQlfAvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XoTY0z3E; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739807402;
	bh=V+KHf5MkE3c1nGyrXyMmzx1q/Q9KjCQRqCjL2TEtDYs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XoTY0z3ELbtEmkaWflNJlARsLok+xxQLESP5Tcd8JS99BiDAOLe/xmX6lPJwfHvBV
	 +Ekr5bAeoodyg9ek1AH32VNbOqACXE8KXDQGeDPbbWm2GsmjROXM4R62IponTDlwdp
	 s5scvGrtBVwr4EPLkd3kYWqxCV/TOWas1Y65ZWXJEbqkNjGe/wSqWiasbSde7GLIkm
	 Gy72aLQdjjXjFXFJwo1H9Z4YZaYAWnJW8H5pgMVN34KgIs8zBfdydLhtsTEHjwn5X+
	 0TqplQpBja5xkTdeu51zTi0LuGko5Sy0tBYjP58JBkJU7bfeaTYvBwmjIxoJE02F+C
	 ra2yARyUvDElA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A5BF417E155A;
	Mon, 17 Feb 2025 16:50:00 +0100 (CET)
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
Subject: [PATCH v7 30/43] drm/mediatek: mtk_hdmi: Remove ifdef for CONFIG_PM_SLEEP
Date: Mon, 17 Feb 2025 16:48:23 +0100
Message-ID: <20250217154836.108895-31-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
References: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
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

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index f539472307e2..bf8cf7fc8c07 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1694,8 +1694,7 @@ static void mtk_hdmi_remove(struct platform_device *pdev)
 	mtk_hdmi_clk_disable_audio(hdmi);
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int mtk_hdmi_suspend(struct device *dev)
+static __maybe_unused int mtk_hdmi_suspend(struct device *dev)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
@@ -1704,7 +1703,7 @@ static int mtk_hdmi_suspend(struct device *dev)
 	return 0;
 }
 
-static int mtk_hdmi_resume(struct device *dev)
+static __maybe_unused int mtk_hdmi_resume(struct device *dev)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 	int ret = 0;
@@ -1717,9 +1716,8 @@ static int mtk_hdmi_resume(struct device *dev)
 
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
2.48.1


