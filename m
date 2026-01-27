Return-Path: <devicetree+bounces-259937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAZ4HOPOeGmNtQEAu9opvQ
	(envelope-from <devicetree+bounces-259937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:42:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4D695E53
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:42:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 633A9302AB3A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA0235CBB2;
	Tue, 27 Jan 2026 14:40:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D265F35FF5A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769524820; cv=none; b=Ux3Xn5ESw+mru1JAe+YPR1xLN782g9QnmEYzi4m1gBPdrb5Z/m4bCAVM4YBf7oB53c52nq+/RL5+p/XD2jCl0R2xPJm5CM54rJmb3MIV8HvF0bdDS8BByj5RVRdeg9thQ+ND9vmZWdWuGn7eGT1IymGui7657ffyWImYNmik4Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769524820; c=relaxed/simple;
	bh=JOwvDeJCyzrvK5jl/gxmF1CyRNmJLl778mr+and9tyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W0gdPaEOwVgz3drrDu2vsk4NWZjwa5fBIGIVgbctRh2r9R0B1C1qy3LKAzZzCIN0lfeaLqdTLJegVHOtBdwaFnZZ/cxSAp0CeB2uAh7VbNmtccxxprRlvkFFLN+0brSIxgfauffcCScUPhWwOH+hFCwWj+ny2P0rPYQoAkV/RqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkEi-0007YT-FO; Tue, 27 Jan 2026 15:40:08 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:16 +0100
Subject: [PATCH v3 07/27] media: rockchip: rga: use stride for offset
 calculation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260127-spu-rga3-v3-7-77b273067beb@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259937-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.pueschel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 0B4D695E53
X-Rspamd-Action: no action

Use the stride instead of the width for the offset calculation. This
ensures that the bytesperline value doesn't need to match the width
value of the image.

Furthermore this patch removes the dependency on the uv_factor property
and instead reuses the v4l2_format_info to determine the correct
division factor.

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 14 +++++++++-----
 drivers/media/platform/rockchip/rga/rga.c     | 16 ----------------
 drivers/media/platform/rockchip/rga/rga.h     |  1 -
 3 files changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index bb575873f2b24..65fc0d5b4aa10 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -14,7 +14,6 @@
 #include <media/videobuf2-dma-sg.h>
 #include <media/videobuf2-v4l2.h>
 
-#include "rga-hw.h"
 #include "rga.h"
 
 static ssize_t fill_descriptors(struct rga_dma_desc *desc, size_t max_desc,
@@ -95,14 +94,19 @@ static int rga_buf_init(struct vb2_buffer *vb)
 	return 0;
 }
 
-static int get_plane_offset(struct rga_frame *f, int plane)
+static int get_plane_offset(struct rga_frame *f,
+			    const struct v4l2_format_info *info,
+			    int plane)
 {
+	u32 stride = f->pix.plane_fmt[0].bytesperline;
+
 	if (plane == 0)
 		return 0;
 	if (plane == 1)
-		return f->width * f->height;
+		return stride * f->height;
 	if (plane == 2)
-		return f->width * f->height + (f->width * f->height / f->fmt->uv_factor);
+		return stride * f->height +
+		       (stride * f->height / info->hdiv / info->vdiv);
 
 	return -EINVAL;
 }
@@ -148,7 +152,7 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
 	/* Fill the remaining planes */
 	info = v4l2_format_info(f->fmt->fourcc);
 	for (i = info->mem_planes; i < info->comp_planes; i++)
-		offsets[i] = get_plane_offset(f, i);
+		offsets[i] = get_plane_offset(f, info, i);
 
 	rbuf->offset.y_off = offsets[0];
 	rbuf->offset.u_off = offsets[1];
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 338c7796490bc..da4d5bec7a0a5 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -190,7 +190,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_ALPHA_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
 		.depth = 32,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -199,7 +198,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
 		.depth = 32,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -208,7 +206,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_XBGR8888,
 		.depth = 32,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -217,7 +214,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_RGB888,
 		.depth = 24,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -226,7 +222,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_RGB888,
 		.depth = 24,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -235,7 +230,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR4444,
 		.depth = 16,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -244,7 +238,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR1555,
 		.depth = 16,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -253,7 +246,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_BGR565,
 		.depth = 16,
-		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -262,7 +254,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
 		.depth = 12,
-		.uv_factor = 4,
 		.y_div = 2,
 		.x_div = 1,
 	},
@@ -271,7 +262,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422SP,
 		.depth = 16,
-		.uv_factor = 2,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -280,7 +270,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
 		.depth = 12,
-		.uv_factor = 4,
 		.y_div = 2,
 		.x_div = 1,
 	},
@@ -289,7 +278,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420SP,
 		.depth = 12,
-		.uv_factor = 4,
 		.y_div = 2,
 		.x_div = 1,
 	},
@@ -298,7 +286,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422SP,
 		.depth = 16,
-		.uv_factor = 2,
 		.y_div = 1,
 		.x_div = 1,
 	},
@@ -307,7 +294,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420P,
 		.depth = 12,
-		.uv_factor = 4,
 		.y_div = 2,
 		.x_div = 2,
 	},
@@ -316,7 +302,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_NONE_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV422P,
 		.depth = 16,
-		.uv_factor = 2,
 		.y_div = 1,
 		.x_div = 2,
 	},
@@ -325,7 +310,6 @@ static struct rga_fmt formats[] = {
 		.color_swap = RGA_COLOR_UV_SWAP,
 		.hw_format = RGA_COLOR_FMT_YUV420P,
 		.depth = 12,
-		.uv_factor = 4,
 		.y_div = 2,
 		.x_div = 2,
 	},
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 2db10acecb405..477cf5b62bbb2 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -17,7 +17,6 @@
 struct rga_fmt {
 	u32 fourcc;
 	int depth;
-	u8 uv_factor;
 	u8 y_div;
 	u8 x_div;
 	u8 color_swap;

-- 
2.52.0


