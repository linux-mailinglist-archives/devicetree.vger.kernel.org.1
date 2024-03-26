Return-Path: <devicetree+bounces-53620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D578388CDAA
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FC072E59AC
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 19:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B6213D284;
	Tue, 26 Mar 2024 19:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="cEFgeM1S"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F3213D26F
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 19:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483104; cv=none; b=OhpXgdJe9tRLy10NlwTZS9fttJEBdonho+EltmlWKOtx15MLfqMs+gTkxt0/NKqtz5Ak1CsAlFyZnxNYzhV+qSzdkp5GkCDShz9dAwu6zlJJNzf0rosJfNEOelJ8Ja9AzQuSk3rJ0yOIomWxCFHYC8Idd/gWmfGSHODdNTuOBHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483104; c=relaxed/simple;
	bh=NOOXMotqlANDklHCIQd9xpIBR4UrQSUA1aIhSFEYwl4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WkkxmWmR3Art/wRG78gfMhiVaolQNzbVCLhb3IkX+NDYgWehRqpa4MhIv3nZeS+8Srr9u0qH8OaUF3RBzsmX3UIlilhSKTofRyS/paCIA/Ao5QVuimLDFfBYrZviaKE+7v0YlGipUtiFMsJNKbOI+7VBwuiqoLlL88rQUvrYVrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=cEFgeM1S; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 886A81211;
	Tue, 26 Mar 2024 20:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711483069;
	bh=NOOXMotqlANDklHCIQd9xpIBR4UrQSUA1aIhSFEYwl4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cEFgeM1SjYUBwFoJdV8tdgMy4rceDRa5Wtm94TukJo0JhVLwiwq3XVcoPb8RM0cwF
	 pEng6rZl9mmvh9KHXFzbn13fUylazlM+0fHHW2Nss3YSnfJkLzCeoZgqXAUrk9v/iO
	 lWLasM4EAEWwl9gGGpIqsbwL+RXEaedXbwi4g0TI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2 2/3] firmware: raspberrypi: Use correct device for DMA mappings
Date: Tue, 26 Mar 2024 21:58:06 +0200
Message-ID: <20240326195807.15163-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The buffer used to transfer data over the mailbox interface is mapped
using the client's device. This is incorrect, as the device performing
the DMA transfer is the mailbox itself. Fix it by using the mailbox
controller device instead.

This requires including the mailbox_controller.h header to dereference
the mbox_chan and mbox_controller structures. The header is not meant to
be included by clients. This could be fixed by extending the client API
with a function to access the controller's device.

Fixes: 4e3d60656a72 ("ARM: bcm2835: Add the Raspberry Pi firmware driver")
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/firmware/raspberrypi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index 322aada20f74..ac34876a97f8 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -9,6 +9,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/kref.h>
 #include <linux/mailbox_client.h>
+#include <linux/mailbox_controller.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
@@ -97,8 +98,8 @@ int rpi_firmware_property_list(struct rpi_firmware *fw,
 	if (size & 3)
 		return -EINVAL;
 
-	buf = dma_alloc_coherent(fw->cl.dev, PAGE_ALIGN(size), &bus_addr,
-				 GFP_ATOMIC);
+	buf = dma_alloc_coherent(fw->chan->mbox->dev, PAGE_ALIGN(size),
+				 &bus_addr, GFP_ATOMIC);
 	if (!buf)
 		return -ENOMEM;
 
@@ -126,7 +127,7 @@ int rpi_firmware_property_list(struct rpi_firmware *fw,
 		ret = -EINVAL;
 	}
 
-	dma_free_coherent(fw->cl.dev, PAGE_ALIGN(size), buf, bus_addr);
+	dma_free_coherent(fw->chan->mbox->dev, PAGE_ALIGN(size), buf, bus_addr);
 
 	return ret;
 }
-- 
Regards,

Laurent Pinchart


