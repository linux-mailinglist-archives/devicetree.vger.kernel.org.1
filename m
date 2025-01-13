Return-Path: <devicetree+bounces-138093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 009AAA0BAB9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A33B3A533F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA2A284A4F;
	Mon, 13 Jan 2025 14:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hUoWY6xF"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1ADC2500C8;
	Mon, 13 Jan 2025 14:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779993; cv=none; b=sDUdixG04GvqopZNElA2dliEfGuFUW47zN8PQyugLxZNQcRsE/xy9QMvwQ61IfZiQjZfnw6PTFLYxgVj72JfFKayMpU8FudytdDek1lZsMVamCZoqQb0D9LQ+N2gdRlcyH04Jr4aucpqXEwhioNncdCNJHjX8oBzbgV+hcCw3tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779993; c=relaxed/simple;
	bh=0b9UD6MIOfaTN5x+7wVvBaoOpiYsakLZbMulQFD4nbA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tEnPPRuhJQDswezY5+AHiKDqIhEHuXQ2HMftQkDdLNdB93FSMyx9lGjxXPCOZ82E4hxaNYyxbw7HJt3Ks8vyWDupDAscwWWkxzjb0ktKrFIWV/SBJwv3dqUjDKZiPPl5iWn6l+O4a9wLdCn+TuZ348w1e2+w7aeJ8ced1JN+/lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hUoWY6xF; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736779990;
	bh=0b9UD6MIOfaTN5x+7wVvBaoOpiYsakLZbMulQFD4nbA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hUoWY6xFp5AqUnBhkX0P7O1VeTxUus8daE3Qzqh3nPS1cg9XkhuVIvD0kx30xfhK2
	 sfJbJK0SM/65Zy2TW/0RmvWB4Zrd1A5aUWQrjt7JqASfedTn6C6Jms2a56Ajr81IYe
	 0POyIIfdNhvce1QDgDaBIeyLOimJ0ppePgN6Bn50XoB3SE49RfiJ0GkA2hPQhGSpQP
	 QHWKwBmu2AV7lSIpAg7OZaTYQB8bdvpt5tAG/8s8/HOFRCGJ5BILMo+rYLufyjz7Tp
	 wAqCkQV7xlz/8XB5GRa5UA5VopWJM+dbX72HsFgYCYjCY6jsMR7ykNHrZ3nJYalHH9
	 qJSj+SYrpsUow==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CD2D217E0FBB;
	Mon, 13 Jan 2025 15:53:08 +0100 (CET)
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
Subject: [PATCH v5 22/34] drm/mediatek: mtk_hdmi: Remove unused members of struct mtk_hdmi
Date: Mon, 13 Jan 2025 15:52:20 +0100
Message-ID: <20250113145232.227674-23-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The hdmi_colorspace csp member of struct mtk_hdmi is initialized
once but then it's never used at all.
Remove said member and the only assignment to it as a cleanup.

Also remove the ibias, ibias_up, min_clock, max_clock, min_hdisplay
and max_vdisplay members, as those were really completely unused.

This commit brings no functional changes.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index eb285ec394a3..e2393f7558f9 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -162,16 +162,9 @@ struct mtk_hdmi {
 	struct clk *clk[MTK_HDMI_CLK_COUNT];
 	struct drm_display_mode mode;
 	bool dvi_mode;
-	u32 min_clock;
-	u32 max_clock;
-	u32 max_hdisplay;
-	u32 max_vdisplay;
-	u32 ibias;
-	u32 ibias_up;
 	struct regmap *sys_regmap;
 	unsigned int sys_offset;
 	struct regmap *regs;
-	enum hdmi_colorspace csp;
 	struct platform_device *audio_pdev;
 	struct hdmi_audio_param aud_param;
 	bool audio_enable;
@@ -1036,7 +1029,6 @@ static int mtk_hdmi_output_init(struct mtk_hdmi *hdmi)
 {
 	struct hdmi_audio_param *aud_param = &hdmi->aud_param;
 
-	hdmi->csp = HDMI_COLORSPACE_RGB;
 	aud_param->aud_codec = HDMI_AUDIO_CODING_TYPE_PCM;
 	aud_param->aud_sample_size = HDMI_AUDIO_SAMPLE_SIZE_16;
 	aud_param->aud_input_type = HDMI_AUD_INPUT_I2S;
-- 
2.47.0


