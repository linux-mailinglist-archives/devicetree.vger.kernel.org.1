Return-Path: <devicetree+bounces-138105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3DA0BAD4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E50BC7A5007
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E35A23D3E4;
	Mon, 13 Jan 2025 14:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NMyL1ZQX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE7F28EC64;
	Mon, 13 Jan 2025 14:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780011; cv=none; b=rXHXr0XLkjPXwMCrqu3c92n4WQP1Di9oet+mg2NjMxMpKARLIrjr3mKajsl6AMypGmO84k0XnU7a6Q9/zS+kE+vfPj4G6DZ46obpkaWx/ZnuvnurqzfbpdpN5kGcRjDgHzAEgAZyXYUkTzzk7xZ/CLalovG9pIkTO8W12ZIylF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780011; c=relaxed/simple;
	bh=47AStvkbj+NCmZLLkXJURGi/6ahp/SyXHJbrlK4nG/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B4Qko4Dx//fbe5pSAQcGfk/V9ZlO4xTAtc/YmwnTJoL3nUpodEhAheaLeGFQDykRjadeThwKpAp6OfTkHaXQROreDLAqfoPW2UaA4intpN0Hx2faon9AjBqh5PJeeqSbtHfCUjMRfa8pWSGNTBQJ4kq3w0OooljdnLHyqh8iHhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NMyL1ZQX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736780007;
	bh=47AStvkbj+NCmZLLkXJURGi/6ahp/SyXHJbrlK4nG/0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NMyL1ZQXcausTvnCxXGdKNrSE8r4ftoPsbpOrdbzJaqD475s5YQ2shv2A8vI4lhXQ
	 tflEo0krzrahtybNUFnmhANynWkWn76Fbkp6raB/PaRIDvRfSTdy2k3QhaeHj71enb
	 rW9StqoiUC0ZzfZR+hrbG+ogWBPU0FQ/kCt2T47URz/O/mUwnQgCZkD+B8LPPkWV8Y
	 Lb2g/lo5B4ZPTq0wOcWZ2c7GB+kuXHMPoDrSTWmt+bwtKcvT2xeVqpf7SUUif/gWNt
	 iX9YeAFLvHKUQG1YfR/UvhjBlFDkmzju56HKa24VskcRc8shF2VQJap1f3PADwCFIM
	 U42oNL/YnxCzw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8030917E0FAA;
	Mon, 13 Jan 2025 15:53:26 +0100 (CET)
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
Subject: [PATCH v5 34/34] drm/mediatek: mtk_hdmi_v2: Add debugfs ops and implement ABIST
Date: Mon, 13 Jan 2025 15:52:32 +0100
Message-ID: <20250113145232.227674-35-angelogioacchino.delregno@collabora.com>
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

Implement the Automated Built-In Self-Test ABIST functionality
provided by the HDMIv2 IP and expose it through the "hdmi_abist"
debugfs file.

Write "1" to this file to activate ABIST, or "0" to deactivate.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c | 123 +++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
index 5145698158f6..91729ec28b17 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
@@ -1170,6 +1170,128 @@ static int mtk_hdmi_v2_hdmi_write_infoframe(struct drm_bridge *bridge,
 	return 0;
 }
 
+static int mtk_hdmi_v2_set_abist(struct mtk_hdmi *hdmi, bool enable)
+{
+	struct drm_display_mode *mode = &hdmi->mode;
+	int abist_format = -EINVAL;
+	bool interlaced;
+
+	if (!enable) {
+		regmap_clear_bits(hdmi->regs, TOP_CFG00, HDMI_ABIST_ENABLE);
+		return 0;
+	}
+
+	if (!mode->hdisplay || !mode->vdisplay)
+		return -EINVAL;
+
+	interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
+
+	switch (mode->hdisplay) {
+	case 720:
+		if (mode->vdisplay == 480)
+			abist_format = 2;
+		else if (mode->vdisplay == 576)
+			abist_format = 11;
+		break;
+	case 1280:
+		if (mode->vdisplay == 720)
+			abist_format = 3;
+		break;
+	case 1440:
+		if (mode->vdisplay == 480)
+			abist_format = interlaced ? 5 : 9;
+		else if (mode->vdisplay == 576)
+			abist_format = interlaced ? 14 : 18;
+		break;
+	case 1920:
+		if (mode->vdisplay == 1080)
+			abist_format = interlaced ? 4 : 10;
+		break;
+	case 3840:
+		if (mode->vdisplay == 2160)
+			abist_format = 25;
+		break;
+	case 4096:
+		if (mode->vdisplay == 2160)
+			abist_format = 26;
+		break;
+	default:
+		break;
+	}
+	if (!abist_format)
+		return -EINVAL;
+
+	regmap_update_bits(hdmi->regs, TOP_CFG00, HDMI_ABIST_VIDEO_FORMAT,
+			   FIELD_PREP(HDMI_ABIST_VIDEO_FORMAT, abist_format));
+	regmap_set_bits(hdmi->regs, TOP_CFG00, HDMI_ABIST_ENABLE);
+	return 0;
+}
+
+static int mtk_hdmi_v2_debug_abist_show(struct seq_file *m, void *arg)
+{
+	struct mtk_hdmi *hdmi = m->private;
+	bool en;
+	u32 val;
+	int ret;
+
+	if (!hdmi)
+		return -EINVAL;
+
+	ret = regmap_read(hdmi->regs, TOP_CFG00, &val);
+	if (ret)
+		return ret;
+
+	en = FIELD_GET(HDMI_ABIST_ENABLE, val);
+
+	seq_printf(m, "HDMI Automated Built-In Self Test: %s\n",
+		   en ? "Enabled" : "Disabled");
+
+	return 0;
+}
+
+static ssize_t mtk_hdmi_v2_debug_abist_write(struct file *file,
+					     const char __user *ubuf,
+					     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	int ret;
+	u32 en;
+
+	if (!m || !m->private || *offp)
+		return -EINVAL;
+
+	ret = kstrtouint_from_user(ubuf, len, 0, &en);
+	if (ret)
+		return ret;
+
+	if (en < 0 || en > 1)
+		return -EINVAL;
+
+	mtk_hdmi_v2_set_abist((struct mtk_hdmi *)m->private, en);
+	return len;
+}
+
+static int mtk_hdmi_v2_debug_abist_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtk_hdmi_v2_debug_abist_show, inode->i_private);
+}
+
+static const struct file_operations mtk_hdmi_debug_abist_fops = {
+	.owner = THIS_MODULE,
+	.open = mtk_hdmi_v2_debug_abist_open,
+	.read = seq_read,
+	.write = mtk_hdmi_v2_debug_abist_write,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+
+static void mtk_hdmi_v2_debugfs_init(struct drm_bridge *bridge, struct dentry *root)
+{
+	struct mtk_hdmi *dpi = hdmi_ctx_from_bridge(bridge);
+
+	debugfs_create_file("hdmi_abist", 0640, root, dpi, &mtk_hdmi_debug_abist_fops);
+}
+
 static const struct drm_bridge_funcs mtk_v2_hdmi_bridge_funcs = {
 	.attach = mtk_hdmi_v2_bridge_attach,
 	.detach = mtk_hdmi_v2_bridge_detach,
@@ -1189,6 +1311,7 @@ static const struct drm_bridge_funcs mtk_v2_hdmi_bridge_funcs = {
 	.hdmi_tmds_char_rate_valid = mtk_hdmi_v2_hdmi_tmds_char_rate_valid,
 	.hdmi_clear_infoframe = mtk_hdmi_v2_hdmi_clear_infoframe,
 	.hdmi_write_infoframe = mtk_hdmi_v2_hdmi_write_infoframe,
+	.debugfs_init = mtk_hdmi_v2_debugfs_init,
 };
 
 /*
-- 
2.47.0


