Return-Path: <devicetree+bounces-33198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8DE832863
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D1A72833C6
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8548F4CE05;
	Fri, 19 Jan 2024 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y8bOLWJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA634C62D
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705662533; cv=none; b=ptAbw7Wy4We3pz+uhnj0p9XI+Wph4MsrTP9rvjp80H2aQX4oiHQWsxyG/tmn827lo9S+YYA076filfd7tnKjuRcYojPZlO/heDRM9kKEM5HO0L6vdyXhsrz0nJYb80C2Iu0qFv9wuB2e4GjbHnj7/O/i56VYJijNINj9yPTSt84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705662533; c=relaxed/simple;
	bh=HRG1HDvXfUhASA/toQUA5TK6BWaaBrkdi7tMwdoiI7s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cGTpAB1crPnhKmO4sLbxnRRbJ24tcAC/r/aqjqm+40DJJEwiCKaj7JGmEi/OXJxCahdtbymrFpKwxMwkZmjjP9Ejd44w88s5B/Z0lCSmx5C+ypFv83gwfixtkAd/pvVmpAuCYS0fPCWzye4pP4RDJMFVByWDijxvMmkIS/ywf48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y8bOLWJK; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso663242e87.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1705662529; x=1706267329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OjR2LFuZQNm/ecVtMuUirJ38DZRHEGKXOqw4QzmaE6o=;
        b=y8bOLWJK/8FAcgtJQWxBfl/RXgRY6V/tCBKi4njhyPBnOaBcF7eHvwlnrBJLjJRa1J
         hjJnW4hTVikrTB1On2xnjf9GZTyFJY4txk8J5ASy0ADbNJkOW1eLL5AAq2NiI6RoOdyG
         l0sE19uqYZkxlbSWYoBdWTwbL6DuBDwFArvRqu+PZj2cgZjf7wDDhfLDqGPNOfh9KYJG
         eyx47CJxw17jGRfWBNN3CVuqtI/ADAXwVgcr+gaglDjmV7+rQM9ON9jgMqUhyIC561yN
         d7yg9k/fV2u40T5J7cyx/r3YYNuzih8vfi9k6SlbEVHHFXAyWIn0lliHMFla37HuByJT
         5ypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705662529; x=1706267329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OjR2LFuZQNm/ecVtMuUirJ38DZRHEGKXOqw4QzmaE6o=;
        b=ribiPIAW4sHTb9lQngHyLdmtrvJLIVW9HLWpDOKhvLHHYdxkTN+inDaOdfiKP4DB/P
         2fL1neT3Gt5ifvfb5KP64jUn9lIsHs9JhhqODArADUItngJZVTgSKj/9KU7y202w4BQP
         wxfNZPnYqx5f6+hVdz0VtCpSkVT+kVr0KmigiQZZviIGJHkdBU1TnYIekDxoii9TThv+
         ltUgueNgVXs/1ZX2LX7V08eWG2S5RMoY9CR2r9pPYQMyupv8CIiB/ogE6XCky1dvqT2+
         ERN0KA/N8iNpgd/DHHs0D2SDVftKsdyl19dq9u6YvVpkkVwRbFRVmWIzhNSx+JdPfGee
         2Nug==
X-Gm-Message-State: AOJu0Yxuhg40+4rQ6puSMmj37sYLAjiJaJtcQqnaUwYukennDynr4OA9
	RKnUEK+AlYuFyXGSn46aIOobOmUe7oUmBNyobIh9BHnHzBA3LlE5RkuReKG0wJo=
X-Google-Smtp-Source: AGHT+IGmR08sudaVigkCkvIuDOcA3NhhCx2amlFjKxzmQKMiGI3DmISrs0NKDpbSBRiThecXvRsMAA==
X-Received: by 2002:a19:2d4e:0:b0:50e:771a:9ff9 with SMTP id t14-20020a192d4e000000b0050e771a9ff9mr496796lft.78.1705662529382;
        Fri, 19 Jan 2024 03:08:49 -0800 (PST)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h20-20020a170906261400b00a28d438a1b0sm10091661ejc.83.2024.01.19.03.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 03:08:48 -0800 (PST)
From: Alexandre Bailon <abailon@baylibre.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: rui.zhang@intel.com,
	lukasz.luba@arm.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH v2 2/3] thermal: Add support of multi sensors to thermal_core
Date: Fri, 19 Jan 2024 12:08:41 +0100
Message-ID: <20240119110842.772606-3-abailon@baylibre.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240119110842.772606-1-abailon@baylibre.com>
References: <20240119110842.772606-1-abailon@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds support of multi sensors to thermal.
Currently, this only support the get_temp operation.
This returns an average temperature of all the sensors.
If defined, a coefficient is applied to the value read from the sensor
before computing the average.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
---
 drivers/thermal/Makefile        |   1 +
 drivers/thermal/thermal_core.h  |   7 ++
 drivers/thermal/thermal_multi.c | 178 ++++++++++++++++++++++++++++++++
 3 files changed, 186 insertions(+)
 create mode 100644 drivers/thermal/thermal_multi.c

diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index c934cab309ae..757289a406f7 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -6,6 +6,7 @@ CFLAGS_thermal_core.o		:= -I$(src)
 obj-$(CONFIG_THERMAL)		+= thermal_sys.o
 thermal_sys-y			+= thermal_core.o thermal_sysfs.o
 thermal_sys-y			+= thermal_trip.o thermal_helpers.o
+thermal_sys-y			+= thermal_multi.o
 
 # netlink interface to manage the thermal framework
 thermal_sys-$(CONFIG_THERMAL_NETLINK)		+= thermal_netlink.o
diff --git a/drivers/thermal/thermal_core.h b/drivers/thermal/thermal_core.h
index 0a3b3ec5120b..26e83a5c8298 100644
--- a/drivers/thermal/thermal_core.h
+++ b/drivers/thermal/thermal_core.h
@@ -138,6 +138,13 @@ ssize_t weight_show(struct device *, struct device_attribute *, char *);
 ssize_t weight_store(struct device *, struct device_attribute *, const char *,
 		     size_t);
 
+/* Multi sensors */
+int thermal_multi_sensor_validate_coeff(int *coeff, int count, int offset);
+int thermal_multi_sensor_register(const char *name,
+	struct thermal_zone_device *sensor_tz, int coeff);
+void thermal_multi_sensor_unregister(struct thermal_zone_device *sensor_tz);
+
+
 #ifdef CONFIG_THERMAL_STATISTICS
 void thermal_cooling_device_stats_update(struct thermal_cooling_device *cdev,
 					 unsigned long new_state);
diff --git a/drivers/thermal/thermal_multi.c b/drivers/thermal/thermal_multi.c
new file mode 100644
index 000000000000..a5a4f1f2d594
--- /dev/null
+++ b/drivers/thermal/thermal_multi.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/of.h>
+#include <linux/slab.h>
+#include <linux/thermal.h>
+#include <linux/types.h>
+#include <linux/string.h>
+
+#include "thermal_core.h"
+
+struct sensor_interface {
+	struct thermal_zone_device *tz;
+	int coeff;
+
+	struct list_head node;
+};
+
+struct multi_sensor_thermal_zone {
+	struct thermal_zone_device *tz;
+	struct mutex sensors_lock;
+	struct list_head sensors;
+
+	struct list_head node;
+};
+
+static DEFINE_MUTEX(multi_tz_mutex);
+static LIST_HEAD(multi_tz_list);
+
+#define TJ_MAX 120000
+
+static int multi_sensor_get_temp(struct thermal_zone_device *tz, int *temp)
+{
+	struct multi_sensor_thermal_zone *multi_tz = tz->devdata;
+	struct sensor_interface *sensor;
+	int accumulated_temp = 0;
+	u32 accumulated_coeff;
+	int ret;
+
+	mutex_lock(&multi_tz->sensors_lock);
+
+	if (list_empty(&multi_tz->sensors)) {
+		mutex_unlock(&multi_tz->sensors_lock);
+		return -ENODEV;
+	}
+
+	list_for_each_entry(sensor, &multi_tz->sensors, node) {
+		ret = thermal_zone_get_temp(sensor->tz, temp);
+		if (ret) {
+			mutex_unlock(&multi_tz->sensors_lock);
+			return ret;
+		}
+
+		accumulated_temp += *temp * sensor->coeff;
+		accumulated_coeff += sensor->coeff;
+	}
+
+	mutex_unlock(&multi_tz->sensors_lock);
+
+	*temp = accumulated_temp / accumulated_coeff;
+	return ret;
+}
+
+struct thermal_zone_device_ops multi_sensor_ops = {
+	.get_temp = multi_sensor_get_temp,
+};
+
+int thermal_multi_sensor_validate_coeff(int *coeff, int count, int offset)
+{
+	int max_accumulated_temp = 0;
+	int i;
+
+	for (i = 0; i < count; i++) {
+		max_accumulated_temp += TJ_MAX * coeff[i];
+		if (max_accumulated_temp < 0)
+			return -EOVERFLOW;
+	}
+
+	max_accumulated_temp += offset;
+	return max_accumulated_temp < 0 ? -EOVERFLOW : 0;
+}
+
+static struct thermal_zone_device *multi_sensor_tz_alloc(const char *name)
+{
+	struct thermal_zone_device *tz;
+	struct thermal_zone_params tzp = {};
+	struct multi_sensor_thermal_zone *multi_tz;
+
+	tz = thermal_zone_get_zone_by_name(name);
+	if (!IS_ERR(tz)) {
+		mutex_unlock(&multi_tz_mutex);
+		return tz;
+	}
+
+	multi_tz = kzalloc(sizeof(*multi_tz), GFP_KERNEL);
+	if (!multi_tz)
+		return ERR_PTR(-ENOMEM);
+	mutex_init(&multi_tz->sensors_lock);
+	INIT_LIST_HEAD(&multi_tz->sensors);
+
+	tzp.no_hwmon = true;
+	tzp.slope = 1;
+	tzp.offset = 0;
+
+	tz = thermal_tripless_zone_device_register(name, multi_tz,
+						   &multi_sensor_ops, &tzp);
+	if (IS_ERR(tz)) {
+		kfree(multi_tz);
+	} else {
+		multi_tz->tz = tz;
+		list_add(&multi_tz->node, &multi_tz_list);
+	}
+
+	return tz;
+}
+
+int thermal_multi_sensor_register(const char *name,
+	struct thermal_zone_device *sensor_tz, int coeff)
+{
+	struct thermal_zone_device *tz;
+	struct multi_sensor_thermal_zone *multi_tz;
+	struct sensor_interface *sensor;
+
+	mutex_lock(&multi_tz_mutex);
+
+	tz = multi_sensor_tz_alloc(name);
+	if (IS_ERR(tz)) {
+		mutex_unlock(&multi_tz_mutex);
+		return PTR_ERR(tz);
+	}
+	multi_tz =  tz->devdata;
+
+	sensor = kzalloc(sizeof(*sensor), GFP_KERNEL);
+	if (!sensor) {
+		mutex_unlock(&multi_tz_mutex);
+		return -ENOMEM;
+	}
+
+	sensor->tz = sensor_tz;
+	sensor->coeff = coeff;
+	mutex_lock(&multi_tz->sensors_lock);
+	list_add(&sensor->node, &multi_tz->sensors);
+	mutex_unlock(&multi_tz->sensors_lock);
+
+	thermal_zone_device_enable(tz);
+
+	mutex_unlock(&multi_tz_mutex);
+
+	return 0;
+}
+
+void thermal_multi_sensor_unregister(struct thermal_zone_device *sensor_tz)
+{
+	struct multi_sensor_thermal_zone *multi_tz;
+	struct sensor_interface *sensor, *tmp;
+
+	mutex_lock(&multi_tz_mutex);
+	list_for_each_entry(multi_tz, &multi_tz_list, node) {
+		mutex_lock(&multi_tz->sensors_lock);
+		list_for_each_entry_safe(sensor, tmp, &multi_tz->sensors, node) {
+			if (sensor->tz == sensor_tz) {
+				list_del(&sensor->node);
+				kfree(sensor);
+				break;
+			}
+		}
+
+		if (list_empty(&multi_tz->sensors)) {
+			thermal_zone_device_unregister(multi_tz->tz);
+			mutex_unlock(&multi_tz->sensors_lock);
+			kfree(multi_tz);
+		} else {
+			mutex_unlock(&multi_tz->sensors_lock);
+		}
+	}
+	mutex_unlock(&multi_tz_mutex);
+}
-- 
2.41.0


