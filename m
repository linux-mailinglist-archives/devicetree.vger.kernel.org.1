Return-Path: <devicetree+bounces-74917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C56904FD1
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 12:00:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FA3C1F25114
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7599816EC0F;
	Wed, 12 Jun 2024 09:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fObT5GHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808416E863
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718186380; cv=none; b=RDGfPVd5dYLNZgeJBZuPXQBopccNqNAfzioA6DF/ilYfaIgq0ex19ZoxSvbnCM+qZD3RghtHlEpN96nW3JFC8UDMZX/5VIalNDDy0sR3cgLik12Vq0XIVF6YrsMOeCmhP+RmXtKbIdpGaseHbYyHWSXF4uo9Q+2l7Ns0R5TCyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718186380; c=relaxed/simple;
	bh=OGFJA/hrdKUc1ReZqc3+VUYDy8Vgh60z6XH8Zom+Lp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tLARm5iBfxb9ZtP812474S9p4ox/uLSnHxi9uenCOtjN3Ezd0UrjKQJXyfjoNP/wCmIOPZbOvWJfmbN/PnlFSOLGrV3VhXxclLxY9C/IT9rNm14NxgjDhLDA8xczy6EEWaZcXV2o/NS2//+Rv/JH8jKGFhJauBpesftcU3Tga0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fObT5GHU; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52c8ddc2b29so2566128e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718186376; x=1718791176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uB1DteE9K6SZPPmkeajTCPXnEiXe0UZJ8vVnaOruBb0=;
        b=fObT5GHUgXojbKBIXWoHw69ziYVfuWde21pCz9H+pZ/2Uc+JNdyQun+n40A0Mgej53
         pilZiZg9Ipz8vT3tYbg3ToIgwdVzyAt0e+1Rf+FP6+lwJUc6g90VMdCrEf/we49t/r3C
         7yPUr0Hj1Wmhr9f0ojW47BDdGLGdLTFz+w9fNrVSIcIZBlY9Q/gNRAKAXelBnNCbshXH
         XujlfHDZcmTE9UQ4WtHkU5hb9SH+ptT3X+CV8L64onpzfplRLj8MfQrcDxTmQoMoUVx6
         6zp/umNT1YlDakfx3ty+uLvJYyrnXJp7G9r/mxz7RstAwFVAf/Ngm9tJiUz9RFQ6Ku6w
         ffRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718186376; x=1718791176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uB1DteE9K6SZPPmkeajTCPXnEiXe0UZJ8vVnaOruBb0=;
        b=n5i1lhKvFl71Rtg6U2dwXyDnqtR5UfLPJpXQcLTN0xUPcTKsLKL8ZY8gCCHTbNNVyH
         3827UMsetAj//19F2zOoxIOkWh99RdHD/PSqPBh3uXJBPXG4u5MhDt4d+necndUYmxqz
         rV6PWVvoLVs3Y8lxajD7W2neprb7/H9As6HGF6LCBDvZt9w3OHS/1ePr9JDK2/q+JV3L
         mDoJ1TNgS2CD+kGDcPirvxlW0J2JwzE/IY0A6Oz+esxxuYJk47ANYkMfkZ/D+L/dY53U
         dGy6SASnWYO0MqbaKqrSRJ5XIwQyC0tsgA5/40PZXlYwazcTSajZYOin5Bpz8Kz3vuLH
         Vt3w==
X-Forwarded-Encrypted: i=1; AJvYcCVtJSQlMns1d0Pwqf+rpF2nehFNhbtuQW/2QUprccop0R+CJTRWHyu0Gs2rUtv6h0SKIo+ymVyErPC6biDkTSQ3xpn73UeJ2XD/aA==
X-Gm-Message-State: AOJu0YzRVUNzfSZzUIloBSUdYdg0n7/bOEkRdBiZPSlD4mehAHvv+Zoh
	GzvhT2ItefjpkPf2cIxmCB2+IYh3nAbZDh+el1vM/iitdGOdQ0pRATpu3KQHP4ir/RxIrp3YXUN
	0Ga0=
X-Google-Smtp-Source: AGHT+IGaykJnpmI9mSMZb0lpjHZC+bzJI1vSbogpyWnr8eo0mRMeXNVx0dm3qmWKCtds+12VntkbqA==
X-Received: by 2002:a05:6512:1108:b0:52c:90b6:170f with SMTP id 2adb3069b0e04-52c9a3d960fmr1285925e87.29.1718186376253;
        Wed, 12 Jun 2024 02:59:36 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c8907dae9sm1408095e87.129.2024.06.12.02.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:59:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 12 Jun 2024 12:59:33 +0300
Subject: [PATCH v6 2/6] platform: arm64: add Lenovo Yoga C630 WOS EC driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240612-yoga-ec-driver-v6-2-8e76ba060439@linaro.org>
References: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
In-Reply-To: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=11151;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=OGFJA/hrdKUc1ReZqc3+VUYDy8Vgh60z6XH8Zom+Lp0=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1pmYeub8KuROdduTGcp77rRnbM+4fjdzrauJuf6XL1pH
 /PaTTo7GY1ZGBi5GGTFFFl8ClqmxmxKDvuwY2o9zCBWJpApDFycAjARvlIOhmZWD2dhNbmEb8sS
 bztm8E+bdXpdZE5rpMoM7g0Cpkf6rtg/W8C37wvXrCWRh+f/6egvPyVn+TBmX9YVhpDm/K4Fm3v
 uSjY++px17qfnvrWTmkp61Tk+f2K6G7FZtPKec9r1Dbers+8oHXrVaBpiLVC8fEO2XaPN9XUrqw
 pj1h7X2Om+eVXjv4bpeW2T5oftDwitnVcoG75bakW076zrziVaL3I3zaq7lGLLMiVHyVAt+fqDb
 VE3RfX0+qab7P4yh+uZcIjcofle4tXXWrt7Gg19RVMnLNw3xdDD6Uv9cs4VShemWMaWulj/vRCb
 /MYtaoES35Pu9wdMVA/KlDUxH3wgJrX8hj9TsmWuwmdmAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Lenovo Yoga C630 WOS is a laptop using Snapdragon 850 SoC. Like many
laptops it uses an embedded controller (EC) to perform various platform
operations, including, but not limited, to Type-C port control or power
supply handlng.

Add the driver for the EC, that creates devices for UCSI and power
supply devices.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/platform/arm64/Kconfig                 |  14 ++
 drivers/platform/arm64/Makefile                |   1 +
 drivers/platform/arm64/lenovo-yoga-c630.c      | 290 +++++++++++++++++++++++++
 include/linux/platform_data/lenovo-yoga-c630.h |  44 ++++
 4 files changed, 349 insertions(+)

diff --git a/drivers/platform/arm64/Kconfig b/drivers/platform/arm64/Kconfig
index 8fdca0f8e909..8c103b3150d1 100644
--- a/drivers/platform/arm64/Kconfig
+++ b/drivers/platform/arm64/Kconfig
@@ -32,4 +32,18 @@ config EC_ACER_ASPIRE1
 	  laptop where this information is not properly exposed via the
 	  standard ACPI devices.
 
+config EC_LENOVO_YOGA_C630
+	tristate "Lenovo Yoga C630 Embedded Controller driver"
+	depends on I2C
+	help
+	  Driver for the Embedded Controller in the Qualcomm Snapdragon-based
+	  Lenovo Yoga C630, which provides battery and power adapter
+	  information.
+
+	  This driver provides battery and AC status support for the mentioned
+	  laptop where this information is not properly exposed via the
+	  standard ACPI devices.
+
+	  Say M or Y here to include this support.
+
 endif # ARM64_PLATFORM_DEVICES
diff --git a/drivers/platform/arm64/Makefile b/drivers/platform/arm64/Makefile
index 4fcc9855579b..b2ae9114fdd8 100644
--- a/drivers/platform/arm64/Makefile
+++ b/drivers/platform/arm64/Makefile
@@ -6,3 +6,4 @@
 #
 
 obj-$(CONFIG_EC_ACER_ASPIRE1)	+= acer-aspire1-ec.o
+obj-$(CONFIG_EC_LENOVO_YOGA_C630) += lenovo-yoga-c630.o
diff --git a/drivers/platform/arm64/lenovo-yoga-c630.c b/drivers/platform/arm64/lenovo-yoga-c630.c
new file mode 100644
index 000000000000..edd2ad91292f
--- /dev/null
+++ b/drivers/platform/arm64/lenovo-yoga-c630.c
@@ -0,0 +1,290 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024, Linaro Ltd
+ * Authors:
+ *    Bjorn Andersson
+ *    Dmitry Baryshkov
+ */
+#include <linux/auxiliary_bus.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/irqreturn.h>
+#include <linux/lockdep.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/notifier.h>
+#include <linux/slab.h>
+#include <linux/platform_data/lenovo-yoga-c630.h>
+
+#define LENOVO_EC_RESPONSE_REG		0x01
+#define LENOVO_EC_REQUEST_REG		0x02
+
+#define LENOVO_EC_UCSI_WRITE		0x20
+#define LENOVO_EC_UCSI_READ		0x21
+
+#define LENOVO_EC_READ_REG		0xb0
+#define LENOVO_EC_REQUEST_NEXT_EVENT	0x84
+
+#define LENOVO_EC_UCSI_VERSION		0x20
+
+struct yoga_c630_ec {
+	struct i2c_client *client;
+	struct mutex lock;
+	struct blocking_notifier_head notifier_list;
+};
+
+static int yoga_c630_ec_request(struct yoga_c630_ec *ec, u8 *req, size_t req_len,
+				u8 *resp, size_t resp_len)
+{
+	int ret;
+
+	lockdep_assert_held(&ec->lock);
+
+	ret = i2c_smbus_write_i2c_block_data(ec->client, LENOVO_EC_REQUEST_REG,
+					     req_len, req);
+	if (ret < 0)
+		return ret;
+
+	return i2c_smbus_read_i2c_block_data(ec->client, LENOVO_EC_RESPONSE_REG,
+					     resp_len, resp);
+}
+
+int yoga_c630_ec_read8(struct yoga_c630_ec *ec, u8 addr)
+{
+	u8 req[2] = { LENOVO_EC_READ_REG, };
+	int ret;
+	u8 val;
+
+	guard(mutex)(&ec->lock);
+
+	req[1] = addr;
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &val, 1);
+	if (ret < 0)
+		return ret;
+
+	return val;
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_read8);
+
+int yoga_c630_ec_read16(struct yoga_c630_ec *ec, u8 addr)
+{
+	u8 req[2] = { LENOVO_EC_READ_REG, };
+	int ret;
+	u8 msb;
+	u8 lsb;
+
+	/* don't overflow the address */
+	if (addr == 0xff)
+		return -EINVAL;
+
+	guard(mutex)(&ec->lock);
+
+	req[1] = addr;
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &lsb, 1);
+	if (ret < 0)
+		return ret;
+
+	req[1] = addr + 1;
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &msb, 1);
+	if (ret < 0)
+		return ret;
+
+	return msb << 8 | lsb;
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_read16);
+
+u16 yoga_c630_ec_ucsi_get_version(struct yoga_c630_ec *ec)
+{
+	u8 req[3] = { 0xb3, 0xf2, };
+	int ret;
+	u8 msb;
+	u8 lsb;
+
+	guard(mutex)(&ec->lock);
+
+	req[2] = LENOVO_EC_UCSI_VERSION;
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &lsb, 1);
+	if (ret < 0)
+		return ret;
+
+	req[2] = LENOVO_EC_UCSI_VERSION + 1;
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &msb, 1);
+	if (ret < 0)
+		return ret;
+
+	return msb << 8 | lsb;
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_ucsi_get_version);
+
+int yoga_c630_ec_ucsi_write(struct yoga_c630_ec *ec,
+			    const u8 req[YOGA_C630_UCSI_WRITE_SIZE])
+{
+	int ret;
+
+	mutex_lock(&ec->lock);
+	ret = i2c_smbus_write_i2c_block_data(ec->client, LENOVO_EC_UCSI_WRITE,
+					     YOGA_C630_UCSI_WRITE_SIZE, req);
+	mutex_unlock(&ec->lock);
+
+	return ret < 0 ? ret : 0;
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_ucsi_write);
+
+int yoga_c630_ec_ucsi_read(struct yoga_c630_ec *ec,
+			   u8 resp[YOGA_C630_UCSI_READ_SIZE])
+{
+	int ret;
+
+	mutex_lock(&ec->lock);
+	ret = i2c_smbus_read_i2c_block_data(ec->client, LENOVO_EC_UCSI_READ,
+					    YOGA_C630_UCSI_READ_SIZE, resp);
+	mutex_unlock(&ec->lock);
+
+	return ret < 0 ? ret : 0;
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_ucsi_read);
+
+static irqreturn_t yoga_c630_ec_thread_intr(int irq, void *data)
+{
+	u8 req[] = { LENOVO_EC_REQUEST_NEXT_EVENT };
+	struct yoga_c630_ec *ec = data;
+	u8 event;
+	int ret;
+
+	mutex_lock(&ec->lock);
+	ret = yoga_c630_ec_request(ec, req, sizeof(req), &event, 1);
+	mutex_unlock(&ec->lock);
+	if (ret < 0)
+		return IRQ_HANDLED;
+
+	blocking_notifier_call_chain(&ec->notifier_list, event, ec);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * yoga_c630_ec_register_notify - Register a notifier callback for EC events.
+ * @ec: Yoga C630 EC
+ * @nb: Notifier block pointer to register
+ *
+ * Return: 0 on success or negative error code.
+ */
+int yoga_c630_ec_register_notify(struct yoga_c630_ec *ec, struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&ec->notifier_list, nb);
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_register_notify);
+
+/**
+ * yoga_c630_ec_unregister_notify - Unregister notifier callback for EC events.
+ * @ec: Yoga C630 EC
+ * @nb: Notifier block pointer to unregister
+ *
+ * Unregister a notifier callback that was previously registered with
+ * yoga_c630_ec_register_notify().
+ */
+void yoga_c630_ec_unregister_notify(struct yoga_c630_ec *ec, struct notifier_block *nb)
+{
+	blocking_notifier_chain_unregister(&ec->notifier_list, nb);
+}
+EXPORT_SYMBOL_GPL(yoga_c630_ec_unregister_notify);
+
+static void yoga_c630_aux_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	kfree(adev);
+}
+
+static void yoga_c630_aux_remove(void *data)
+{
+	struct auxiliary_device *adev = data;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+static int yoga_c630_aux_init(struct device *parent, const char *name,
+			      struct yoga_c630_ec *ec)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	adev->name = name;
+	adev->id = 0;
+	adev->dev.parent = parent;
+	adev->dev.release = yoga_c630_aux_release;
+	adev->dev.platform_data = ec;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
+		kfree(adev);
+		return ret;
+	}
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(parent, yoga_c630_aux_remove, adev);
+}
+
+static int yoga_c630_ec_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct yoga_c630_ec *ec;
+	int ret;
+
+	ec = devm_kzalloc(dev, sizeof(*ec), GFP_KERNEL);
+	if (!ec)
+		return -ENOMEM;
+
+	mutex_init(&ec->lock);
+	ec->client = client;
+	BLOCKING_INIT_NOTIFIER_HEAD(&ec->notifier_list);
+
+	ret = devm_request_threaded_irq(dev, client->irq,
+					NULL, yoga_c630_ec_thread_intr,
+					IRQF_ONESHOT, "yoga_c630_ec", ec);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "unable to request irq\n");
+
+	ret = yoga_c630_aux_init(dev, YOGA_C630_DEV_PSY, ec);
+	if (ret)
+		return ret;
+
+	return yoga_c630_aux_init(dev, YOGA_C630_DEV_UCSI, ec);
+}
+
+
+static const struct of_device_id yoga_c630_ec_of_match[] = {
+	{ .compatible = "lenovo,yoga-c630-ec" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, yoga_c630_ec_of_match);
+
+static const struct i2c_device_id yoga_c630_ec_i2c_id_table[] = {
+	{ "yoga-c630-ec", },
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, yoga_c630_ec_i2c_id_table);
+
+static struct i2c_driver yoga_c630_ec_i2c_driver = {
+	.driver = {
+		.name = "yoga-c630-ec",
+		.of_match_table = yoga_c630_ec_of_match
+	},
+	.probe = yoga_c630_ec_probe,
+	.id_table = yoga_c630_ec_i2c_id_table,
+};
+module_i2c_driver(yoga_c630_ec_i2c_driver);
+
+MODULE_DESCRIPTION("Lenovo Yoga C630 Embedded Controller");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/platform_data/lenovo-yoga-c630.h b/include/linux/platform_data/lenovo-yoga-c630.h
new file mode 100644
index 000000000000..5d1f9fb33cfc
--- /dev/null
+++ b/include/linux/platform_data/lenovo-yoga-c630.h
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024, Linaro Ltd
+ * Authors:
+ *    Bjorn Andersson
+ *    Dmitry Baryshkov
+ */
+
+#ifndef _LENOVO_YOGA_C630_DATA_H
+#define _LENOVO_YOGA_C630_DATA_H
+
+struct yoga_c630_ec;
+struct notifier_block;
+
+#define YOGA_C630_MOD_NAME	"lenovo_yoga_c630"
+
+#define YOGA_C630_DEV_UCSI	"ucsi"
+#define YOGA_C630_DEV_PSY	"psy"
+
+int yoga_c630_ec_read8(struct yoga_c630_ec *ec, u8 addr);
+int yoga_c630_ec_read16(struct yoga_c630_ec *ec, u8 addr);
+
+int yoga_c630_ec_register_notify(struct yoga_c630_ec *ec, struct notifier_block *nb);
+void yoga_c630_ec_unregister_notify(struct yoga_c630_ec *ec, struct notifier_block *nb);
+
+#define YOGA_C630_UCSI_WRITE_SIZE	8
+#define YOGA_C630_UCSI_CCI_SIZE		4
+#define YOGA_C630_UCSI_DATA_SIZE	16
+#define YOGA_C630_UCSI_READ_SIZE	(YOGA_C630_UCSI_CCI_SIZE + YOGA_C630_UCSI_DATA_SIZE)
+
+u16 yoga_c630_ec_ucsi_get_version(struct yoga_c630_ec *ec);
+int yoga_c630_ec_ucsi_write(struct yoga_c630_ec *ec,
+			    const u8 req[YOGA_C630_UCSI_WRITE_SIZE]);
+int yoga_c630_ec_ucsi_read(struct yoga_c630_ec *ec,
+			   u8 resp[YOGA_C630_UCSI_READ_SIZE]);
+
+#define LENOVO_EC_EVENT_USB		0x20
+#define LENOVO_EC_EVENT_UCSI		0x21
+#define LENOVO_EC_EVENT_HPD		0x22
+#define LENOVO_EC_EVENT_BAT_STATUS	0x24
+#define LENOVO_EC_EVENT_BAT_INFO	0x25
+#define LENOVO_EC_EVENT_BAT_ADPT_STATUS	0x37
+
+#endif

-- 
2.39.2


