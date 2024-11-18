Return-Path: <devicetree+bounces-122562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E143E9D11DF
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 14:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A02332847F9
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 13:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B671A2622;
	Mon, 18 Nov 2024 13:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="Qx+qelRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF47A19ABB6;
	Mon, 18 Nov 2024 13:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731936590; cv=none; b=ueU7yun3Xz5duDN1VyRdcmgOefyZU8McmUE9ZqpTQxEcg2EB2kzTypiJxWvUgGHzT1M4mZiz5IUOz3RM/ca73D/iNFGN19QF5dXr7Ut6275FQtRc8vABUop4xNG9NflOz5o5cd3U36bLd8CFj7l/PIOs6oO36klzd4M98iVvQ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731936590; c=relaxed/simple;
	bh=EDeQt3mie167DrpZUwHp7UeO+k68HDTaFgW5fNU+Z1E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=tZE56b7UbbaUigmfZP7hLH/d9oCwlc+me8pFADOzQ65p26JuXAWbNa0vcg+vOiEpij3KGhM/RCMFc5ew8IaXftgql53cmH4N6TvzVEIz/kLkd+IqA/0TYPV9s7jygJDtcy3vv1/EGDZl99FDDQuIv3w2tckDGGm6AxTu13ang7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=Qx+qelRR; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AICK2L5027979;
	Mon, 18 Nov 2024 13:02:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=H
	YVc48U+wY7mYCE0ySOj3vvKKeab/tHu8BrDguFFCAU=; b=Qx+qelRRhwtuNSi5a
	+7ccUoMn3xm+JDSwsww8K85p7BBbCnvKYCOAj4F/4QrpOgJGup+WssjDKQKMunTJ
	BBlGmauggwf28YGqgLa0iVHN4XAYcndnBVQYHjKLohHvA+gPbUlir8Udtbj+7qKC
	4OCKvy/KqhJQw5z492lGhgTLIOevfOGKXuW5iSOYHcauGwAHMAbb7HSCYVRfNJu3
	n4l3vCnS8aJ7yc20PNn8lWFNf1AD+XhHMHS1CuiegUd/tOWqh3C6AnW4mLXQn+QV
	8YurXUwutuhEZfPAm+Q0AxN+7a0HiE5PRfxMLJmJI0X6XFCdHnNHrAPEttbfCqQ3
	EaQIw==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 42xmc1hmj1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 Nov 2024 13:02:36 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.16.114) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Mon, 18 Nov 2024 13:02:35 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Mon, 18 Nov 2024 13:01:58 +0000
Subject: [PATCH v2 06/21] drm/imagination: Add power domain control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241118-sets-bxs-4-64-patch-v1-v2-6-3fd45d9fb0cf@imgtec.com>
References: <20241118-sets-bxs-4-64-patch-v1-v2-0-3fd45d9fb0cf@imgtec.com>
In-Reply-To: <20241118-sets-bxs-4-64-patch-v1-v2-0-3fd45d9fb0cf@imgtec.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7141;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=EDeQt3mie167DrpZUwHp7UeO+k68HDTaFgW5fNU+Z1E=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaRbWz3pcHH8zHxDy3XqH9XDkx/rbJuZJ2fMN2lq0Ky3Q
 tU6276Wd5SyMIhxMMiKKbLsWGG5Qu2PmpbEjV/FMHNYmUCGMHBxCsBEwnYz/LNlevTk80SFqb7K
 n/paGsvZQ3VdqtWV7VisN1Z6PHgQwMjw32mV65ZfB9Z0CH9JW9Qs+C59yU4pLrvFC6KXHPM+cf1
 8JjsA
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-ORIG-GUID: PKqxLTvkMabC7AHCY__wLTdJbNiKOYOG
X-Authority-Analysis: v=2.4 cv=E4efprdl c=1 sm=1 tr=0 ts=673b3aec cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=hzDjp0mCheYA:10 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8 a=Iu228gY9Y64KKxsXE-4A:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: PKqxLTvkMabC7AHCY__wLTdJbNiKOYOG

The first supported GPU only used a single power domain so this was
automatically handled by the device runtime.

In order to support multiple power domains, they must be enumerated from
devicetree and linked to both the GPU device and each other to ensure
correct power sequencing at start time.

For all Imagination Rogue GPUs, power domains are named "a", "b", etc. and
the sequence A->B->... is always valid for startup with the reverse true
for shutdown. Note this is not always the *only* valid sequence, but it's
simple and does not require special-casing for different GPU power
topologies.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
Changes in v2:
- None
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-6-4ed30e865892@imgtec.com
---
 drivers/gpu/drm/imagination/pvr_device.h |   8 +++
 drivers/gpu/drm/imagination/pvr_drv.c    |  10 ++-
 drivers/gpu/drm/imagination/pvr_power.c  | 114 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_power.h  |   3 +
 4 files changed, 134 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index b574e23d484ba80785a2220e046dbab3f91f6e15..470945ccfcac7ce91161aa6c70d33177fbb3533f 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -18,6 +18,7 @@
 #include <linux/bits.h>
 #include <linux/compiler_attributes.h>
 #include <linux/compiler_types.h>
+#include <linux/device.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
@@ -130,6 +131,13 @@ struct pvr_device {
 	 */
 	struct clk *mem_clk;
 
+	struct pvr_device_power {
+		struct device **domain_devs;
+		struct device_link **domain_links;
+
+		u32 domain_count;
+	} power;
+
 	/** @irq: IRQ number. */
 	int irq;
 
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index fbd8802abcf1271e260209957d95ea705dbe7f14..1ab97933e14f20ee3fbf603c23b8dde2d33572c2 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -1409,13 +1409,17 @@ pvr_probe(struct platform_device *plat_dev)
 
 	platform_set_drvdata(plat_dev, drm_dev);
 
+	err = pvr_power_domains_init(pvr_dev);
+	if (err)
+		goto err_context_fini;
+
 	init_rwsem(&pvr_dev->reset_sem);
 
 	pvr_context_device_init(pvr_dev);
 
 	err = pvr_queue_device_init(pvr_dev);
 	if (err)
-		goto err_context_fini;
+		goto err_power_domains_fini;
 
 	devm_pm_runtime_enable(&plat_dev->dev);
 	pm_runtime_mark_last_busy(&plat_dev->dev);
@@ -1448,6 +1452,9 @@ pvr_probe(struct platform_device *plat_dev)
 err_context_fini:
 	pvr_context_device_fini(pvr_dev);
 
+err_power_domains_fini:
+	pvr_power_domains_fini(pvr_dev);
+
 	return err;
 }
 
@@ -1468,6 +1475,7 @@ static void pvr_remove(struct platform_device *plat_dev)
 	pvr_watchdog_fini(pvr_dev);
 	pvr_queue_device_fini(pvr_dev);
 	pvr_context_device_fini(pvr_dev);
+	pvr_power_domains_fini(pvr_dev);
 }
 
 static const struct of_device_id dt_match[] = {
diff --git a/drivers/gpu/drm/imagination/pvr_power.c b/drivers/gpu/drm/imagination/pvr_power.c
index ba7816fd28ec77e6ca5ce408302a413ce1afeb6e..19b079b357df78e8bcdecfa377fc9c05b6e8e4b0 100644
--- a/drivers/gpu/drm/imagination/pvr_power.c
+++ b/drivers/gpu/drm/imagination/pvr_power.c
@@ -10,10 +10,13 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <linux/cleanup.h>
 #include <linux/clk.h>
 #include <linux/interrupt.h>
 #include <linux/mutex.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/timer.h>
 #include <linux/types.h>
@@ -431,3 +434,114 @@ pvr_watchdog_fini(struct pvr_device *pvr_dev)
 {
 	cancel_delayed_work_sync(&pvr_dev->watchdog.work);
 }
+
+int pvr_power_domains_init(struct pvr_device *pvr_dev)
+{
+	struct device *dev = from_pvr_device(pvr_dev)->dev;
+
+	struct device_link **domain_links __free(kfree) = NULL;
+	struct device **domain_devs __free(kfree) = NULL;
+	int domain_count;
+	int link_count;
+
+	char dev_name[2] = "a";
+	int err;
+	int i;
+
+	domain_count = of_count_phandle_with_args(dev->of_node, "power-domains",
+						  "#power-domain-cells");
+	if (domain_count < 0)
+		return domain_count;
+
+	if (domain_count <= 1)
+		return 0;
+
+	link_count = domain_count + (domain_count - 1);
+
+	domain_devs = kcalloc(domain_count, sizeof(*domain_devs), GFP_KERNEL);
+	if (!domain_devs)
+		return -ENOMEM;
+
+	domain_links = kcalloc(link_count, sizeof(*domain_links), GFP_KERNEL);
+	if (!domain_links)
+		return -ENOMEM;
+
+	for (i = 0; i < domain_count; i++) {
+		struct device *domain_dev;
+
+		dev_name[0] = 'a' + i;
+		domain_dev = dev_pm_domain_attach_by_name(dev, dev_name);
+		if (IS_ERR_OR_NULL(domain_dev)) {
+			err = domain_dev ? PTR_ERR(domain_dev) : -ENODEV;
+			goto err_detach;
+		}
+
+		domain_devs[i] = domain_dev;
+	}
+
+	for (i = 0; i < domain_count; i++) {
+		struct device_link *link;
+
+		link = device_link_add(dev, domain_devs[i], DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME);
+		if (!link) {
+			err = -ENODEV;
+			goto err_unlink;
+		}
+
+		domain_links[i] = link;
+	}
+
+	for (i = domain_count; i < link_count; i++) {
+		struct device_link *link;
+
+		link = device_link_add(domain_devs[i - domain_count + 1],
+				       domain_devs[i - domain_count],
+				       DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME);
+		if (!link) {
+			err = -ENODEV;
+			goto err_unlink;
+		}
+
+		domain_links[i] = link;
+	}
+
+	pvr_dev->power = (struct pvr_device_power){
+		.domain_devs = no_free_ptr(domain_devs),
+		.domain_links = no_free_ptr(domain_links),
+		.domain_count = domain_count,
+	};
+
+	return 0;
+
+err_unlink:
+	while (--i >= 0)
+		device_link_del(domain_links[i]);
+
+	i = domain_count;
+
+err_detach:
+	while (--i >= 0)
+		dev_pm_domain_detach(domain_devs[i], true);
+
+	return err;
+}
+
+void pvr_power_domains_fini(struct pvr_device *pvr_dev)
+{
+	const int domain_count = pvr_dev->power.domain_count;
+
+	int i = domain_count + (domain_count - 1);
+
+	while (--i >= 0)
+		device_link_del(pvr_dev->power.domain_links[i]);
+
+	i = domain_count;
+
+	while (--i >= 0)
+		dev_pm_domain_detach(pvr_dev->power.domain_devs[i], true);
+
+	kfree(pvr_dev->power.domain_links);
+	kfree(pvr_dev->power.domain_devs);
+
+	pvr_dev->power = (struct pvr_device_power){ 0 };
+}
diff --git a/drivers/gpu/drm/imagination/pvr_power.h b/drivers/gpu/drm/imagination/pvr_power.h
index 9a9312dcb2dab7d36ee8ff7f69e69d126c5469a9..ada85674a7ca762dcf92df40424230e1c3910342 100644
--- a/drivers/gpu/drm/imagination/pvr_power.h
+++ b/drivers/gpu/drm/imagination/pvr_power.h
@@ -38,4 +38,7 @@ pvr_power_put(struct pvr_device *pvr_dev)
 	return pm_runtime_put(drm_dev->dev);
 }
 
+int pvr_power_domains_init(struct pvr_device *pvr_dev);
+void pvr_power_domains_fini(struct pvr_device *pvr_dev);
+
 #endif /* PVR_POWER_H */

-- 
2.47.0


