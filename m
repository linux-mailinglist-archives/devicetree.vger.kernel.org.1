Return-Path: <devicetree+bounces-19896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F197FD2A8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 10:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E4061F20FD4
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 09:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000F614F67;
	Wed, 29 Nov 2023 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="kqEUaTB4"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177462110;
	Wed, 29 Nov 2023 01:29:14 -0800 (PST)
Received: from pyrite.hamster-moth.ts.net (h175-177-049-135.catv02.itscom.jp [175.177.49.135])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 89D2D842;
	Wed, 29 Nov 2023 10:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701250117;
	bh=2byPOubDIhuNNLMn/IhMnG0vKdNyuZsY+M5nTPI/v3E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kqEUaTB4PhJA98qF2nnuYwAwV7X4fGiu448o5mTBUtNHIV9fDCnKCbpNRLIkoKeXH
	 ElXsBnCkFvngzFliFIHFAlRyX5P+Z4uViJ9CGaGLGWVcLw1k2L9K/SnVqRvO4+wyVN
	 O9vPyXLAtw+vEL82mc7SCeY/IYD+Ntw7nG//yON8=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 10/11] media: rkisp1: Add YC swap capability
Date: Wed, 29 Nov 2023 18:27:58 +0900
Message-Id: <20231129092759.242641-11-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129092759.242641-1-paul.elder@ideasonboard.com>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ISP version in the i.MX8MP has an MI_OUTPUT_ALIGN_FORMAT register
that the rk3399 does not have. This register allows swapping bytes,
which can be used to implement UYVY from YUYV.

Add a feature flag to signify the presence of this feature, and add it
to the i.MX8MP match data. Also add it as a flag to the format info in
the list of supported formats by the capture v4l2 devices, and update
enum_fmt and s_fmt to take it into account.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 26 ++++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  3 ++-
 3 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c307e07d897a..a352893308b6 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -47,13 +47,15 @@ enum rkisp1_plane {
  * @fourcc: pixel format
  * @fmt_type: helper filed for pixel format
  * @uv_swap: if cb cr swapped, for yuv
+ * @yc_swap: if y and cb/cr swapped, for yuv
  * @write_format: defines how YCbCr self picture data is written to memory
  * @output_format: defines sp output format
  * @mbus: the mbus code on the src resizer pad that matches the pixel format
  */
 struct rkisp1_capture_fmt_cfg {
 	u32 fourcc;
-	u8 uv_swap;
+	u32 uv_swap : 1;
+	u32 yc_swap : 1;
 	u32 write_format;
 	u32 output_format;
 	u32 mbus;
@@ -1159,10 +1161,14 @@ rkisp1_fill_pixfmt(const struct rkisp1_capture *cap,
 static const struct rkisp1_capture_fmt_cfg *
 rkisp1_find_fmt_cfg(const struct rkisp1_capture *cap, const u32 pixelfmt)
 {
+	bool yc_swap_support = rkisp1_has_feature(cap->rkisp1, MI_OUTPUT_ALIGN);
 	unsigned int i;
 
 	for (i = 0; i < cap->config->fmt_size; i++) {
-		if (cap->config->fmts[i].fourcc == pixelfmt)
+		const struct rkisp1_capture_fmt_cfg *fmt = &cap->config->fmts[i];
+
+		if (fmt->fourcc == pixelfmt &&
+		    (!fmt->yc_swap || yc_swap_support))
 			return &cap->config->fmts[i];
 	}
 	return NULL;
@@ -1231,23 +1237,29 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
 {
 	struct rkisp1_capture *cap = video_drvdata(file);
 	const struct rkisp1_capture_fmt_cfg *fmt = NULL;
+	bool yc_swap_support = rkisp1_has_feature(cap->rkisp1, MI_OUTPUT_ALIGN);
 	unsigned int i, n = 0;
 
-	if (!f->mbus_code) {
-		if (f->index >= cap->config->fmt_size)
-			return -EINVAL;
+	if (f->index >= cap->config->fmt_size)
+		return -EINVAL;
 
+	if (!f->mbus_code && yc_swap_support) {
 		fmt = &cap->config->fmts[f->index];
 		f->pixelformat = fmt->fourcc;
 		return 0;
 	}
 
 	for (i = 0; i < cap->config->fmt_size; i++) {
-		if (cap->config->fmts[i].mbus != f->mbus_code)
+		fmt = &cap->config->fmts[i];
+
+		if (f->mbus_code && fmt->mbus != f->mbus_code)
+			continue;
+
+		if (!yc_swap_support && fmt->yc_swap)
 			continue;
 
 		if (n++ == f->index) {
-			f->pixelformat = cap->config->fmts[i].fourcc;
+			f->pixelformat = fmt->fourcc;
 			return 0;
 		}
 	}
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 2c8fb28924e4..fca3d55c50ad 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -107,6 +107,7 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
  * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
  * @RKISP1_FEATURE_DMA_34BIT: The ISP uses 34-bit DMA addresses
+ * @RKISP1_FEATURE_MI_OUTPUT_ALIGN: The ISP has the MI_OUTPUT_ALIGN_FORMAT register
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -118,6 +119,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_SELF_PATH = BIT(2),
 	RKISP1_FEATURE_DUAL_CROP = BIT(3),
 	RKISP1_FEATURE_DMA_34BIT = BIT(4),
+	RKISP1_FEATURE_MI_OUTPUT_ALIGN = BIT(5),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 8d2e5fee753d..2b9886fd0800 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -519,7 +519,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = IMX8MP_V10,
 	.features = RKISP1_FEATURE_MAIN_STRIDE
-		  | RKISP1_FEATURE_DMA_34BIT,
+		  | RKISP1_FEATURE_DMA_34BIT
+		  | RKISP1_FEATURE_MI_OUTPUT_ALIGN,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
-- 
2.39.2


