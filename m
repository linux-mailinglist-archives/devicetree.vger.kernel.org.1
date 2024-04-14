Return-Path: <devicetree+bounces-59196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6E78A4567
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A454281144
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2692513791B;
	Sun, 14 Apr 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="WwUaDCjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta192.mxroute.com (mail-108-mta192.mxroute.com [136.175.108.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4ED137748
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 20:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.192
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127343; cv=none; b=uuwRsttrWkMf80hfI8E2Utvgsm0eb4SV8RYHUX7UANdNsqf9LN6UopDLau4XaxdUR5BLBu8RlExhFj7KPT0O+qYDg1bkOtzlMQ70rk6j1jR/J3myYxPM8auQsAMKRf3EVL/8jXQ/Rrt7Ln9X1J8LR86ygDvyUJTqC8mVMGky/e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127343; c=relaxed/simple;
	bh=UKMUJL4eC2no8yWMvMo8Q7bFRlBLJS/6Zj18ilqvC8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gd07znlW8RYP/4eczJ/y22fSW/R5wy9DxsG7wJ1hMXg0W7ittFoBf6JmDyrlL2DNKa13pIN9PRNeb+psOFKQGICXUR46pPfOyKe5fO+8uFE8VuMEYm3txVjpb4t75+4ASwfhSn489oN+IS3R3i8lVQiEMIxXxXze7yRwQccnJZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=WwUaDCjD; arc=none smtp.client-ip=136.175.108.192
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta192.mxroute.com (ZoneMTA) with ESMTPSA id 18ede52f62a0003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 14 Apr 2024 20:36:02 +0000
X-Zone-Loop: 13e4fb490b9bccb6360c94f88fb79b1264f48bdb3f01
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MwUpIIOD2xJwbBIpLMKnrgmMkUMqntOebL0FVSHsg4A=; b=WwUaDCjDkeIdul2uFxjGbEFvjj
	spt8okC4U6nsGSo0dShDzWjJCU/pkQXoWe1QW34rDrnEGq8aZntY5ZEwpb0JalQzYa3NsrO8Hh61k
	MP+Bz7XJ+elSa2eD4HkEaCE3+9k8O6ihNUr6mDAONbEiojljkDl2b4YpSNtYl75gjXM8XXvoyQipf
	uYS1GzjPxWVe9tBaaF84+6+woMnRSPx9dYGx35KWjbs+2Q/t7FqFN0zenhVjX2QQfKRKyClsG2qJA
	tZiazwQ40aMTQxxzaw6MX/5cQtYhv+VotVZ/4GLnxt2Ros3T5pN25dDWEIDKGPBFW5JYG6QoAi6au
	4T92JOFg==;
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
Subject: [PATCH v4 24/25] media:i2c: imx258: Use v4l2_link_freq_to_bitmap helper
Date: Sun, 14 Apr 2024 14:35:02 -0600
Message-ID: <20240414203503.18402-25-git@luigi311.com>
In-Reply-To: <20240414203503.18402-1-git@luigi311.com>
References: <20240414203503.18402-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Luis Garcia <git@luigi311.com>

Use the v4l2_link_freq_to_bitmap() helper to figure out which
driver-supported link freq can be used on a given system.

Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 5de71cb7c1ae..65846dff775e 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -693,6 +693,7 @@ struct imx258 {
 	/* Current mode */
 	const struct imx258_mode *cur_mode;
 
+	unsigned long link_freq_bitmap;
 	const struct imx258_link_freq_config *link_freq_configs;
 	const s64 *link_freq_menu_items;
 	unsigned int lane_mode_idx;
@@ -1552,6 +1553,17 @@ static int imx258_probe(struct i2c_client *client)
 		return ret;
 	}
 
+	ret = v4l2_link_freq_to_bitmap(&client->dev,
+				       ep.link_frequencies,
+				       ep.nr_of_link_frequencies,
+				       imx258->link_freq_menu_items,
+				       ARRAY_SIZE(link_freq_menu_items_19_2),
+				       &imx258->link_freq_bitmap);
+	if (ret) {
+		dev_err(&client->dev, "Link frequency not supported\n");
+		goto error_endpoint_free;
+	}
+
 	/* Get number of data lanes */
 	switch (ep.bus.mipi_csi2.num_data_lanes) {
 	case 2:
-- 
2.44.0


