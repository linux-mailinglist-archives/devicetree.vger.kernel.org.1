Return-Path: <devicetree+bounces-112354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ECD9A1DE4
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AA6B1C2493D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09801D8DF6;
	Thu, 17 Oct 2024 09:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="PB0BbswE"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6651D88AD
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729156335; cv=none; b=hGA+ShjC2OR+7y5QhjI+Ni+FVa/PzwTKGe+DdhPFXziHdgMQoGZPp4RRLciOmcMjgxRnWMW6NEsm9saNEL9nJECjtuzI7y8PxeR//GcaHU9uMCTriEKkgj0Q85aMsm4p/yoqR1D5f17M004Gbmjc7U+ar9Nu0QckkdakeMgCqbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729156335; c=relaxed/simple;
	bh=QEnmiH9jI1YFjLImlKAlfNH1g1OGXrwhTMgTXW6e2aE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tYM5cSgUJUijGHzogeyq/E/aJtdeeVz/GlRkKCqHeaY8Yekp3I/aaz2RWM1BQ8urAggL9t31bHaTjAA1NL9pwK77+2cEljyQwpJhaX2fkl1cWB5XqvywsG5O+R39qL1+mvUn92ygnauDMWc66ao/r5CH4lvTFyvMYCkv+hqzTXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=PB0BbswE; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1729155405; x=1731747405;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QEnmiH9jI1YFjLImlKAlfNH1g1OGXrwhTMgTXW6e2aE=;
	b=PB0BbswEzE50qq2Ip5IBt7zzOswNSiFq7UeePUFRd7j5rBccYn0Ssv4sk179ai+S
	BZf5cG06vUK6qK3WP8nDF7lePEq/PhYuaNu7xlvmhCfVNeG0epmTCbvy/Du77g/H
	x0oEDaRxJ5eePt9HepcYO5Rr7sU3Bmogj7jakcu7ais=;
X-AuditID: ac14000a-4637f70000004e2a-88-6710d14d6797
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A3.81.20010.D41D0176; Thu, 17 Oct 2024 10:56:45 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Thu, 17 Oct
 2024 10:56:45 +0200
From: Wadim Egorov <w.egorov@phytec.de>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
CC: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<bbrezillon@kernel.org>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
	<robh@kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH v3 2/2] drm/bridge: sii902x: Set input bus format based on bus-width
Date: Thu, 17 Oct 2024 10:55:56 +0200
Message-ID: <20241017085556.3045686-3-w.egorov@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241017085556.3045686-1-w.egorov@phytec.de>
References: <20241017085556.3045686-1-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPIsWRmVeSWpSXmKPExsWyRpKBR9f3okC6QdNZPosT1xcxWdxf/JnF
	YnXLdEaLNXvPMVnMP3KO1eLK1/dsFs/nr2O0OPnmKovFy1n32Cw6Jy5ht7i8aw6bxcKPW1ks
	2jqXsVq833mL0WLSvJusFv/37GC3mP1uP7vFljcTWS2636k7CHvs/baAxWPnrLvsHrM7ZrJ6
	LN7zkslj06pONo8TEy4xedy5tofNY97JQI/73ceZPPq7W1g9Np+u9vi8SS6AJ4rLJiU1J7Ms
	tUjfLoEro79/N1PBScGK45+/sDYwbuXrYuTkkBAwkXjz/zdrFyMXh5DAEiaJvkM/GCGcx4wS
	uy48ZwGpYhNQl7iz4RsriC0i4Cdx68s+dpAiZoFNzBKfX+8GSwgLhEj8bd/BBmKzCKhKbLkz
	EyjOwcErYCnx6FgdxDZ5iZmXvrOD2JwCVhKf/l1lBrGFgEo2/DgO1sorIChxcuYTsL3MQPXN
	W2czQ9gSEgdfvICql5d4cWk5C8zMaedeM0PYoRJHNq1mmsAoNAvJqFlIRs1CMmoBI/MqRqHc
	zOTs1KLMbL2CjMqS1GS9lNRNjKBIFmHg2sHYN8fjECMTB+MhRgkOZiUR3kldvOlCvCmJlVWp
	RfnxRaU5qcWHGKU5WJTEeVd3BKcKCaQnlqRmp6YWpBbBZJk4OKUaGFNDp7E43XFM8jqXyb5h
	2+L0YI7jOovWeh4MeXu8tFfW/q8IS2X1vunRxmIHGVRUlJ6tn+WzOjbHspTvjfoU5RUZZpwm
	av08B2fyVqxaeyno57tivTuqKXduvzCYmlTLGaH9Z86xP2mHFTi3nFQOf2O87rmjHOOSAw8f
	ct0u4D8h5LL3qlBNmRJLcUaioRZzUXEiAG4BDDzSAgAA

Introduce a bus-width property to define the number of parallel RGB
input pins connected to the transmitter. The input bus formats are updated
accordingly. If the property is not specified, default to 24-bit bus-width.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v3: Ensure bus_width is set/defaults to 24 even if an endpoint is not defined
---
 drivers/gpu/drm/bridge/sii902x.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 7f91b0db161e..9be9cc5b9025 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -180,6 +180,8 @@ struct sii902x {
 	struct gpio_desc *reset_gpio;
 	struct i2c_mux_core *i2cmux;
 	bool sink_is_hdmi;
+	u32 bus_width;
+
 	/*
 	 * Mutex protects audio and video functions from interfering
 	 * each other, by keeping their i2c command sequences atomic.
@@ -477,6 +479,8 @@ static u32 *sii902x_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
 						     u32 output_fmt,
 						     unsigned int *num_input_fmts)
 {
+
+	struct sii902x *sii902x = bridge_to_sii902x(bridge);
 	u32 *input_fmts;
 
 	*num_input_fmts = 0;
@@ -485,7 +489,20 @@ static u32 *sii902x_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
 	if (!input_fmts)
 		return NULL;
 
-	input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
+	switch (sii902x->bus_width) {
+	case 16:
+		input_fmts[0] = MEDIA_BUS_FMT_RGB565_1X16;
+		break;
+	case 18:
+		input_fmts[0] = MEDIA_BUS_FMT_RGB666_1X18;
+		break;
+	case 24:
+		input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
+		break;
+	default:
+		return NULL;
+	}
+
 	*num_input_fmts = 1;
 
 	return input_fmts;
@@ -1167,6 +1184,11 @@ static int sii902x_probe(struct i2c_client *client)
 		return PTR_ERR(sii902x->reset_gpio);
 	}
 
+	sii902x->bus_width = 24;
+	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);
+	if (endpoint)
+		of_property_read_u32(endpoint, "bus-width", &sii902x->bus_width);
+
 	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, 1, -1);
 	if (endpoint) {
 		struct device_node *remote = of_graph_get_remote_port_parent(endpoint);
-- 
2.34.1


