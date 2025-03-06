Return-Path: <devicetree+bounces-154790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A130A548EF
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5428A173377
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A56120B801;
	Thu,  6 Mar 2025 11:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a4iDmv7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE320B1E2
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259766; cv=none; b=k9t9HnyU2gl/XqKFf++m2OZ1t81o/n6V/TLz2fKtHMmtbyzhO2wnY0mfbB8sAnxSugVcU5fcoldOaO8NoiSsWFD7P11C6qjpVD1ZfHo538kdt2VSNd1/Muga7hLvM6YnCbdKG0mSpt4EchINtC9RQ7md1S8qhs6AQ8tCecyhyRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259766; c=relaxed/simple;
	bh=fPymUYl9ngaWf3SHgyvMGysC90ZPypUMCZh825GprU8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qtufm4xFCBAHIDapabQt5eam1yk8ZoEAI7jJ6oCmzp2TyduNDOI5VCcEBt3zKXNjI1c84A4EpN85eXJzmuLojf6aveuUAou4XEzXVY65uSzWOtx+5r+vItZ6Wc5P0tnbJ9a0TCePXwgB+T82vteqkFXaefSbzP8W452gd5apSyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a4iDmv7f; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abf4cebb04dso107543666b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259762; x=1741864562; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKABIWtcV5iN1s5ZB+QKBynZqHqAumHFyPcKwtZx728=;
        b=a4iDmv7f+OxBk+LxTQjILHdDQ0dJG6JjsSOngPqgOg7/g6/dzuH6y5PcEJMT/JAe8a
         9ITWNulBjtWDXF3t2wn3yNWPavnqRgV0csKibJIuNSLYJCANcvKHa1roCUxrN4C93Wao
         eUt76uXp2PxFLHfY7kgL1w8wVFCU6hFc3Hpe6gVZfg0bbQzJHtNrVIY71Uu3aIzMnEml
         BOJeUhfw8NvvO2d9HM6mp92ynmTDkkmfvForEGI1NK3dZNSLY1+DV7up6NpLnodNidfx
         633pYyvqJ9+gAmWc/q2IEJtFJ+TXnWoe2uUAH9DsJO7J45Mj6uncFa9/R9T5ejVdprZg
         uH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259762; x=1741864562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nKABIWtcV5iN1s5ZB+QKBynZqHqAumHFyPcKwtZx728=;
        b=vv87w6AcZm4yaFsLy9oi+cBj4qDhsGCzE/PLscxtLfIjtbfCLEps1TlLtkyUNICBqO
         C55c7HTP8o/Si8BgFhgMA/W6n2ukME+Cx7S1mOFKc46C8mppIAQm15g6hNLtEpm8SSuD
         FkZHLsxD+AXf3djcUoJRbC0u9Yz31NZGhVx76WOVCVKIuGc25WgiK6pdIsP6mDtHAjS9
         8r46j2RYRQYDjlOtP2BsfedZsVBkBbu6uG3/tzQ9XV5VffMlOE7E+ZBB6GMuBM3GT6J0
         LJra93Br/gXJneEHsJgkA/3Q/IRr3PQ7oZVj9l1kUy+kbP9/Eh1ZlPriGng/aBLWMIHO
         VZFA==
X-Forwarded-Encrypted: i=1; AJvYcCUvSxi2Y0SzmhOau/p49o01tJHBqot1XnqaML7n5NXcghjFZM3+FUwVD5d3FEe8JBLyFW6KvxYGQIVQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwF2mPp6gUX7aWC4gf9a8nYlfFfo+N9qLpbloF2BZTlGp2OItbB
	7qu7g8ymmN9VZwIk0C6pgCJHtx9kG1Yvnb4q0r/heTpsrL+zrEyJgEmPtTLN++8=
X-Gm-Gg: ASbGncujSD6+kh3R0bGWv3mToybqNzxHhEUbuKgG0E/rTjEHAzy35FVirVn45pxsq6P
	LtIq0QvJgz66fRnXUJIzkmdSIlwzxJLONKF10Y9q2Z7KoJ7GRS38mFfBQe1F5AKYBOiJ2/mM63W
	SNvKyAR5G/KLUcJqpkuun3IkxmaMSYjb2xT0t2RJ4Wh27IrZ/7dwSZ2A1E9pw3kWxuHUbQ648/M
	Fwb/DhcmIqYjAlmcjlQX4UPCtH3IT3yJ+m+GCsiq+bfx9Tm/Nl6ST0znKRHnlNA8UU9Xu4cPkNl
	iFdyI5/Mb36n6OQkMZpv+Yle64QnR/9nSS9WaiCO8Q==
X-Google-Smtp-Source: AGHT+IFzQjVI6La/fumbYhe/tIf2DHPmT0/Tg7rUjpYZXnegofxlVrDrXprOyMSVtKs+Ncydte7CDQ==
X-Received: by 2002:a17:906:c142:b0:abf:7a26:c473 with SMTP id a640c23a62f3a-ac22cba0296mr292630166b.13.1741259762247;
        Thu, 06 Mar 2025 03:16:02 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac239482096sm80348766b.54.2025.03.06.03.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:16:01 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:43 +0100
Subject: [PATCH v5 05/13] can: m_can: Return ERR_PTR on error in allocation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-5-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3520; i=msp@baylibre.com;
 h=from:subject:message-id; bh=fPymUYl9ngaWf3SHgyvMGysC90ZPypUMCZh825GprU8=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNh94ufOPjv+RD2e8Djx/5537bMpvzlkf2iSfHpr5+
 anYpxtWcR2lLAxiHAyyYoosdz8sfFcnd31BxLpHjjBzWJlAhjBwcQrARParMzJ8iI+2fDgjeiN3
 1El57vOn5t7QYzO+uUujujv+rcOUcG1tRoYpU+48DnrfuCtm4V2B4sxvocHHjyxNYks+1xJ18c6
 tX94cAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

We have more detailed error values available, return them in the core
driver and the calling drivers to return proper errors to callers.

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c          | 6 +++---
 drivers/net/can/m_can/m_can_pci.c      | 4 ++--
 drivers/net/can/m_can/m_can_platform.c | 4 ++--
 drivers/net/can/m_can/tcan4x5x-core.c  | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 20f7533ad9e7735013ff000e6f3b11d016f8a09f..20fbef50db20ab5cea5afe4c44fda8b03e5c8c85 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2392,7 +2392,7 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 					     sizeof(mram_config_vals) / 4);
 	if (ret) {
 		dev_err(dev, "Could not get Message RAM configuration.");
-		goto out;
+		return ERR_PTR(ret);
 	}
 
 	if (dev->of_node && of_property_read_bool(dev->of_node, "wakeup-source"))
@@ -2407,7 +2407,7 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	net_dev = alloc_candev(sizeof_priv, tx_fifo_size);
 	if (!net_dev) {
 		dev_err(dev, "Failed to allocate CAN device");
-		goto out;
+		return ERR_PTR(-ENOMEM);
 	}
 
 	class_dev = netdev_priv(net_dev);
@@ -2416,7 +2416,7 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	SET_NETDEV_DEV(net_dev, dev);
 
 	m_can_of_parse_mram(class_dev, mram_config_vals);
-out:
+
 	return class_dev;
 }
 EXPORT_SYMBOL_GPL(m_can_class_allocate_dev);
diff --git a/drivers/net/can/m_can/m_can_pci.c b/drivers/net/can/m_can/m_can_pci.c
index 9ad7419f88f83016e93667f4847fe536eca39ad1..eb31ed1f964491ab41c7811be317706a09951390 100644
--- a/drivers/net/can/m_can/m_can_pci.c
+++ b/drivers/net/can/m_can/m_can_pci.c
@@ -111,8 +111,8 @@ static int m_can_pci_probe(struct pci_dev *pci, const struct pci_device_id *id)
 
 	mcan_class = m_can_class_allocate_dev(&pci->dev,
 					      sizeof(struct m_can_pci_priv));
-	if (!mcan_class)
-		return -ENOMEM;
+	if (IS_ERR(mcan_class))
+		return PTR_ERR(mcan_class);
 
 	priv = cdev_to_priv(mcan_class);
 
diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_can/m_can_platform.c
index b832566efda042929486578fad1879c7ad4a0cff..40bd10f71f0e2fab847c40c5bd5f7d85d3d46712 100644
--- a/drivers/net/can/m_can/m_can_platform.c
+++ b/drivers/net/can/m_can/m_can_platform.c
@@ -87,8 +87,8 @@ static int m_can_plat_probe(struct platform_device *pdev)
 
 	mcan_class = m_can_class_allocate_dev(&pdev->dev,
 					      sizeof(struct m_can_plat_priv));
-	if (!mcan_class)
-		return -ENOMEM;
+	if (IS_ERR(mcan_class))
+		return PTR_ERR(mcan_class);
 
 	priv = cdev_to_priv(mcan_class);
 
diff --git a/drivers/net/can/m_can/tcan4x5x-core.c b/drivers/net/can/m_can/tcan4x5x-core.c
index e5c162f8c589b2c75c51cd8a994fc93ab507b9dc..5523ad8c9175cacd330a330b0f45d2c6515d11fa 100644
--- a/drivers/net/can/m_can/tcan4x5x-core.c
+++ b/drivers/net/can/m_can/tcan4x5x-core.c
@@ -401,8 +401,8 @@ static int tcan4x5x_can_probe(struct spi_device *spi)
 
 	mcan_class = m_can_class_allocate_dev(&spi->dev,
 					      sizeof(struct tcan4x5x_priv));
-	if (!mcan_class)
-		return -ENOMEM;
+	if (IS_ERR(mcan_class))
+		return PTR_ERR(mcan_class);
 
 	ret = m_can_check_mram_cfg(mcan_class, TCAN4X5X_MRAM_SIZE);
 	if (ret)

-- 
2.47.2


