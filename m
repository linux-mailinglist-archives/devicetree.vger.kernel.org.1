Return-Path: <devicetree+bounces-20499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAB87FF892
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:41:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27FC61F20EE2
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7C658135;
	Thu, 30 Nov 2023 17:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LPx1+fRX"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 363A810DE;
	Thu, 30 Nov 2023 09:41:33 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPA id 32A621BF206;
	Thu, 30 Nov 2023 17:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701366091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YCtXOEjZA4vVhqRvZxyqSJ/sJ1S1+pskPHyTx+aj7Bo=;
	b=LPx1+fRXYo9UizKn96Mo1PH2HBts4hfEy67nbnAsjK2WsGwfe2AqQ1twJi1tJiOE5RZ4C5
	gaSWtIScGmcLpC8O+IbgeysUdhiqvbpILR9O1//gEskk4TKHXqDP1FCYd4nJdPuRyRyAgd
	NSVPU2xlfSCr3WLH1Xe0uUpzvCsH6XGMUxrtfyFn/UgZniaRrDzf1gGBOCJ0OMVPehGvhO
	pNJAlvN8ZOLQTzremWQjjtGbH7eTtKiUNV7heBDwknRhEZfXR1k7aVESlwktB7HsdUyVFk
	S449nqA/ggrQQOzKd5s5rvetaK5RNG58hVkjC0PxrrJdkTx03lxYC7XAzgweNw==
From: Herve Codina <herve.codina@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Lizhi Hou <lizhi.hou@amd.com>,
	Max Zhen <max.zhen@amd.com>,
	Sonal Santan <sonal.santan@amd.com>,
	Stefano Stabellini <stefano.stabellini@xilinx.com>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH 2/2] of: overlay: Synchronize of_overlay_remove() with the devlink removals
Date: Thu, 30 Nov 2023 18:41:09 +0100
Message-ID: <20231130174126.688486-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231130174126.688486-1-herve.codina@bootlin.com>
References: <20231130174126.688486-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

In the following sequence:
  1) of_platform_depopulate()
  2) of_overlay_remove()

During the step 1, devices are destroyed and devlinks are removed.
During the step 2, OF nodes are destroyed but
__of_changeset_entry_destroy() can raise warnings related to missing
of_node_put():
  ERROR: memory leak, expected refcount 1 instead of 2 ...

Indeed, during the devlink removals performed at step 1, the removal
itself releasing the device (and the attached of_node) is done by a job
queued in a workqueue and so, it is done asynchronously with respect to
function calls.
When the warning is present, of_node_put() will be called but wrongly
too late from the workqueue job.

In order to be sure that any ongoing devlink removals are done before
the of_node destruction, synchronize the of_overlay_remove() with the
devlink removals.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/of/overlay.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a9a292d6d59b..5c5f808b163e 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -1202,6 +1202,12 @@ int of_overlay_remove(int *ovcs_id)
 		goto out;
 	}
 
+	/*
+	 * Wait for any ongoing device link removals before removing some of
+	 * nodes
+	 */
+	device_link_wait_removal();
+
 	mutex_lock(&of_mutex);
 
 	ovcs = idr_find(&ovcs_idr, *ovcs_id);
-- 
2.42.0


