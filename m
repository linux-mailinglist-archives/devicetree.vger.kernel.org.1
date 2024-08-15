Return-Path: <devicetree+bounces-93806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B18F0952705
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 02:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21157B218A8
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 00:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47BF21105;
	Thu, 15 Aug 2024 00:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lM2UJNep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC3125DB
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 00:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723682071; cv=none; b=I9U15xeYp9zp0fnyno2eRKBIC4Um72/ouEXyDBgSt67gy5rnJtctYdFuh1AAE3TwfXvTjIdQNG9UxMcoRsqNWVpBArYZ6y3kM74CpMzvcpNlTIaqNi7C6h3/RvpOb53RFHIPq9DUWq96dquIAlsx49OsAuHHLe8LFDNdDD+n6uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723682071; c=relaxed/simple;
	bh=BBU1xkfoU7eurOrPvpMLLeunHugd7h5FgxT2uZgKilM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C2/qbSz4mjbY0I6wU4G8LRI/wj67RPF2fIYWjPCcUIYzjXHyl6eitNMFC+Grw9btMxABVSa0xDspMtf2KbTya3EzBwvIlEdPjsjYXwaxk0dLsyOLOQco/+lKoEay+9MUeDfFIt89H/qaW9U4jTjNqApLyfTbfvg4UOWQ0Uy+x6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lM2UJNep; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1fd70ba6a15so4079075ad.0
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 17:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723682069; x=1724286869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gq/ZMzuLbA1llqpSY1LjTmocM7fXF6nFIOTFbEevr4E=;
        b=lM2UJNepXCgAimFRt7v9I3Ewr3kJm2wQ6Ms0WFrIr0OjWrRaPWKdgzxZZFg+xzzq+X
         bX4muyl+QxdJ8q/vNkLuoMLyW3DNGTigNhaB6k3o0TVW0ngcEvqF3X8tapkRBm3Ob6PM
         6NKNeAwi+SbYyxTk+qos9MPuimU3w9L32deP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723682069; x=1724286869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gq/ZMzuLbA1llqpSY1LjTmocM7fXF6nFIOTFbEevr4E=;
        b=ETP/2+E8F2J29U14slPydHDssDGDubD6W3PPrFC0+p5JfBOYw8oCzU8VQkMszw1mcQ
         0MZx2oQZfhSh7WPWIwn0t6HvnOs1JltT9A4u4NLc9lu9mlL7Ek/jbbtNyGnPBnt1sduw
         ZY/gbOT4vfv0IW79eJdjhnBA379mLXLGKik2vBGZit3aZ5dLl1VsmVi3KelJTV5qHEgy
         333BQsA6QmqAHZJ0T7dhF+QulHL+7FP4JbJOASxvo5iNlYvvITlsyWgvsznNFHT2h7TG
         00yk0ZaFWW3AvoDAQc9J8vHg2vrvFnX2E0lZDi+zJmrrP0960db1VqUHtYcGMJmlZ7+r
         Aj6w==
X-Forwarded-Encrypted: i=1; AJvYcCWSYSgJu9Fj8QqbZQTpUVdC3ysUWmIm9s2bxs6qDa9F7tQNPFpfqC+LXmAd/iUkVbYkoBNptnUA3wv0RXxXEIIrX+M47D74vFHwqA==
X-Gm-Message-State: AOJu0YwhOsvlWLFnucFXHFssrfK1guSYfeEjNrR4bYQ/BDFOfVSC+QFS
	8E9U6Qgicvxbj98KC7IM9wPzqR941sWa5S3JZfY6mUZu8zdyQQGvgC//OsntAA==
X-Google-Smtp-Source: AGHT+IFq8j2VyEZ1BVNC68zp/NCCOurZ5Nog/t60mozUg9UPI/CSC7n9XcimPMI12CBkDG1lOi3FFw==
X-Received: by 2002:a17:902:d507:b0:1fd:6598:613c with SMTP id d9443c01a7336-201d64b1531mr55994795ad.50.1723682069351;
        Wed, 14 Aug 2024 17:34:29 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-201f0394718sm1989155ad.226.2024.08.14.17.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 17:34:28 -0700 (PDT)
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
	Tzung-Bi Shih <tzungbi@kernel.org>
Subject: [PATCH v2 04/11] drm/bridge: dp_typec: Support USB Type-C orientation
Date: Wed, 14 Aug 2024 17:34:09 -0700
Message-ID: <20240815003417.1175506-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
In-Reply-To: <20240815003417.1175506-1-swboyd@chromium.org>
References: <20240815003417.1175506-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an orientation parameter to drm_dp_typec_bridge_assign_pins() so
that the DP lanes can be directed to the proper USB type-c pins on the
connector when the cable is flipped. This is mostly useful for the case
where the DP lanes are directly connected to the usb-c-connector and the
device doesn't have an orientation switch wired down on the board
between the connector and the DP controller. Flip the lanes to match the
physical pin locations on the connector when the orientation is reverse.

Cc: Prashant Malani <pmalani@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/gpu/drm/bridge/aux-hpd-bridge.c | 44 ++++++++++++++++++-------
 include/drm/bridge/aux-bridge.h         |  7 ++--
 2 files changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
index 716b2220bdd5..79652d27db40 100644
--- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -7,6 +7,7 @@
 #include <linux/auxiliary_bus.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/usb/typec.h>
 #include <linux/usb/typec_dp.h>
 
 #include <drm/drm_atomic_state_helper.h>
@@ -321,17 +322,35 @@ static int dp_lane_to_typec_lane(enum dp_lane lane)
 	return -EINVAL;
 }
 
-static int typec_to_dp_lane(enum usb_ss_lane lane)
+static int typec_to_dp_lane(enum usb_ss_lane lane,
+			    enum typec_orientation orientation)
 {
-	switch (lane) {
-	case USB_SSRX1:
-		return DP_ML3;
-	case USB_SSTX1:
-		return DP_ML2;
-	case USB_SSTX2:
-		return DP_ML0;
-	case USB_SSRX2:
-		return DP_ML1;
+	switch (orientation) {
+	case TYPEC_ORIENTATION_NONE:
+	case TYPEC_ORIENTATION_NORMAL:
+		switch (lane) {
+		case USB_SSRX1:
+			return DP_ML3;
+		case USB_SSTX1:
+			return DP_ML2;
+		case USB_SSTX2:
+			return DP_ML0;
+		case USB_SSRX2:
+			return DP_ML1;
+		}
+		break;
+	case TYPEC_ORIENTATION_REVERSE:
+		switch (lane) {
+		case USB_SSRX1:
+			return DP_ML0;
+		case USB_SSTX1:
+			return DP_ML1;
+		case USB_SSTX2:
+			return DP_ML3;
+		case USB_SSRX2:
+			return DP_ML2;
+		}
+		break;
 	}
 
 	return -EINVAL;
@@ -341,6 +360,7 @@ static int typec_to_dp_lane(enum usb_ss_lane lane)
  * drm_dp_typec_bridge_assign_pins - Assign DisplayPort (DP) lanes to USB type-C pins
  * @typec_bridge_dev: Device created for the type-c bridge
  * @conf: DisplayPort altmode configure command VDO content
+ * @orientation: Orientation of USB type-c port
  * @lane_mapping: Physical (array index) to logical (array value) USB type-C lane mapping
  *
  * Assign DP lanes to the USB type-C pins for the DP altmode configuration
@@ -351,7 +371,7 @@ static int typec_to_dp_lane(enum usb_ss_lane lane)
  * Return: 0 on success, negative value for failure.
  */
 int drm_dp_typec_bridge_assign_pins(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
-				     u32 conf,
+				     u32 conf, enum typec_orientation orientation,
 				     enum usb_ss_lane lane_mapping[NUM_USB_SS])
 {
 	struct auxiliary_device *adev = &typec_bridge_dev->adev;
@@ -388,7 +408,7 @@ int drm_dp_typec_bridge_assign_pins(struct drm_dp_typec_bridge_dev *typec_bridge
 		typec_lane = lane_mapping[typec_lane];
 
 		/* Map logical type-c lane to logical DP lane */
-		dp_lanes[i] = typec_to_dp_lane(typec_lane);
+		dp_lanes[i] = typec_to_dp_lane(typec_lane, orientation);
 	}
 
 	return 0;
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index aaace808772c..258b87c93623 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -7,6 +7,8 @@
 #ifndef DRM_AUX_BRIDGE_H
 #define DRM_AUX_BRIDGE_H
 
+#include <linux/usb/typec.h>
+
 #include <drm/drm_connector.h>
 
 struct auxiliary_device;
@@ -53,7 +55,8 @@ int devm_drm_dp_typec_bridge_add(struct device *dev, struct drm_dp_typec_bridge_
 void drm_dp_typec_bridge_notify(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
 				enum drm_connector_status status);
 int drm_dp_typec_bridge_assign_pins(struct drm_dp_typec_bridge_dev *typec_bridge_dev, u32 conf,
-				     enum usb_ss_lane lane_mapping[NUM_USB_SS]);
+				    enum typec_orientation orientation,
+				    enum usb_ss_lane lane_mapping[NUM_USB_SS]);
 #else
 static inline struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent,
 								    struct device_node *np)
@@ -94,7 +97,7 @@ static inline void drm_dp_typec_bridge_notify(struct drm_dp_typec_bridge_dev *ty
 }
 
 static inline int drm_dp_typec_bridge_assign_pins(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
-						  u32 conf,
+						  u32 conf, enum typec_orientation orientation,
 						  enum usb_ss_lane lane_mapping[NUM_USB_SS])
 {
 	return 0;
-- 
https://chromeos.dev


