Return-Path: <devicetree+bounces-95004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8D29577CF
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 491F11F22C4B
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 22:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD89D1EB4BF;
	Mon, 19 Aug 2024 22:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TPjbauuX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41A61DF686
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 22:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724107141; cv=none; b=hmSG33uevUAUV2z06hD8D+PNuCCXUoOqLC9qvYMGcLjKYTojkENtiO6qg8hlwF3zM0wjlhMaGGy2RYPXmMGoHBJ4u4FJLfu4WaW7GIH5hl142dqChO32w12ccmkoHX9JxmcRJcNPOdiw8b+8jSddHYqY7kz/ZuPYKIaOlqKOpoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724107141; c=relaxed/simple;
	bh=mxX0zurMaqjFAvwPTAYvbkHJDOrh+ogY61LYBsDimY4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=THKRtzp2JK7N09xnW9qAZImdKUkdtlibNAQEt1ecU77StIgtbqG6/ahk0Q9IJvz1RAiE0IJCAHMwGmeo0UutI/opXvDr44eimk5oMCRibsp2NK4E+NtTCWeD7SqEDO0VENoB2vk9aCeQ1GG0TLnyEKq/g/XRa17yfk411WkQu+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TPjbauuX; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20231aa8908so13930325ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724107139; x=1724711939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hC911fBOHCsJMM7xcu9tR0EWsA9wFiTFaVVHtkvUAjk=;
        b=TPjbauuXLwswYIfgU4XKPckbyt4bWQRplbONiBpsOocVka0VmTyWO+x5xAK289W0Ls
         +awtyb2eSWgtplIUIGswiOQLHRsoGKt0YxF1XoaJMm6lduI0W//W8hTz3yQG7HcgX+RC
         DbCe+Gg9z9fO5gHBfK4M+3Pdbg5QJTQUMHBqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724107139; x=1724711939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hC911fBOHCsJMM7xcu9tR0EWsA9wFiTFaVVHtkvUAjk=;
        b=NPkp6eUAjTXZ1fvnbpw3xNf+Is32DbX/U3UkPz/545MhTgPYvMAc0oBUoaEmVEwdLW
         C/c1xzFuoKWe83K/Kp3dSLA/Wx5hAHqnsY8mIV4G8ovu2YxOD7SRbuQYbMBgPaN10ML4
         BJpTbjbTUMM+q65SVyXA/KfolaJwpnqv8aNglhb8Xc+iF10HCBvUc3NZDpb947dDufRJ
         S7IcFyWN7EDp3pYAjZXD8HclAlaSdnPAgC+WBFZDnD1PoQbRP90X5mwFb/JglJV6yo2j
         /X9gwFFE1lmsL4wfO3ltssf1qrWhlBo8N3RREjze4cU7w4T1lYmaHsbkC+WQzitnrWXg
         Midw==
X-Forwarded-Encrypted: i=1; AJvYcCXkB/0VsGm1yLTA0xOVtjw2IRBAbXcCpVyrzL4IV1WbAQmsiOWIyzXV9QtVy+/GdfmkByyKG/RWbSBM@vger.kernel.org
X-Gm-Message-State: AOJu0YwW3rALNc/scktxdnZALKaBXXMxnKLREApLj3S/2aAjyFefiCu2
	J0vICZcNamCaMz1/Z732uNGf6A81j8OJcZSVlb873PD+Anx4Tv3b151lyqqVGg==
X-Google-Smtp-Source: AGHT+IGLjuWtpZx7vqGNlEmVLbw+/jbA0jrqk36BQ9obYmr0oT4bTrUtSNP+SOsQgfFW6VfGITSwMw==
X-Received: by 2002:a17:903:4345:b0:201:f8b4:3e3c with SMTP id d9443c01a7336-20203e49439mr92807475ad.12.1724107138748;
        Mon, 19 Aug 2024 15:38:58 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-201f038b4e9sm66612995ad.209.2024.08.19.15.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 15:38:58 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 10/17] device property: Add remote endpoint to devcon matcher
Date: Mon, 19 Aug 2024 15:38:24 -0700
Message-ID: <20240819223834.2049862-11-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
In-Reply-To: <20240819223834.2049862-1-swboyd@chromium.org>
References: <20240819223834.2049862-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When a single DT node has a graph connected to more than one
usb-c-connector node we can't differentiate which typec switch
registered for the device is associated with the USB connector because
the devcon matcher code assumes a 1:1 relationship between remote node
and typec switch. Furthermore, we don't have a #typec-switch-cells
property so there can only be one node per typec switch.

Support multiple USB typec switches exposed by one node by passing the
remote endpoint node in addition to the remote node to the devcon
matcher function (devcon_match_fn_t). With this change, typec switch
drivers can register switches with the device node pointer for a graph
endpoint so that they can support more than one typec switch if
necessary. Either way, a DT property like 'mode-switch' is always in the
graph's parent node and not in the endpoint node.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Daniel Scally <djrscally@gmail.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ivan Orlov <ivan.orlov0322@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: <linux-usb@vger.kernel.org>
Cc: <linux-acpi@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/base/property.c     | 7 +++++--
 drivers/usb/roles/class.c   | 4 ++--
 drivers/usb/typec/mux.c     | 8 ++++++++
 drivers/usb/typec/retimer.c | 7 ++++++-
 include/linux/property.h    | 5 +++--
 5 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index 837d77e3af2b..621de33f2956 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1284,6 +1284,7 @@ static unsigned int fwnode_graph_devcon_matches(const struct fwnode_handle *fwno
 {
 	struct fwnode_handle *node;
 	struct fwnode_handle *ep;
+	struct fwnode_handle *remote_ep;
 	unsigned int count = 0;
 	void *ret;
 
@@ -1299,7 +1300,9 @@ static unsigned int fwnode_graph_devcon_matches(const struct fwnode_handle *fwno
 			continue;
 		}
 
-		ret = match(node, con_id, data);
+		remote_ep = fwnode_graph_get_remote_endpoint(ep);
+		ret = match(node, remote_ep, con_id, data);
+		fwnode_handle_put(remote_ep);
 		fwnode_handle_put(node);
 		if (ret) {
 			if (matches)
@@ -1329,7 +1332,7 @@ static unsigned int fwnode_devcon_matches(const struct fwnode_handle *fwnode,
 		if (IS_ERR(node))
 			break;
 
-		ret = match(node, NULL, data);
+		ret = match(node, NULL, NULL, data);
 		fwnode_handle_put(node);
 		if (ret) {
 			if (matches)
diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index d7aa913ceb8a..d8bd5071d9d8 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -121,8 +121,8 @@ enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw)
 }
 EXPORT_SYMBOL_GPL(usb_role_switch_get_role);
 
-static void *usb_role_switch_match(const struct fwnode_handle *fwnode, const char *id,
-				   void *data)
+static void *usb_role_switch_match(const struct fwnode_handle *fwnode, const struct fwnode_handle *endpoint,
+				   const char *id, void *data)
 {
 	struct device *dev;
 
diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index 3531ab03bac4..ab53532282ff 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -33,6 +33,7 @@ static int switch_fwnode_match(struct device *dev, const void *fwnode)
 }
 
 static void *typec_switch_match(const struct fwnode_handle *fwnode,
+				const struct fwnode_handle *endpoint,
 				const char *id, void *data)
 {
 	struct device *dev;
@@ -55,6 +56,9 @@ static void *typec_switch_match(const struct fwnode_handle *fwnode,
 	 */
 	dev = class_find_device(&typec_mux_class, NULL, fwnode,
 				switch_fwnode_match);
+	if (!dev)
+		dev = class_find_device(&typec_mux_class, NULL, endpoint,
+				switch_fwnode_match);
 
 	return dev ? to_typec_switch_dev(dev) : ERR_PTR(-EPROBE_DEFER);
 }
@@ -290,6 +294,7 @@ static int mux_fwnode_match(struct device *dev, const void *fwnode)
 }
 
 static void *typec_mux_match(const struct fwnode_handle *fwnode,
+			     const struct fwnode_handle *endpoint,
 			     const char *id, void *data)
 {
 	struct device *dev;
@@ -307,6 +312,9 @@ static void *typec_mux_match(const struct fwnode_handle *fwnode,
 
 	dev = class_find_device(&typec_mux_class, NULL, fwnode,
 				mux_fwnode_match);
+	if (!dev)
+		dev = class_find_device(&typec_mux_class, NULL, endpoint,
+					mux_fwnode_match);
 
 	return dev ? to_typec_mux_dev(dev) : ERR_PTR(-EPROBE_DEFER);
 }
diff --git a/drivers/usb/typec/retimer.c b/drivers/usb/typec/retimer.c
index b519fcf358ca..ee4e6312c2d9 100644
--- a/drivers/usb/typec/retimer.c
+++ b/drivers/usb/typec/retimer.c
@@ -22,7 +22,9 @@ static int retimer_fwnode_match(struct device *dev, const void *fwnode)
 	return is_typec_retimer(dev) && device_match_fwnode(dev, fwnode);
 }
 
-static void *typec_retimer_match(const struct fwnode_handle *fwnode, const char *id, void *data)
+static void *typec_retimer_match(const struct fwnode_handle *fwnode,
+				 const struct fwnode_handle *endpoint,
+				 const char *id, void *data)
 {
 	struct device *dev;
 
@@ -31,6 +33,9 @@ static void *typec_retimer_match(const struct fwnode_handle *fwnode, const char
 
 	dev = class_find_device(&retimer_class, NULL, fwnode,
 				retimer_fwnode_match);
+	if (!dev)
+		dev = class_find_device(&retimer_class, NULL, endpoint,
+					retimer_fwnode_match);
 
 	return dev ? to_typec_retimer(dev) : ERR_PTR(-EPROBE_DEFER);
 }
diff --git a/include/linux/property.h b/include/linux/property.h
index 61fc20e5f81f..3e27d7b76db9 100644
--- a/include/linux/property.h
+++ b/include/linux/property.h
@@ -507,8 +507,9 @@ unsigned int fwnode_graph_get_endpoint_count(const struct fwnode_handle *fwnode,
 int fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
 				struct fwnode_endpoint *endpoint);
 
-typedef void *(*devcon_match_fn_t)(const struct fwnode_handle *fwnode, const char *id,
-				   void *data);
+typedef void *(*devcon_match_fn_t)(const struct fwnode_handle *fwnode,
+				   const struct fwnode_handle *endpoint,
+				   const char *id, void *data);
 
 void *fwnode_connection_find_match(const struct fwnode_handle *fwnode,
 				   const char *con_id, void *data,
-- 
https://chromeos.dev


