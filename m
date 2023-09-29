Return-Path: <devicetree+bounces-4573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B27B32A8
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D1AC928251B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23C2E575;
	Fri, 29 Sep 2023 12:34:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88143C1D
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:34:10 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C75CA1BB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:34:08 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgq-0008Sf-GH; Fri, 29 Sep 2023 14:33:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009oFT-HL; Fri, 29 Sep 2023 14:33:51 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009S7x-81; Fri, 29 Sep 2023 14:33:51 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 29 Sep 2023 14:33:33 +0200
Subject: [PATCH v5 3/3] drm/panel-simple: allow LVDS format override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230523-simplepanel_support_nondefault_datamapping-v5-3-0d7928edafab@pengutronix.de>
References: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
In-Reply-To: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <error27@gmail.com>, 
 patchwork-jzi@pengutronix.de, kernel@pengutronix.de, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johannes Zink <j.zink@pengutronix.de>
X-Mailer: b4 0.12.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some panels support multiple LVDS data mapping formats, which can be
used e.g. run displays on jeida-18 format when only 3 LVDS lanes are
available.

Add parsing of an optional data-mapping devicetree property, which also
touches up the bits per color to match the bus format.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>

---

Changes:

  v4 -> v5: none

  v3 -> v4: - worked in Dan's feedback (thanks for reviewing my work):
                - return with a proper error in case the call to
		  panel_simple_override_nondefault_lvds_datamapping()
		  fails
                - drop the unneeded and ambiguous ret variable

  v2 -> v3: - worked in Laurent's review findings (thanks for reviewing
              my work):
	        - extract fixing up the bus format to separate
		  function
		- only call function on LVDS panels
		- fix typos found by Laurent
		- simplified error handling

  v1 -> v2: - fix missing unwind goto found by test robot
              Reported-by: kernel test robot <lkp@intel.com>
              Reported-by: Dan Carpenter <error27@gmail.com>
              Link: https://lore.kernel.org/r/202304160359.4LHmFOlU-lkp@intel.com/
---
 drivers/gpu/drm/panel/panel-simple.c | 53 ++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 857bc01591db..4195cf54934b 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -40,6 +40,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_of.h>
 
 /**
  * struct panel_desc - Describes a simple panel.
@@ -549,6 +550,51 @@ static void panel_simple_parse_panel_timing_node(struct device *dev,
 		dev_err(dev, "Reject override mode: No display_timing found\n");
 }
 
+static int panel_simple_override_nondefault_lvds_datamapping(struct device *dev,
+							     struct panel_simple *panel)
+{
+	int ret, bpc;
+
+	ret = drm_of_lvds_get_data_mapping(dev->of_node);
+	if (ret < 0) {
+		if (ret == -EINVAL)
+			dev_warn(dev, "Ignore invalid data-mapping property\n");
+
+		/*
+		 * Ignore non-existing or malformatted property, fallback to
+		 * default data-mapping, and return 0.
+		 */
+		return 0;
+	}
+
+	switch (ret) {
+	default:
+		WARN_ON(1);
+		fallthrough;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_SPWG:
+		fallthrough;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA:
+		bpc = 8;
+		break;
+	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
+		bpc = 6;
+	}
+
+	if (panel->desc->bpc != bpc || panel->desc->bus_format != ret) {
+		struct panel_desc *override_desc;
+
+		override_desc = devm_kmemdup(dev, panel->desc, sizeof(*panel->desc), GFP_KERNEL);
+		if (!override_desc)
+			return -ENOMEM;
+
+		override_desc->bus_format = ret;
+		override_desc->bpc = bpc;
+		panel->desc = override_desc;
+	}
+
+	return 0;
+}
+
 static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 {
 	struct panel_simple *panel;
@@ -601,6 +647,13 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 			panel_simple_parse_panel_timing_node(dev, panel, &dt);
 	}
 
+	if (desc->connector_type == DRM_MODE_CONNECTOR_LVDS) {
+		/* Optional data-mapping property for overriding bus format */
+		err = panel_simple_override_nondefault_lvds_datamapping(dev, panel);
+		if (err)
+			goto free_ddc;
+	}
+
 	connector_type = desc->connector_type;
 	/* Catch common mistakes for panels. */
 	switch (connector_type) {

-- 
2.39.2


