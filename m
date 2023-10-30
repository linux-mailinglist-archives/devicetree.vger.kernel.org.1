Return-Path: <devicetree+bounces-12719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BAB7DB426
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86D531C20858
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51BB24C84;
	Mon, 30 Oct 2023 07:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="rZ8D0uh0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53754C7F
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:24:38 +0000 (UTC)
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [IPv6:2001:41d0:1004:224b::ac])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A6EEA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:24:36 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1698650674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N/ff6X+NOYVbrocTBpgld9JVVmEwtIn+hGTJSAUql5A=;
	b=rZ8D0uh0IV53WbKCCnQnBoBtXVYNz+6fI1mPvXErAQh0wDixiRvkOb68O4sbL804cgtFs0
	Z1+0caU1cRnsowurxNEA5aWv0sF/orTPfTiggRZZQyTp5NjLysv1tXLDyD8xgVDNyfyWVl
	B2hPZ4C/CrfinNbmwHXAXBDrZJ0gCUsLEnAVhXFFCGSiE8qqxoJlZeZX5ttmXV36nWH8Jy
	QmA66UFTCAe0XpiVeCpJSO1r9h3ZMjczvUTUEyjiIEGUu+fN7Ad1Ir2UGv9zLEBaKqnnnR
	P6IWH7cV9D2ZHQqxxIGGF79QJDDJv/TTHg2kAm30CXcDEepB4z/UwuWdL36OBA==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 2/7] drm/panel: nv3052c: Add SPI device IDs
Date: Mon, 30 Oct 2023 18:23:33 +1100
Message-ID: <20231030072337.2341539-4-contact@jookia.org>
In-Reply-To: <20231030072337.2341539-2-contact@jookia.org>
References: <20231030072337.2341539-2-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

SPI drivers needs their own list of compatible device IDs in order
for automatic module loading to work. Add those for this driver.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 589431523ce7..90dea21f9856 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -465,6 +465,12 @@ static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
 	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
 };
 
+static const struct spi_device_id nv3052c_ids[] = {
+	{ "ltk035c5444t", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(spi, nv3052c_ids);
+
 static const struct of_device_id nv3052c_of_match[] = {
 	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
 	{ /* sentinel */ }
@@ -476,6 +482,7 @@ static struct spi_driver nv3052c_driver = {
 		.name = "nv3052c",
 		.of_match_table = nv3052c_of_match,
 	},
+	.id_table = nv3052c_ids,
 	.probe = nv3052c_probe,
 	.remove = nv3052c_remove,
 };
-- 
2.42.0


