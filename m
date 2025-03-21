Return-Path: <devicetree+bounces-159821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1EA6C3F0
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 21:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B7B03B7DC6
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 20:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E84230270;
	Fri, 21 Mar 2025 20:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="dbkJVkNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013541EE033
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 20:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742587640; cv=none; b=Y3P3h2y1b8SQNDE31Liu8JRZk7bk+MHiflwBFRuEJVzTOEfKIa/Rc6/cf8VZKjxUMQIH9xK+mUsmO5UtW6dFrypGV2a6RLSt+8HB2W2pzpKvQIWeoOJCKox66cp4G40wqcYdxliaflgnar7i86+vOjbcD7nIh9OQg9gkuu7U54w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742587640; c=relaxed/simple;
	bh=Wt7QXDsOyvbjZVJnG6MgZbyuyEInQBjemMPgoT2FvtE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S4s0hf68HZt5lmOU+RnLVTXq0rRWy4aLdxIzCEwslxCW9reqX9wZpkSl5F8L3jnCkJ4N5Em3zaeB8cBWXylTQdeuPWK/j/vLTebYNYc6oa/0sOA1PqVogSvvfEdkJQREGonINpHj5FEA7H1HXp5Z+HgflpJ0j+37YVNdgpQc7QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=dbkJVkNr; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C7E5D101E8FE7;
	Fri, 21 Mar 2025 21:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1742587635; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=O8iECVKqUngmbLKesdAXdxuc21AF1mv3PVk149t7akU=;
	b=dbkJVkNrAiPA1y2flaykkwgNtX4AnewryWHqt5l/Jmoaw6Rwx0rMnsDXHOlEHmWHlDHHlQ
	kA1TiweR3QTmtoSMyfYo5B/pghhZnm24wn/bT/5ogob2FiFAQL8uVlT47avHBNP1PsaS9H
	v6UhNwzQ+eBXsTb+H3TigCcr/jK7g/cuXzb7lCrVnT8AHQdC4S5Wrd7aaqbO9hVv2bLsab
	QNJyixNjnHnTHfuBzNEYcItV0h+7tVXaELiv38kwsvH9Gya72u07w6MQAK9BpHYa2GfNdQ
	IsU7AlUuBi0Rg5eYyPQ7clJYJPC1iXpQik3JyOMyGDjyZG3SwQGgPgn8QFahtw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev
Subject: [PATCH v2 6/9] drm/panthor: Reset GPU after L2 cache power off
Date: Fri, 21 Mar 2025 21:05:56 +0100
Message-ID: <20250321200625.132494-7-marex@denx.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250321200625.132494-1-marex@denx.de>
References: <20250321200625.132494-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

This seems necessary on Freescale i.MX95 Mali G310 to reliably resume
from runtime PM suspend. Without this, if only the L2 is powered down
on RPM entry, the GPU gets stuck and does not indicate the firmware is
booted after RPM resume.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 drivers/gpu/drm/panthor/panthor_gpu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panthor/panthor_gpu.c b/drivers/gpu/drm/panthor/panthor_gpu.c
index 671049020afaa..0f07ef7d9aea7 100644
--- a/drivers/gpu/drm/panthor/panthor_gpu.c
+++ b/drivers/gpu/drm/panthor/panthor_gpu.c
@@ -470,11 +470,12 @@ int panthor_gpu_soft_reset(struct panthor_device *ptdev)
  */
 void panthor_gpu_suspend(struct panthor_device *ptdev)
 {
-	/* On a fast reset, simply power down the L2. */
-	if (!ptdev->reset.fast)
-		panthor_gpu_soft_reset(ptdev);
-	else
-		panthor_gpu_power_off(ptdev, L2, 1, 20000);
+	/*
+	 * Power off the L2 and soft reset the GPU, that makes
+	 * iMX95 Mali G310 resume without firmware boot timeout.
+	 */
+	panthor_gpu_power_off(ptdev, L2, 1, 20000);
+	panthor_gpu_soft_reset(ptdev);
 
 	panthor_gpu_irq_suspend(&ptdev->gpu->irq);
 }
-- 
2.47.2


