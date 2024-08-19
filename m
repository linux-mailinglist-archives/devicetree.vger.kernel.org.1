Return-Path: <devicetree+bounces-94998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DCA9577B9
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48C91B22F26
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 22:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31261E212D;
	Mon, 19 Aug 2024 22:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q8F+oilX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1A81E3CB3
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 22:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724107128; cv=none; b=R+IK430P2xRkxVyMHNpvr0Yy5+S1SXPXjnbusoETWz/Tkx15Dpe/ZLn3mZkSivuza4f8qBdJbJNwnAwm5Co1N9o6C3Yosi8S5oiNdrBwUJAVZbLaHctnNibUYYtB81a1bYm00oNbkde8ttIDb2VM26qq/aymtSPmBw0czRDraSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724107128; c=relaxed/simple;
	bh=YZsJrlae73dDXQ7qQXUAfgucjjDnE3ixdZvtKilWId0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WL64ZURbxQSul74JVM5+yiip6VqwALart2MznNzGLkIXdD6Tm135Z9v3V8bdkf3LH2fvnzFerldHZNsxu3rfgw0xlWgAWrDacknCkXH5A4zNZ344ddv3uJwRX2EGWMGbGym71ln00SjfazzYE9kTdvE50MMnozUtXO0hLmPKuKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q8F+oilX; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-713e460f920so1504150b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724107126; x=1724711926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TByAwKUM3v221HSwHXMGl0z/VgI2w0FSGFaz63ewMCc=;
        b=Q8F+oilXRY+BpeGI2IOZRfrDirq+ohw2DINZ29jM0siAkVZeORgdj84A1c6wkQky8p
         Qkq7hs0rNNI7mt296gtTw3/u5/HlNPFiiKAMJ8+VRIHtKiAqXw3s7Bm3IWgdlc0/gjrx
         dCa0wYYe5NHHcy+gBjEtYRDuuB33mCfm7gpXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724107126; x=1724711926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TByAwKUM3v221HSwHXMGl0z/VgI2w0FSGFaz63ewMCc=;
        b=e4zlHzAZVAVvZ7KgsCrQ2gp+5cadgZkwEE5Tvr0jDjj8/B09u3qNzpx+Z1Mq5kR+n5
         kCEhznPOVmlkpv3oAPe8DpSHJLSlAmtj9wdbiuOWcHcQBqGLE4OOAW/71DQzHFolkJ0A
         3S65IylOLhFpUg7F0Q2bhXIO3pKoMM2q9HTkClHe6pbcb/l+5KZOzd1x8A5FEfAt/EzK
         6fioE+fj2VU8XfbX28TLG5i2k3moJeEcGKBn7Eu5r6kT+jza973VFx1SRwZvccgWq8gv
         54u/vEsCqjVdefAVxrvccX9M7zsbmvm0luYjkn7UESHcL7FqPa3aTi6wOE3LI5SL9RR9
         pRjg==
X-Forwarded-Encrypted: i=1; AJvYcCU9XXy9j+ZGiXqOAPZ706KCrY36owvc+4MDCiraVcSv9ctRWZ1IQ1iCIJaUuTIcG+UK2kInoKsARddGJc++MSf3W2qUjGQX8bLa7w==
X-Gm-Message-State: AOJu0YzEWkW1LjAkmWiQo90qbIq+k0/gcCsjzbStov8Z8XcdCvW6FdhW
	PqC7Gvh57LMKD7ZcobFK550W457dj3BbvPB6jGkIekPWQuV9I7P/kY2eIYSntA==
X-Google-Smtp-Source: AGHT+IE9mRUEWdSZz44bRNA1IsxkpeUvPxhXUID/IQ/pKL+AsxBfad4S7Hi4SBlwuRZq8RScQNUZsw==
X-Received: by 2002:a05:6a20:9d92:b0:1c6:9fe9:c425 with SMTP id adf61e73a8af0-1c9050534fdmr13069748637.45.1724107125678;
        Mon, 19 Aug 2024 15:38:45 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7127aef410esm7052463b3a.113.2024.08.19.15.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 15:38:45 -0700 (PDT)
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
Subject: [PATCH v3 04/17] usb: typec: Add device managed typec_mux_register()
Date: Mon, 19 Aug 2024 15:38:18 -0700
Message-ID: <20240819223834.2049862-5-swboyd@chromium.org>
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

Simplify driver error paths by adding devm_typec_mux_register() which
will unregister the typec mux when the parent device is unbound.

Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: <linux-usb@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/usb/typec/mux.c       | 37 +++++++++++++++++++++++++++++++++++
 include/linux/usb/typec_mux.h |  7 +++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index 49926d6e72c7..65c60eb56428 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -457,6 +457,43 @@ void typec_mux_unregister(struct typec_mux_dev *mux_dev)
 }
 EXPORT_SYMBOL_GPL(typec_mux_unregister);
 
+static void devm_typec_mux_unregister(struct device *dev, void *mux_dev)
+{
+	typec_mux_unregister(*(struct typec_mux_dev **)mux_dev);
+}
+
+/** devm_typec_mux_register - resource managed typec_mux_register()
+ * @parent: Parent device
+ * @desc: Multiplexer description
+ *
+ * Register a typec mux and automatically unregister the typec mux
+ * when @parent is unbound from its driver.
+ *
+ * The arguments to this function are identical to typec_mux_register().
+ *
+ * Return: the typec_mux_dev structure on success, else an error pointer.
+ */
+struct typec_mux_dev *
+devm_typec_mux_register(struct device *parent, const struct typec_mux_desc *desc)
+{
+	struct typec_mux_dev **ptr, *mux_dev;
+
+	ptr = devres_alloc(devm_typec_mux_unregister, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	mux_dev = typec_mux_register(parent ,desc);
+	if (!IS_ERR(mux_dev)) {
+		*ptr = mux_dev;
+		devres_add(parent, ptr);
+	} else {
+		devres_free(ptr);
+	}
+
+	return mux_dev;
+}
+EXPORT_SYMBOL_GPL(devm_typec_mux_register);
+
 void typec_mux_set_drvdata(struct typec_mux_dev *mux_dev, void *data)
 {
 	dev_set_drvdata(&mux_dev->dev, data);
diff --git a/include/linux/usb/typec_mux.h b/include/linux/usb/typec_mux.h
index 094585205264..c6f49756530d 100644
--- a/include/linux/usb/typec_mux.h
+++ b/include/linux/usb/typec_mux.h
@@ -98,6 +98,8 @@ int typec_mux_set(struct typec_mux *mux, struct typec_mux_state *state);
 
 struct typec_mux_dev *
 typec_mux_register(struct device *parent, const struct typec_mux_desc *desc);
+struct typec_mux_dev *
+devm_typec_mux_register(struct device *parent, const struct typec_mux_desc *desc);
 void typec_mux_unregister(struct typec_mux_dev *mux);
 
 void typec_mux_set_drvdata(struct typec_mux_dev *mux, void *data);
@@ -122,6 +124,11 @@ typec_mux_register(struct device *parent, const struct typec_mux_desc *desc)
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
+static inline struct typec_mux_dev *
+devm_typec_mux_register(struct device *parent, const struct typec_mux_desc *desc)
+{
+	return typec_mux_register(parent, desc);
+}
 static inline void typec_mux_unregister(struct typec_mux_dev *mux) {}
 
 static inline void typec_mux_set_drvdata(struct typec_mux_dev *mux, void *data) {}
-- 
https://chromeos.dev


