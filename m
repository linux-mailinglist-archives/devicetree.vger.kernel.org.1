Return-Path: <devicetree+bounces-71664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2FE8D77FE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A5BCB23539
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1520C84E19;
	Sun,  2 Jun 2024 20:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="fbj3QI1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta73.mxroute.com (mail-108-mta73.mxroute.com [136.175.108.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AF37FBC4
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717359627; cv=none; b=eg2oaeN0CIbL7uQ44oRjtPc6OVO0nwz10s4DmlRv8ULbWftx2w5f1rJTf+hP85mTawgABN+k/uI9LYsoLiY+nesUBCUAy0cMlGHQT+9jeTEWKsz9X16XGjVIZ86HblQFzaw7D30z9z6SUax7nWvLf8fhWqB1henOycFu/3LOT1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717359627; c=relaxed/simple;
	bh=DW93lC9rSeEtaobf7itjE64XnEYnqZ7qSOk+RzOJB00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZGPRdYNHpPkjjwfKNm31/cP5wCF5vFwJQb+dF8/apqY47ov7TWPnxW8o58XGntIgO/ohhCA1p6hEHS/4S2QGrRlmglB9zzlbfdbYgp03nsNCqk4XaShpoOGmVlscUOHmy0O9H9CRmDvWfCe4tr6xglH53Rc+dqHiEzLTPSk3wXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=fbj3QI1M; arc=none smtp.client-ip=136.175.108.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta73.mxroute.com (ZoneMTA) with ESMTPSA id 18fda96ab6c000e2b6.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 02 Jun 2024 20:14:18 +0000
X-Zone-Loop: 9792b320c2b75753b2fd69a54e44c4a23fa8cab0983d
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bZhiRPeL9jOMw1N4B5HoYuhr3z7xt+xH2s8wek/zi98=; b=fbj3QI1MUQlAjKlCLDqlVaG9ki
	mCsXhPfsL1bsoKBCjfvuf5WRny9EzmWdS6npIXyw2mxbtIUm1fRSgBOCrOQWfVBXvlxYX7ZDe6ciW
	oWBeWbzzkY1UwYshFlLGDkHGX0Hu3TZleMLvNlv20K5zsSpki2wp+6xIKDh6Cu6/8YO31ObEH3D5j
	gpqzxMRKjNzP8xKFU29x4fFDZRI6VfQ6z54G27FjL4HormhO+VQ/lpS5Z6H7M3NAkg5Mcsk/gFD+i
	HX2DFohCTtQdIXj0JfgCdHUXd8kn+BPjWEMx4Cjd/QKDqJx0uEq4B5qKo5HS7akYTtY1EZlPSEE1r
	96idcdqw==;
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
Subject: [PATCH v6 12/23] media: i2c: imx258: Allow configuration of clock lane behaviour
Date: Sun,  2 Jun 2024 14:13:34 -0600
Message-ID: <20240602201345.328737-13-git@luigi311.com>
In-Reply-To: <20240602201345.328737-1-git@luigi311.com>
References: <20240602201345.328737-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The sensor supports the clock lane either remaining in HS mode
during frame blanking, or dropping to LP11.

Add configuration of the mode via V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
---
 drivers/media/i2c/imx258.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 59a78a4cfe44..2429eb7b55c6 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -72,6 +72,8 @@
 /* Test Pattern Control */
 #define IMX258_REG_TEST_PATTERN		0x0600
 
+#define IMX258_CLK_BLANK_STOP		0x4040
+
 /* Orientation */
 #define REG_MIRROR_FLIP_CONTROL		0x0101
 #define REG_CONFIG_MIRROR_FLIP		0x03
@@ -632,6 +634,7 @@ struct imx258 {
 	const struct imx258_link_freq_config *link_freq_configs;
 	const s64 *link_freq_menu_items;
 	unsigned int nlanes;
+	unsigned int csi2_flags;
 
 	/*
 	 * Mutex for serialized access:
@@ -1066,6 +1069,14 @@ static int imx258_start_streaming(struct imx258 *imx258)
 		return ret;
 	}
 
+	ret = imx258_write_reg(imx258, IMX258_CLK_BLANK_STOP,
+			       IMX258_REG_VALUE_08BIT,
+			       !!(imx258->csi2_flags & V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK));
+	if (ret) {
+		dev_err(&client->dev, "%s failed to set clock lane mode\n", __func__);
+		return ret;
+	}
+
 	/* Apply default values of current mode */
 	reg_list = &imx258->cur_mode->reg_list;
 	ret = imx258_write_regs(imx258, reg_list->regs, reg_list->num_of_regs);
@@ -1438,6 +1449,8 @@ static int imx258_probe(struct i2c_client *client)
 		goto error_endpoint_free;
 	}
 
+	imx258->csi2_flags = ep.bus.mipi_csi2.flags;
+
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx258->sd, client, &imx258_subdev_ops);
 
-- 
2.44.0


