Return-Path: <devicetree+bounces-145175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A47DCA30A1A
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:34:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE17F188445F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 11:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738B51FC115;
	Tue, 11 Feb 2025 11:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fXFP52s/"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D711F91F4;
	Tue, 11 Feb 2025 11:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739273667; cv=none; b=snRH1I/AyMWn87HIvkKIGWjPwtC6N0BPlen4UIJ/Lb/56ZzleOcsQYddeTWqPKUpNEJiqkHl9CF9Ez2W8S9SFm40FKMslzTQq5Ax2u+WVO3JfOtqnHxrgU62yYAYyENQLe8HlOZtxnsKA87pZUfR8Oa+W4Rh+aNhASaPwOTo098=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739273667; c=relaxed/simple;
	bh=uaAALFJVjaAfoYWZ5VhGUqcok73clxTF6XnEep9JE7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sNgZDsK8keAiYXj38hZqQxET4sT3p46Ys9sxxJu4F0xXsPfniYQiMZTV69HrUDV1CY8XMVCvlrAqDaVyRBSPF2cU4UtufUlS/ZLge8Sddis7SACpOHMb8NAX4iVLZ0c4hwhVNaHPrHK52/muH8UgP6y9Pg6dSKBbaFOTvg4Q0L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fXFP52s/; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739273663;
	bh=uaAALFJVjaAfoYWZ5VhGUqcok73clxTF6XnEep9JE7A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fXFP52s/s8wPlmVJZMXHoirtDAKRC11rItTXbqga2kzCwKBpBeSCnFboxT80q98hb
	 wZuzWsEFA6uD/h3iZLt+IoGBZaQIov62v9AI/5ggjbxGmhdFW95IXyogNhkeR7Dls8
	 OGiyiRBuN3OKylG1F11S5ZgLr9P3bXCdPLdZMYP/siQSoDvkm8u8Jgr/Bp/WnXZheK
	 lE2ERN5r51S+ggZsVokwcbkLOJWBEq1EfojvRqpbUpK7nYSt2a8ox9fFD1C1KfGKZ+
	 Bx0bdvXo/iQYrxgspKuUtLrv0bbU/EM2feDz2b7/PDXp+9W4M5hs84FLUhTyE2YCiO
	 LfZXcdmpWEfMg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4754F17E1249;
	Tue, 11 Feb 2025 12:34:22 +0100 (CET)
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
Subject: [PATCH v6 02/42] drm/mediatek: mtk_dpi: Add support for Pattern Generator in debugfs
Date: Tue, 11 Feb 2025 12:33:29 +0100
Message-ID: <20250211113409.1517534-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250211113409.1517534-1-angelogioacchino.delregno@collabora.com>
References: <20250211113409.1517534-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This IP includes a Pattern Generator which is useful for debugging
and testing purposes: add the relevant register and bits to the
mtk_dpi_regs.h header, and implement support for it in mtk_dpi.

Adding this required to introduce a .debugfs_init() callback for
the DPI bridge, which creates a "dpi_test_pattern" file in the
directory of the appropriate connector.

The pattern generator can generate various internal patterns and
this submission includes support for:
 - 256 or 1024 shades of gray in a Vertical or Horizontal Pattern
 - Vertical Color Bars
 - Frame border
 - Dot Moire

This generator also supports filling the entire screen with one
custom color, but support for that is not included in this commit.

Enabling and disabling this generator can be done by sending a
string to the dpi_test_pattern debugfs file; the pattern is
expected to be formatted as follows:

         <enable (1) or disable (0)> <pattern number>

where the pattern number can be a number from 0 to 7, excluding 5.

Of course 5 is excluded because that activates custom color fill
which, again, is not supported in this commit.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c      | 108 ++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h |   4 +
 2 files changed, 112 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 1864eb02dbf5..fc937490feda 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -4,8 +4,10 @@
  * Author: Jie Qiu <jie.qiu@mediatek.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/debugfs.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/media-bus-format.h>
@@ -166,6 +168,18 @@ static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
 	writel(tmp, dpi->regs + offset);
 }
 
+static void mtk_dpi_test_pattern_en(struct mtk_dpi *dpi, u8 type, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = FIELD_PREP(DPI_PAT_SEL, type) | DPI_PAT_EN;
+	else
+		val = 0;
+
+	mtk_dpi_mask(dpi, DPI_PATTERN0, val, DPI_PAT_SEL | DPI_PAT_EN);
+}
+
 static void mtk_dpi_sw_reset(struct mtk_dpi *dpi, bool reset)
 {
 	mtk_dpi_mask(dpi, DPI_RET, reset ? RST : 0, RST);
@@ -767,6 +781,99 @@ mtk_dpi_bridge_mode_valid(struct drm_bridge *bridge,
 	return MODE_OK;
 }
 
+static int mtk_dpi_debug_tp_show(struct seq_file *m, void *arg)
+{
+	struct mtk_dpi *dpi = m->private;
+	bool en;
+	u32 val;
+
+	if (!dpi)
+		return -EINVAL;
+
+	val = readl(dpi->regs + DPI_PATTERN0);
+	en = val & DPI_PAT_EN;
+	val = FIELD_GET(DPI_PAT_SEL, val);
+
+	seq_printf(m, "DPI Test Pattern: %s\n", en ? "Enabled" : "Disabled");
+
+	if (en) {
+		seq_printf(m, "Internal pattern %d: ", val);
+		switch (val) {
+		case 0:
+			seq_puts(m, "256 Vertical Gray\n");
+			break;
+		case 1:
+			seq_puts(m, "1024 Vertical Gray\n");
+			break;
+		case 2:
+			seq_puts(m, "256 Horizontal Gray\n");
+			break;
+		case 3:
+			seq_puts(m, "1024 Horizontal Gray\n");
+			break;
+		case 4:
+			seq_puts(m, "Vertical Color bars\n");
+			break;
+		case 6:
+			seq_puts(m, "Frame border\n");
+			break;
+		case 7:
+			seq_puts(m, "Dot moire\n");
+			break;
+		default:
+			seq_puts(m, "Invalid selection\n");
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static ssize_t mtk_dpi_debug_tp_write(struct file *file, const char __user *ubuf,
+				      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	u32 en, type;
+	char buf[6];
+
+	if (!m || !m->private || *offp || len > sizeof(buf) - 1)
+		return -EINVAL;
+
+	memset(buf, 0, sizeof(buf));
+	if (copy_from_user(buf, ubuf, len))
+		return -EFAULT;
+
+	if (sscanf(buf, "%u %u", &en, &type) != 2)
+		return -EINVAL;
+
+	if (en < 0 || en > 1 || type < 0 || type > 7)
+		return -EINVAL;
+
+	mtk_dpi_test_pattern_en((struct mtk_dpi *)m->private, type, en);
+	return len;
+}
+
+static int mtk_dpi_debug_tp_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtk_dpi_debug_tp_show, inode->i_private);
+}
+
+static const struct file_operations mtk_dpi_debug_tp_fops = {
+	.owner = THIS_MODULE,
+	.open = mtk_dpi_debug_tp_open,
+	.read = seq_read,
+	.write = mtk_dpi_debug_tp_write,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+
+static void mtk_dpi_debugfs_init(struct drm_bridge *bridge, struct dentry *root)
+{
+	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
+
+	debugfs_create_file("dpi_test_pattern", 0640, root, dpi, &mtk_dpi_debug_tp_fops);
+}
+
 static const struct drm_bridge_funcs mtk_dpi_bridge_funcs = {
 	.attach = mtk_dpi_bridge_attach,
 	.mode_set = mtk_dpi_bridge_mode_set,
@@ -779,6 +886,7 @@ static const struct drm_bridge_funcs mtk_dpi_bridge_funcs = {
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,
+	.debugfs_init = mtk_dpi_debugfs_init,
 };
 
 void mtk_dpi_start(struct device *dev)
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
index 62bd4931b344..a0b1d18bbbf7 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
+++ b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
@@ -235,4 +235,8 @@
 #define MATRIX_SEL_RGB_TO_JPEG		0
 #define MATRIX_SEL_RGB_TO_BT601		2
 
+#define DPI_PATTERN0		0xf00
+#define DPI_PAT_EN			BIT(0)
+#define DPI_PAT_SEL			GENMASK(6, 4)
+
 #endif /* __MTK_DPI_REGS_H */
-- 
2.48.1


