Return-Path: <devicetree+bounces-7064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2251E7BEFF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:51:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D24E5281BC6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60BF565C;
	Tue, 10 Oct 2023 00:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="TZglu5jK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E51659
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:51:40 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8F0F1;
	Mon,  9 Oct 2023 17:51:38 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9BC66F02;
	Tue, 10 Oct 2023 02:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696899093;
	bh=tDl8dQbSLOdU2vIuvYIAxnS8VvsF93CmOO6YTQ/B+Dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TZglu5jKFXXyGhPtduqeBPjPLLbK0aaT1Y0KEEdOR2A5CtTBVMnwRcMd0EsdhcGSi
	 3FhL3w8P7mday7fuDxW3BNgx6o1JxSJpbbivdvtk3/pC4lOJOZoVO/5MjOsTJF0oqC
	 /YbjlloL8jH3tesqoZpuRIo8kwAlT+96Ou00hphA=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	"Paul J. Murphy" <paul.j.murphy@intel.com>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/5] media: i2c: imx335: Implement get selection API
Date: Tue, 10 Oct 2023 01:51:24 +0100
Message-Id: <20231010005126.3425444-4-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_OTHER_BAD_TLD,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Support reporting of the Sensor Native and Active pixel array areas
through the Selection API.

The implementation reports a single target crop only for the mode that
is presently exposed by the driver.

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---
 drivers/media/i2c/imx335.c | 44 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
index bf12b9b69fce..026777eb362e 100644
--- a/drivers/media/i2c/imx335.c
+++ b/drivers/media/i2c/imx335.c
@@ -55,6 +55,14 @@
 #define IMX335_REG_MIN		0x00
 #define IMX335_REG_MAX		0xfffff
 
+/* IMX335 native and active pixel array size. */
+#define IMX335_NATIVE_WIDTH		2616U
+#define IMX335_NATIVE_HEIGHT		1964U
+#define IMX335_PIXEL_ARRAY_LEFT		12U
+#define IMX335_PIXEL_ARRAY_TOP		12U
+#define IMX335_PIXEL_ARRAY_WIDTH	2592U
+#define IMX335_PIXEL_ARRAY_HEIGHT	1944U
+
 /**
  * struct imx335_reg - imx335 sensor register
  * @address: Register address
@@ -651,6 +659,41 @@ static int imx335_init_pad_cfg(struct v4l2_subdev *sd,
 	return imx335_set_pad_format(sd, sd_state, &fmt);
 }
 
+/**
+ * imx335_get_selection() - Selection API
+ * @sd: pointer to imx335 V4L2 sub-device structure
+ * @sd_state: V4L2 sub-device configuration
+ * @sel: V4L2 selection info
+ *
+ * Return: 0 if successful, error code otherwise.
+ */
+static int imx335_get_selection(struct v4l2_subdev *sd,
+				struct v4l2_subdev_state *sd_state,
+				struct v4l2_subdev_selection *sel)
+{
+	switch (sel->target) {
+	case V4L2_SEL_TGT_NATIVE_SIZE:
+		sel->r.top = 0;
+		sel->r.left = 0;
+		sel->r.width = IMX335_NATIVE_WIDTH;
+		sel->r.height = IMX335_NATIVE_HEIGHT;
+
+		return 0;
+
+	case V4L2_SEL_TGT_CROP:
+	case V4L2_SEL_TGT_CROP_DEFAULT:
+	case V4L2_SEL_TGT_CROP_BOUNDS:
+		sel->r.top = IMX335_PIXEL_ARRAY_TOP;
+		sel->r.left = IMX335_PIXEL_ARRAY_LEFT;
+		sel->r.width = IMX335_PIXEL_ARRAY_WIDTH;
+		sel->r.height = IMX335_PIXEL_ARRAY_HEIGHT;
+
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 /**
  * imx335_start_streaming() - Start sensor stream
  * @imx335: pointer to imx335 device
@@ -864,6 +907,7 @@ static const struct v4l2_subdev_pad_ops imx335_pad_ops = {
 	.init_cfg = imx335_init_pad_cfg,
 	.enum_mbus_code = imx335_enum_mbus_code,
 	.enum_frame_size = imx335_enum_frame_size,
+	.get_selection = imx335_get_selection,
 	.get_fmt = imx335_get_pad_format,
 	.set_fmt = imx335_set_pad_format,
 };
-- 
2.34.1


