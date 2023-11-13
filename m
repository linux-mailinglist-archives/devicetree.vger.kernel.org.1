Return-Path: <devicetree+bounces-15401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6037D7E9E9E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A04E280E71
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F972134A;
	Mon, 13 Nov 2023 14:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dkrLrBm0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8760210F3;
	Mon, 13 Nov 2023 14:27:05 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BA4D6E;
	Mon, 13 Nov 2023 06:27:03 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F36D91C0006;
	Mon, 13 Nov 2023 14:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699885622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cnUtq32WECjfa76r/drw3nv80tgUh5X0WPjXLzFlw28=;
	b=dkrLrBm0G6WnQIfo4v7EkNmhc1fxeqZv1l6opb3gjHwULojiv5p/NaJkGUcgKv6etaoTPi
	0ADc6WeA4CdTabdx64+7Gy6f75FiUnUNQLtLQseNQx/zupfA/EeObKE/1sR3HGVLTDLlHM
	Z7kk8kfQ1SjxnzJwKIPBztWSCscdZ887WmLlRhjPQw8cKbTzt9uJ1yImGdhxThhyNu2gcI
	mNkXD5ji2f8B+Vz9TPGfvS9qEzz+GHVuLlueiKEMLpXbzezYnSKIVFa21m+qkzSOiKy7Ic
	4YXN4WaS+eim3Llkje2kUE2pwefMyWZL7qdftfkh4ktna5b+quJLChPti4S6Ew==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 13 Nov 2023 15:26:59 +0100
Subject: [PATCH 4/6] usb: cdns3: support power-off of controller when in
 host role
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231113-j7200-usb-suspend-v1-4-ad1ee714835c@bootlin.com>
References: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
In-Reply-To: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, 
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: theo.lebrun@bootlin.com

The controller is not being reconfigured at resume. Change resume to
redo hardware config if quirk CDNS3_RESET_ON_RESUME is active.

Platform data comes from the parent driver (eg cdns3-ti).

The quirk should be passed if the platform driver knows that the
controller might be in reset state at resume. We do NOT reconfigure the
hardware without this quirk to avoid losing state if we did a suspend
without reset.

If the quirk is on, we notify the xHCI subsystem that:

1. We reset on resume. It will therefore redo the xHC init & trigger
   such message as "root hub lost power or was reset" in dmesg.

2. It should disable/enable clocks on suspend/resume. This does not
   matter on our platform as xhci-plat does not get access to any clock
   but it would be the right thing to do if we indeed had such clocks.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/usb/cdns3/core.h |  1 +
 drivers/usb/cdns3/host.c | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/usb/cdns3/core.h b/drivers/usb/cdns3/core.h
index 81a9c9d6be08..7487067ba23f 100644
--- a/drivers/usb/cdns3/core.h
+++ b/drivers/usb/cdns3/core.h
@@ -44,6 +44,7 @@ struct cdns3_platform_data {
 			bool suspend, bool wakeup);
 	unsigned long quirks;
 #define CDNS3_DEFAULT_PM_RUNTIME_ALLOW	BIT(0)
+#define CDNS3_RESET_ON_RESUME		BIT(1)
 };
 
 /**
diff --git a/drivers/usb/cdns3/host.c b/drivers/usb/cdns3/host.c
index 6164fc4c96a4..a81019a7c8cc 100644
--- a/drivers/usb/cdns3/host.c
+++ b/drivers/usb/cdns3/host.c
@@ -88,6 +88,9 @@ static int __cdns_host_init(struct cdns *cdns)
 		goto err1;
 	}
 
+	if (cdns->pdata && cdns->pdata->quirks & CDNS3_RESET_ON_RESUME)
+		cdns->xhci_plat_data->quirks |= XHCI_RESET_ON_RESUME | XHCI_SUSPEND_RESUME_CLKS;
+
 	if (cdns->pdata && (cdns->pdata->quirks & CDNS3_DEFAULT_PM_RUNTIME_ALLOW))
 		cdns->xhci_plat_data->quirks |= XHCI_DEFAULT_PM_RUNTIME_ALLOW;
 
@@ -124,6 +127,18 @@ static void cdns_host_exit(struct cdns *cdns)
 	cdns_drd_host_off(cdns);
 }
 
+static int cdns_host_suspend(struct cdns *cdns, bool do_wakeup)
+{
+	if (!do_wakeup)
+		cdns_drd_host_off(cdns);
+	return 0;
+}
+
+static int cdns_host_resume(struct cdns *cdns, bool hibernated)
+{
+	return cdns_drd_host_on(cdns);
+}
+
 int cdns_host_init(struct cdns *cdns)
 {
 	struct cdns_role_driver *rdrv;
@@ -137,6 +152,11 @@ int cdns_host_init(struct cdns *cdns)
 	rdrv->state	= CDNS_ROLE_STATE_INACTIVE;
 	rdrv->name	= "host";
 
+	if (cdns->pdata && cdns->pdata->quirks & CDNS3_RESET_ON_RESUME) {
+		rdrv->suspend = cdns_host_suspend;
+		rdrv->resume = cdns_host_resume;
+	}
+
 	cdns->roles[USB_ROLE_HOST] = rdrv;
 
 	return 0;

-- 
2.41.0


