Return-Path: <devicetree+bounces-119132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 565BF9BD191
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A25C1C21A62
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 16:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8321E9070;
	Tue,  5 Nov 2024 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="lx8Kg4fg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D29316EB4C;
	Tue,  5 Nov 2024 15:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730822394; cv=none; b=aT/xVR0JHstFfY0I6aa7dZih59Rzk6dK4bUA/y6nKxZ98K49oHTY5EY8faOwbrPDqEJF+p7pwSoEQ5na1O5fjiePaHjQn0tmX1zo/KgYPoSEOidmNZ+GUvucYQ+NTefMtWMozWQmXoITPbMgisGL3fUvD3m2g6iXg19+bqNhhSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730822394; c=relaxed/simple;
	bh=2f2fs+88+iK9A5idweZtOo098tQrrVzocR/Oxpd1Dxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=cOmRSOJXuTbPww/7QlMSvmkakDA36QkofaAz1M0B1S3n0b9bbFUUy3Y7LTtBlI7ijs3nicYT1PlBxQRtKqqzmThz3idjY80JtfZ2C9yBlJ/94X/1/B0hhY9712KfNzphFOytoR5+SLFz1FCN3ixGnsIt6YgFCuFkDyL1QasHkiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=lx8Kg4fg; arc=none smtp.client-ip=91.207.212.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A5EF3v5003827;
	Tue, 5 Nov 2024 15:58:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=E
	9byjgaQjyfYg/crGDyJ7Ne/tyLg+84GG98klfTgeZA=; b=lx8Kg4fg4Y1Zhe+TZ
	wJovBKCXKZBxSrY4P8VYsZFy3MSxCdRPXZ5XUC0ad1vogJjJAA6WugF7Zjn7D1vO
	tz26fRLnKoli3uuzJpuhGGxCEVc4eRYl1Dh8A7133b9JW8UMnI59ENRgDEOWKnq1
	MgQDF6rs35kKjsVZR+rZRR71AuiMnVPa0A2hTaKzRZYwkP7qJf8n3rxR7NpY3bnU
	juS4ZTo0IPjr4BDas6apLadohHmE67MWm/2oAZdBSa/b2Ma6lDpn8KEpcTHJEI9H
	ZChIX675zwS951AFzudR3w3PzmBjeDz6Oij2DWPeXCdrHa6jI1ciRcJqfqBeyPDB
	cYZ+w==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 42nb7wta0y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 05 Nov 2024 15:58:38 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.16.114) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Tue, 5 Nov 2024 15:58:37 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Tue, 5 Nov 2024 15:58:24 +0000
Subject: [PATCH 18/21] drm/imagination: Add platform overrides
 infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241105-sets-bxs-4-64-patch-v1-v1-18-4ed30e865892@imgtec.com>
References: <20241105-sets-bxs-4-64-patch-v1-v1-0-4ed30e865892@imgtec.com>
In-Reply-To: <20241105-sets-bxs-4-64-patch-v1-v1-0-4ed30e865892@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7349;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=2f2fs+88+iK9A5idweZtOo098tQrrVzocR/Oxpd1Dxw=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaRrOcxTz3Hk5Zz6mV1kWnTJgWs7eRmbyvbenfro5sqSh
 mM2FcX5HaUsDGIcDLJiiiw7VliuUPujpiVx41cxzBxWJpAhDFycAjCRWckM/+yjxAoig49f/XC6
 +OPs2Uw6f7LO50wunmHwm9nDLv1kjhjD/2wFBb4WMYVHcT8DjaUXZ7pNeSvfX6XE2q23f9uRxMh
 GJgA=
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Authority-Analysis: v=2.4 cv=ddzS3mXe c=1 sm=1 tr=0 ts=672a40ae cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=hzDjp0mCheYA:10 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=r_1tXGB3AAAA:8 a=NJLOqUG6SynMPaEuFzYA:9 a=QEXdDO2ut3YA:10
 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: bWczYouK8NpeCrJvL1CBCkau73d8YHu5
X-Proofpoint-ORIG-GUID: bWczYouK8NpeCrJvL1CBCkau73d8YHu5

This infrastructure will be used in cases where a specific GPU integration
or implementation requires some special handling in the driver. The first
use case is the device cached memory override added in the next patch.

The infrastructure is built out in this separate commit to make it
clear which specific changes refer to the workaround added there.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
 drivers/gpu/drm/imagination/pvr_device.c | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_device.h | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_drv.c    | 34 ++++++++++++++++++++++++--------
 3 files changed, 78 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/imagination/pvr_device.c b/drivers/gpu/drm/imagination/pvr_device.c
index 52d7641a1a0c62a9c4029092e846472d82950a61..2ce46b9a8ab7609faebeeb4e7820751b00047806 100644
--- a/drivers/gpu/drm/imagination/pvr_device.c
+++ b/drivers/gpu/drm/imagination/pvr_device.c
@@ -621,3 +621,29 @@ pvr_device_has_feature(struct pvr_device *pvr_dev, u32 feature)
 		return false;
 	}
 }
+
+/**
+ * pvr_device_overrides_validate() - Ensure the overrides specified are compatible with a device.
+ * @pvr_dev: Target PowerVR device.
+ * @overrides: Device overrides to validate.
+ *
+ * Return:
+ *  * %true if every override specified in @overrides is compatible with the current device, or
+ *  * %false otherwise; as many incompatibilities as possible will be reported in the kernel log.
+ */
+bool
+pvr_device_overrides_validate(struct pvr_device *pvr_dev,
+			      const struct pvr_device_overrides *overrides)
+{
+	bool ret = true;
+
+	/*
+	 * Where possible, avoid early returns in this function. This allows for as
+	 * many errors to be reported at once as possible.
+	 *
+	 * Note that this function may be called early during device initialization
+	 * so it should not be assumed that @pvr_dev is ready for normal use yet.
+	 */
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index 76f79b18af354f0e0070530dfc5c8fe0f6a41ce1..ad0a02a37154099542247dfc62f411c10f4e41f4 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -16,6 +16,7 @@
 #include <drm/drm_mm.h>
 
 #include <linux/bits.h>
+#include <linux/compiler.h>
 #include <linux/compiler_attributes.h>
 #include <linux/compiler_types.h>
 #include <linux/device.h>
@@ -56,6 +57,13 @@ struct pvr_fw_version {
 	u16 major, minor;
 };
 
+/**
+ * struct pvr_device_overrides - Hardware-level overrides loaded from
+ * MODULE_DEVICE_TABLE() or similar.
+ */
+struct pvr_device_overrides {
+};
+
 /**
  * struct pvr_device - powervr-specific wrapper for &struct drm_device
  */
@@ -94,6 +102,13 @@ struct pvr_device {
 	 */
 	struct pvr_device_enhancements enhancements;
 
+	/**
+	 * @overrides: Platform-specific overrides required for this device.
+	 *
+	 * Do not access this member directly, instead use PVR_HAS_OVERRIDE().
+	 */
+	struct pvr_device_overrides overrides;
+
 	/** @fw_version: Firmware version detected at runtime. */
 	struct pvr_fw_version fw_version;
 
@@ -436,6 +451,13 @@ struct pvr_file {
  */
 #define PVR_HAS_ENHANCEMENT(pvr_dev, enhancement) ((pvr_dev)->enhancements.has_ern##enhancement)
 
+/**
+ * PVR_HAS_OVERRIDE() - Tests whether a physical device requires a given override
+ * @pvr_dev: [IN] Target PowerVR device.
+ * @override: [IN] Override name.
+ */
+#define PVR_HAS_OVERRIDE(pvr_dev, override) unlikely((pvr_dev)->overrides.override)
+
 #define from_pvr_device(pvr_dev) (&(pvr_dev)->base)
 
 #define to_pvr_device(drm_dev) container_of_const(drm_dev, struct pvr_device, base)
@@ -516,6 +538,10 @@ pvr_device_has_uapi_enhancement(struct pvr_device *pvr_dev, u32 enhancement);
 bool
 pvr_device_has_feature(struct pvr_device *pvr_dev, u32 feature);
 
+bool
+pvr_device_overrides_validate(struct pvr_device *pvr_dev,
+			      const struct pvr_device_overrides *overrides);
+
 /**
  * PVR_CR_FIELD_GET() - Extract a single field from a PowerVR control register
  * @val: Value of the target register.
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index 1ab97933e14f20ee3fbf603c23b8dde2d33572c2..b56ee2cda9b54c4388a6eef38b0ff81acdb05874 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -31,6 +31,7 @@
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/moduleparam.h>
+#include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
@@ -1396,11 +1397,13 @@ static struct drm_driver pvr_drm_driver = {
 static int
 pvr_probe(struct platform_device *plat_dev)
 {
+	const struct pvr_device_overrides *overrides;
+	struct device *dev = &plat_dev->dev;
 	struct pvr_device *pvr_dev;
 	struct drm_device *drm_dev;
 	int err;
 
-	pvr_dev = devm_drm_dev_alloc(&plat_dev->dev, &pvr_drm_driver,
+	pvr_dev = devm_drm_dev_alloc(dev, &pvr_drm_driver,
 				     struct pvr_device, base);
 	if (IS_ERR(pvr_dev))
 		return PTR_ERR(pvr_dev);
@@ -1409,6 +1412,15 @@ pvr_probe(struct platform_device *plat_dev)
 
 	platform_set_drvdata(plat_dev, drm_dev);
 
+	overrides = of_device_get_match_data(dev);
+	if (!overrides)
+		return -EINVAL;
+
+	if (!pvr_device_overrides_validate(pvr_dev, overrides))
+		return -EINVAL;
+
+	pvr_dev->overrides = *overrides;
+
 	err = pvr_power_domains_init(pvr_dev);
 	if (err)
 		goto err_context_fini;
@@ -1421,11 +1433,11 @@ pvr_probe(struct platform_device *plat_dev)
 	if (err)
 		goto err_power_domains_fini;
 
-	devm_pm_runtime_enable(&plat_dev->dev);
-	pm_runtime_mark_last_busy(&plat_dev->dev);
+	devm_pm_runtime_enable(dev);
+	pm_runtime_mark_last_busy(dev);
 
-	pm_runtime_set_autosuspend_delay(&plat_dev->dev, 50);
-	pm_runtime_use_autosuspend(&plat_dev->dev);
+	pm_runtime_set_autosuspend_delay(dev, 50);
+	pm_runtime_use_autosuspend(dev);
 	pvr_watchdog_init(pvr_dev);
 
 	err = pvr_device_init(pvr_dev);
@@ -1478,18 +1490,24 @@ static void pvr_remove(struct platform_device *plat_dev)
 	pvr_power_domains_fini(pvr_dev);
 }
 
+static const struct pvr_device_overrides pvr_device_overrides_default = {};
+
+/*
+ * Always specify &pvr_device_overrides_default instead of %NULL for &struct of_device_id->data so
+ * that we know of_device_get_match_data() returning %NULL is an error.
+ */
 static const struct of_device_id dt_match[] = {
-	{ .compatible = "img,img-rogue", .data = NULL },
+	{ .compatible = "img,img-rogue", .data = &pvr_device_overrides_default },
 
 	/* All supported GPU models */
-	{ .compatible = "img,img-axe-1-16m", .data = NULL },
+	{ .compatible = "img,img-axe-1-16m", .data = &pvr_device_overrides_default },
 
 	/*
 	 * This legacy compatible string was introduced early on before the more specific GPU
 	 * identifiers were used. Keep it around here for compatibility, but never use
 	 * "img,img-axe" in new devicetrees.
 	 */
-	{ .compatible = "img,img-axe", .data = NULL },
+	{ .compatible = "img,img-axe", .data = &pvr_device_overrides_default },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);

-- 
2.47.0


