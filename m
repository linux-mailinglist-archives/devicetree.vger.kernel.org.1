Return-Path: <devicetree+bounces-259952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPU4JhTSeGmNtQEAu9opvQ
	(envelope-from <devicetree+bounces-259952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:56:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF37A961B0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE0E3306A610
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0878366074;
	Tue, 27 Jan 2026 14:41:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F4535EDD1
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769524860; cv=none; b=UcnoqI3qyWU3Ae0BOjXPKIue8bRtXT/vV3K1x8SW9x+cSxAtcxmv6J0iehM09KkFtT+h7P5SGjbcaHxrgfG2h4v7Qjun1kAWlzyvAVlwJ8YnvjSOdEhSAaO7L7od2LMh5v5EnrymMFg4nb0m8DVD67ePTPKcSJswH8gfllR3WUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769524860; c=relaxed/simple;
	bh=82OxQEPMx3A5useUzoN54EOJjdkBs6evsd2RYUAhzq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HljEF9kfEgTq8KVFfH+5DJBI2OpY+Hnzowr74FfRHK1CzJuBiAMNsbq80WgYwaByy2wkPWzjCKGVASp0isCPe/c8bbp0i8A3+xuChDGgdOZhkcwlwukLegqnhj5QBGY1f5wF/1VEo/w+kPhBj/TXPKUmjSWkV+diFW/5FFMjVso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkFK-0007YT-Pu; Tue, 27 Jan 2026 15:40:47 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:31 +0100
Subject: [PATCH v3 22/27] media: rockchip: rga: remove stride from
 rga_frame
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260127-spu-rga3-v3-22-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259952-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.pueschel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,pengutronix.de:mid,pengutronix.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF37A961B0
X-Rspamd-Action: no action

Remove the stride variable from rga_frame. Despite the comment it
didn't involve any calculation and is just a copy of the
plane_fmt[0].bytesperline value. Therefore avoid this struct member
and use the bytesperline value directly in the places where it is
required.

Also drop the dependency on the depth format member, which was only
used to calculate the stride of the default format. This is already done
by the v4l2_fill_pixfmt_mp_aligned helper and used as stride in try_fmt.
Therefore using it's value also for the default format stride is just
more consistent.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 36 ++++++++++------------------
 drivers/media/platform/rockchip/rga/rga.c    |  5 +---
 drivers/media/platform/rockchip/rga/rga.h    |  4 ----
 3 files changed, 13 insertions(+), 32 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 2013b59701d12..5d993cf69963d 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -44,7 +44,7 @@ rga_get_corner_addrs(struct rga_frame *frm, struct rga_addrs *addrs,
 	struct rga_addrs *lt, *lb, *rt, *rb;
 	const struct v4l2_format_info *format_info;
 	unsigned int x_div = 0,
-		     y_div = 0, uv_stride = 0, pixel_width = 0;
+		     y_div = 0, y_stride = 0, uv_stride = 0, pixel_width = 0;
 
 	lt = &corner_addrs.left_top;
 	lb = &corner_addrs.left_bottom;
@@ -61,14 +61,15 @@ rga_get_corner_addrs(struct rga_frame *frm, struct rga_addrs *addrs,
 	else
 		x_div = 1;
 	y_div = format_info->vdiv;
-	uv_stride = frm->stride / x_div;
-	pixel_width = frm->stride / frm->pix.width;
+	y_stride = frm->pix.plane_fmt[0].bytesperline;
+	uv_stride = y_stride / x_div;
+	pixel_width = y_stride / frm->pix.width;
 
-	lt->y_addr = addrs->y_addr + y * frm->stride + x * pixel_width;
+	lt->y_addr = addrs->y_addr + y * y_stride + x * pixel_width;
 	lt->u_addr = addrs->u_addr + (y / y_div) * uv_stride + x / x_div;
 	lt->v_addr = addrs->v_addr + (y / y_div) * uv_stride + x / x_div;
 
-	lb->y_addr = lt->y_addr + (h - 1) * frm->stride;
+	lb->y_addr = lt->y_addr + (h - 1) * y_stride;
 	lb->u_addr = lt->u_addr + (h / y_div - 1) * uv_stride;
 	lb->v_addr = lt->v_addr + (h / y_div - 1) * uv_stride;
 
@@ -169,6 +170,7 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	union rga_src_act_info src_act_info;
 	union rga_dst_vir_info dst_vir_info;
 	union rga_dst_act_info dst_act_info;
+	u32 in_stride, out_stride;
 
 	src_h = ctx->in.crop.height;
 	src_w = ctx->in.crop.width;
@@ -291,13 +293,15 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	 * Calculate the framebuffer virtual strides and active size,
 	 * note that the step of vir_stride / vir_width is 4 byte words
 	 */
-	src_vir_info.data.vir_stride = ctx->in.stride >> 2;
-	src_vir_info.data.vir_width = ctx->in.stride >> 2;
+	in_stride = ctx->in.pix.plane_fmt[0].bytesperline;
+	src_vir_info.data.vir_stride = in_stride >> 2;
+	src_vir_info.data.vir_width = in_stride >> 2;
 
 	src_act_info.data.act_height = src_h - 1;
 	src_act_info.data.act_width = src_w - 1;
 
-	dst_vir_info.data.vir_stride = ctx->out.stride >> 2;
+	out_stride = ctx->out.pix.plane_fmt[0].bytesperline;
+	dst_vir_info.data.vir_stride = out_stride >> 2;
 	dst_act_info.data.act_height = dst_h - 1;
 	dst_act_info.data.act_width = dst_w - 1;
 
@@ -481,97 +485,81 @@ static struct rga_fmt formats[] = {
 		.fourcc = V4L2_PIX_FMT_ARGB32,
 		.color_swap = RGA_COLOR_ALPHA_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
-		.depth = 32,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_ABGR32,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
-		.depth = 32,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_XBGR32,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_XBGR8888,
-		.depth = 32,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_RGB24,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_RGB888,
-		.depth = 24,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_BGR24,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_RGB888,
-		.depth = 24,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_ARGB444,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR4444,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_ARGB555,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR1555,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_RGB565,
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_BGR565,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
-		.depth = 12,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV61,
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422SP,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
-		.depth = 12,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
-		.depth = 12,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV16,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422SP,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_YUV420,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420P,
-		.depth = 12,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422P,
-		.depth = 16,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_YVU420,
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420P,
-		.depth = 12,
 	},
 };
 
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 59463c7f26b6f..30d09ec77afca 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -220,8 +220,6 @@ static int rga_open(struct file *file)
 		.fmt = &rga->hw->formats[0],
 	};
 
-	def_frame.stride = (def_width * def_frame.fmt->depth) >> 3;
-
 	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
@@ -459,7 +457,6 @@ static int vidioc_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
 	frm->fmt = rga_fmt_find(rga, pix_fmt->pixelformat);
-	frm->stride = pix_fmt->plane_fmt[0].bytesperline;
 
 	/*
 	 * Copy colorimetry from output to capture as required by the
@@ -484,7 +481,7 @@ static int vidioc_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 		 "[%s] fmt - %p4cc %dx%d (stride %d)\n",
 		  V4L2_TYPE_IS_OUTPUT(f->type) ? "OUTPUT" : "CAPTURE",
 		  &frm->fmt->fourcc, pix_fmt->width, pix_fmt->height,
-		  frm->stride);
+		  pix_fmt->plane_fmt[0].bytesperline);
 
 	for (i = 0; i < pix_fmt->num_planes; i++) {
 		v4l2_dbg(debug, 1, &rga->v4l2_dev,
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 2838fc7785f72..d203b7dae2b03 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -19,7 +19,6 @@
 
 struct rga_fmt {
 	u32 fourcc;
-	int depth;
 	u8 color_swap;
 	u8 hw_format;
 };
@@ -31,9 +30,6 @@ struct rga_frame {
 	/* Image format */
 	struct rga_fmt *fmt;
 	struct v4l2_pix_format_mplane pix;
-
-	/* Variables that can calculated once and reused */
-	u32 stride;
 };
 
 struct rga_dma_desc {

-- 
2.52.0


