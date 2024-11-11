Return-Path: <devicetree+bounces-120699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0934E9C3B5D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 10:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C7C31F23033
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 09:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7116F16F8E5;
	Mon, 11 Nov 2024 09:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YxeTgsKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CA51662FA
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731318670; cv=none; b=gXxgHDyCnAZjZsuMjIT/WNbgg+oBpmxbYcx74SIVBuqzp8x4kuOGsRM40OVdS8obNyFFzmMHChQJ2UHSpyWLkJa77ptp781R8pyiHTlscZvLU5rlwzYyj6KsNpzWSiCvezMDgRqbQ/8cMGLCGtVMxsDsEPcuWhJVS6ju9xT6izo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731318670; c=relaxed/simple;
	bh=sp4pn0wWQK7ChYYcdXe+OIJh/ROCFwgRZjc3zKjTGZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PZheld0cepgnb/vV2nCATnr0Lmhv+LVA02YuArqzKPylKbQMKzmst0UFWvu+2HB0NqZ0EcECt6ShJs68fCZPqJfH91snJu/UwnKiKOBzTUlkC0Nw43Zcxle16+AYHwhaPBkD5WDW701lbUb22v3s8PYoQslUZnejOItqmZw1Mck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YxeTgsKn; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7ea7ad1e01fso3111211a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 01:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731318668; x=1731923468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsBmZ6wvsxhHYMiMEORqbpmYgtlxpguU0B8wVsIYt9U=;
        b=YxeTgsKnVnhaBxJaTNh91pcCr4dbmow1pidFILbS71w2V9LuGzjbWnWaxJ8Scov2ZN
         L07aNn1UHCjd/jqg6+8m0/4WRU9HtUN/r9kKDnGzPFor9oehxdfEhWrsqp+wi+7p/lt4
         5ZoGjNBIExuRpfmBCoOmG7pXYc5mALKgCmiW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731318668; x=1731923468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsBmZ6wvsxhHYMiMEORqbpmYgtlxpguU0B8wVsIYt9U=;
        b=Zj+7B7xadPEBSmx9TG209gIi+RgV1U03lTM1PbEZaCqgARJnt2fjQhvw0laIiFbImV
         dKuiPmhNM1OZ5JLxV0HQCYrFDtINQbWtFQvxI1VxxQtxobT2x2dH8Rc7wKo5xf8hiAkP
         63SKtDlZAc4djXHXSgZUaVjavMCmchjtVcgxcFKEygN0m38vjp+adBDH1mIy2bZiIbEO
         07jI/L4+47t1KvRR66peMtsAKEcfhJqXmHq3JUL71sQR9vDhe0WWtf1Oupe9HCjzMTaV
         hd8y539i+C58Vp2VhgaLAXtylAQIhvEcO6eszWCuuenc48xgOTMWR/vy+usF75/RncQJ
         6bSw==
X-Forwarded-Encrypted: i=1; AJvYcCUPp3PuevfVTNmCAndoNkJ7+bLP4ud85Ev+s5Trr3OV24AKDfQDgbx5W2JaVWboHa7gVcvOHPZQhNsx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywimy0ZwY6UwdUlDYnW18XHGKfmvG/ATcrXo3CXnCfPZ/axxXks
	JjQnOrcPIJAeWW86fMxpBxJajXm8XlOe90MnswThFetNwvKTRUNOClxWR6Y8og==
X-Google-Smtp-Source: AGHT+IF4cIHOSz9YUbrlkgDalw7i2qTBSh2GpPn9ItPJYV3QmoVJ3liH1W72fcX2j9qhdsgx/XaTeQ==
X-Received: by 2002:a05:6a21:6d9e:b0:1d7:1288:8338 with SMTP id adf61e73a8af0-1dc23321c12mr18771135637.8.1731318668153;
        Mon, 11 Nov 2024 01:51:08 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:ec9f:d26:733c:7acf])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f41f5b48c6sm8075164a12.18.2024.11.11.01.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 01:51:07 -0800 (PST)
From: Sung-Chi <lschyi@chromium.org>
To: 
Cc: "Sung-Chi, Li" <lschyi@chromium.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas@weissschuh.net>,
	Jean Delvare <jdelvare@suse.com>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: [PATCH v2] hwmon: (cros_ec) register thermal sensors to thermal framework
Date: Mon, 11 Nov 2024 17:50:30 +0800
Message-ID: <20241111095045.1218986-1-lschyi@chromium.org>
X-Mailer: git-send-email 2.47.0.277.g8800431eea-goog
In-Reply-To: <20241111074904.1059268-1-lschyi@chromium.org>
References: <20241111074904.1059268-1-lschyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Sung-Chi, Li" <lschyi@chromium.org>

cros_ec hwmon driver probes available thermal sensors when probing the
driver.  Register these thermal sensors to the thermal framework, such
that thermal framework can adopt these sensors as well.

To make cros_ec registrable to thermal framework, the cros_ec dts need
the corresponding changes:

&cros_ec {
	#thermal-sensor-cells = <1>;
};

Change-Id: I29b638427c715cb44391496881fc61ad53abccaf
Signed-off-by: Sung-Chi, Li <lschyi@chromium.org>
---
 Changes in v2:
   - Rename `cros_ec_sensor_data` to `cros_ec_hwmon_thermal_zone_data`.
   - Rename `addr` in struct `cros_ec_hwmon_thermal_zone_data` to `idx`.
   - Use `cros_ec_hwmon_temp_to_millicelsius` to do value conversion in 
     `cros_ec_thermal_get_temp` function.
   - Rename `cros_ec_thermal_get_temp` to `cros_ec_hwmon_thermal_get_temp` to
     make `cros_ec_hwmon` a prefix.
   - Use `%pe` in `cros_ec_hwmon_probe_temp_sensors` when printing out
     `data->tz_dev` if failed register thermal device.
   - Remove `cros_ec_hwmon_remove`, and the `.remove` value in
     `cros_ec_hwmon_driver` since there is no need to call
     `devm_thermal_of_zone_unregister` for clean up.
   - Revert function signature of `cros_ec_hwmon_probe_temp_sensors` since all
     needed parameters are presented.
   - Revert include of `linux/list.h` because no list data structure is used.
---
 drivers/hwmon/cros_ec_hwmon.c | 41 +++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/hwmon/cros_ec_hwmon.c b/drivers/hwmon/cros_ec_hwmon.c
index 5514cf780b8b..81e563e0455f 100644
--- a/drivers/hwmon/cros_ec_hwmon.c
+++ b/drivers/hwmon/cros_ec_hwmon.c
@@ -12,6 +12,7 @@
 #include <linux/platform_device.h>
 #include <linux/platform_data/cros_ec_commands.h>
 #include <linux/platform_data/cros_ec_proto.h>
+#include <linux/thermal.h>
 #include <linux/types.h>
 #include <linux/units.h>
 
@@ -23,6 +24,12 @@ struct cros_ec_hwmon_priv {
 	u8 usable_fans;
 };
 
+struct cros_ec_hwmon_thermal_zone_data {
+	struct cros_ec_device *cros_ec;
+	struct thermal_zone_device *tz_dev;
+	int idx;
+};
+
 static int cros_ec_hwmon_read_fan_speed(struct cros_ec_device *cros_ec, u8 index, u16 *speed)
 {
 	int ret;
@@ -185,11 +192,30 @@ static const struct hwmon_chip_info cros_ec_hwmon_chip_info = {
 	.info = cros_ec_hwmon_info,
 };
 
+static int cros_ec_hwmon_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
+{
+	struct cros_ec_hwmon_thermal_zone_data *data =
+		thermal_zone_device_priv(tz);
+	int ret;
+	u8 val;
+
+	ret = cros_ec_hwmon_read_temp(data->cros_ec, data->idx, &val);
+	if (ret || cros_ec_hwmon_is_error_temp(temp))
+		return -ENODATA;
+	*temp = cros_ec_hwmon_temp_to_millicelsius(val);
+	return 0;
+}
+
+static const struct thermal_zone_device_ops thermal_ops = {
+	.get_temp = cros_ec_hwmon_thermal_get_temp,
+};
+
 static void cros_ec_hwmon_probe_temp_sensors(struct device *dev, struct cros_ec_hwmon_priv *priv,
 					     u8 thermal_version)
 {
 	struct ec_params_temp_sensor_get_info req = {};
 	struct ec_response_temp_sensor_get_info resp;
+	struct cros_ec_hwmon_thermal_zone_data *data;
 	size_t candidates, i, sensor_name_size;
 	int ret;
 	u8 temp;
@@ -216,6 +242,21 @@ static void cros_ec_hwmon_probe_temp_sensors(struct device *dev, struct cros_ec_
 		priv->temp_sensor_names[i] = devm_kasprintf(dev, GFP_KERNEL, "%.*s",
 							    (int)sensor_name_size,
 							    resp.sensor_name);
+
+		data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
+		if (!data)
+			continue;
+
+		data->idx = i;
+		data->cros_ec = priv->cros_ec;
+		data->tz_dev = devm_thermal_of_zone_register(
+			priv->cros_ec->dev, i, data, &thermal_ops);
+		if (IS_ERR_VALUE(data->tz_dev)) {
+			dev_err(dev,
+				"failed to register %zu thermal sensor, err = %pe",
+				i, data->tz_dev);
+			continue;
+		}
 	}
 }
 
-- 
2.47.0.277.g8800431eea-goog


