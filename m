Return-Path: <devicetree+bounces-18237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE34B7F5C3D
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0AEDB20F27
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD8C224ED;
	Thu, 23 Nov 2023 10:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMqFrFAM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD12224E8
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 10:24:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC196C433CC;
	Thu, 23 Nov 2023 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700735066;
	bh=E9JPif25pazlOYty7nCzaERj32nzmZMSxpFxRlKuuM0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uMqFrFAMEcoP4QtKWT6Q0nMkef5uI20M/3Ythh/kFv+F2kp0ak0Jj2mi2D60jcho5
	 MlfgVXkOjpa0fnQEf0U/pq0KniULHSDK/6iI/R3NPpWQif1v4pny7NbJMnZPQk0340
	 ExGjeYqSyotLt9YC+N+azcludQtubYAjc7ougD9uu4OvsFV96p+oK7NJLaAp2/E2Xn
	 4m31tkYIYrY07gpUYoM/QwGb3azNOQgPN6ZTjez+wxd9GEvHHwJFMfrHEg6+4Klc3e
	 mJc1/zBCPaeJz2uM7AYYlX+Pn4B5YPwXGoMw9H00v6AGR5CFkRo3Ffpxvr4vgXYAqa
	 tfIJLhaY/ZSqw==
From: Michael Walle <mwalle@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 2/2] drm/panel-simple: add Evervision VGG644804 panel entry
Date: Thu, 23 Nov 2023 11:24:04 +0100
Message-Id: <20231123102404.2022201-2-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123102404.2022201-1-mwalle@kernel.org>
References: <20231123102404.2022201-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Timings taken from the datasheet, although sometimes there are just
typical values and it's not clear if they are no min and max values or
if you must use the typical value exactly. To make things worse, there
is no back porch but only a combined sync and back porch length.

Unfortunately, there is not public datasheet. Therefore, here are the
relevant timings:
                 | min |  typ   | max |
-----------------+-----+--------+-----+
CLK frequency    |  -  | 25.175 |  -  |
HS period        |  -  |   800  |  -  |
HS pulse width   |  5  |    30  |  -  |
HS-DEN time      | 112 |   144  | 175 |
DEN pulse width  |  -  |   640  |  -  |
VS pulse width   |  1  |     3  |  5  |
VS-DEN time      |  -  |    35  |  -  |
VS period        |  -  |   525  |  -  |

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 9367a4572dcf..26702a847b63 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1973,6 +1973,33 @@ static const struct panel_desc eink_vb3300_kca = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct display_timing evervision_vgg644804_timing = {
+	.pixelclock = { 25175000, 25175000, 25175000 },
+	.hactive = { 640, 640, 640 },
+	.hfront_porch = { 16, 16, 16 },
+	.hback_porch = { 82, 114, 170 },
+	.hsync_len = { 5, 30, 30 },
+	.vactive = { 480, 480, 480 },
+	.vfront_porch = { 10, 10, 10 },
+	.vback_porch = { 30, 32, 34 },
+	.vsync_len = { 1, 3, 5 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
+		 DISPLAY_FLAGS_SYNC_POSEDGE,
+};
+
+static const struct panel_desc evervision_vgg644804 = {
+	.timings = &evervision_vgg644804_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 115,
+		.height = 86,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
 static const struct display_timing evervision_vgg804821_timing = {
 	.pixelclock = { 27600000, 33300000, 50000000 },
 	.hactive = { 800, 800, 800 },
@@ -4334,6 +4361,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "eink,vb3300-kca",
 		.data = &eink_vb3300_kca,
+	}, {
+		.compatible = "evervision,vgg644804",
+		.data = &evervision_vgg644804,
 	}, {
 		.compatible = "evervision,vgg804821",
 		.data = &evervision_vgg804821,
-- 
2.39.2


