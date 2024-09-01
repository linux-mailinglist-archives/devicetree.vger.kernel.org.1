Return-Path: <devicetree+bounces-98790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 838809674AA
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 06:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BEF428293F
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 04:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F37261FE1;
	Sun,  1 Sep 2024 04:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WJTLa3qo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A705502B1
	for <devicetree@vger.kernel.org>; Sun,  1 Sep 2024 04:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725163631; cv=none; b=geIdb98tLjwNNuE45auIf9bODhOa2wgiNhZzHZ/8FXnEfHi/8VSVFaPM0d4DGRrS4V/OP7LDLW0xZiS5f37goQVaEDuZefH3XGcIztHuT+q7e4jWzk6zfn+dd83u5d0API4xt/sXdfHsapl11rQxCri3FjZCZ/EqsY2ID3V/XWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725163631; c=relaxed/simple;
	bh=aDCeN3nN9nRcFYme+ATD3OdKxYtiWgyuQ3zp7dza4rA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=clvUq1q9qZoN4IGWtkWHEJvplszknhZBFFN9KbRDQjLP3GZfCfs/u3h+BN/vutcM1Ol6LlLEk/jWYDdJvJblEvm0OgNzT4Vy2AkrAU7k8hCUHHX/H3sCiZHMPAkRmb+b9U2nPuZmW0AJI+eySm1Jj7hbpaltX/byj56DdOqjK2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WJTLa3qo; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7142448aaf9so2085526b3a.1
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 21:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725163629; x=1725768429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5JhzkdOpb5d78Mk6klz+de8MRC1bwTsy8AL/60ewZg=;
        b=WJTLa3qoyk0o8c8bwUolzy0fd7V/v74p6T3zDATul4ZbEYLBTXuQeWy4vQC1oKPTVm
         oyBVmGEzoj8ncVtbDcdvxB18H4y9aL+dsRdcWGnK8MiyIq6uXdOHVkoxfcWirgDaFtRO
         rFeVGLMbcQfwGlIuWGPm7LC3NYi4f15QmIxLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725163629; x=1725768429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5JhzkdOpb5d78Mk6klz+de8MRC1bwTsy8AL/60ewZg=;
        b=LVvAz0U/bDBPFk21gMtH3G0HjVEX90hstzEfwT9z6eYK1vVH/WtqXcHdjAqapCxYCe
         yW7trNpTHBO12vAUgSnHuo+Da3nxY/xC/EormSO0a0LWR6vtSXzN1iGtEtMpp+lPh5pD
         +SYuWuvJw28U2QV43y07Vf8xcj1WW6TeJTrKBDb6E6r5ys2zlFg3ZSH96zKGwO2C3pwf
         TL/eLhcP4tUU6byoOHzQjK/oUn0ONCdxD9ldpqHv6ec+/4PkKSoTGbB3T8niQfZlczVm
         OgOvfBdDJt6SUmK7oGN2gmyHIrsp0IPGS8lVe02QRcooSJmXr9vXrREdI/lHzXboBCmw
         T3xA==
X-Forwarded-Encrypted: i=1; AJvYcCVYRSjqx4OqLW5R2i/GGFE6gSVTC9oQG9sjuGAOLp0WngrX/HT5NO45AGTqrEiaHOE0he7tWMm5BZLs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Qt59aVrTJKcbK9Qej1EdDidIjK5nZng+3qnaYHUGLPgRsoUL
	5UdHd9FwPDvSRFkdINJazYL59ThiTWpTF3VXvXjxSVqqR51/2zS+MpSpJ693+g==
X-Google-Smtp-Source: AGHT+IH443VeMjk4kx1Ih8MoClHHt+0Hz48LB1+P16Pb5YXD9rscHzWsBcV2jb1oYKBn+g57FtSFdA==
X-Received: by 2002:a05:6a21:9211:b0:1cc:e0de:c75a with SMTP id adf61e73a8af0-1cce1613874mr11265457637.8.1725163628444;
        Sat, 31 Aug 2024 21:07:08 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7d22e9d4b77sm4590630a12.79.2024.08.31.21.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 21:07:08 -0700 (PDT)
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
Subject: [PATCH v4 03/18] usb: typec: Stub out typec_switch APIs when CONFIG_TYPEC=n
Date: Sat, 31 Aug 2024 21:06:41 -0700
Message-ID: <20240901040658.157425-4-swboyd@chromium.org>
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

Ease driver development by adding stubs for the typec_switch APIs when
CONFIG_TYPEC=n. Copy the same method used for the typec_mux APIs to be
consistent.

Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: <linux-usb@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 include/linux/usb/typec_mux.h | 43 +++++++++++++++++++++++++++++++----
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/include/linux/usb/typec_mux.h b/include/linux/usb/typec_mux.h
index 2489a7857d8e..efb5ed32b813 100644
--- a/include/linux/usb/typec_mux.h
+++ b/include/linux/usb/typec_mux.h
@@ -3,6 +3,7 @@
 #ifndef __USB_TYPEC_MUX
 #define __USB_TYPEC_MUX
 
+#include <linux/err.h>
 #include <linux/property.h>
 #include <linux/usb/typec.h>
 
@@ -24,16 +25,13 @@ struct typec_switch_desc {
 	void *drvdata;
 };
 
+#if IS_ENABLED(CONFIG_TYPEC)
+
 struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode);
 void typec_switch_put(struct typec_switch *sw);
 int typec_switch_set(struct typec_switch *sw,
 		     enum typec_orientation orientation);
 
-static inline struct typec_switch *typec_switch_get(struct device *dev)
-{
-	return fwnode_typec_switch_get(dev_fwnode(dev));
-}
-
 struct typec_switch_dev *
 typec_switch_register(struct device *parent,
 		      const struct typec_switch_desc *desc);
@@ -42,6 +40,41 @@ void typec_switch_unregister(struct typec_switch_dev *sw);
 void typec_switch_set_drvdata(struct typec_switch_dev *sw, void *data);
 void *typec_switch_get_drvdata(struct typec_switch_dev *sw);
 
+#else
+
+static inline struct typec_switch *
+fwnode_typec_switch_get(struct fwnode_handle *fwnode)
+{
+	return NULL;
+}
+static inline void typec_switch_put(struct typec_switch *sw) {}
+static inline int typec_switch_set(struct typec_switch *sw,
+		     enum typec_orientation orientation)
+{
+	return 0;
+}
+
+static inline struct typec_switch_dev *
+typec_switch_register(struct device *parent,
+		      const struct typec_switch_desc *desc)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+static inline void typec_switch_unregister(struct typec_switch_dev *sw) {}
+
+static inline void typec_switch_set_drvdata(struct typec_switch_dev *sw, void *data) {}
+static inline void *typec_switch_get_drvdata(struct typec_switch_dev *sw)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+#endif /* CONFIG_TYPEC */
+
+static inline struct typec_switch *typec_switch_get(struct device *dev)
+{
+	return fwnode_typec_switch_get(dev_fwnode(dev));
+}
+
 struct typec_mux_state {
 	struct typec_altmode *alt;
 	unsigned long mode;
-- 
https://chromeos.dev


