Return-Path: <devicetree+bounces-7066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8061F7BEFF4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B246D1C20B40
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A390937F;
	Tue, 10 Oct 2023 00:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="MJKZ4b/e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDF4A55
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:51:43 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7446FBA;
	Mon,  9 Oct 2023 17:51:41 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A485CF8B;
	Tue, 10 Oct 2023 02:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696899094;
	bh=6et6YB3ovJRquTK1bYYUx8i7eR+31xGOSlTSN1ZNHt8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MJKZ4b/egWoZwPcbZ74ew/22iue5kNjfJxUObC2Q5S+dG5E/YbCVX3UVNNcYxi9to
	 T6kjzK9lzErtAvcdaK2nFuXyTW8CeaINU0hVd0n8R9cJ/KF8sh1uEIcoKtfp2kl3dg
	 A0UAhMAIOyLZBWN7LVB+OdfG3YfJnqTbQ7BXVxrs=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Paul J. Murphy" <paul.j.murphy@intel.com>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 5/5] media: i2c: imx335: Improve configuration error reporting
Date: Tue, 10 Oct 2023 01:51:26 +0100
Message-Id: <20231010005126.3425444-6-kieran.bingham@ideasonboard.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The existing imx335_parse_hw_config function has two paths
that can be taken without reporting to the user the reason
for failing to accept the hardware configuration.

Extend the error reporting paths to identify failures when
probing the device.

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---
 drivers/media/i2c/imx335.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
index 1a34b2a43718..753e5c39e0fa 100644
--- a/drivers/media/i2c/imx335.c
+++ b/drivers/media/i2c/imx335.c
@@ -864,8 +864,10 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
 	}
 
 	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
-	if (!ep)
+	if (!ep) {
+		dev_err(imx335->dev, "Failed to get next endpoint");
 		return -ENXIO;
+	}
 
 	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
 	fwnode_handle_put(ep);
@@ -890,6 +892,8 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
 		if (bus_cfg.link_frequencies[i] == IMX335_LINK_FREQ)
 			goto done_endpoint_free;
 
+	dev_err(imx335->dev, "no compatible link frequencies found");
+
 	ret = -EINVAL;
 
 done_endpoint_free:
-- 
2.34.1


