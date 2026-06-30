Return-Path: <devicetree+bounces-317626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jjB1MYCdQ2rEdQoAu9opvQ
	(envelope-from <devicetree+bounces-317626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:42:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4FB6E30C6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:42:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=JK8hOA7n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317626-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317626-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43E52307196D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C56B43F20E7;
	Tue, 30 Jun 2026 10:27:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6623F0AAD;
	Tue, 30 Jun 2026 10:27:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815272; cv=none; b=GqvFqMkUNx430rVf4RaOzNg75bZHQlDbhUx5FIV1RQPgxHDZuq8mHS4lydjk8PvfVdCrPagqpvLPIe/zsL1KnyfXxPoLAb6IvczB+zTonMnNqsqXr5KpB5wdnBiX9i7WoIIqC3WstjHhs3h9NUY+F7jjj8yjc591bKbpANecTVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815272; c=relaxed/simple;
	bh=w3bzU5+fI005BUSDFvDAmi3e1zzqSzsVWsUAnGjFQic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iFywwjQcCxYaKjqTPZdFfH0V6Zc6asUPKHa+/TbzAugBB4lqN0mFJcFC7RwjbE6SZVXR6uXJyhik1LxSOKWkS97QsEb/KrQDG8bO2wQG4ameCwbx6/c/r6BJjV5mK63gJc/Qy4vlPjwuQywuvHEgEkDfDF4BfKyh1Nf1KjKQjUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JK8hOA7n; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C6D5B4E40BA4;
	Tue, 30 Jun 2026 10:27:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9A9686025A;
	Tue, 30 Jun 2026 10:27:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 05BE0106F1D67;
	Tue, 30 Jun 2026 12:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782815268; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=f43D8ATRX3ZZph2a3Y4bwWOu8qESFbudFIHWHnMpJY0=;
	b=JK8hOA7nxoF2EmxucLamkx9/cuUmYoi2GPUrDtEM2HfJ/YDFpQ3sXUhupxvhTfhDKsessr
	J49QlT+N5om8nxwjUd9KfAhXeqA3eLH4aS7LPTzkV+WmkVLcm4HmgfsUMkEQIjmKcQHwVJ
	EWOsC9PCFm/Vmy0RWM+WpI99UGIK114izfCEAPe5fLVEb58mkIroCr/PKLJwhqlMeoYsSH
	dQ0eGC0l8C+Mlqdo2+TyfwLEj4/ujszq1uZEBpi+vI06eg3gdELu7hfrljbm/L9tZO8+Sw
	esH49xhUvI8MUVVzNc/Z8IDVZnun1eLfRgJ5U21kCBckFYD49n0c9Rnia0Mx6g==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kalle Niemi <kaleposti@gmail.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: driver-core@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v8 2/2] bus: simple-pm-bus: Populate child nodes at probe
Date: Tue, 30 Jun 2026 12:27:13 +0200
Message-ID: <20260630102717.413501-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260630102717.413501-1-herve.codina@bootlin.com>
References: <20260630102717.413501-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317626-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,glider.be,gmail.com,linuxfoundation.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:robh@kernel.org,m:saravanak@kernel.org,m:geert+renesas@glider.be,m:kaleposti@gmail.com,m:mazziesaccount@gmail.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:allan.nielsen@microchip.com,m:horatiu.vultur@microchip.com,m:daniel.machon@microchip.com,m:steen.hegelund@microchip.com,m:luca.ceresoli@bootlin.com,m:thomas.petazzoni@bootlin.com,m:herve.codina@bootlin.com,m:geert@glider.be,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB4FB6E30C6

The simple-pm-bus driver handles several simple busses. When it is used
with busses other than a compatible "simple-pm-bus", it doesn't populate
its child devices during its probe.

This confuses fw_devlink and results in wrong or missing devlinks.

Once a driver is bound to a device and the probe() has been called,
device_links_driver_bound() is called.

This function performs operation based on the following assumption:
    If a child firmware node of the bound device is not added as a
    device, it will never be added.

Among operations done on fw_devlinks of those "never be added" devices,
device_links_driver_bound() changes their supplier.

With devices attached to a simple-bus compatible device, this change
leads to wrong devlinks where supplier of devices points to the device
parent (i.e. simple-bus compatible device) instead of the device itself
(i.e. simple-bus child).

When the device attached to the simple-bus is removed, because devlinks
are not correct, its consumers are not removed first.

In order to have correct devlinks created, make the simple-pm-bus driver
compliant with the devlink assumption and create its child devices
during its probe.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/bus/simple-pm-bus.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
index 4b2a793dfbd9..d969bf19a4e9 100644
--- a/drivers/bus/simple-pm-bus.c
+++ b/drivers/bus/simple-pm-bus.c
@@ -42,14 +42,15 @@ static int simple_pm_bus_probe(struct platform_device *pdev)
 	match = of_match_device(dev->driver->of_match_table, dev);
 	/*
 	 * These are transparent bus devices (not simple-pm-bus matches) that
-	 * have their child nodes populated automatically.  So, don't need to
-	 * do anything more. We only match with the device if this driver is
-	 * the most specific match because we don't want to incorrectly bind to
-	 * a device that has a more specific driver.
+	 * need to have their child nodes populated. So, don't need to do
+	 * anything more except populate child nodes during this probe(). We
+	 * only match with the device if this driver is the most specific match
+	 * because we don't want to incorrectly bind to a device that has a more
+	 * specific driver.
 	 */
 	if (match && match->data) {
 		if (of_property_match_string(np, "compatible", match->compatible) == 0)
-			return 0;
+			goto populate;
 		else
 			return -ENODEV;
 	}
@@ -64,13 +65,14 @@ static int simple_pm_bus_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, bus);
 
-	dev_dbg(&pdev->dev, "%s\n", __func__);
-
 	pm_runtime_enable(&pdev->dev);
 
+populate:
 	if (np)
 		of_platform_populate(np, NULL, lookup, &pdev->dev);
 
+	dev_dbg(&pdev->dev, "%s\n", __func__);
+
 	return 0;
 }
 
@@ -78,7 +80,7 @@ static void simple_pm_bus_remove(struct platform_device *pdev)
 {
 	const void *data = of_device_get_match_data(&pdev->dev);
 
-	if (device_has_driver_override(&pdev->dev) || data)
+	if (device_has_driver_override(&pdev->dev))
 		return;
 
 	dev_dbg(&pdev->dev, "%s\n", __func__);
@@ -86,7 +88,8 @@ static void simple_pm_bus_remove(struct platform_device *pdev)
 	if (pdev->dev.of_node)
 		of_platform_depopulate(&pdev->dev);
 
-	pm_runtime_disable(&pdev->dev);
+	if (!data)
+		pm_runtime_disable(&pdev->dev);
 }
 
 static int simple_pm_bus_runtime_suspend(struct device *dev)
-- 
2.54.0


