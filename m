Return-Path: <devicetree+bounces-13427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F08007DE15B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ABC31C20C59
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 13:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544F612E46;
	Wed,  1 Nov 2023 13:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="HSM+abDc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669CE12B95
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 13:14:12 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C2FFF4;
	Wed,  1 Nov 2023 06:14:07 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1AF14E52;
	Wed,  1 Nov 2023 14:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698844424;
	bh=cqUYU2q4hDhZpxo1Fi1Ix4DPuhuP0paFGsY1V5zSNXY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HSM+abDc4nh4X1w6CkN20KztnDROtn/zTk28cdU2ACq5iJhBOF9BDE5xnWJpaCI6O
	 7cbMhav8/xZw6XUmxLt7GHeMCjSTRjKbWIf4o6RASH/JEdejrN9Avjj3UZRkGqmE+w
	 f38jTHAVGLWJDqUqEpiB9qmZEB/YEJe1JlPhljdE=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Umang Jain <umang.jain@ideasonboard.com>,
	"Paul J. Murphy" <paul.j.murphy@intel.com>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 3/6] media: i2c: imx335: Improve configuration error reporting
Date: Wed,  1 Nov 2023 13:13:51 +0000
Message-Id: <20231101131354.2333498-4-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231101131354.2333498-1-kieran.bingham@ideasonboard.com>
References: <20231101131354.2333498-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The existing imx335_parse_hw_config function has two paths
that can be taken without reporting to the user the reason
for failing to accept the hardware configuration.

Extend the error reporting paths to identify failures when
probing the device.

Reviewed-by: Umang Jain <umang.jain@ideasonboard.com>
Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

---
v2:
 - Fix line endings

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---
 drivers/media/i2c/imx335.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
index cbabef968e21..31c612c6bdd8 100644
--- a/drivers/media/i2c/imx335.c
+++ b/drivers/media/i2c/imx335.c
@@ -795,8 +795,10 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
 	}
 
 	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
-	if (!ep)
+	if (!ep) {
+		dev_err(imx335->dev, "Failed to get next endpoint\n");
 		return -ENXIO;
+	}
 
 	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
 	fwnode_handle_put(ep);
@@ -821,6 +823,8 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
 		if (bus_cfg.link_frequencies[i] == IMX335_LINK_FREQ)
 			goto done_endpoint_free;
 
+	dev_err(imx335->dev, "no compatible link frequencies found\n");
+
 	ret = -EINVAL;
 
 done_endpoint_free:
-- 
2.34.1


