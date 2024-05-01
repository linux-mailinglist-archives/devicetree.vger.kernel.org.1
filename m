Return-Path: <devicetree+bounces-64307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55AE8B8D33
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9979A28A914
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 15:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB6B130AE1;
	Wed,  1 May 2024 15:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="e3YpDVoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta180.mxroute.com (mail-108-mta180.mxroute.com [136.175.108.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB520130A7C
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 15:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714577519; cv=none; b=DdCXYJ3OdPLI+z3WDmYJqciwYTrKdDFB1rMivZz2iHuPhkM8MfbJpQyHM2wGl5s40yrprrwMVYvX9HmI9I9kkIzMsh7umPVTW8YcjsWm9cx61k8uIkYNfnRZ2ITv83ms1v41SfdTCg6zgi53DhSvCoj+3eHwUCza5kN0a71rOu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714577519; c=relaxed/simple;
	bh=cuxeD9nspba5A5YYP0u3xeWbqdSoqR0pPllRyYusAi8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MBlfS7ca8jeNelrRMLp5VNCvU3XGYzjS/GYWsNtAv/5f6SUhvahj/BooR1IpeBIiLcu3q3Hz2tfDqRTWGQruQ+5pX3URfTneTnXXoanW7ERW8r5kO0yOrGynNzdkoOzcIpNa2W5wbfbqOGUafexv8isn91I5MmOccPQT9KqEnVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=e3YpDVoS; arc=none smtp.client-ip=136.175.108.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta180.mxroute.com (ZoneMTA) with ESMTPSA id 18f34c2fc9c0008ca2.010
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 01 May 2024 15:25:44 +0000
X-Zone-Loop: e54c668f6d9cb173602008273e50fc9bf22518e9d256
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Rj85ZDGBsJ3+/OmSU/Kn4T2SJ0OalVMVn4FMD/UJ3Qk=; b=e3YpDVoSQV2SUprQn29PFHkC+T
	R0+j87OkUk8I3BLbc1gxdki3ERCUVtpFeQJ00SmJqe4k82mN6cybzwZ2ERmQOI55XXopoX69eHi4f
	E+uyvpLishijbYS77kYsKjifadGkWy1rydn00sz0evTj4USA0S2i+WEA6TN1EsaMgIBwCoexjtpQQ
	1136WJbkia2s6eRGIcqyuNPIcXJxmwdc5rqI156t1K8MkYeZCagRgxfsnwF0vQ5enQvPHnkb+fpUS
	VaKAM0SBOxxNggf0/siOfg3+KaQ0bdLYczevPCwVbYXfwyDi7ZBPiAWlo9dyYNvcXuXtYwKP0akEz
	ylpODuOw==;
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
	Luis Garcia <git@luigi311.com>,
	Tommaso Merciai <tomm.merciai@gmail.com>
Subject: [PATCH v5 24/25] media: i2c: imx258: Use v4l2_link_freq_to_bitmap helper
Date: Wed,  1 May 2024 09:24:41 -0600
Message-ID: <20240501152442.1072627-25-git@luigi311.com>
In-Reply-To: <20240501152442.1072627-1-git@luigi311.com>
References: <20240501152442.1072627-1-git@luigi311.com>
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
Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>
---
 drivers/media/i2c/imx258.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 74a8f3ed1ab5..d7a1cc143bae 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -693,6 +693,7 @@ struct imx258 {
 	/* Current mode */
 	const struct imx258_mode *cur_mode;
 
+	unsigned long link_freq_bitmap;
 	const struct imx258_link_freq_config *link_freq_configs;
 	const s64 *link_freq_menu_items;
 	unsigned int lane_mode_idx;
@@ -1551,6 +1552,17 @@ static int imx258_probe(struct i2c_client *client)
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


