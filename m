Return-Path: <devicetree+bounces-67020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 010C28C644D
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 11:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23A651C2146C
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 09:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6855FDA9;
	Wed, 15 May 2024 09:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gR2DiNFp"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111CE5B683;
	Wed, 15 May 2024 09:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715766722; cv=none; b=Jh0a4UGkWoHuiFk/8S19Uw5cE94/Ya6MjAn4M0mVLHx1c4eELqUw0TTXI/CYJqOwFC00Z70TMOzXUFu30783DhwIppT/fMYzU+rtV/4GQZs4WUtQskt5kcN/4PTry9vG9PYlWwoGgF3nbweSm1mo4m7W9HduPvoYGXllu5YPwHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715766722; c=relaxed/simple;
	bh=GAMljtWFMLGLrSPhP+Mz0XyQoee70zzVFVB1uV5sYvA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B2g/+ERKNFHccoeF8ajnpwSmiFX9eb85M/8dt1N9nHUnOQtu44iRszyy4A8aYO3KyvhLFjPXwMV/gjoS44vBMSCNJYySoKj9oZFZA6uHBYg/Ud5pAHI1ITmQvd6/NGY8U7wfs4lvBRCahm5wwMczMXX7LiaqWvMSgrier54Vqqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gR2DiNFp; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 44F9pitT076991;
	Wed, 15 May 2024 04:51:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1715766704;
	bh=yetufM1FAv/L2GL3vhvpOOxJYCzRUUceyE4ftJf1svM=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=gR2DiNFpAe2ylHNreH7M9RuO7HqNpYYQclTcgXXXY4ZJxfhGYbfhn/Vx2k3FiJrqn
	 5EPrGSLstItQjLPVirEGBm63Bkug/EMVTNMUwnI/Zk3i+g6Pne/5q0JaBJ+cso3Le/
	 AtyW8kjQmPjYgZhvyDO6t96pTPJSQIq4B1xKtpH8=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 44F9piIL057809
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 May 2024 04:51:44 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 May 2024 04:51:44 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 May 2024 04:51:43 -0500
Received: from localhost (uda0496377.dhcp.ti.com [172.24.227.31])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 44F9pg67125457;
	Wed, 15 May 2024 04:51:43 -0500
From: Aradhya Bhatia <a-bhatia1@ti.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang
	<quic_jesszhan@quicinc.com>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie
	<airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
        Thierry Reding
	<thierry.reding@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>,
        Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>
CC: DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List
	<devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar
	<u-kumar1@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>, Jai Luthra
	<j-luthra@ti.com>,
        Aradhya Bhatia <a-bhatia1@ti.com>
Subject: [PATCH v3 5/6] drm/panel: simple: Add Microtips Technology 13-101HIEBCAF0-C panel
Date: Wed, 15 May 2024 15:21:32 +0530
Message-ID: <20240515095133.745492-6-a-bhatia1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515095133.745492-1-a-bhatia1@ti.com>
References: <20240515095133.745492-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add support for Microtips Technology USA 13-101HIECAF0-C 10.1",
1920x1200, 8-bit TFT LCD with LVDS interface, LED backlight and touch
support (ILITEK 2511).

[0]: Panel Datasheet
https://simplespec.microtipsusa.com/uploads/spec/datasheetFile/2588/13-101HIEBCAF0-S_V1.1_20221104.pdf

Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 10e974bffd28..3a0d8f0ff267 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3055,6 +3055,35 @@ static const struct panel_desc logicpd_type_28 = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct drm_display_mode microtips_mf_101hiebcaf0_c_mode = {
+	.clock = 150275,
+	.hdisplay = 1920,
+	.hsync_start = 1920 + 32,
+	.hsync_end = 1920 + 32 + 52,
+	.htotal = 1920 + 32 + 52 + 24,
+	.vdisplay = 1200,
+	.vsync_start = 1200 + 24,
+	.vsync_end = 1200 + 24 + 8,
+	.vtotal = 1200 + 24 + 8 + 3,
+};
+
+static const struct panel_desc microtips_mf_101hiebcaf0_c = {
+	.modes = &microtips_mf_101hiebcaf0_c_mode,
+	.bpc = 8,
+	.num_modes = 1,
+	.size = {
+		.width = 217,
+		.height = 136,
+	},
+	.delay = {
+		.prepare = 50,
+		.disable = 50,
+	},
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
 	.clock = 30400,
 	.hdisplay = 800,
@@ -4694,6 +4723,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "logictechno,lttd800480070-l6wh-rt",
 		.data = &logictechno_lttd800480070_l6wh_rt,
+	}, {
+		.compatible = "microtips,mf-101hiebcaf0",
+		.data = &microtips_mf_101hiebcaf0_c,
 	}, {
 		.compatible = "mitsubishi,aa070mc01-ca1",
 		.data = &mitsubishi_aa070mc01,
-- 
2.34.1


