Return-Path: <devicetree+bounces-144764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDCCA2F2C8
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19A9818857DA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CA324FC07;
	Mon, 10 Feb 2025 16:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2rJneaiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6437A1F4613
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739203977; cv=none; b=L57NYMceZpGa+eeaOdnFKAG/oieQdh5kbiZZuOoei+M1nBzL9fp6t1/KNURuB/6E5UiBx2y6Of+lFQd/ukuyQefDwj84FQ9XqrQYnf+u0jygy8PRJfzX9smOJVs7YSh3ZgsotFvlUZb1YNReAzVrOqgZm6kVBA17942VIlcby0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739203977; c=relaxed/simple;
	bh=y7IjFtUIINl7cRYxyBtc6keo4179kmfVu625qHuoAp8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VmwDKdRSoZUdeafSvGOMeONgj6F9osJuXRnWWkxBoKPfuFKeySnvNz2027/HgCTyy4eng07y3eaPBaZlgK/IPvS2c+iUw4i5e79A6CTX99Dy4t5UdAbXoFZJjAHOZ/RXm1R4L8cQG2vu7FM8sF4q2OawIeV2vxrWb85CQWt8G0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2rJneaiX; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436281c8a38so30225255e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739203974; x=1739808774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SVE2q3k6JdjZ4UFWVjIakaD9BHRuhH1Hcjnsp1m4Lmk=;
        b=2rJneaiXYkNjglL16S9xgk7vlN4F8+gkSOPikaxLqhmHsIOUneKK5tL27aW6KnCefH
         B7wo6RL4vt7yLkr84BP7h7iWDgcj2H1yUkWNTKYrOt0X23rtrGTSBOU1J4G46/rWTzCG
         HVQFS4qc/4+O30n3itfx0yX5saqOWeP11DH6sunTVGe8C+kg2Hrnz0XPF++NH/Q23zHk
         bwxBcfKtcjqCeJlBVxo7rcofUwPFLAqn87ivd0umJ/emQrEbB0qfOYfdt558OIAGD0kV
         xFNo3RvoJ8si/FJ3rirOFhKTJjSg0JUcid/Fr7HpVzJrz2gUlfZjQ95UnpEps1C2Inpf
         OVXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739203974; x=1739808774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVE2q3k6JdjZ4UFWVjIakaD9BHRuhH1Hcjnsp1m4Lmk=;
        b=NhXBFXilD4ByaUSyu9aNULKI2iI9tgGDkfx8y9DW2HaAmFEyYpbtInTKL9hHjboA2j
         k7kLDkVzx/ySG1ak28m4AVmT+FaOuG19jyjzg0SAWG0QHMPjkV5FRDY44Zn3kh4OmBnc
         lhBbrVWu3y1xY1wH/6r5cRC0558Bs23O80jenUimfY+RCKMV2R0waL1x3c8bLY6q0ZvL
         DhYt8LRi2WcS6YuDvUUS/XPeq2p6K0EjNPVJIl2JFn0oRdGpv7BDVKOlGJp2t9FCfM5a
         d24xEJJwN5xzEA1vbmdL7tN+Bvc8SNgftoLQqndI8Tx8lBYzUtnKlIUEb+DulGr0aBwi
         Xj8A==
X-Forwarded-Encrypted: i=1; AJvYcCWzvUyEd3CSaMkOOizClCQ76UjbcuyJd6t8y7tDDqDcP5EBuq7jYE7AmyqLBVV8wJ6n64d1F3IfVSOn@vger.kernel.org
X-Gm-Message-State: AOJu0YwaV0nGnNsJtEYOqwVv5WVugqF25cglZb1Q/WdGm1wOcth+QHN5
	T9HyqgFeUAmjByTCZ5NaVJDtRIx0FSWDyd0zAdcdNh2LvybRAfJFP7gnllKuC08=
X-Gm-Gg: ASbGncuCFRHrMHlmhy8HRIWQRMVU99MJC/mWHbWsxs+uUNNyqMjzNXdAgwR9U7bO2ei
	/BR2gdX2JFLj2ByQxoPdN3RleUmlXVhY+GLDuHPQ2690D7bWwefd0LxFsyJZ5qKApkk+SA4Qmpw
	WmrEdoHxGlf2dznBnirRteGLEPztOKdy3bXuAqgoMfw8Fv1eDVUADZtmtPF/yTXleQkGFHrYfx/
	AZPiU+bLDgUJ9dDie4cOzDwFD0ALa+0GjEyuGJL457Ozlj0i/vKQ+jot5FagIYcx9GY+0IiQIV3
	e/bqrMSRNBtHgo662WBd+LaDY5r3u+OS9VBlNBa/prJNFQ+sZW8f6QQ4dkzpUac=
X-Google-Smtp-Source: AGHT+IGzddC47+pjDSvR9mwpmYyJVcplPKxTatIFBpfXmDpOUncoCIJE66zoIcUqHQlugsyEqtyVjA==
X-Received: by 2002:a05:600c:4650:b0:439:403a:6b77 with SMTP id 5b1f17b1804b1-439403a6d76mr56761835e9.10.1739203973800;
        Mon, 10 Feb 2025 08:12:53 -0800 (PST)
Received: from [127.0.1.1] (host-87-8-15-130.retail.telecomitalia.it. [87.8.15.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffcdsm146637945e9.15.2025.02.10.08.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:12:53 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 10 Feb 2025 17:10:55 +0100
Subject: [PATCH v4 5/9] iio: adc: adi-axi-adc: add platform children
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-5-160df18b1da7@baylibre.com>
References: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
In-Reply-To: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

This is a preparation for the next commit adding support for register
read and write functions on AD7606.
Since sometimes a bus will be used, it has been agreed during ad3552's
driver implementation that the device's driver bus is the backend, whose
device node will be a child node.
To provide the special callbacks for setting the register, axi-adc needs
to pass them to the child device's driver through platform data.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606_bus_iface.h | 16 ++++++++++
 drivers/iio/adc/adi-axi-adc.c      | 65 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)

diff --git a/drivers/iio/adc/ad7606_bus_iface.h b/drivers/iio/adc/ad7606_bus_iface.h
new file mode 100644
index 000000000000..f2c979a9b7f3
--- /dev/null
+++ b/drivers/iio/adc/ad7606_bus_iface.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2010-2024 Analog Devices Inc.
+ * Copyright (c) 2025 Baylibre, SAS
+ */
+#ifndef __LINUX_PLATFORM_DATA_AD7606_H__
+#define __LINUX_PLATFORM_DATA_AD7606_H__
+
+struct iio_backend;
+
+struct ad7606_platform_data {
+	int (*bus_reg_read)(struct iio_backend *back, u32 reg, u32 *val);
+	int (*bus_reg_write)(struct iio_backend *back, u32 reg, u32 val);
+};
+
+#endif /* __LINUX_PLATFORM_DATA_AD7606_H__ */
diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index b38e8a27af94..3e1a997ace76 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -334,6 +334,36 @@ static const struct regmap_config axi_adc_regmap_config = {
 	.reg_stride = 4,
 };
 
+static void axi_adc_child_remove(void *data)
+{
+	platform_device_unregister(data);
+}
+
+static int axi_adc_create_platform_device(struct adi_axi_adc_state *st,
+					  struct fwnode_handle *child)
+{
+	struct platform_device_info pi = {
+	    .parent = st->dev,
+	    .name = fwnode_get_name(child),
+	    .id = PLATFORM_DEVID_AUTO,
+	    .fwnode = child,
+	    .data = st->info->pdata,
+	    .size_data = st->info->pdata_sz,
+	};
+	struct platform_device *pdev;
+	int ret;
+
+	pdev = platform_device_register_full(&pi);
+	if (IS_ERR(pdev))
+		return PTR_ERR(pdev);
+
+	ret = devm_add_action_or_reset(st->dev, axi_adc_child_remove, pdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct iio_backend_ops adi_axi_adc_ops = {
 	.enable = axi_adc_enable,
 	.disable = axi_adc_disable,
@@ -417,6 +447,28 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, ret,
 				     "failed to register iio backend\n");
 
+	device_for_each_child_node_scoped(&pdev->dev, child) {
+		int val;
+
+		if (!st->info->has_child_nodes)
+			return dev_err_probe(&pdev->dev, -EINVAL,
+					     "invalid fdt axi-dac compatible.");
+
+		/* Processing only reg 0 node */
+		ret = fwnode_property_read_u32(child, "reg", &val);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+					     "invalid reg property.");
+		if (val != 0)
+			return dev_err_probe(&pdev->dev, -EINVAL,
+					     "invalid node address.");
+
+		ret = axi_adc_create_platform_device(st, child);
+		if (ret)
+			return dev_err_probe(&pdev->dev, -EINVAL,
+					     "cannot create device.");
+	}
+
 	dev_info(&pdev->dev, "AXI ADC IP core (%d.%.2d.%c) probed\n",
 		 ADI_AXI_PCORE_VER_MAJOR(ver),
 		 ADI_AXI_PCORE_VER_MINOR(ver),
@@ -430,6 +482,19 @@ static const struct axi_adc_info adc_generic = {
 	.backend_info = &adi_axi_adc_generic,
 };
 
+static const struct ad7606_platform_data ad7606_pdata = {
+	.bus_reg_read = ad7606_bus_reg_read,
+	.bus_reg_write = ad7606_bus_reg_write,
+};
+
+static const struct axi_adc_info adc_ad7606 = {
+	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
+	.backend_info = &adi_axi_adc_generic,
+	.pdata = &ad7606_pdata,
+	.pdata_sz = sizeof(ad7606_pdata),
+	.has_child_nodes = true,
+};
+
 /* Match table for of_platform binding */
 static const struct of_device_id adi_axi_adc_of_match[] = {
 	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },

-- 
2.47.0


