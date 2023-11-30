Return-Path: <devicetree+bounces-20497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBD97FF890
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AF912817A8
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B485812C;
	Thu, 30 Nov 2023 17:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YoKRgwhA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B547131;
	Thu, 30 Nov 2023 09:41:31 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPA id 96FB71BF204;
	Thu, 30 Nov 2023 17:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701366090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yvt6xwQtma5BgVNgEWdmqb5WwlVdI81bFmTFIjob+Mc=;
	b=YoKRgwhAp78MJzd93oCesNXjw7Ycio+S7kvwK1i6xHARYrwsm3Wa6UMaMTzGYHM8bjZoWR
	vaHXZBcUrq/VEkYwbGp3kQyUbUGz+EuKc2OEqsZQEITDz+ovTU3Qk6lmBb8NzvOyCEzm6E
	RFWjvcAbKVUmLyk/eJJ31bDYUqdblg+w5aQPk+WE94qXsxAT/ABy63L31xjvdwnbtOEstw
	Gulzu+gVIApBU7xqWc65mKE10z1INu57LVSxd3I2penHHX204ZOcvU8VHNC9ybVkDedMJg
	N9pz+nzZ8VUMA9UROmEldwIbDjtSo6GR5bTN7ODHKx4Cc28ukjYUNszj73f6uQ==
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
Subject: [PATCH 0/2] Synchronize DT overlay removal with devlink removals
Date: Thu, 30 Nov 2023 18:41:07 +0100
Message-ID: <20231130174126.688486-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi,

In the following sequence:
  of_platform_depopulate(); /* Remove devices from a DT overlay node */
  of_overlay_remove(); /* Remove the DT overlay node itself */

Some warnings are raised by __of_changeset_entry_destroy() which  was
called from of_overlay_remove():
  ERROR: memory leak, expected refcount 1 instead of 2 ...

The issue is that, during the device devlink removals triggered from the
of_platform_depopulate(), jobs are put in a workqueue.
These jobs drop the reference to the devices. When a device is no more
referenced (refcount == 0), it is released and the reference to its
of_node is dropped by a call to of_node_put().
These operations are fully correct except that, because of the
workqueue, they are done asynchronously with respect to function calls.

In the sequence provided, the jobs are run too late, after the call to
__of_changeset_entry_destroy() and so a missing of_node_put() call is
detected by __of_changeset_entry_destroy().

This series fixes this issue introducing device_link_wait_removal() in
order to wait for the end of jobs execution (patch 1) and using this
function to synchronize the overlay removal with the end of jobs
execution (patch 2).

Best regards,
Hervé

Herve Codina (2):
  driver core: Introduce device_link_wait_removal()
  of: overlay: Synchronize of_overlay_remove() with the devlink removals

 drivers/base/core.c    | 26 +++++++++++++++++++++++---
 drivers/of/overlay.c   |  6 ++++++
 include/linux/device.h |  1 +
 3 files changed, 30 insertions(+), 3 deletions(-)

-- 
2.42.0


