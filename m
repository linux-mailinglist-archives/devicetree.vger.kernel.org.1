Return-Path: <devicetree+bounces-136397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 443DCA04FB1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 02:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 306F0164193
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD5E1A23B7;
	Wed,  8 Jan 2025 01:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jeUhedi7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52691A0BCF
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 01:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299737; cv=none; b=Fs7glOC6OtGvyzFXEfQk8l7YxdFGvXXXs1XqUEvfJQKmynrsZU8b2e2azcevE7X1aC2Ht1LzKCosItCTZUO418iylye/rNaCHdjaQUtekAaluYiYGc0KDAXvIjrE+kGepfJ/KvZCVcl+IgxcGJmhcFj/heXvGDRWHXVDjfNTWXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299737; c=relaxed/simple;
	bh=4tV3lnlihbjKXefUypMNRce6dC18x2ab/02qc1skGvw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DmvgQRWUC+7WObZICXRiWQ0yZ5LmUdOdmAW89R/r+6vjiW0oBiVQM+6S1/9hH1Ia/aWZVDGGuICguUtTfVhZl8WecAZXU6fkogzkDSFb0oOEn/iA1OfwzBUkVJV2R3dgCZmeovgig1TcbtH10YdfM9gWqETgnX9PMFy8TLGYlII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jeUhedi7; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2f44353649aso19433333a91.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 17:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736299735; x=1736904535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfN6GTuNKF5VqrxYRWrKUqgkdrEWac7RU0Z/q9vfjN0=;
        b=jeUhedi7/s9vN6UXJTOMvaZ+0hVG1cW7wzd65GXE0qqjZzy3l3VqrhyVcM4iAujUU7
         NPw6De5hcs57pFB1HvmTjRCZyN/7hI8pLTa/QExNL2LIamZfidmgOysJl3yvd4PMI6IT
         hPA3JDe0j1YBFzxc6VDPrWZNYbLGaR5/bOXo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736299735; x=1736904535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MfN6GTuNKF5VqrxYRWrKUqgkdrEWac7RU0Z/q9vfjN0=;
        b=Lu4c0WTc8Fu2GJFMrulJ57FYXL8SCIOi0wEFGXzS7PKPcH6KTyj6DWcjqUSKlKtqSA
         xOweXmc7A70J9h1PqY6F3iAXu7h4+3lkQORtK+6I/kR2Jdh9+noduqVPjdUXqs03XlzJ
         W0/1+/RIrDLjZY1J+ckKbFhB1m1L8qhqxILUWo9oJZAguuzpXI0Iv6YjAVX633t9sylx
         g+dz4b/hPZ8piA+uUTvY3gE9dcnTShswpw/LQLP+WhscF9Ic/JwUweqCGqMw4e5Qyvu2
         YTkL9yMXoHzss3ueFudNtOuIg1XU1b4s1+aH8H75+IpH62F0Hg8j+ZVgPLEp9DxYY0iQ
         cmpA==
X-Forwarded-Encrypted: i=1; AJvYcCVCHl/RisjxeBkpT6G0RcMfCUpSQ0APySs3eezOjuCyutxkOQkFlS97NxtqpBP0PnCF0NcdxhDs5Waj@vger.kernel.org
X-Gm-Message-State: AOJu0YxMfqLnxAVKg1fUDRxLx2PgnSDBpSsjj4Ey8wywErE3KFt09XVp
	U5VjOfYQxGsAhzFtnAwCmTy0aOa5OBoGfwagCU+ip46KcuEMwD6NzETrA+iidQ==
X-Gm-Gg: ASbGncvkx6Kbnz0ZHDgRz52IU4fhfOejgPKC+8dC52aVBfZrsBOA1uNs7SYGLZrXVqd
	VLc1itKQVmFINy+iIfOdA84/pykEWysQI8B/AD56nHB2GJqFqzaNy3a92RpuhpCHjdtpNfyDZL6
	ay74b80lq8KSyH31qGa8KczXqcOFXErOJbSW+S1VQC/d27VHtkGhcb2RiQaKEZafgkY67Mmb4rQ
	AgeSLHR9JE+Cku4RkjFr226nUuK1ut7Fkq91Bc4NQJ2hwHabnbl1mPh973njmfwQ2IxVOC+1DyJ
	VpVTKp9wNzGhEwQAaobc
X-Google-Smtp-Source: AGHT+IH4Y++Unzll3LBTxpHGSJAl9gWr9EZnywMb7/5iKVZRlAs9Kn/eOeYulAHPdNQ/JPBW9ae4bA==
X-Received: by 2002:a17:90b:2c84:b0:2f4:47fc:7f18 with SMTP id 98e67ed59e1d1-2f548ebb679mr1630164a91.10.1736299735123;
        Tue, 07 Jan 2025 17:28:55 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2f54a13dcd5sm239559a91.0.2025.01.07.17.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:28:54 -0800 (PST)
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
Subject: [RFC PATCH 4/6] of: Extract alloc/add functions from of_platform_device_create_pdata()
Date: Tue,  7 Jan 2025 17:28:41 -0800
Message-ID: <20250108012846.3275443-5-swboyd@chromium.org>
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

Allow drivers to modify the 'struct device' for a device node by
splitting of_platform_device_create_pdata() into two functions. The
first function, of_platform_device_alloc(), allocates the platform
device and the second function, of_platform_device_add(), adds the
platform device to the platform bus. SoC power management drivers can
use these APIs to allocate a platform device for a node underneath the
soc node, attach pmdomains and/or set the device as runtime PM active,
and finally add the platform device to the platform bus.

Cc: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>
Cc: <devicetree@vger.kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/platform.c       | 80 ++++++++++++++++++++++++++++++-------
 include/linux/of_platform.h | 14 +++++++
 2 files changed, 79 insertions(+), 15 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 63a80c30d515..d8ee2d38a382 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -138,6 +138,66 @@ struct platform_device *of_device_alloc(struct device_node *np,
 }
 EXPORT_SYMBOL(of_device_alloc);
 
+/**
+ * of_platform_device_alloc - Alloc and initialize an of_device
+ * @np: pointer to node to create device for
+ * @bus_id: name to assign device
+ * @parent: Linux device model parent device.
+ *
+ * Return: Pointer to created platform device, or NULL if a device was not
+ * allocated.  Unavailable devices will not get allocated.
+ */
+struct platform_device *
+of_platform_device_alloc(struct device_node *np, const char *bus_id,
+			  struct device *parent)
+{
+	struct platform_device *ofdev;
+
+	pr_debug("alloc platform device: %pOF\n", np);
+
+	if (!of_device_is_available(np) ||
+	    of_node_test_and_set_flag(np, OF_POPULATED))
+		return NULL;
+
+	ofdev = of_device_alloc(np, bus_id, parent);
+	if (!ofdev) {
+		of_node_clear_flag(np, OF_POPULATED);
+		return ofdev;
+	}
+
+	ofdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
+	if (!ofdev->dev.dma_mask)
+		ofdev->dev.dma_mask = &ofdev->dev.coherent_dma_mask;
+	ofdev->dev.bus = &platform_bus_type;
+	of_msi_configure(&ofdev->dev, ofdev->dev.of_node);
+
+	return ofdev;
+}
+EXPORT_SYMBOL(of_platform_device_alloc);
+
+/**
+ * of_platform_device_add - Add an of_device to the platform bus
+ * @ofdev: of_device to add
+ *
+ * Return: 0 on success, negative errno on failure.
+ */
+int of_platform_device_add(struct platform_device *ofdev)
+{
+	struct device_node *np = ofdev->dev.of_node;
+	int ret;
+
+	pr_debug("adding platform device: %pOF\n", np);
+
+	ret = of_device_add(ofdev);
+	if (ret) {
+		platform_device_put(ofdev);
+		of_node_clear_flag(np, OF_POPULATED);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(of_platform_device_add);
+
 /**
  * of_platform_device_create_pdata - Alloc, initialize and register an of_device
  * @np: pointer to node to create device for
@@ -154,29 +214,19 @@ static struct platform_device *of_platform_device_create_pdata(
 					void *platform_data,
 					struct device *parent)
 {
+	int ret;
 	struct platform_device *dev;
 
 	pr_debug("create platform device: %pOF\n", np);
 
-	if (!of_device_is_available(np) ||
-	    of_node_test_and_set_flag(np, OF_POPULATED))
+	dev = of_platform_device_alloc(np, bus_id, parent);
+	if (!dev)
 		return NULL;
 
-	dev = of_device_alloc(np, bus_id, parent);
-	if (!dev)
-		goto err_clear_flag;
-
-	dev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
-	if (!dev->dev.dma_mask)
-		dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
-	dev->dev.bus = &platform_bus_type;
 	dev->dev.platform_data = platform_data;
-	of_msi_configure(&dev->dev, dev->dev.of_node);
-
-	if (of_device_add(dev) != 0) {
-		platform_device_put(dev);
+	ret = of_platform_device_add(dev);
+	if (ret)
 		goto err_clear_flag;
-	}
 
 	return dev;
 
diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
index 17471ef8e092..e55c1371b560 100644
--- a/include/linux/of_platform.h
+++ b/include/linux/of_platform.h
@@ -71,6 +71,10 @@ extern int of_platform_bus_probe(struct device_node *root,
 
 #ifdef CONFIG_OF_ADDRESS
 /* Platform devices and busses creation */
+extern struct platform_device *of_platform_device_alloc(struct device_node *np,
+							const char *bus_id,
+							struct device *parent);
+extern int of_platform_device_add(struct platform_device *ofdev);
 extern struct platform_device *of_platform_device_create(struct device_node *np,
 						   const char *bus_id,
 						   struct device *parent);
@@ -91,6 +95,16 @@ extern int devm_of_platform_populate(struct device *dev);
 extern void devm_of_platform_depopulate(struct device *dev);
 #else
 /* Platform devices and busses creation */
+static inline struct platform_device *of_platform_device_alloc(struct device_node *np,
+							       const char *bus_id,
+							       struct device *parent)
+{
+	return NULL;
+}
+static inline int of_platform_device_add(struct platform_device *ofdev)
+{
+	return -ENODEV;
+}
 static inline struct platform_device *of_platform_device_create(struct device_node *np,
 								const char *bus_id,
 								struct device *parent)
-- 
https://chromeos.dev


