Return-Path: <devicetree+bounces-188496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFCAAE3E4B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7C4816BBB5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AD1246798;
	Mon, 23 Jun 2025 11:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="OnhoKDKU"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8A3244685
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750679076; cv=none; b=Cr3HmCzn5Fh1G+4stzKvgVPVTMdcCm+38QV8rs2Anb6DqfyJiLt6Dmh9WgeMkBpm5wK1I/qSi4VjKXtrPdEqifE74NzbxzY2qqDOajDXfKNT0x1HF+BZkZ4zzDoIzsFYgdbXxAVL7w/o4iG//Xg2+l1Hcs9A+KV+v5aRbJn7Cn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750679076; c=relaxed/simple;
	bh=V208OQo0bJMgjPiu9h2Q5BXj5lfKHj8G+CR2nBqzDyc=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=R1+IiXMZTTuPg/p4A/WOeeAkNQZ9PAxT71xMMmFcEgTBOifjJEuihJxMVFCCNfrd4UhOY8nvFnz6mFM5FYObY9qSCXGUNqt51usLsPKVl7pu4dGvNbBRL/yRm0ev9M1pR2UYv8wsv5DUzituLFYLkotqFZBJyQuZk3Cz/2J7hS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=OnhoKDKU; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250623114433euoutp0191ca24e661661039612a65fa38cde243~LqVd5kOwT0136901369euoutp01B
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:44:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250623114433euoutp0191ca24e661661039612a65fa38cde243~LqVd5kOwT0136901369euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750679073;
	bh=tNSG9xdO/yT874UKULeA9IupmCwWnGM0EeVN9ziifd8=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=OnhoKDKUJlMu/iX+3AiCvoLOUUqaaH2ZSv/MNJ2FDG3W8gBnNFkFQIxEeKxzsln+u
	 6DovMPJbN0tZTKmcB6CY24kVWpKzkZRkT7cxnnSudcy7HNI+ztOsw2C1TIuh7Gncjc
	 pol13vVuUqvVKqvMrGMxmYM6Gl0G0g4K6uYeCP1k=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250623114432eucas1p2642e24f2dea577c211f26e2738210c4a~LqVdXeNiM1259112591eucas1p29;
	Mon, 23 Jun 2025 11:44:32 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250623114431eusmtip17d8774218f038c94d99c5c902eb2247c~LqVcV2wB-1799017990eusmtip1j;
	Mon, 23 Jun 2025 11:44:31 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Mon, 23 Jun 2025 13:42:41 +0200
Subject: [PATCH v6 3/8] pmdomain: thead: Instantiate GPU power sequencer via
 auxiliary bus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-apr_14_for_sending-v6-3-6583ce0f6c25@samsung.com>
In-Reply-To: <20250623-apr_14_for_sending-v6-0-6583ce0f6c25@samsung.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,  Fu Wei
	<wefu@redhat.com>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
	<krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Michal
	Wilczynski <m.wilczynski@samsung.com>,  Bartosz Golaszewski <brgl@bgdev.pl>,
	Philipp Zabel <p.zabel@pengutronix.de>,  Frank Binns
	<frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>,  Maarten
	Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>, Ulf Hansson
	<ulf.hansson@linaro.org>,  Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org,  Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250623114432eucas1p2642e24f2dea577c211f26e2738210c4a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250623114432eucas1p2642e24f2dea577c211f26e2738210c4a
X-EPHeader: CA
X-CMS-RootMailID: 20250623114432eucas1p2642e24f2dea577c211f26e2738210c4a
References: <20250623-apr_14_for_sending-v6-0-6583ce0f6c25@samsung.com>
	<CGME20250623114432eucas1p2642e24f2dea577c211f26e2738210c4a@eucas1p2.samsung.com>

In order to support the complex power sequencing required by the TH1520
GPU, the AON power domain driver must be responsible for initiating the
corresponding sequencer driver. This functionality is specific to
platforms where the GPU power sequencing hardware is controlled by the
AON block.

Extend the AON power domain driver to check for the presence of the
"gpu-clkgen" reset in its own device tree node.

If the property is found, create and register a new auxiliary device.
This device acts as a proxy that allows the dedicated `pwrseq-thead-gpu`
auxiliary driver to bind and take control of the sequencing logic.

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 drivers/pmdomain/thead/Kconfig             |  1 +
 drivers/pmdomain/thead/th1520-pm-domains.c | 51 ++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/pmdomain/thead/Kconfig b/drivers/pmdomain/thead/Kconfig
index 7d52f8374b074167d508a80fd807929c53faef12..208828e0fa0dc91256bf808b905bea32bb84250d 100644
--- a/drivers/pmdomain/thead/Kconfig
+++ b/drivers/pmdomain/thead/Kconfig
@@ -4,6 +4,7 @@ config TH1520_PM_DOMAINS
 	tristate "Support TH1520 Power Domains"
 	depends on TH1520_AON_PROTOCOL
 	select REGMAP_MMIO
+	select AUXILIARY_BUS
 	help
 	  This driver enables power domain management for the T-HEAD
 	  TH-1520 SoC. On this SoC there are number of power domains,
diff --git a/drivers/pmdomain/thead/th1520-pm-domains.c b/drivers/pmdomain/thead/th1520-pm-domains.c
index f702e20306f469aeb0ed15e54bd4f8309f28018c..9040b698e7f7f2400163841530fecacfb0f917bc 100644
--- a/drivers/pmdomain/thead/th1520-pm-domains.c
+++ b/drivers/pmdomain/thead/th1520-pm-domains.c
@@ -5,6 +5,7 @@
  * Author: Michal Wilczynski <m.wilczynski@samsung.com>
  */
 
+#include <linux/auxiliary_bus.h>
 #include <linux/firmware/thead/thead,th1520-aon.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
@@ -128,6 +129,50 @@ static void th1520_pd_init_all_off(struct generic_pm_domain **domains,
 	}
 }
 
+static void th1520_pd_pwrseq_unregister_adev(void *adev)
+{
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+static int th1520_pd_pwrseq_gpu_init(struct device *dev)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	/*
+	 * Correctly check only for the property's existence in the DT node.
+	 * We don't need to get/claim the reset here; that is the job of
+	 * the auxiliary driver that we are about to spawn.
+	 */
+	if (device_property_match_string(dev, "reset-names", "gpu-clkgen") < 0)
+		/*
+		 * This is not an error. It simply means the optional sequencer
+		 * is not described in the device tree.
+		 */
+		return 0;
+
+	adev = devm_kzalloc(dev, sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	adev->name = "pwrseq-gpu";
+	adev->dev.parent = dev;
+
+	ret = auxiliary_device_init(adev);
+	if (ret)
+		return ret;
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(dev, th1520_pd_pwrseq_unregister_adev,
+					adev);
+}
+
 static int th1520_pd_probe(struct platform_device *pdev)
 {
 	struct generic_pm_domain **domains;
@@ -186,8 +231,14 @@ static int th1520_pd_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_clean_genpd;
 
+	ret = th1520_pd_pwrseq_gpu_init(dev);
+	if (ret)
+		goto err_clean_provider;
+
 	return 0;
 
+err_clean_provider:
+	of_genpd_del_provider(dev->of_node);
 err_clean_genpd:
 	for (i--; i >= 0; i--)
 		pm_genpd_remove(domains[i]);

-- 
2.34.1


