Return-Path: <devicetree+bounces-55972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0265489738D
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:11:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0FF0285105
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E549A14B099;
	Wed,  3 Apr 2024 15:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="yhQ0Igzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta225.mxroute.com (mail-108-mta225.mxroute.com [136.175.108.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C167E14A61C
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 15:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712156937; cv=none; b=KDGXZ3Ou5byf8ubLTJD6yEvA21YZ/mOfdfMoHKz8NpGrwjB7sO4NdFjbYwCwPNEUJIsjcy6fZmIsiYzJ5HdCXH4v5KpzuiPaDSQVl7gmGAZYbp/2P3lgQW7phL12I6i+apbObYrMG9WcmKH7VfFdjg4RNaj3zicD4gtV5zjOJQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712156937; c=relaxed/simple;
	bh=orKRL9k3h4MQbuG4dRP6H2viAfkBXdURmtZNsy+EARg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K/1d0KvkS2K/GM78EaQ7BXMR5FBtNHLw2ebkM3OnGwiriFh/fyYxbXJHaLhhOUNl1pJ8QfRd2VhO9W9j/fZhvTHU4jfs/Dkj/GrbinshaNXQdhDWJEWoLp0UanXLHBstleB9HROZT/T/YVEdUjuquiidM/Qr2PKe6OCxHzM7fw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=yhQ0Igzq; arc=none smtp.client-ip=136.175.108.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta225.mxroute.com (ZoneMTA) with ESMTPSA id 18ea4807e200003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 03 Apr 2024 15:07:48 +0000
X-Zone-Loop: b0a3fed898a17eea5d0969d9fa93498a7796f28bcbb0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=um6Hj3+66bt6kjL5BKukA1fuuXmDo6jHd9WAJeM/FZM=; b=yhQ0IgzqM+a20jFZcASsvQ5ncx
	EMiRWEP5cGixlUh+70Z6ymKyvMOMtTlpsNHm+OQ3DSSKkvCbsKbP2JnmUvXeAQkiMf2TlesAkd6/h
	mZdcpPDFWE5Jh67T8CoeNe5WB4/jVIPNa1VgLtUHmZt48pVB3WDMntqgH/Q99lFzOrZXTwAZ6cbqH
	+U0q18W+/c04ecmR8UnwHr2Lrq1IH3NDTcTWbEzsf1v0ugvxYUf6TJxzas9wfClobp9mwQqFbjzmY
	HlOld8pueeoRTacIuXL10sIwK7AEk0WpjaDYYPqrdmQjIZZQSCi+aCJqaXmxC6vXq5u6ZhEPSAvl5
	nPKQwLMQ==;
From: git@luigi311.com
To: linux-media@vger.kernel.org
Cc: dave.stevenson@raspberrypi.com,
	jacopo.mondi@ideasonboard.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	sakari.ailus@linux.intel.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	pavel@ucw.cz,
	phone-devel@vger.kernel.org,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v3 15/25] media: i2c: imx258: Set pixel_rate range to the same as the value
Date: Wed,  3 Apr 2024 09:03:44 -0600
Message-ID: <20240403150355.189229-16-git@luigi311.com>
In-Reply-To: <20240403150355.189229-1-git@luigi311.com>
References: <20240403150355.189229-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

With a read only control there is limited point in advertising
a minimum and maximum for the control, so change to set the
value, min, and max all to the selected pixel rate.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
---
 drivers/media/i2c/imx258.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index c242e318be11..7d434bc12c6a 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -971,7 +971,8 @@ static int imx258_set_pad_format(struct v4l2_subdev *sd,
 
 		link_freq = imx258->link_freq_menu_items[mode->link_freq_index];
 		pixel_rate = link_freq_to_pixel_rate(link_freq, imx258->nlanes);
-		__v4l2_ctrl_s_ctrl_int64(imx258->pixel_rate, pixel_rate);
+		__v4l2_ctrl_modify_range(imx258->pixel_rate, pixel_rate,
+					 pixel_rate, 1, pixel_rate);
 		/* Update limits and set FPS to default */
 		vblank_def = imx258->cur_mode->vts_def -
 			     imx258->cur_mode->height;
@@ -1262,8 +1263,7 @@ static int imx258_init_controls(struct imx258 *imx258)
 	struct v4l2_ctrl *vflip, *hflip;
 	s64 vblank_def;
 	s64 vblank_min;
-	s64 pixel_rate_min;
-	s64 pixel_rate_max;
+	s64 pixel_rate;
 	int ret;
 
 	ctrl_hdlr = &imx258->ctrl_handler;
@@ -1294,18 +1294,13 @@ static int imx258_init_controls(struct imx258 *imx258)
 	if (vflip)
 		vflip->flags |= V4L2_CTRL_FLAG_READ_ONLY;
 
-	pixel_rate_max =
-		link_freq_to_pixel_rate(imx258->link_freq_menu_items[0],
-					imx258->nlanes);
-	pixel_rate_min =
-		link_freq_to_pixel_rate(imx258->link_freq_menu_items[1],
-					imx258->nlanes);
+	pixel_rate = link_freq_to_pixel_rate(imx258->link_freq_menu_items[0],
+					     imx258->nlanes);
 	/* By default, PIXEL_RATE is read only */
 	imx258->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &imx258_ctrl_ops,
 				V4L2_CID_PIXEL_RATE,
-				pixel_rate_min, pixel_rate_max,
-				1, pixel_rate_max);
-
+				pixel_rate, pixel_rate,
+				1, pixel_rate);
 
 	vblank_def = imx258->cur_mode->vts_def - imx258->cur_mode->height;
 	vblank_min = imx258->cur_mode->vts_min - imx258->cur_mode->height;
-- 
2.42.0


