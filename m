Return-Path: <devicetree+bounces-58458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F828A22B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 01:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19D441C23767
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 23:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C7C50271;
	Thu, 11 Apr 2024 23:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dnidCYdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0BB4F885
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712879797; cv=none; b=FgJW5/wEcO5GU85ak86Ss68e0tu2fuHseUL7r7qLwy1BqhJtMqZZSKq8xdGK7dmi4U/nhgbpLT+Z5evSEzEaet7ZJ97jhI0iLB5eR6aQ8ZxdL+Xk8NoK0eORAnz6t4gOhHfZoeRtRJifglCUuchImU+0OBXYXCxVWDQJOV8LKEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712879797; c=relaxed/simple;
	bh=UD3bfhO0YU3iaHR4sW0PiOGB9kKHCclU23sLM4TNyko=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=i9MAv1u9+GqE4bxTLG4HFooeXneCX1WfvAdbyvjgs+mfnJqW7efqAi8jseCti1gFgGpUyQOIlSdDPodmaKxkKA+66bL3u2ANCkNWQ+QjYl8vGAdC2iBdJN9+VvLM5IuPoxslNEuE4mEQD4kfHZZ7luCQzooFj5tEO0MX1xBvdMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dnidCYdd; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2a47006e272so318552a91.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 16:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712879794; x=1713484594; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=HizrqH7rz47v2QLp5elrgTIyG7EQRo9SAEpqH/+kBy0=;
        b=dnidCYddh4Hp9/Vk+RCG0BRni9c0LPOYrEwhKFJyNl7c/MkHmQJip5tAHce/H/Vcll
         7gOfQ5VXal3ql81vb0cp0r+oJ4Z/MT5if8yfm4L9Q+spCXxYRvGpat49lkLVez4Qv2rt
         MdVhkQ46PUzxtNCYg8mHF32SepKfyudYxbPhK84zddM4CzU1ckGkH0OfwgmrysIf8YE3
         sx7m2XO+lPECyrqGKJPfSn4SuMbCZzPeuXyr4R0u9PGoCyzPQzNzkmFRpLdvr6fZVF4N
         a+7pfCI7zOBT5D0MLV66V6FQVadHDmlriHdIf3OYW1XrZVkdoGIQA/M4X9AW8+iOJS7e
         /Fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712879794; x=1713484594;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HizrqH7rz47v2QLp5elrgTIyG7EQRo9SAEpqH/+kBy0=;
        b=RtcQIycTTe4C6leQ1LhXwTAX3YuAjusXzk+45juortmIUm+XgHM1YnXcqMUDzuxW6W
         5MZR3by106hxoPvCHHLjkLF129STSKQGqZp3H/qygd/qJzF8bSKcJhww4nFJC9ZLg/VJ
         pdV53lRTf7k9vrZ84P0H5zOz7xTjTdO/GdG4SYMgBKIXiY1tSaV94oAIm8VJD5qjOThp
         2wbhhcCzwCFOJzXjYg+FG/jlNSGH2Lo9lPBXqZylq3yzt5SS/M7PUpbW996V0AISbUEd
         GYZS4cWeNCcGCda5Bd6C0vQwKzy/cbu0x8UbZ9IX6woFSjB7iagSk/ugp7dJanifNXvw
         XoMA==
X-Forwarded-Encrypted: i=1; AJvYcCUogsFTuUg8io3xH8cY18shTUOccGb+MGB6vHskY4m71chN7fJ36Nv1Tha9EbBLqOGTgdQaIFSLqRvgqawOtAQloYZWWbyqzu5eHQ==
X-Gm-Message-State: AOJu0YwqdTZ5nfRG38fkWbMqW/qoIE8vKIoWnOPpE1PiDRvNnb9SqbGo
	e3L5SgtEpIAe1xN5tbudeNsleHeLEsl0DUZhu9lFRMKVJ8KyjITAyVHavzS0RrMZ4AJHYfz1H99
	dhzE3kqZwct9tfw==
X-Google-Smtp-Source: AGHT+IHqTq2UPkwQrTsIwISL3TPeqKf9uyBTI5tIlaviAP1Wf5pw15DCSNWSteziJ1gjlX/gPxjg3k35MoA1MA0=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:a472:f40c:d4ba:c29])
 (user=saravanak job=sendgmr) by 2002:a17:90a:6546:b0:2a5:fb3a:32e6 with SMTP
 id f6-20020a17090a654600b002a5fb3a32e6mr3270pjs.4.1712879793807; Thu, 11 Apr
 2024 16:56:33 -0700 (PDT)
Date: Thu, 11 Apr 2024 16:56:22 -0700
In-Reply-To: <20240411235623.1260061-1-saravanak@google.com>
Message-Id: <20240411235623.1260061-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240411235623.1260061-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
Subject: [PATCH v3 2/2] of: dynamic: Fix overlayed devices not probing because
 of fw_devlink
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

When an overlay is applied, if the target device has already probed
successfully and bound to a device, then some of the fw_devlink logic
that ran when the device was probed needs to be rerun. This allows newly
created dangling consumers of the overlayed device tree nodes to be
moved to become consumers of the target device.

Fixes: 1a50d9403fb9 ("treewide: Fix probing of devices in DT overlays")
Reported-by: Herve Codina <herve.codina@bootlin.com>
Closes: https://lore.kernel.org/lkml/CAMuHMdXEnSD4rRJ-o90x4OprUacN_rJgyo8x6=9F9rZ+-KzjOg@mail.gmail.com/
Closes: https://lore.kernel.org/all/20240221095137.616d2aaa@bootlin.com/
Closes: https://lore.kernel.org/lkml/20240312151835.29ef62a0@bootlin.com/
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 76 +++++++++++++++++++++++++++++++++++++-----
 drivers/of/overlay.c   | 15 +++++++++
 include/linux/fwnode.h |  1 +
 3 files changed, 83 insertions(+), 9 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 5f4e03336e68..1a646f393dd7 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -46,6 +46,8 @@ static bool fw_devlink_drv_reg_done;
 static bool fw_devlink_best_effort;
 static struct workqueue_struct *device_link_wq;
 
+#define get_dev_from_fwnode(fwnode)	get_device((fwnode)->dev)
+
 /**
  * __fwnode_link_add - Create a link between two fwnode_handles.
  * @con: Consumer end of the link.
@@ -237,6 +239,70 @@ static void __fw_devlink_pickup_dangling_consumers(struct fwnode_handle *fwnode,
 		__fw_devlink_pickup_dangling_consumers(child, new_sup);
 }
 
+static void fw_devlink_pickup_dangling_consumers(struct device *dev)
+{
+	struct fwnode_handle *child;
+
+	mutex_lock(&fwnode_link_lock);
+	fwnode_for_each_available_child_node(dev->fwnode, child)
+		__fw_devlink_pickup_dangling_consumers(child, dev->fwnode);
+	__fw_devlink_link_to_consumers(dev);
+	mutex_unlock(&fwnode_link_lock);
+}
+
+/**
+ * fw_devlink_refresh_fwnode - Recheck the tree under this firmware node
+ * @fwnode: The fwnode under which the fwnode tree has changed
+ *
+ * This function is mainly meant to adjust the supplier/consumer dependencies
+ * after a fwnode tree overlay has occurred.
+ */
+void fw_devlink_refresh_fwnode(struct fwnode_handle *fwnode)
+{
+	struct device *dev;
+
+	/*
+	 * Find the closest ancestor fwnode that has been converted to a device
+	 * that can bind to a driver (bus device).
+	 */
+	fwnode_handle_get(fwnode);
+	do {
+		if (fwnode->flags & FWNODE_FLAG_NOT_DEVICE)
+			continue;
+
+		dev = get_dev_from_fwnode(fwnode);
+		if (!dev)
+			continue;
+
+		if (dev->bus)
+			break;
+
+		put_device(dev);
+	} while ((fwnode = fwnode_get_next_parent(fwnode)));
+
+	/*
+	 * If none of the ancestor fwnodes have (yet) been converted to a device
+	 * that can bind to a driver, there's nothing to fix up.
+	 */
+	if (!fwnode)
+		return;
+
+	WARN(device_is_bound(dev) && dev->links.status != DL_DEV_DRIVER_BOUND,
+	     "Don't multithread overlaying and probing the same device!\n");
+
+	/*
+	 * If the device has already bound to a driver, then we need to redo
+	 * some of the work that was done after the device was bound to a
+	 * driver. If the device hasn't bound to a driver, running thing too
+	 * soon would incorrectly pick up consumers that it shouldn't.
+	 */
+	if (dev->links.status == DL_DEV_DRIVER_BOUND)
+		fw_devlink_pickup_dangling_consumers(dev);
+
+	put_device(dev);
+	fwnode_handle_put(fwnode);
+}
+
 static DEFINE_MUTEX(device_links_lock);
 DEFINE_STATIC_SRCU(device_links_srcu);
 
@@ -1322,14 +1388,8 @@ void device_links_driver_bound(struct device *dev)
 	 * child firmware node.
 	 */
 	if (dev->fwnode && dev->fwnode->dev == dev) {
-		struct fwnode_handle *child;
 		fwnode_links_purge_suppliers(dev->fwnode);
-		mutex_lock(&fwnode_link_lock);
-		fwnode_for_each_available_child_node(dev->fwnode, child)
-			__fw_devlink_pickup_dangling_consumers(child,
-							       dev->fwnode);
-		__fw_devlink_link_to_consumers(dev);
-		mutex_unlock(&fwnode_link_lock);
+		fw_devlink_pickup_dangling_consumers(dev);
 	}
 	device_remove_file(dev, &dev_attr_waiting_for_supplier);
 
@@ -1888,8 +1948,6 @@ static void fw_devlink_unblock_consumers(struct device *dev)
 	device_links_write_unlock();
 }
 
-#define get_dev_from_fwnode(fwnode)	get_device((fwnode)->dev)
-
 static bool fwnode_init_without_drv(struct fwnode_handle *fwnode)
 {
 	struct device *dev;
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 2ae7e9d24a64..7b2396c53127 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -179,6 +179,15 @@ static int overlay_notify(struct overlay_changeset *ovcs,
 	return 0;
 }
 
+static void overlay_fw_devlink_refresh(struct overlay_changeset *ovcs)
+{
+	for (int i = 0; i < ovcs->count; i++) {
+		struct device_node *np = ovcs->fragments[i].target;
+
+		fw_devlink_refresh_fwnode(of_fwnode_handle(np));
+	}
+}
+
 /*
  * The values of properties in the "/__symbols__" node are paths in
  * the ovcs->overlay_root.  When duplicating the properties, the paths
@@ -953,6 +962,12 @@ static int of_overlay_apply(struct overlay_changeset *ovcs,
 		pr_err("overlay apply changeset entry notify error %d\n", ret);
 	/* notify failure is not fatal, continue */
 
+	/*
+	 * Needs to happen after changset notify to give the listeners a chance
+	 * to finish creating all the devices they need to create.
+	 */
+	overlay_fw_devlink_refresh(ovcs);
+
 	ret_tmp = overlay_notify(ovcs, OF_OVERLAY_POST_APPLY);
 	if (ret_tmp)
 		if (!ret)
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 0d79070c5a70..95a78b87777a 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -220,6 +220,7 @@ int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup,
 		    u8 flags);
 void fwnode_links_purge(struct fwnode_handle *fwnode);
 void fw_devlink_purge_absent_suppliers(struct fwnode_handle *fwnode);
+void fw_devlink_refresh_fwnode(struct fwnode_handle *fwnode);
 bool fw_devlink_is_strict(void);
 
 #endif
-- 
2.44.0.683.g7961c838ac-goog


