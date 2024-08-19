Return-Path: <devicetree+bounces-95010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7F09577E9
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 838121F20B68
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 22:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D592B210191;
	Mon, 19 Aug 2024 22:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KNEYZorH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7154C20FA9F
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 22:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724107155; cv=none; b=jrZKpXzKCKRpyUnnNScuTBFdpVhV5XRyy56pFX4ZKwJka4i+dkKluF+dZGNFj8heVNBKbyHMP8UId3XoIk3fiTV7V5qdIDqnNcs8uDKftDdNLVkALCooYulMzdBQ918V415lrR/yCBjC4MC6quf2Be/KygHE2omYutgkN+yanIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724107155; c=relaxed/simple;
	bh=PWQZK8LUdJIovz2CXETyEgisbeZbXkB19WFPBk87afw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ovfXPsgY3YrdQadgyM68vDgD+ChNypcpPKxkheTy1GR28kAdXnoukd+nTuK716pys7nqlOHM69KBkibF+vP3qPcYwsXHynjU/14GbpxnLsNTij8P+uD5eivvsl+CgqtwC9nA9QzCwKT5/S4oGmZt4Kga51plDCR1HTU9ADbVVsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KNEYZorH; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-70d1d6369acso3763556b3a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724107153; x=1724711953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7cnR4WAyiehupOqnyK769y5gghgqDmIgYp8VlO457I=;
        b=KNEYZorHsGGi3fPkeAxQhxz/KCIAB5KL/29jW6HyoemX5Jcz05Ni7Y4HYoma5TVNRL
         MaDeTknbpP5+SiUyY6S+aw4Cvsn9ULfao0oTG/IVvq7pkGvcfw2n6uoNjXgE5MMqCmzZ
         CsmaGqJDMcpZJZkuk4xxFofTkn6V0erMuxEHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724107153; x=1724711953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7cnR4WAyiehupOqnyK769y5gghgqDmIgYp8VlO457I=;
        b=nA4gUQ5zAlo9EI78zKnpm3ztvgjGc1SVnFC4cl/t2VeghFHPfzA9Y9GeAFw8etqXMA
         E+qFMRoItfOIXHT357V6bPGAg8O+IFPKqc+4+23esR3qipAYJw3V8+MV5k/QDPlo03gs
         M2cExu4zIiDi1rhjknsBv/9Xg3MQNQ8wFernqs68k824JJfeK13FztYA92+VUVE6wojV
         oX3xGJ9BK/xcQLIIfAzYstXJIDu7VSZ8h8hu0ik3crd5fXLRK+QW3xjXpGbbpAJkWVSl
         SeelfebefMY0LNPY5T2jcDcUlZoaUhCJcZdJPO4DU0yYtlanZ9zYHeREt0EDWKvEg/NR
         Nmug==
X-Forwarded-Encrypted: i=1; AJvYcCUyK3kpABi6KrxG3sdrJyGufBzK5fe/bD7qWhmzYV9yaYdlxDn9nT3IDWLRMZs8ghdPAkN0u9cpUnrVJR4+164N3gAKOSt51f6VHA==
X-Gm-Message-State: AOJu0YyRAQEH6+lWRBBSfvdVHd5KqxPUhvX0Vj33cap99fJ/u50AwxIL
	sReYCUjBv+aYfIoEoOt9arCBULkYMFXrdJPnBj1Xg7OutxrXlBllNdD2MUTawG0ZEkMam2S1f3Y
	=
X-Google-Smtp-Source: AGHT+IFDMfmaDl5CQQB46DBVKM9LhEvDRklHtdC16bYuWrBxm7m9f2L+9KDIb+r21yZ+V1xXGO6uRg==
X-Received: by 2002:a05:6a21:32a8:b0:1c6:9a3b:ba44 with SMTP id adf61e73a8af0-1cac7163b91mr1631501637.25.1724107152579;
        Mon, 19 Aug 2024 15:39:12 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7127add7660sm7040294b3a.38.2024.08.19.15.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 15:39:11 -0700 (PDT)
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
Subject: [PATCH v3 16/17] platform/chrome: cros_ec_typec: Support DP muxing
Date: Mon, 19 Aug 2024 15:38:30 -0700
Message-ID: <20240819223834.2049862-17-swboyd@chromium.org>
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

Most ARM based chromebooks with two usb-c-connector nodes and one DP
controller are muxing the DP lanes between the two USB ports. This is
done so that the type-c ports are at least equal in capability if not
functionality. Either an analog mux is used to steer the DP signal to
one or the other port, or a DP bridge chip has two lanes (e.g. DP
ML0/ML1) wired to one type-c port while the other two (e.g. DP ML2/ML3)
are wired to another type-c port.

Implement the same algorithm that the EC has to figure out which type-c
port has actually been muxed for DP altmode. Wait for the first type-c
port to assert HPD, and treat that as the actively muxed port until the
port exits DP altmode entirely. Allow HPD to be asserted or deasserted
during this time. If the port isn't active, simply ignore those events
and skip calling cros_typec_enable_dp(). Otherwise, pass the DP
information to the typec subsystem so that the DP controller can respond
to HPD events and pin configurations.

The EC can mux the DP signal to any number of USB type-c ports. We only
need to make sure that the active USB type-c port is tracked so that DP
information about the other ports is ignored. Unfortunately, the EC
doesn't hide these details from the AP so we have to reimplement the
logic in the kernel.

Cc: Prashant Malani <pmalani@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/platform/chrome/cros_ec_typec.c | 27 +++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
index f7e184fa90c5..b32abd14825c 100644
--- a/drivers/platform/chrome/cros_ec_typec.c
+++ b/drivers/platform/chrome/cros_ec_typec.c
@@ -27,6 +27,7 @@
 struct cros_typec_dp_bridge {
 	struct cros_typec_data *typec_data;
 	struct drm_dp_typec_bridge_dev *dev;
+	struct cros_typec_port *active_port;
 };
 
 #define DP_PORT_VDO	(DP_CONF_SET_PIN_ASSIGN(BIT(DP_PIN_ASSIGN_C) | BIT(DP_PIN_ASSIGN_D)) | \
@@ -651,6 +652,7 @@ static int cros_typec_configure_mux(struct cros_typec_data *typec, int port_num,
 				struct ec_response_usb_pd_control_v2 *pd_ctrl)
 {
 	struct cros_typec_port *port = typec->ports[port_num];
+	struct cros_typec_dp_bridge *dp_bridge = typec->dp_bridge;
 	struct ec_response_usb_pd_mux_info resp;
 	struct ec_params_usb_pd_mux_info req = {
 		.port = port_num,
@@ -658,6 +660,7 @@ static int cros_typec_configure_mux(struct cros_typec_data *typec, int port_num,
 	struct ec_params_usb_pd_mux_ack mux_ack;
 	enum typec_orientation orientation;
 	int ret;
+	bool dp_enabled, hpd_asserted, is_active_port;
 
 	ret = cros_ec_cmd(typec->ec, 0, EC_CMD_USB_PD_MUX_INFO,
 			  &req, sizeof(req), &resp, sizeof(resp));
@@ -671,6 +674,20 @@ static int cros_typec_configure_mux(struct cros_typec_data *typec, int port_num,
 	if (port->mux_flags == resp.flags && port->role == pd_ctrl->role)
 		return 0;
 
+	dp_enabled = resp.flags & USB_PD_MUX_DP_ENABLED;
+	hpd_asserted = resp.flags & USB_PD_MUX_HPD_LVL;
+	/*
+	 * Assume the first port to have HPD asserted is the one muxed to DP
+	 * (i.e. active_port). When there's only one port this delays setting
+	 * the active_port until HPD is asserted, but before that the
+	 * drm_connector looks disconnected so active_port doesn't need to be
+	 * set.
+	 */
+	if (dp_bridge && hpd_asserted && !dp_bridge->active_port)
+		dp_bridge->active_port = port;
+
+	is_active_port = !dp_bridge || dp_bridge->active_port == port;
+
 	port->mux_flags = resp.flags;
 	port->role = pd_ctrl->role;
 
@@ -698,8 +715,11 @@ static int cros_typec_configure_mux(struct cros_typec_data *typec, int port_num,
 		ret = cros_typec_enable_usb4(typec, port_num, pd_ctrl);
 	} else if (port->mux_flags & USB_PD_MUX_TBT_COMPAT_ENABLED) {
 		ret = cros_typec_enable_tbt(typec, port_num, pd_ctrl);
-	} else if (port->mux_flags & USB_PD_MUX_DP_ENABLED) {
-		ret = cros_typec_enable_dp(typec, port_num, pd_ctrl);
+	} else if (dp_enabled) {
+		ret = 0;
+		/* Ignore DP events for the non-active port */
+		if (is_active_port)
+			ret = cros_typec_enable_dp(typec, port_num, pd_ctrl);
 	} else if (port->mux_flags & USB_PD_MUX_SAFE_MODE) {
 		ret = cros_typec_usb_safe_state(port);
 	} else if (port->mux_flags & USB_PD_MUX_USB_ENABLED) {
@@ -716,6 +736,9 @@ static int cros_typec_configure_mux(struct cros_typec_data *typec, int port_num,
 	}
 
 mux_ack:
+	if (dp_bridge && !dp_enabled && is_active_port)
+		dp_bridge->active_port = NULL;
+
 	if (!typec->needs_mux_ack)
 		return ret;
 
-- 
https://chromeos.dev


