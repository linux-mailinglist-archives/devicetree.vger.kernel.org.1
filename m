Return-Path: <devicetree+bounces-164136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A29A7F46E
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 07:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4E5318973F5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 05:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FADC25EFAA;
	Tue,  8 Apr 2025 05:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C7SH4dD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A596521516C
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 05:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744091660; cv=none; b=I6LTARAetgJqSgHBxnv1IPqTgDzrx5i5eDglQOu2wx6Kaa7J/d3LrknlwoZQQ4ineUq/cDelghpJZISLEzDpT/50ZBkFFyq8nyxtxRg0tS8KEUXJ9rOt3x8ZOleFPxI8E51C19yxKtxyNNJJwtFsJooVXKGy4UxR6uVCdNBW2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744091660; c=relaxed/simple;
	bh=3Qehdz99T0lm/KYUD44hXAYPm7Kh5YiRQ9Gw/cWxg2g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jgUg42F2fc8U/I5pTozJbW0SnfYhis0SFQz5BENwq3/jHMjkRoy3v6n+6yQ5Jhaj/x2PySbEGGA8Lx3q9Vlg+WSwkWEMLIm33nJ0wqpUl55igz1ZkVpPiCF1b3fmQXz7yjfrdbuIJq1QMEukg4egjZ0t3cV/MgWvBYPHqj4lWfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C7SH4dD8; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2260c91576aso42921505ad.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 22:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744091657; x=1744696457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0znhLDP/kmddGSwUPPi7f29F3xEyEGP8RWqmqy9tbGs=;
        b=C7SH4dD8AI9seTgZOrLwjJg6c6S8vit73VbMNWoFGFgwd9FmYYpsIwJOVtwLwc8cuf
         KrT+4Gl5HeEKZpB9jPfXLxIltYnc3kYIlC+00m9u7rNlLnZfdTFVyf09j11My4qt5ceA
         asoa8Jlwx5fLfJxUbgejt31AF3HORgxpg7Yh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744091657; x=1744696457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0znhLDP/kmddGSwUPPi7f29F3xEyEGP8RWqmqy9tbGs=;
        b=wNCwFXqwl+hsx6wI5V/lICs2Od4140esU8p/E+Pr4cXyLIS7JOOEE731sO293CX5o2
         FEztbRBRlcicScv4XS4ARrpWZHG/+CdP741nfbr5zJ2pIOytjvklOg+HT2EGnjj57N+G
         CqkW7WhBJEN25mQY9q6pA6OOaYevi67Bl3oQcC4nRIR2L5pKA9jsR5ZPj/aVRxcjqc60
         Mdi3EQoLUG6H7STAEvqwb6eOMVlOHzb4dEivPtnAelp4C4hZDVA1n3NMjP120OyHgffZ
         VtZUOLJauq8TqDbd+6Kv6B5Tz8vOtA5Xo3gtODCkAxzRUXFLUrhnmoq/mptM36MMEy97
         ppHw==
X-Forwarded-Encrypted: i=1; AJvYcCUCBGhNoutuCmDkbLI3MBivp2WKmgIlK5jHB/47ewhivhAPlj1NWrGIt+jWsnXnz2EmA+Mtzv2138QK@vger.kernel.org
X-Gm-Message-State: AOJu0YzhrXx56e7slEvKHDTUXExtSp5cQtWZLXAysklS+pdlumKGnHFC
	62udiFdmtP+q+OIlLkJUtcdts+pjwgRJ0HcF1J2SwOuKNh0krGgYuAOwK9yn6Q==
X-Gm-Gg: ASbGncuw2svTegnzV/phf1MP4teSOQvPTqNEWqY6OFu1Em45jfg8QzwpQYGsyLU1iCs
	akmlbLfImCudu37uI5uv+ea8UiEA5rcxY1qzY81W7k/2Khtge285x9DBCVqhfGu0h7B9gMHoQo5
	8vTcsICWkZeCL4sO/MZHVvb7gMzyx6F/f9aWNgKXCUZ6QLkGPl0knT6mzP3zy9cXP/W6LERuHRI
	SfioQ6nIcaaqh0BxeCHM5pvo5oR/I2HQ8TqNqSt8yeE7U0SDHAddydyIZoU4fjXSRPNxV/9QUOd
	VC3tKtJxbdQZHLjmSB2+agCDbFInRVVokE8gdOsTfPfm2yYt
X-Google-Smtp-Source: AGHT+IE6LEH1o6bjuOb4ZdYUt7tLG6E/wilsIsS/Br23rgwZxsKtguSuwQJ13qUjlXwve3j4J/rl7Q==
X-Received: by 2002:a17:902:d50c:b0:223:f9a4:3fa8 with SMTP id d9443c01a7336-22a8a05a570mr212822725ad.19.1744091656883;
        Mon, 07 Apr 2025 22:54:16 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:8551:1093:9956:f769])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-229785ad9d0sm91566905ad.40.2025.04.07.22.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 22:54:16 -0700 (PDT)
From: Gwendal Grignou <gwendal@chromium.org>
To: tzungbi@kernel.org,
	jic23@kernel.org
Cc: linux-iio@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v2] iio: cros_ec_sensors: Flush when changing the FIFO timeout
Date: Mon,  7 Apr 2025 22:54:11 -0700
Message-ID: <20250408055412.1623257-1-gwendal@chromium.org>
X-Mailer: git-send-email 2.49.0.504.g3bcea36a83-goog
In-Reply-To: <CAPUE2uuY=BaPFro5cQSmQg4JS1Z5J5aBL7XvqqAo-X=LR4be3Q@mail.gmail.com>
References: <CAPUE2uuY=BaPFro5cQSmQg4JS1Z5J5aBL7XvqqAo-X=LR4be3Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

|hwfifo_timeout| is used by the EC firmware only when new samples are
available.
When the timeout changes, espcially when the new timeout is shorter than
the current one, send the samples waiting in the FIFO to the host.
Inline the call to transmit |hwfifo_timeout| value to the firmware.

Now flush when a sensor is suspended (ODR set to 0) as well.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
Changes in v2:
- Fix sysfs attribute in commit message
- Indicated the function to send the content of the attribute is now
  inline.
- Improve error detection when setting the sensor frequency and flusing
  the FIFO.
 .../cros_ec_sensors/cros_ec_sensors_core.c    | 50 ++++++++++++-------
 1 file changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/iio/common/cros_ec_sensors/cros_ec_sensors_core.c b/drivers/iio/common/cros_ec_sensors/cros_ec_sensors_core.c
index b1abd6e16c4ba..caf40738337e4 100644
--- a/drivers/iio/common/cros_ec_sensors/cros_ec_sensors_core.c
+++ b/drivers/iio/common/cros_ec_sensors/cros_ec_sensors_core.c
@@ -103,22 +103,6 @@ static void get_default_min_max_freq(enum motionsensor_type type,
 	}
 }
 
-static int cros_ec_sensor_set_ec_rate(struct cros_ec_sensors_core_state *st,
-				      int rate)
-{
-	int ret;
-
-	if (rate > U16_MAX)
-		rate = U16_MAX;
-
-	mutex_lock(&st->cmd_lock);
-	st->param.cmd = MOTIONSENSE_CMD_EC_RATE;
-	st->param.ec_rate.data = rate;
-	ret = cros_ec_motion_send_host_cmd(st, 0);
-	mutex_unlock(&st->cmd_lock);
-	return ret;
-}
-
 static ssize_t cros_ec_sensor_set_report_latency(struct device *dev,
 						 struct device_attribute *attr,
 						 const char *buf, size_t len)
@@ -134,7 +118,25 @@ static ssize_t cros_ec_sensor_set_report_latency(struct device *dev,
 
 	/* EC rate is in ms. */
 	latency = integer * 1000 + fract / 1000;
-	ret = cros_ec_sensor_set_ec_rate(st, latency);
+
+	mutex_lock(&st->cmd_lock);
+	st->param.cmd = MOTIONSENSE_CMD_EC_RATE;
+	st->param.ec_rate.data = min(U16_MAX, latency);
+	ret = cros_ec_motion_send_host_cmd(st, 0);
+	mutex_unlock(&st->cmd_lock);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Flush samples currently in the FIFO, especially when the new latency
+	 * is shorter than the old one: new timeout value is only considered when
+	 * there is a new sample available. It can take a while for a slow
+	 * sensor.
+	 */
+	mutex_lock(&st->cmd_lock);
+	st->param.cmd = MOTIONSENSE_CMD_FIFO_FLUSH;
+	ret = cros_ec_motion_send_host_cmd(st, 0);
+	mutex_unlock(&st->cmd_lock);
 	if (ret < 0)
 		return ret;
 
@@ -764,6 +766,8 @@ EXPORT_SYMBOL_GPL(cros_ec_sensors_capture);
  * @mask:	specifies which values to be requested
  *
  * Return:	the type of value returned by the device
+ *
+ * cmd_lock mutex held.
  */
 int cros_ec_sensors_core_read(struct cros_ec_sensors_core_state *st,
 			  struct iio_chan_spec const *chan,
@@ -836,6 +840,8 @@ EXPORT_SYMBOL_GPL(cros_ec_sensors_core_read_avail);
  * @mask:	specifies which values to write
  *
  * Return:	the type of value returned by the device
+ *
+ * cmd_lock mutex held.
  */
 int cros_ec_sensors_core_write(struct cros_ec_sensors_core_state *st,
 			       struct iio_chan_spec const *chan,
@@ -853,6 +859,16 @@ int cros_ec_sensors_core_write(struct cros_ec_sensors_core_state *st,
 		st->param.sensor_odr.roundup = 1;
 
 		ret = cros_ec_motion_send_host_cmd(st, 0);
+
+		/* Flush the FIFO in case we are stopping a sensor.
+		 * If the FIFO has just been emptied, pending samples will be
+		 * stuck until new samples are available. It will not happen
+		 * when all the sensors are stopped.
+		 */
+		if (ret >= 0 && frequency == 0) {
+			st->param.cmd = MOTIONSENSE_CMD_FIFO_FLUSH;
+			ret = cros_ec_motion_send_host_cmd(st, 0);
+		}
 		break;
 	default:
 		ret = -EINVAL;
-- 
2.49.0.504.g3bcea36a83-goog


