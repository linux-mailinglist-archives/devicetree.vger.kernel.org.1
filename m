Return-Path: <devicetree+bounces-58459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C158A22B3
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 01:57:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A0591F22246
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 23:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8F150275;
	Thu, 11 Apr 2024 23:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OtsgjEpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4244DA04
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 23:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712879797; cv=none; b=D4Rbqy0u99p4dwIYam4bCdb57xC2odxOlBonlkoXXYujv2DYOkwGQs+fSEr9xfo6KCMqFzWGSg/0DCR7R050SPT0MbwnZM0HM9cLB8Qhsk5yMwdA5Mw4Q3QD6xErRvPYCiBLqDOSxH31RHS6DhVAuxlhMrM714bk5o7vAEFexrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712879797; c=relaxed/simple;
	bh=F1I74kxyGocGA+G2MnwZ3U1GGblglJxPUgcMkv2SMGU=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=L6zN4F9WPwv1P1JZ271mC5fOFeYWIwHYES8WKQqCul5foFOxF+AsHShekf1PlP+5UC6XnSWPgs9paPbwidOwYYQ3JvayGk5zyOhtzzjs9U/GBQgNr8kzP0a1Zeyk9F88HMAPMWzjiUjHYYPaf2ThfJvUUhl+dcnMUlZse5PdViM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OtsgjEpt; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dd0ae66422fso860656276.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 16:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712879790; x=1713484590; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=jT0tMCUG5C45vynKdJTKsAOSulSDMwPl00tKOsyCLZI=;
        b=OtsgjEpte8fFldSLBzxFXK0P7yW3O0dMXz+gQV/m7XTTh+8Egz7a+zDIo0ySfrP1yN
         vpB95zHtQDXWf2OKc4U4l+6Bye6nQ65BkY4DMX7vrKnUNcjz9HjNbGIOtGuwvhy5507X
         zaFoVvgdQa+Hv9j6G3VE16/ES4FB/sIC0KFQmUsgHHoZxZIwioShCoLoGQrfr9AzG0tU
         gmQTNrJZAGhmP/0Fq/lX0FI++85awoPM9abY3rs59dpjv/FWSVATgblnnke6p/7a6GFZ
         +lFV4omOxCBWiWQUbbz5bFxXLV10XIgfvelwThivIKh+EbCV7CFNwqVFxmGBrH6UNugr
         I+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712879790; x=1713484590;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jT0tMCUG5C45vynKdJTKsAOSulSDMwPl00tKOsyCLZI=;
        b=S7E9wvtqSeW2gNwzaQAuX7zBk3QCTLzB9rksR4LcUrb+rKkWqelA+08iBRjpBwdxCM
         jn07WAa2u+R26DT0w07asMN4MaynuHd/3ntcjHdsRc8YgSWqGNGCKEGwXPiZ7IqiEQln
         6nlKwjSWzh+x8zx3gIBNgPzP1PvDEdf/j9PkyZtGMeCkku+TkUoD4zL//F8XnZkuNaTv
         ftEQdJMeBuLzUJ24xSeqFw7RqYtSpBd6YSYMgkXErX7QDA3AQvI8heSTtmjV9DUM7ESn
         K7fLhGPrLcpIuzBGeJWLhE9uwMOBpU/DUFBBooRhslEON4KqqMKEv665ht51IcUoceez
         FUiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh3mcs7MyzUIjeT360z1yPu9h2quWIL2VPWouz6B1lWS5muQxqvP0aK5Qb99mIU9+BZy6x/WBR033f5xCzyLNq/Btxaf89ZN5RiA==
X-Gm-Message-State: AOJu0YwtuyadzZMr4UhUZf/eS5x+cZsQVh6M+fXG/jRBHNSKQrDIjZ3l
	tJ7dek2uvbGe/IW+TM4WGmU9cEN48Q3bRc+5ddsRSZBWInypej+higL0azy6cTBcAUyIxBxmWW1
	LvLXfwd5+wbjxkg==
X-Google-Smtp-Source: AGHT+IEvR1JaDEbMFFioYt0KHpMJr1gBv9IJB0hOdL9dLeYPT6CmjFeSm9ekim1dAEyyL80zGuQNzSbprufcUNI=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:a472:f40c:d4ba:c29])
 (user=saravanak job=sendgmr) by 2002:a05:6902:708:b0:dbe:d0a9:2be3 with SMTP
 id k8-20020a056902070800b00dbed0a92be3mr404697ybt.3.1712879790017; Thu, 11
 Apr 2024 16:56:30 -0700 (PDT)
Date: Thu, 11 Apr 2024 16:56:21 -0700
In-Reply-To: <20240411235623.1260061-1-saravanak@google.com>
Message-Id: <20240411235623.1260061-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240411235623.1260061-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
Subject: [PATCH v3 1/2] Revert "treewide: Fix probing of devices in DT overlays"
From: Saravana Kannan <saravanak@google.com>
To: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Mark Brown <broonie@kernel.org>, Len Brown <lenb@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: kernel-team@android.com, Wolfram Sang <wsa@kernel.org>, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This reverts commit 1a50d9403fb90cbe4dea0ec9fd0351d2ecbd8924.

While the commit fixed fw_devlink overlay handling for one case, it
broke it for another case. So revert it and redo the fix in a separate
patch.

Fixes: 1a50d9403fb9 ("treewide: Fix probing of devices in DT overlays")
Reported-by: Herve Codina <herve.codina@bootlin.com>
Closes: https://lore.kernel.org/lkml/CAMuHMdXEnSD4rRJ-o90x4OprUacN_rJgyo8x6=9F9rZ+-KzjOg@mail.gmail.com/
Closes: https://lore.kernel.org/all/20240221095137.616d2aaa@bootlin.com/
Closes: https://lore.kernel.org/lkml/20240312151835.29ef62a0@bootlin.com/
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/bus/imx-weim.c    | 6 ------
 drivers/i2c/i2c-core-of.c | 5 -----
 drivers/of/dynamic.c      | 1 -
 drivers/of/platform.c     | 5 -----
 drivers/spi/spi.c         | 5 -----
 5 files changed, 22 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 837bf9d51c6e..caaf887e0ccc 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -331,12 +331,6 @@ static int of_weim_notify(struct notifier_block *nb, unsigned long action,
 				 "Failed to setup timing for '%pOF'\n", rd->dn);
 
 		if (!of_node_check_flag(rd->dn, OF_POPULATED)) {
-			/*
-			 * Clear the flag before adding the device so that
-			 * fw_devlink doesn't skip adding consumers to this
-			 * device.
-			 */
-			rd->dn->fwnode.flags &= ~FWNODE_FLAG_NOT_DEVICE;
 			if (!of_platform_device_create(rd->dn, NULL, &pdev->dev)) {
 				dev_err(&pdev->dev,
 					"Failed to create child device '%pOF'\n",
diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
index a6c407d36800..a250921bbce0 100644
--- a/drivers/i2c/i2c-core-of.c
+++ b/drivers/i2c/i2c-core-of.c
@@ -178,11 +178,6 @@ static int of_i2c_notify(struct notifier_block *nb, unsigned long action,
 			return NOTIFY_OK;
 		}
 
-		/*
-		 * Clear the flag before adding the device so that fw_devlink
-		 * doesn't skip adding consumers to this device.
-		 */
-		rd->dn->fwnode.flags &= ~FWNODE_FLAG_NOT_DEVICE;
 		client = of_i2c_register_device(adap, rd->dn);
 		if (IS_ERR(client)) {
 			dev_err(&adap->dev, "failed to create client for '%pOF'\n",
diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 4d57a4e34105..19a1a38554f2 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -224,7 +224,6 @@ static void __of_attach_node(struct device_node *np)
 	np->sibling = np->parent->child;
 	np->parent->child = np;
 	of_node_clear_flag(np, OF_DETACHED);
-	np->fwnode.flags |= FWNODE_FLAG_NOT_DEVICE;
 
 	raw_spin_unlock_irqrestore(&devtree_lock, flags);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 389d4ea6bfc1..efd861fa254f 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -743,11 +743,6 @@ static int of_platform_notify(struct notifier_block *nb,
 		if (of_node_check_flag(rd->dn, OF_POPULATED))
 			return NOTIFY_OK;
 
-		/*
-		 * Clear the flag before adding the device so that fw_devlink
-		 * doesn't skip adding consumers to this device.
-		 */
-		rd->dn->fwnode.flags &= ~FWNODE_FLAG_NOT_DEVICE;
 		/* pdev_parent may be NULL when no bus platform device */
 		pdev_parent = of_find_device_by_node(rd->dn->parent);
 		pdev = of_platform_device_create(rd->dn, NULL,
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index ff75838c1b5d..17cd417f7681 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -4761,11 +4761,6 @@ static int of_spi_notify(struct notifier_block *nb, unsigned long action,
 			return NOTIFY_OK;
 		}
 
-		/*
-		 * Clear the flag before adding the device so that fw_devlink
-		 * doesn't skip adding consumers to this device.
-		 */
-		rd->dn->fwnode.flags &= ~FWNODE_FLAG_NOT_DEVICE;
 		spi = of_register_spi_device(ctlr, rd->dn);
 		put_device(&ctlr->dev);
 
-- 
2.44.0.683.g7961c838ac-goog


