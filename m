Return-Path: <devicetree+bounces-45880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B8F867228
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7E70287AC6
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C7E4F21D;
	Mon, 26 Feb 2024 10:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="vg/JvPWp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E0F4EB42;
	Mon, 26 Feb 2024 10:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708944588; cv=none; b=EJqqaXLkKMMTD4XjZzJ1bQZoFvRfSRivU35/OTyAYPRFuqfZxkBSa3jE8zz876fwYnEOvpsPU3TQOgnStI3RCHgAD12UrZKngLkHbtN88oE4oVrpFXW8JxhyKLpdM8t4ofzZfLZaXU5Z7RrK4I5IJNKrd+2YXaZcjrpM8AL+Cy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708944588; c=relaxed/simple;
	bh=iKYO2rG3BTMKt5WCaCdwZY//PQVAlVNZ1d+5MI+Gots=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=mpreVKiaYq6Dvo9Gv1gLpJf61F2jCyGeTRXuYcVn06auiXlL/ze1J6z0OCkPcsTSp3cXHGhL5FpO7V4r29i2eRBsTgF+/YUCJYQTZYl0DEb9BjcyoqlyfasmULpX5OSTjyoCzB3GZkVmMsmrLhHQky4KRYSdMLhK7z20CZGZMt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=vg/JvPWp; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41QALKTN025578;
	Mon, 26 Feb 2024 11:49:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:date:subject:mime-version:content-type
	:content-transfer-encoding:message-id:references:in-reply-to:to
	:cc; s=selector1; bh=DnsKquutEGOQewPoi6J/BDbXg1mh4kqRqxYNbt4LG2M
	=; b=vg/JvPWpPfkIqrTHKtz4t+wPErcR6jikhRiL2G1usxocAEZ/05pboKOLv6Q
	L9k+yDZ9P/MxflXqOFwMvX0jHKngqpVqjhIhVzGDAucbhcReVXQ+Mn1HnounBVEt
	mmCWNF02BdWrTRoq/CkmMfi34ILQZXq0WXleb8/oYxMlD/y+62DmXItx6y1vNQw4
	knrxBbRG3XzNVlXB8fpjnvcxhsGOSRv+70Q33zy6GNT374h4CTErRMyRr2OaGpbp
	k8dhkcWhWa5Rerlx2J6ir1zdEgxCrYhjUTZbM/kGhfp8FHxe+ezOpnGEsoiqT1CD
	774mt9+FwohuYrNL3Gy/ZXrQJLQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3wf8p26kne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 11:49:24 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 4476F40044;
	Mon, 26 Feb 2024 11:49:12 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9683B266D12;
	Mon, 26 Feb 2024 11:48:10 +0100 (CET)
Received: from localhost (10.252.9.163) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 26 Feb
 2024 11:48:10 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Mon, 26 Feb 2024 11:48:07 +0100
Subject: [PATCH v6 3/3] drm/stm: ltdc: add lvds pixel clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240226-lvds-v6-3-15e3463fbe70@foss.st.com>
References: <20240226-lvds-v6-0-15e3463fbe70@foss.st.com>
In-Reply-To: <20240226-lvds-v6-0-15e3463fbe70@foss.st.com>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_07,2024-02-26_01,2023-05-22_02

The STM32MP25x display subsystem presents a mux which feeds the loopback
pixel clock of the current bridge in use into the LTDC. This mux is only
accessible through sysconfig registers which is not yet available in the
STM32MP25x common clock framework.

While waiting for a complete update of the clock framework, this would
allow to use the LVDS.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Signed-off-by: Yannick Fertre <yannick.fertre@foss.st.com>
---
Changes in v2:
	- Fixed my address
	- Fixed smatch warning
---
 drivers/gpu/drm/stm/ltdc.c | 19 +++++++++++++++++++
 drivers/gpu/drm/stm/ltdc.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index 5576fdae4962..23011a8913bd 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -838,6 +838,12 @@ ltdc_crtc_mode_valid(struct drm_crtc *crtc,
 	int target_max = target + CLK_TOLERANCE_HZ;
 	int result;
 
+	if (ldev->lvds_clk) {
+		result = clk_round_rate(ldev->lvds_clk, target);
+		DRM_DEBUG_DRIVER("lvds pixclk rate target %d, available %d\n",
+				 target, result);
+	}
+
 	result = clk_round_rate(ldev->pixel_clk, target);
 
 	DRM_DEBUG_DRIVER("clk rate target %d, available %d\n", target, result);
@@ -1896,6 +1902,8 @@ void ltdc_suspend(struct drm_device *ddev)
 
 	DRM_DEBUG_DRIVER("\n");
 	clk_disable_unprepare(ldev->pixel_clk);
+	if (ldev->lvds_clk)
+		clk_disable_unprepare(ldev->lvds_clk);
 }
 
 int ltdc_resume(struct drm_device *ddev)
@@ -1910,6 +1918,13 @@ int ltdc_resume(struct drm_device *ddev)
 		DRM_ERROR("failed to enable pixel clock (%d)\n", ret);
 		return ret;
 	}
+	if (ldev->lvds_clk) {
+		if (clk_prepare_enable(ldev->lvds_clk)) {
+			clk_disable_unprepare(ldev->pixel_clk);
+			DRM_ERROR("Unable to prepare lvds clock\n");
+			return -ENODEV;
+		}
+	}
 
 	return 0;
 }
@@ -1981,6 +1996,10 @@ int ltdc_load(struct drm_device *ddev)
 		}
 	}
 
+	ldev->lvds_clk = devm_clk_get(dev, "lvds");
+	if (IS_ERR(ldev->lvds_clk))
+		ldev->lvds_clk = NULL;
+
 	rstc = devm_reset_control_get_exclusive(dev, NULL);
 
 	mutex_init(&ldev->err_lock);
diff --git a/drivers/gpu/drm/stm/ltdc.h b/drivers/gpu/drm/stm/ltdc.h
index 9d488043ffdb..4a60ce5b610c 100644
--- a/drivers/gpu/drm/stm/ltdc.h
+++ b/drivers/gpu/drm/stm/ltdc.h
@@ -44,6 +44,7 @@ struct ltdc_device {
 	void __iomem *regs;
 	struct regmap *regmap;
 	struct clk *pixel_clk;	/* lcd pixel clock */
+	struct clk *lvds_clk;	/* lvds pixel clock */
 	struct mutex err_lock;	/* protecting error_status */
 	struct ltdc_caps caps;
 	u32 irq_status;

-- 
2.25.1


