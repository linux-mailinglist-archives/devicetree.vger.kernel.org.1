Return-Path: <devicetree+bounces-136398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C17A04FB3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 02:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6002918870C5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8241A3031;
	Wed,  8 Jan 2025 01:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HVHkSb7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7151A23A7
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 01:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299739; cv=none; b=tB0AH1tRaPyOZX0W0/dz7hmiy7NVb+VA6ccyQ/Adqq8UvgrACMtnpur2c0AB6Jw7ZQshvHW7IfnM45iW8dZVQgQaGhoi1R8RFUO7sFUskQ9DColjU6lyf3pisDOV8vFEJtuEKRvB3Z4TV6AuH3kmyjfEI6AxH51Otm9+hVgpICU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299739; c=relaxed/simple;
	bh=ZPZ1RvYh2kO8gp/HE4ITCITiJwPeiYCbTgy1PyW8+MI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J2uiRjTgiRTxoGlKHkKNDpSbudeuu1W0WFuz1SF6c3Ql0ElYNfyTVMhQEYHcmv2wL09KaIEIsuNrTTjJQsvBieGDZKea9jMTNDqFaQk/8DQCkBHikqYBRiiPZRiAwPomO7s6Jer5jYTjyJtKNirkQPlivAT4pHry+1ngk+y+kus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HVHkSb7G; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2165cb60719so243688765ad.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 17:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736299736; x=1736904536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2PH+YeR0bEBhGOmEQodK+uTa/B+QOdEM0hw2aypokE=;
        b=HVHkSb7GCWVl72WAHK0yvON8bJx6LRgWGgSl/8iNsxIFwVoUasyEFUf2PxNRDedGeQ
         FosZRJFn201HaCn4RV7sRL+GU9fs52Oj8Bdhpq5sjYtUFPlRcKc5JeZdPLoOM1LbICCf
         94R2xCJ8OCC0qKKJ3Biu4oPr+nYQHg2AT9TOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736299736; x=1736904536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2PH+YeR0bEBhGOmEQodK+uTa/B+QOdEM0hw2aypokE=;
        b=Gm+Eb9QMu50PVrwbSZXesazxx7DcyrLuBYV/PPqpfJ9pZfdWcCU1hoAVC5bR9m7BCo
         OEKiAVMSwzG5xDUAjuYIEXO00rmn3xq2uhHwyTJbHWAyst3n+LuHYdB0Pe0PH8ULYJIb
         QM3sKFRbmWC9BLMOfYIswxTJ5N5L+/wSgeWMe06kOOzu78BgqxLGXb0B0pSgML9V8qqk
         3rw7UM+HMAkwBkQRPIVcZEviBWh5j/wVqCNylP9+bCnl/n2KztqIY1U51czngcfuWvai
         9PMhl+3hWWbxwVl+QzAGw/U4uyNg1A1Lsypq7jRbXe5WdGmk5FXouFuvtsDvQt38P2o6
         kUrw==
X-Forwarded-Encrypted: i=1; AJvYcCXgXbcaPd89QaFZGtA5ph684qCCAtqSj2T9f+kcA60idlvYLHDKPnFQHf6daxdI1OmIFJAwgLKXxdaU@vger.kernel.org
X-Gm-Message-State: AOJu0YwKF6tZ+LTSo0zpTv8HkTgmR0wFu3d+2ZXtlQrdemvdOyMXbScY
	RTtM0Ppu/fMtnspCXuaAsBKIeeQZKFykdTyDuCiiqo/U/F01GNj8iROEcnoUhA==
X-Gm-Gg: ASbGncv6vOzp3BMWhPQVBr7UmZA4dQOwuAZf8IdxWX7Ixl65swgyWkVosucuypzROu8
	AZmjQV+9pt33Wpyp4ROspuf7R5BfKW3osx8mZqWEgR6fRtF2KgsDrR9fNHuYfQXt7PG96jCOtNt
	5cE0gkIbp3Fw/p5p4EKGfpaG9xg9ptzHKWdnMyLHzb9CJQrq7lS8mDXpeVR/lwkqwVHIv62IK4S
	nFXnLfjpbWHzLNtjZ8LBXTR2DVFtsd69DTQeUlatvD1mkuItA7reYHfSUTrELnG+pTr5NWnmibT
	2vj0xLyiGglzaHpEsbKZ
X-Google-Smtp-Source: AGHT+IEPnKUCG2gblLZlLZNHyLGaKfpBR0RoXfdx9u2gcf5pTAWqsgbyihyLPhCZcWcNvOkJsoUDRw==
X-Received: by 2002:a17:903:2311:b0:215:a2e2:53ff with SMTP id d9443c01a7336-21a83f36e1dmr16501155ad.11.1736299736529;
        Tue, 07 Jan 2025 17:28:56 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-219dc962cf4sm316325925ad.25.2025.01.07.17.28.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:28:56 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: [RFC PATCH 5/6] bus: qcom-sc7180: Attach pm domain to watchdog device
Date: Tue,  7 Jan 2025 17:28:42 -0800
Message-ID: <20250108012846.3275443-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108012846.3275443-1-swboyd@chromium.org>
References: <20250108012846.3275443-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Find the watchdog device described as a child node of the sc7180 SoC
node and attach a generic pm domain to the device before registering the
device with the platform bus. The domain simply gets the clk and turns
it on when the pm domain is powered on and turns it off when the pm
domain is powered off.

Cc: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/bus/qcom/qcom-sc7180.c | 122 +++++++++++++++++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/drivers/bus/qcom/qcom-sc7180.c b/drivers/bus/qcom/qcom-sc7180.c
index a615cf5a2129..7dfe6b32efef 100644
--- a/drivers/bus/qcom/qcom-sc7180.c
+++ b/drivers/bus/qcom/qcom-sc7180.c
@@ -3,18 +3,140 @@
  * SoC bus driver for Qualcomm SC7180 SoCs
  */
 
+#include <linux/cleanup.h>
+#include <linux/clk.h>
 #include <linux/device.h>
+#include <linux/dev_printk.h>
 #include <linux/init.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/pm_domain.h>
+
+struct qcom_soc_pm_domain {
+	struct clk *clk;
+	struct generic_pm_domain pd;
+};
+
+static struct qcom_soc_pm_domain *
+gpd_to_qcom_soc_pm_domain(struct generic_pm_domain *gpd)
+{
+	return container_of(gpd, struct qcom_soc_pm_domain, pd);
+}
+
+static struct qcom_soc_pm_domain *pd_to_qcom_soc_pm_domain(struct dev_pm_domain *pd)
+{
+	struct generic_pm_domain *gpd;
+
+	gpd = container_of(pd, struct generic_pm_domain, domain);
+
+	return gpd_to_qcom_soc_pm_domain(gpd);
+}
+
+static struct qcom_soc_pm_domain *dev_to_qcom_soc_pm_domain(struct device *dev)
+{
+	struct dev_pm_domain *pd;
+
+	pd = dev->pm_domain;
+	if (!pd)
+		return NULL;
+
+	return pd_to_qcom_soc_pm_domain(pd);
+}
+
+static struct platform_device *
+qcom_soc_alloc_device(struct platform_device *socdev, const char *compatible)
+{
+	struct device_node *np __free(device_node);
+
+	np = of_get_compatible_child(socdev->dev.of_node, compatible);
+
+	return of_platform_device_alloc(np, NULL, &socdev->dev);
+}
+
+static int qcom_soc_domain_activate(struct device *dev)
+{
+	struct qcom_soc_pm_domain *soc_domain;
+
+	dev_info(dev, "Activating device\n");
+	soc_domain = dev_to_qcom_soc_pm_domain(dev);
+
+	soc_domain->clk = devm_clk_get(dev, NULL);
+
+	return PTR_ERR_OR_ZERO(soc_domain->clk);
+}
+
+static int qcom_soc_domain_power_on(struct generic_pm_domain *domain)
+{
+	struct qcom_soc_pm_domain *soc_domain;
+
+	pr_info("Powering on device\n");
+	soc_domain = gpd_to_qcom_soc_pm_domain(domain);
+
+	return clk_prepare_enable(soc_domain->clk);
+}
+
+static int qcom_soc_domain_power_off(struct generic_pm_domain *domain)
+{
+	struct qcom_soc_pm_domain *soc_domain;
+
+	pr_info("Powering off device\n");
+	soc_domain = gpd_to_qcom_soc_pm_domain(domain);
+
+	clk_disable_unprepare(soc_domain->clk);
+
+	return 0;
+}
+
+static int qcom_soc_add_clk_domain(struct platform_device *socdev,
+				   struct platform_device *pdev)
+{
+	struct qcom_soc_pm_domain *domain;
+	struct generic_pm_domain *pd;
+	int ret;
+
+	domain = devm_kzalloc(&socdev->dev, sizeof(*domain), GFP_KERNEL);
+	if (!domain)
+		return -ENOMEM;
+
+	pd = &domain->pd;
+	pd->name = "wdog";
+	ret = pm_genpd_init(pd, NULL, false);
+	if (ret)
+		return ret;
+
+	/* TODO: Wrap this in a generic_pm_domain function similar to power_on() */
+	pd->domain.activate = qcom_soc_domain_activate;
+	pd->power_on = qcom_soc_domain_power_on;
+	pd->power_off = qcom_soc_domain_power_off;
+
+	dev_info(&socdev->dev, "adding pm domain for %s\n", dev_name(&pdev->dev));
+	dev_pm_domain_set(&pdev->dev, &pd->domain);
+
+	return 0;
+}
 
 static int qcom_soc_sc7180_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	struct platform_device *sdev;
+	int ret;
+
+	sdev = qcom_soc_alloc_device(pdev, "qcom,apss-wdt-sc7180");
+	if (!sdev)
+		return dev_err_probe(dev, -ENODEV, "Failed to alloc sdev\n");
+
+	ret = qcom_soc_add_clk_domain(pdev, sdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add clk domain to sdev\n");
+
+	ret = of_platform_device_add(sdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add sdev to bus\n");
 
 	return of_platform_populate(np, NULL, NULL, dev);
 }
-- 
https://chromeos.dev


