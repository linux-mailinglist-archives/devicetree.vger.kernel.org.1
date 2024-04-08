Return-Path: <devicetree+bounces-57283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B4089CEBE
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 01:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED6391C21A62
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 23:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3659C149E10;
	Mon,  8 Apr 2024 23:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wpoY5xr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1FD1487C5
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 23:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712618006; cv=none; b=qWCobM+E7WQ6IIxRh9k+TIetEvKBfXRIUOrhZH58VMr3HG7LVd2pUs488at10GVdo0RiJz4I9GEenIll1kSiPDU72M/ouIDCrlfGmtqPDlieplSpw6vwpkSQu2Q5t97hrv5M4rulNfEP/EFzVljqAcj4vV+cyYOZFQPpJJEWX9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712618006; c=relaxed/simple;
	bh=UeZnCjsFlLic2qaSZoKNxomMdFYr768316T0wajX8u0=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=ibgRWHGXaKGD8PZBOLayrfruATwiHoPe4IWTTm4CcHgVuwYp6hY99fDCzA33t5+G50vuNLcp6sHrNZeOBC58I9yN62xHTbBbJNgQ87VSn5EBSKuKHxJg0+4wp55Yhg5VZvgUtpMXPE6XBTUQUPYR9OljD/VxSPPmu+oqkxzDSBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wpoY5xr6; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-60a2386e932so95630107b3.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 16:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712618003; x=1713222803; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=eHsEtZCKaHOJpKzkmFo1QTaciQX5xyBED5wwHFx24rA=;
        b=wpoY5xr6Eg6EIdLC4rv+CVpg8IK9m7r88Lq7sUjAN7JGmqQnHUkl7ZJNKkRv0aMcTo
         G1q5jvy3BPbTzUPL45v80/RmMSq10sQsTLzvUIprfThwt2mCsYXpoIry45LtahYfHeXX
         lFA0jtqu0e1KKoKr/7FAEVJcTzC6JYjpZtwpD8ucViQ2BfIULB+VYBuFlbLMjflb6nbF
         u2jVj527tvgYe2csd7Pejh+P0yQ613LZM08jj0G9cyKAey127wcXoUnBQL/XZv8aqqk0
         DBex7aHqv89gyXDNihMRO03qbY014eM2KPxKq9jWb5B35cu3LwnJ8+Sy+Z/QcS02pqlw
         G3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712618003; x=1713222803;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHsEtZCKaHOJpKzkmFo1QTaciQX5xyBED5wwHFx24rA=;
        b=gHvut7WsxqHEeNpfKiAExgf77CTRtTPl/iPbMTiJ7Ocbe4oEV59tflDVOmjdUq4ps2
         UB8t2e2F05jR0FQd5Vp58yDu1rxb3xvGMJv9ttuv1gRYM0iHvu7sjLoKK8gs5/Caar+L
         0vDnZbfnM6a9gGApXAavEYZLfYNeZFmdKvWTDFUdQbsP9rHiZS4daDEKWC622ZA0AyZi
         FwyXQvDxAzkzOvcT8IUc9gQegqool+fBOOfGFpjb0qub2jw1eShx1etZfQX5nmdaBrOS
         W8i9Lf4fNGqNF5YGWoIXlNcY+cWwSAixlSxtLflzQSkeTE4Bfoqk0DTGgI8nP90/uOU5
         gjFw==
X-Forwarded-Encrypted: i=1; AJvYcCVHNOqf4WB+UkUx9MzyvExRrA02HXNyQLB8zmp1WxG7pvNOepsLJ/mZoi/23zaq6rgXF0h/R/wPe7eNgKrT/Y+a5y4YgWrq6R3KKw==
X-Gm-Message-State: AOJu0Yz0ah39ApA3WTsllrlAKQhjTkAAuq48wudVjHW/fUW8rGfzJJlx
	AmpJID/BmBtROMdt3YgCclPoclNWIZlKdf92WecR4KUVURhWpUgYHUD7hj9yVWBB9vWykR5epmB
	76HjpxiAp0b3qdg==
X-Google-Smtp-Source: AGHT+IGUNVwH6Vn5KU9h3xgJ3juWehgll1GRUIrL/52jY9NzlwNFR0T9bAXNZP4TZgr6puPAMVlsBtbBaZPruJU=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:96d3:321a:67f3:5322])
 (user=saravanak job=sendgmr) by 2002:a05:690c:6e09:b0:615:33de:61d5 with SMTP
 id jb9-20020a05690c6e0900b0061533de61d5mr2900141ywb.1.1712618003548; Mon, 08
 Apr 2024 16:13:23 -0700 (PDT)
Date: Mon,  8 Apr 2024 16:13:08 -0700
In-Reply-To: <20240408231310.325451-1-saravanak@google.com>
Message-Id: <20240408231310.325451-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240408231310.325451-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
Subject: [RFC PATCH v1 1/2] Revert "treewide: Fix probing of devices in DT overlays"
From: Saravana Kannan <saravanak@google.com>
To: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This reverts commit 1a50d9403fb90cbe4dea0ec9fd0351d2ecbd8924.
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
2.44.0.478.gd926399ef9-goog


