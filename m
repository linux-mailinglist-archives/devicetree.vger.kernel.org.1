Return-Path: <devicetree+bounces-173064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98450AA75A7
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 17:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AE829A72D2
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6887A25743B;
	Fri,  2 May 2025 15:07:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6DE257433
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 15:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746198439; cv=none; b=WeCQ+CiTYO4rylCE0kpzUoEBWNS+UGXlYv3nMhpGuNfFbA+Pt0Rq50Et4UbQXzOgSVvB0iVdcNAzwLVxxf/zKUpJViN8zkuR3elTPxwxsXH8p5IJFZiv/+SMglxIBj/S00Y45MyWdKDAy7erioNoTpoUgVwzlg1vWSKSNLV2RoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746198439; c=relaxed/simple;
	bh=ovx3GVZBG348SQWXrvTALn0ZGZEI4xJVWp/EdS7tQQ4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YjmaKwjAKarXeZ3pxczNtQzwnpxwfhRPUWf4BIAFbw9HvWtHv6pzs/lsr7VDqIoA4RIqR2jL7lVv6bUC1GtepYG5E67QL6RMPX1U8YWBbPi2urFBl1zE4FBryp10dLNeE3rSqrEbq5lMtAxt7fdzptxdtaaGvR3Mbs7pDPIzmbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uAryc-0004HG-GP; Fri, 02 May 2025 17:06:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paulk@sys-base.io,
	hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com,
	sebastian.fricke@collabora.com,
	ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 10/11] media: verisilicon: split read/write debug
Date: Fri,  2 May 2025 17:05:13 +0200
Message-Id: <20250502150513.4169098-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250502150513.4169098-1-m.felsch@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Allow a more fine grain read/write debug control. This is very useful in
case of hantro_reg_write() is used to not interfere the write debug
prints with read debug prints.

While on it, make the reg/swreg value clear for new developers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/media/platform/verisilicon/hantro.h | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index e464bec47b11..7b031df5b0a1 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -367,7 +367,8 @@ struct hantro_decoded_buffer {
  * bit 3 - contents of big controls from userspace
  * bit 4 - detail fmt, ctrl, buffer q/dq information
  * bit 5 - detail function enter/leave trace information
- * bit 6 - register write/read information
+ * bit 6 - register write information
+ * bit 7 - register read information
  */
 extern int hantro_debug;
 
@@ -391,13 +392,13 @@ static __always_inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
 static __always_inline void vepu_write_relaxed(struct hantro_dev *vpu,
 					       u32 val, u32 reg)
 {
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(6, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	writel_relaxed(val, vpu->enc_base + reg);
 }
 
 static __always_inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(6, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	writel(val, vpu->enc_base + reg);
 }
 
@@ -405,20 +406,20 @@ static __always_inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
 {
 	u32 val = readl(vpu->enc_base + reg);
 
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(7, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	return val;
 }
 
 static __always_inline void vdpu_write_relaxed(struct hantro_dev *vpu,
 					       u32 val, u32 reg)
 {
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(6, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	writel_relaxed(val, vpu->dec_base + reg);
 }
 
 static __always_inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(6, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	writel(val, vpu->dec_base + reg);
 }
 
@@ -433,7 +434,7 @@ static __always_inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 {
 	u32 val = readl(vpu->dec_base + reg);
 
-	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	vpu_debug(7, "0x%04x (swreg%u) = 0x%08x\n", reg, reg / 4, val);
 	return val;
 }
 
-- 
2.39.5


