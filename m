Return-Path: <devicetree+bounces-136534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F6DA057E6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7B69162432
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8348D1F76C3;
	Wed,  8 Jan 2025 10:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AA1d+DIW"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD918B463;
	Wed,  8 Jan 2025 10:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736331566; cv=none; b=rk3Lw7TBE3EsBiPPEMtcWhvnM4YaMmwzhzjc4cDPhEhQeWZuCPNb3+0U36hlHNUlwvgdpNUHAdvsVchzfuSiyHmSJn+UH0ukveI+VFpxSYMDx+VXmb2IIqA/IQdPPTnN04W8b87i7khjnO8SdhB7NYSMJzxEPRDpXErqT6B/NWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736331566; c=relaxed/simple;
	bh=3IoH+ELFhAV5zHy8qN3Xg7pAtgBZ18L+drqkfTKvRRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oc/vasDmoZAtqAFmZt/MwBbUAAnhzd3N2rnQYmqeZaTmyAXyL1KRQ8zgcXNG5dubc79H/WNhjt7xzL6EuOxTSJLC1Wu18D6/uoHEORF5AuJp45qEfWTPXxh6YgCuDaZUhRAoJ2pac+iGjPZG32H9+7+7Z6PZYwHINo48WJpNFNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AA1d+DIW; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 139C4FF80E;
	Wed,  8 Jan 2025 10:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736331562;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4hTFK8qM+jaDV8khItNXyxdeGEFi1Kag68VAsFGm+3s=;
	b=AA1d+DIWO96WsiXGbHeYiRvnXahtluWQGXeQwvGdi5EsEKdmBM7+Lpkw8YdU9AOGOAGo0E
	mH3mDjt/6eHoI13MPfyNjZkwEaGJ798jOva/0CU7QHeFZTR/K121/nkxj/uc7LNanXAadG
	FzY2kV2xV1eHJUyjb69z7uk94IPrnJdgWfp3vOZ7YiOJPhR0T+wLLYhvSRDtlzAEGOJvye
	74F6uHnpbw9JJQzRbJp6XfLdx6ZKd5vuA2gxdRgf9e23kw9ZIk0aFYzcBPZE7ij1dV1q3k
	MoxeWye+UuufivjzyKH/hXmiCpeOYOkhyQtFtgl+xUJ6568YPt/wC6okhQv1Mg==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: display: bridge: sn65dsi83: Add interrupt
Date: Wed,  8 Jan 2025 11:19:00 +0100
Message-ID: <20250108101907.410456-2-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250108101907.410456-1-herve.codina@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Both the TI SN65DSI83 and SN65DSI84 bridges have an IRQ pin to signal
errors using interrupt.

This interrupt is not documented in the binding.

Add the missing interrupts property.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 48a97bb3e2e0..4505d2d83e0d 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -35,6 +35,9 @@ properties:
   vcc-supply:
     description: A 1.8V power supply (see regulator/regulator.yaml).
 
+  interrupts:
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.47.1


