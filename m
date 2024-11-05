Return-Path: <devicetree+bounces-119162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 555FF9BD3E8
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 18:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA3B41F235AE
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DDF1E7C33;
	Tue,  5 Nov 2024 17:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Q+3L2uh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950871E7647
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 17:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730829551; cv=none; b=dw+V+CSmln3QgSZFAneTcW2EbxGJpXXoAb0Wwdwj6qOfJR7IKuHMW5ea6sOGfA2f18ktSWGTFGrBpORzIpbNXDr9WJt4W6qVphDH30uaMqcCZRcMWoBUD7B1aH3lqAioREEHWgwKIXK/YaNyxRddHDRJX0hscr/9rC2ccuvPUJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730829551; c=relaxed/simple;
	bh=h3SakqM8hf0ZEjtnDe8Rp7s0kqGt6hAp0AHjrFr37eY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=quLeVoO/R4rRvopz+EsWkiB0Gu45LCAicFegXq23fWJOPDHaattxWWx+Q19dHFfL0jea6YZOWfB1FSbCgq+HVCPPcnyWcR26Me3hmU+mW36gSi5/JXEH4Gdaa1NJDw22PFI60ccGVqBQBFQQcESvuqVFBMMruW2dx61zv+5Xi0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Q+3L2uh3; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4314c452180so353455e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 09:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730829548; x=1731434348; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/Zje3bKZSQ57FD2gfXvIeJSXs2XVLIZMOx3fg+D3nY=;
        b=Q+3L2uh3ycMTaP7zRpSP8w/nPX98luoKxRKUvRHEIXszsqaRQ3vN06sEmTzCv5u2gJ
         2SvRmt8pWogIaY6YYsIkXkQTqtn+es+p72Bxdl5deSi7TRh0CI11huWzRiw0qZao5M71
         MJgz2Wm6CpHTvJnFWgmGTn9jyCmM7a7HCBR1wkWnjVL5bFkshPxp8Q4pEfNLhZK3NZ82
         ZY4c+Wm6gq40i5FwH4gyjZiOma1dszwXFyRZcAh+HMC98eibLtfmCkx/6MBMEy7bPTWy
         l98lXt7P49tL5ekKdtBG6Cb5VsIREKsECReo5MdXymdT062EEmUAhxFzaMOSy2RVDpZ5
         XTVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730829548; x=1731434348;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J/Zje3bKZSQ57FD2gfXvIeJSXs2XVLIZMOx3fg+D3nY=;
        b=GEm4m0XtKI6VijKdK25EHkf7tMOrjNQ1p1DmOfK4JqDYofCfgWnM4Xm2XgAfuSaTul
         R7IsmW6f0iZgH8Y3Txgnzvj5e51h37t3cbF+2syBuU9OWbURtxlzPpl070MNnuXWlTns
         rUgL6xUsQgLARUWOMkVD1VtVjbqnCc/0StyNbDTG0Lw9JzRqSAFOJHCx4NOtKsNNaBHP
         2gmgt5M5BSxCal8xFnGVxTR/ibJyaiSmlQvldI23zHn6R1yAkX3+Th72XS7BQzYW/ueO
         dMvO8UrTQ2Q1ImL4vzSLJxiyJ+i9RvPxBA4rK+UafoQ7rOlzdlfPnBgFS3t9Axhj5acg
         A9kA==
X-Forwarded-Encrypted: i=1; AJvYcCVZ9KEQOi94S9YkoPqULmASl/USKK2LplYQGurD8P0+FaCbUvcEk/5k+fseUejbf3/NfSHWA3WlOajT@vger.kernel.org
X-Gm-Message-State: AOJu0YwM1oxjwELO5e7s08ikxT4VTfUTu5y1LyhA6sYrT+FZYFThBzAD
	yzwBifVDPWFCHbYM6gFv8g1OGOeuXDy/vJlHJ+ZQk4fnY8aoG6iLUB2bX5LYgaQ=
X-Google-Smtp-Source: AGHT+IGb1itYjt7UipOSk2+eMhe4iqqwjAcLrZ7jcNUE1Hdjt8NRQgh7BZPa8Zql+Ag0Le1cbkjMOw==
X-Received: by 2002:a5d:47a3:0:b0:37e:c4e3:f14b with SMTP id ffacd0b85a97d-381c14c4395mr16061599f8f.23.1730829547835;
        Tue, 05 Nov 2024 09:59:07 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:5b9b:df02:2761:7a57])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-381c113dd7fsm16959481f8f.70.2024.11.05.09.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 09:59:07 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Tue, 05 Nov 2024 18:58:40 +0100
Subject: [PATCH v4 3/7] hwmon: (pmbus/core) improve handling of write
 protected regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241105-tps25990-v4-3-0e312ac70b62@baylibre.com>
References: <20241105-tps25990-v4-0-0e312ac70b62@baylibre.com>
In-Reply-To: <20241105-tps25990-v4-0-0e312ac70b62@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Patrick Rudolph <patrick.rudolph@9elements.com>, 
 Naresh Solanki <naresh.solanki@9elements.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-i2c@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6750; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=h3SakqM8hf0ZEjtnDe8Rp7s0kqGt6hAp0AHjrFr37eY=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBnKlzj57XHgJYgN5gUTGdgT9/Bmhz6xYY2wuXj5
 QgPxABDJ++JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCZypc4wAKCRDm/A8cN/La
 hdt1EACt95Mhl9E3aOTvTRAwgEZAPVShcvdI7drkXNL1vNHtafmCdOmMH5E/sevU4nScwbptVRq
 WdVvoiH3dLDu9hQ8R7ZKjE9PJPqfFHvaJ4kKYISzdzufVdlA+ZVlPyuVIxi0RJs8qFEx8gLbCiM
 qw4u1sYG2FlO4kmtQLERcyES2oLTcI0z64sHNaEyUWe4NW0gl1+8l8spq+nOHPloZnEKsCkm9yy
 gL/na+n8Hou7w4HmN69NCYDY439RdEoKomR5o62EgfxG42vwQvnPNCarzoJJOTdrSev6IeQQ+lV
 hr8j7YIHK4mjTNtFmnFO91kQ9xs0zJdyfi24q3KIreFJV4Qf2s2otWhgNx8u1Z7rHidd/Ey9pCZ
 g1Qe9nEsBx5/PkSk49uU2guvA9i/TSVNxCuVqxvMnCUtKrs7SD5aG7EdHD3l7qZ+BEGCHHD5Gba
 kKaSnD0ZlQNAAFzzq/yTjT9RDjIeZEd+YBP0M3j3TutStP8maryWS+mtQ6CpuGp807WI6K6LT51
 Pwa7aOVURc2UCVkwvCER42nR98H+D4S1Fq4y0tX0ksS4TZHuS7m/GuqUKuh8yio+hlRKh9HCdNB
 RmgBr6PHxK/d4JKxFsPKkARNi0o+d9h7+09RVOpInv4BF/Wqlp9c6toZ1PvCmGrFGUhGqc+iW0W
 CEMjm2BZLQst7Bg==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

Writing PMBus protected registers does succeed from the smbus perspective,
even if the write is ignored by the device and a communication fault is
raised. This fault will silently be caught and cleared by pmbus irq if one
has been registered.

This means that the regulator call may return succeed although the
operation was ignored.

With this change, the operation which are not supported will be properly
flagged as such and the regulator framework won't even try to execute them.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/hwmon/pmbus-core.rst | 14 ++++++++++
 drivers/hwmon/pmbus/pmbus.h        |  4 +++
 drivers/hwmon/pmbus/pmbus_core.c   | 52 +++++++++++++++++++++++++++++++++-----
 include/linux/pmbus.h              | 14 ++++++++++
 4 files changed, 78 insertions(+), 6 deletions(-)

diff --git a/Documentation/hwmon/pmbus-core.rst b/Documentation/hwmon/pmbus-core.rst
index 686a00265bf71231c684afad6df41d6266303919..0a251960f8910ffb121d82b45e729d06f98424ef 100644
--- a/Documentation/hwmon/pmbus-core.rst
+++ b/Documentation/hwmon/pmbus-core.rst
@@ -312,6 +312,10 @@ currently provides a flags field with four bits used::
 
 	#define PMBUS_USE_COEFFICIENTS_CMD		BIT(5)
 
+	#define PMBUS_OP_PROTECTED			BIT(6)
+
+	#define PMBUS_VOUT_PROTECTED			BIT(7)
+
 	struct pmbus_platform_data {
 		u32 flags;              /* Device specific flags */
 
@@ -373,3 +377,13 @@ PMBUS_USE_COEFFICIENTS_CMD
 
 When this flag is set the PMBus core driver will use the COEFFICIENTS
 register to initialize the coefficients for the direct mode format.
+
+PMBUS_OP_PROTECTED
+
+Set if the chip OPERATION command is protected and protection is not
+determined by the standard WRITE_PROTECT command.
+
+PMBUS_VOUT_PROTECTED
+
+Set if the chip VOUT_COMMAND command is protected and protection is not
+determined by the standard WRITE_PROTECT command.
diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
index d605412a3173b95041524285ad1fde52fb64ce5a..ddb19c9726d62416244f83603b92d81d82e64891 100644
--- a/drivers/hwmon/pmbus/pmbus.h
+++ b/drivers/hwmon/pmbus/pmbus.h
@@ -487,6 +487,8 @@ struct pmbus_driver_info {
 /* Regulator ops */
 
 extern const struct regulator_ops pmbus_regulator_ops;
+int pmbus_regulator_init_cb(struct regulator_dev *rdev,
+			    struct regulator_config *config);
 
 /* Macros for filling in array of struct regulator_desc */
 #define PMBUS_REGULATOR_STEP(_name, _id, _voltages, _step, _min_uV)  \
@@ -501,6 +503,7 @@ extern const struct regulator_ops pmbus_regulator_ops;
 		.n_voltages = _voltages,			\
 		.uV_step = _step,				\
 		.min_uV = _min_uV,				\
+		.init_cb = pmbus_regulator_init_cb,		\
 	}
 
 #define PMBUS_REGULATOR(_name, _id)   PMBUS_REGULATOR_STEP(_name, _id, 0, 0, 0)
@@ -516,6 +519,7 @@ extern const struct regulator_ops pmbus_regulator_ops;
 		.n_voltages = _voltages,			\
 		.uV_step = _step,				\
 		.min_uV = _min_uV,				\
+		.init_cb = pmbus_regulator_init_cb,		\
 	}
 
 #define PMBUS_REGULATOR_ONE(_name)   PMBUS_REGULATOR_STEP_ONE(_name, 0, 0, 0)
diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
index 085a4dc91d9bad3d2aacdd946b74a094ea9ae458..51348803ff842c442c711338bab928a54b4d0d9a 100644
--- a/drivers/hwmon/pmbus/pmbus_core.c
+++ b/drivers/hwmon/pmbus/pmbus_core.c
@@ -2665,6 +2665,30 @@ static void pmbus_remove_pec(void *dev)
 	device_remove_file(dev, &dev_attr_pec);
 }
 
+static void pmbus_init_wp(struct i2c_client *client, struct pmbus_data *data)
+{
+	int ret;
+
+	ret = _pmbus_read_byte_data(client, 0xff, PMBUS_WRITE_PROTECT);
+	if (ret < 0)
+		return;
+
+	switch (ret & PB_WP_ANY) {
+	case PB_WP_ALL:
+		data->flags |= PMBUS_OP_PROTECTED;
+		fallthrough;
+	case PB_WP_OP:
+		data->flags |= PMBUS_VOUT_PROTECTED;
+		fallthrough;
+	case PB_WP_VOUT:
+		data->flags |= PMBUS_WRITE_PROTECTED | PMBUS_SKIP_STATUS_CHECK;
+		break;
+
+	default:
+		break;
+	}
+}
+
 static int pmbus_init_common(struct i2c_client *client, struct pmbus_data *data,
 			     struct pmbus_driver_info *info)
 {
@@ -2718,12 +2742,8 @@ static int pmbus_init_common(struct i2c_client *client, struct pmbus_data *data,
 	 * faults, and we should not try it. Also, in that case, writes into
 	 * limit registers need to be disabled.
 	 */
-	if (!(data->flags & PMBUS_NO_WRITE_PROTECT)) {
-		ret = _pmbus_read_byte_data(client, 0xff, PMBUS_WRITE_PROTECT);
-
-		if (ret > 0 && (ret & PB_WP_ANY))
-			data->flags |= PMBUS_WRITE_PROTECTED | PMBUS_SKIP_STATUS_CHECK;
-	}
+	if (!(data->flags & PMBUS_NO_WRITE_PROTECT))
+		pmbus_init_wp(client, data);
 
 	ret = i2c_smbus_read_byte_data(client, PMBUS_REVISION);
 	if (ret >= 0)
@@ -3183,8 +3203,12 @@ static int pmbus_regulator_list_voltage(struct regulator_dev *rdev,
 {
 	struct device *dev = rdev_get_dev(rdev);
 	struct i2c_client *client = to_i2c_client(dev->parent);
+	struct pmbus_data *data = i2c_get_clientdata(client);
 	int val, low, high;
 
+	if (data->flags & PMBUS_VOUT_PROTECTED)
+		return 0;
+
 	if (selector >= rdev->desc->n_voltages ||
 	    selector < rdev->desc->linear_min_sel)
 		return -EINVAL;
@@ -3219,6 +3243,22 @@ const struct regulator_ops pmbus_regulator_ops = {
 };
 EXPORT_SYMBOL_NS_GPL(pmbus_regulator_ops, PMBUS);
 
+int pmbus_regulator_init_cb(struct regulator_dev *rdev,
+			    struct regulator_config *config)
+{
+	struct pmbus_data *data = config->driver_data;
+	struct regulation_constraints *constraints = rdev->constraints;
+
+	if (data->flags & PMBUS_OP_PROTECTED)
+		constraints->valid_ops_mask &= ~REGULATOR_CHANGE_STATUS;
+
+	if (data->flags & PMBUS_VOUT_PROTECTED)
+		constraints->valid_ops_mask &= ~REGULATOR_CHANGE_VOLTAGE;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(pmbus_regulator_init_cb, PMBUS);
+
 static int pmbus_regulator_register(struct pmbus_data *data)
 {
 	struct device *dev = data->dev;
diff --git a/include/linux/pmbus.h b/include/linux/pmbus.h
index fa9f08164c365a541ee1c6480bafd8c3a8f98138..884040e1383bf41d2eb3b6de72c40e2650178dc6 100644
--- a/include/linux/pmbus.h
+++ b/include/linux/pmbus.h
@@ -73,6 +73,20 @@
  */
 #define PMBUS_USE_COEFFICIENTS_CMD		BIT(5)
 
+/*
+ * PMBUS_OP_PROTECTED
+ * Set if the chip OPERATION command is protected and protection is not
+ * determined by the standard WRITE_PROTECT command.
+ */
+#define PMBUS_OP_PROTECTED			BIT(6)
+
+/*
+ * PMBUS_VOUT_PROTECTED
+ * Set if the chip VOUT_COMMAND command is protected and protection is not
+ * determined by the standard WRITE_PROTECT command.
+ */
+#define PMBUS_VOUT_PROTECTED			BIT(7)
+
 struct pmbus_platform_data {
 	u32 flags;		/* Device specific flags */
 

-- 
2.45.2


