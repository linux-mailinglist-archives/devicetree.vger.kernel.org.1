Return-Path: <devicetree+bounces-154753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7AEA545FA
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B0B418911A8
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 09:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B372209677;
	Thu,  6 Mar 2025 09:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b="YNGZClJW"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83FF208981
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 09:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741252308; cv=none; b=RulVGlIkEABbnziHeb/pz2XYjHAdm18qEV0zKkjzqMacZpZHEi7XOpVv4HBEKjTac2/uVtyk4wNziK/imvzwLlI2+VVX0FwruquD8/C663pHsug2VqqH+xO8ntkHJP5xcx/7HoAn+0i1gaBEF+9W97JeboF3vOtYdeFkU2daSFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741252308; c=relaxed/simple;
	bh=K6JNlyPM92BR1zIyUvScngr7lPIIcPl+fXDdsmoCq1I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QXbu/rm6tQ/IyWEy416nWKiWDVcUqT5BA0Ok6UK6J/J2ZRAC16iZke2uYTrGZc7g18qmVwopYK43u7Thq3KpyQuPYY5NumC8O8T3n2TuwCk1tFbnAbLhVDX9i7faZ0NWhL3YKrtkntbz/L1HRRTzYIh1BF6F18e9bb9kCB/mxa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b=YNGZClJW; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20250306091137d75977ac4d91e5bb95
        for <devicetree@vger.kernel.org>;
        Thu, 06 Mar 2025 10:11:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alessandro.zini@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=NMfsC4/yM01xpBetTGZUi8FhmxQx5NVH65WeTChQBQ0=;
 b=YNGZClJWueHEkQbRaHVtzgCso65t1U9Nej1WKRdKjXmrFNKF3PAA9YONyDkK0+C2y/mRI5
 506yKqvpbIUu7do3enUmJfVHjg+Wo38cyYGUwk/3J4IicPG6IKSeERW+c57uc8PT0YaW+cvu
 1zsMHtjkA6f1mCES4nutLF0Sxhm6ski0k3eYwFOL9nsoGJzJJ1ES/GbP1iQnp7HvWbWRJx9o
 dM2xiFSe7EfS/1RO7qOecfLj0vpSo1bGdi7lG7T1dIOMYwEHiua9Xnmen15tvrCDEzaPa1uK
 3bURbWppy9dwCXk+WuYz2OuDa95vVr5L62h19LrR3Z7D3ykchHJf1Oog==;
From: "A. Zini" <alessandro.zini@siemens.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Andrej Picej <andrej.picej@norik.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Alessandro Zini <alessandro.zini@siemens.com>
Subject: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: add h/vsync-disable bindings
Date: Thu,  6 Mar 2025 10:11:32 +0100
Message-ID: <20250306091133.46888-2-alessandro.zini@siemens.com>
In-Reply-To: <20250306091133.46888-1-alessandro.zini@siemens.com>
References: <20250306091133.46888-1-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1327013:519-21489:flowmailer

From: Alessandro Zini <alessandro.zini@siemens.com>

Add hsync- and vsync-disable bindings, used to disable the generation of
h/vsync signals.

Signed-off-by: Alessandro Zini <alessandro.zini@siemens.com>
---
 .../bindings/display/bridge/ti,sn65dsi83.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 9b5f3f3eab198..ff80876d504ad 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -94,6 +94,18 @@ properties:
       - port@0
       - port@2
 
+  hsync-disable:
+    type: boolean
+    description: |
+      Disable HSYNC generation on the LVDS output by setting the
+      width in pixel clocks of the hsync pulse width to 0.
+
+  vsync-disable:
+    type: boolean
+    description: |
+      Disable VSYNC generation on the LVDS output by setting the
+      length in lines of the vsync pulse width to 0.
+
 required:
   - compatible
   - reg
-- 
2.48.1


