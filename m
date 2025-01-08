Return-Path: <devicetree+bounces-136590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCF1A059EF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9062A1604C9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D7A1FF7D4;
	Wed,  8 Jan 2025 11:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XFwWrzXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDE1FF7AC;
	Wed,  8 Jan 2025 11:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335722; cv=none; b=bJ+1t9wOWu1qPTqJ5E5OLXAvE8fS/s9SqaDecx5Apf1PPZsRQE/jL3tgpes+c6FbbFhF2D44OxBmMWNv+/9I3iqVj/9KPba4lmppZfX+jz/Ragdt+Dk8XP0pGRWx4DqNRD+lMb76KdRNdJ7QZdsuJFvij36PjHuLjL2OCeUUJ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335722; c=relaxed/simple;
	bh=pQJ7SDNXxvf59weU8A9yxhu9HG3aXISLPMjLleuFHR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HI3wHReQzbsT8SawMW+u3HNugnMH7ZTejAhvoUv9d0Sj9xyvF1ioQMB4Ezu5EwEIrqWQBAXlIOmUlR2Q++v+sOe9CQmyw5Ch/mUmzVr9jjIYVSwMbsBzGAHN25wVnKo8pqITwgpjzLNzd+L6te/feDbuYwTTcH8U8Zhk3UA4Nko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XFwWrzXZ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335719;
	bh=pQJ7SDNXxvf59weU8A9yxhu9HG3aXISLPMjLleuFHR8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XFwWrzXZNW16psV/U8eg02gvhhrvrdk8JVITghd0J20SQ2P+feP/Ed1yh2xJz0w13
	 v1Dtf92bT4l0IA9gmMclZD7vjHhESSBZnnFPduECy40de1jFzXevUQJYGSyLP5V1ym
	 NrjVCXV0XtA/rj/+WA2KMEF7zcDbYzuMC6WPCo8W7DnWTsUBaBmlbTccp/xnBSylI+
	 UTUzhG6W7Q6Ohko3fmfSuVqzmy8hoMjXBvhufy8fDMv5WsgEJ8qSJ8CV6Ttdji6CaA
	 lQl4ZBxOf9nhUBcrwb9QnoNu4vpEm/saMNywh1j0CewkEAaYJNTmgwn/hlPC4ZsOu0
	 bkc9+mwqUavjw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3F7DF17E1570;
	Wed,  8 Jan 2025 12:28:38 +0100 (CET)
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
Subject: [PATCH v4 27/34] drm/mediatek: mtk_hdmi: Cleanup function mtk_hdmi_resume()
Date: Wed,  8 Jan 2025 12:27:37 +0100
Message-ID: <20250108112744.64686-28-angelogioacchino.delregno@collabora.com>
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

Remove the error print in case of mtk_hdmi_clk_enable_audio()
failures: since the APIs will already print on their own, having
one in there is redundant.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 55b72ed271bf..a14b117286ad 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1703,15 +1703,8 @@ static __maybe_unused int mtk_hdmi_suspend(struct device *dev)
 static __maybe_unused int mtk_hdmi_resume(struct device *dev)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
-	int ret = 0;
 
-	ret = mtk_hdmi_clk_enable_audio(hdmi);
-	if (ret) {
-		dev_err(dev, "hdmi resume failed!\n");
-		return ret;
-	}
-
-	return 0;
+	return mtk_hdmi_clk_enable_audio(hdmi);
 }
 
 static SIMPLE_DEV_PM_OPS(mtk_hdmi_pm_ops, mtk_hdmi_suspend, mtk_hdmi_resume);
-- 
2.47.0


