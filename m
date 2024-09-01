Return-Path: <devicetree+bounces-98792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA0E9674B1
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 06:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFDEA1F21F67
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 04:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FE9139CE3;
	Sun,  1 Sep 2024 04:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Fjn6GT0z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BB68121B
	for <devicetree@vger.kernel.org>; Sun,  1 Sep 2024 04:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725163635; cv=none; b=fo+b8DN9/WMaV54hExACsT3K+P+BfnA4Cntv0RByMtUzylLk1xgtN9kbbe2Wgax2ag4Qpu5rpa8Xvnjmz/9dM7luj0BPazgM5koq91cFbfXdoeoWQeqaO9ETnXx1Sd7zFuvmxx99R4cB0woYDlMQ3tVPtIk8Ag1zN1qVyfKoZ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725163635; c=relaxed/simple;
	bh=3V7619Mxma8Aeax8LSroAiPwdTZh9etPyCL5UGAdaDs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z3tjBd/Ax/64OUTm75YtBJV5rmVOKn2pz/HPAIz9Sx0ssgbyyZdKp8eu//a0tKFBkvdjSkhCx9HTTfDeiaVi9EKXhcwWNRnynrFft0RmGiF6T6amMng/vEOuKXzWNqi2C3KRj2m9LUMPLcYhX7Cv6EETXsqbXqPZ5d71/SK1LDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Fjn6GT0z; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7cd830e0711so1895432a12.0
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 21:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725163633; x=1725768433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sko4acOmndCniAhhaR8U/EXx+Ad9ii+FHZslBTejwPk=;
        b=Fjn6GT0ze9jkBg6J3ysjfDtV3HtMJ52+EXoFOTljJy78xDJiVuCwLLSFKBnCRi/2Sj
         lhV94FS5v/+1DW8X3sZXXzvGAldu4MgEsXdBIztfOHEcH0Mn/c2/jJv3PqTy/YabnbBz
         6eOA8hgVGjJSbTJm8oh127ckpYtOTiwjbNCFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725163633; x=1725768433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sko4acOmndCniAhhaR8U/EXx+Ad9ii+FHZslBTejwPk=;
        b=ugPdbkDvP/ZPuNZWOqQvJA8qVTuvvg/c20UCc7BRRSG4u7Q3p9jAtL7zPoy4iQv3WO
         vwyXNObUR6Ga9h5weTbbUfzJ9ul0AQbEW1nmQ+P0FnTSLQaIGnd15PSE1G86ie1a08pK
         LfWNtTEkf5nCh4HfC+/lXK1zdLsvswiA46y86DFMysHNxSlUdF8aqhtz7iXWM7c8E6r3
         W2AbnulLXvkbrf0x6v4ZjF2lvw6vYJMQxijUIkReH1ut53VGuR7ZFbxKSTlQJCCpdNmg
         LpthFgQC4pG20DSMcQ6BMxWD7AGqT14+j/bQMU0Wq4rkqYvJsnXTFhCgkqddgu7SHfIQ
         myrA==
X-Forwarded-Encrypted: i=1; AJvYcCX7nXlBOnQdThOfPmn/0eW/yOgB5JsAZO6+4oMld4RNMoe34/vpwgMaYKObMG07BqU+C25t2H12xQzW@vger.kernel.org
X-Gm-Message-State: AOJu0YwWG/vfrXxASYRLK35R3m658r5hQbLLohUiulyNmobK5DSngCFv
	+6fyR/KGHG820Aze/ISFl1LhkuKtKDZIAQf97GXUqmlrcQJfxv2skGovC52U0A==
X-Google-Smtp-Source: AGHT+IEupx5MlVbtKwKg6yvd5EiB5c1xx+gvkZPhgQaQWXBcBa4Tm7HItPIXvwrtuhd2v5lBCFGh8g==
X-Received: by 2002:a17:902:f60a:b0:1ff:4a01:43f7 with SMTP id d9443c01a7336-2050e97bf7bmr144975245ad.10.1725163632654;
        Sat, 31 Aug 2024 21:07:12 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-205155673a2sm47107365ad.303.2024.08.31.21.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 21:07:12 -0700 (PDT)
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
Subject: [PATCH v4 05/18] usb: typec: Add device managed typec_switch_register()
Date: Sat, 31 Aug 2024 21:06:43 -0700
Message-ID: <20240901040658.157425-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240901040658.157425-1-swboyd@chromium.org>
References: <20240901040658.157425-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify driver error paths by adding devm_typec_switch_register() which
will unregister the typec switch when the parent device is unbound.

Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: <linux-usb@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/usb/typec/mux.c       | 36 +++++++++++++++++++++++++++++++++++
 include/linux/usb/typec_mux.h |  9 +++++++++
 2 files changed, 45 insertions(+)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index db644bec862c..f420185e36e3 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -235,6 +235,42 @@ void typec_switch_unregister(struct typec_switch_dev *sw_dev)
 }
 EXPORT_SYMBOL_GPL(typec_switch_unregister);
 
+static void devm_typec_switch_unregister(void *switch_dev)
+{
+	typec_switch_unregister(switch_dev);
+}
+
+/**
+ * devm_typec_switch_register - resource managed typec_switch_register()
+ * @parent: Parent device
+ * @desc: Multiplexer description
+ *
+ * Register a typec switch and automatically unregister the typec switch
+ * when @parent is unbound from its driver.
+ *
+ * The arguments to this function are identical to typec_switch_register().
+ *
+ * Return: the typec_switch_dev structure on success or error pointer on error.
+ */
+struct typec_switch_dev *
+devm_typec_switch_register(struct device *parent,
+			   const struct typec_switch_desc *desc)
+{
+	int ret;
+	struct typec_switch_dev *switch_dev;
+
+	switch_dev = typec_switch_register(parent ,desc);
+	if (IS_ERR(switch_dev))
+		return switch_dev;
+
+	ret = devm_add_action_or_reset(parent, devm_typec_switch_unregister, switch_dev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return switch_dev;
+}
+EXPORT_SYMBOL_GPL(devm_typec_switch_register);
+
 void typec_switch_set_drvdata(struct typec_switch_dev *sw_dev, void *data)
 {
 	dev_set_drvdata(&sw_dev->dev, data);
diff --git a/include/linux/usb/typec_mux.h b/include/linux/usb/typec_mux.h
index 08431f0896d5..c30fc7f4441f 100644
--- a/include/linux/usb/typec_mux.h
+++ b/include/linux/usb/typec_mux.h
@@ -35,6 +35,9 @@ int typec_switch_set(struct typec_switch *sw,
 struct typec_switch_dev *
 typec_switch_register(struct device *parent,
 		      const struct typec_switch_desc *desc);
+struct typec_switch_dev *
+devm_typec_switch_register(struct device *parent,
+			   const struct typec_switch_desc *desc);
 void typec_switch_unregister(struct typec_switch_dev *sw);
 
 void typec_switch_set_drvdata(struct typec_switch_dev *sw, void *data);
@@ -60,6 +63,12 @@ typec_switch_register(struct device *parent,
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
+static inline struct typec_switch_dev *
+devm_typec_switch_register(struct device *parent,
+			   const struct typec_switch_desc *desc)
+{
+	return typec_switch_register(parent, desc);
+}
 static inline void typec_switch_unregister(struct typec_switch_dev *sw) {}
 
 static inline void typec_switch_set_drvdata(struct typec_switch_dev *sw, void *data) {}
-- 
https://chromeos.dev


