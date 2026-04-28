Return-Path: <devicetree+bounces-290968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMqKOT588GkaUAEAu9opvQ
	(envelope-from <devicetree+bounces-290968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 11:22:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F222648145C
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 11:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA9E1328601B
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 09:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A243F7898;
	Tue, 28 Apr 2026 09:01:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C1D3D8135
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 09:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777366897; cv=none; b=ULVivHRLqLZH+uJD71wwSGE5OmzNvr03gwxJjKxOyksxmpUSAduHF1Gv4QaeKI4OYWCs8YRLiP8U7WBmEScSLS4SyyFCSi/k8Eq9UMPLHk3A14PHjOy0T/TbBCMV+MXdZliG+fPSYv7KVRf//xMEXnUTcO1Hza3np4jUHa+o3Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777366897; c=relaxed/simple;
	bh=Ik7wVtrOHKYzimsGwxz4CxrPgF8JxX/MMCTmwdWfxvQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WCQvO2Ie4tw1K0pP9p5US1/gj7iJtxwPgmA2l39uPfzwGf+3w0ot9pHjpWH9/+3DCdxcrSk5fLaiS7+eB2PtxENGTKH7ysMkKTpIkrRVw/IN7dF/lp5/cP5dsnDCP4IjFUqWZOWQQsuT7S8C5w3aVp2UXJJE1wGXYt17GuI7WSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJG-0004Lz-9x; Tue, 28 Apr 2026 11:00:50 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:51 +0200
Subject: [PATCH v5 16/29] media: rockchip: rga: split flip and rotate into
 separate function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260428-spu-rga3-v5-16-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
In-Reply-To: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: F222648145C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290968-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.pueschel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Split the flip and rotate command configuration into a separate
function in preparation of filling the command stream at streamon.
As the userspace can change the flipping and rotation controls while
streaming, we have to update them with each new frame to prevent the
user being unable to change them while streaming.

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 57 +++++++++++++++++-----------
 1 file changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index dac3cb6aa17d3..6c1956b04f6ba 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -156,7 +156,38 @@ static void rga_cmd_set_dst_addr(struct rga_ctx *ctx, dma_addr_t dma_addr)
 	dest[reg >> 2] |= 0x7 << 8;
 }
 
-static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
+static void rga_cmd_set_flip_rotate_info(struct rga_ctx *ctx)
+{
+	u32 *dest = ctx->cmdbuf_virt;
+	union rga_src_info src_info;
+
+	src_info.val = dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2];
+
+	if (ctx->vflip)
+		src_info.data.mir_mode |= RGA_SRC_MIRR_MODE_X;
+
+	if (ctx->hflip)
+		src_info.data.mir_mode |= RGA_SRC_MIRR_MODE_Y;
+
+	switch (ctx->rotate) {
+	case 90:
+		src_info.data.rot_mode = RGA_SRC_ROT_MODE_90_DEGREE;
+		break;
+	case 180:
+		src_info.data.rot_mode = RGA_SRC_ROT_MODE_180_DEGREE;
+		break;
+	case 270:
+		src_info.data.rot_mode = RGA_SRC_ROT_MODE_270_DEGREE;
+		break;
+	default:
+		src_info.data.rot_mode = RGA_SRC_ROT_MODE_0_DEGREE;
+		break;
+	}
+
+	dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2] = src_info.val;
+}
+
+static void rga_cmd_set_format_scale_info(struct rga_ctx *ctx)
 {
 	struct rockchip_rga *rga = ctx->rga;
 	u32 *dest = ctx->cmdbuf_virt;
@@ -219,27 +250,6 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 		}
 	}
 
-	if (ctx->vflip)
-		src_info.data.mir_mode |= RGA_SRC_MIRR_MODE_X;
-
-	if (ctx->hflip)
-		src_info.data.mir_mode |= RGA_SRC_MIRR_MODE_Y;
-
-	switch (ctx->rotate) {
-	case 90:
-		src_info.data.rot_mode = RGA_SRC_ROT_MODE_90_DEGREE;
-		break;
-	case 180:
-		src_info.data.rot_mode = RGA_SRC_ROT_MODE_180_DEGREE;
-		break;
-	case 270:
-		src_info.data.rot_mode = RGA_SRC_ROT_MODE_270_DEGREE;
-		break;
-	default:
-		src_info.data.rot_mode = RGA_SRC_ROT_MODE_0_DEGREE;
-		break;
-	}
-
 	/*
 	 * Calculate the up/down scaling mode/factor.
 	 *
@@ -431,7 +441,8 @@ static void rga_cmd_set(struct rga_ctx *ctx,
 
 	rga_cmd_set_src_info(ctx, &src->offset);
 	rga_cmd_set_dst_info(ctx, &dst->offset);
-	rga_cmd_set_trans_info(ctx);
+	rga_cmd_set_format_scale_info(ctx);
+	rga_cmd_set_flip_rotate_info(ctx);
 
 	rga_write(rga, RGA_CMD_BASE, ctx->cmdbuf_phy);
 

-- 
2.54.0


