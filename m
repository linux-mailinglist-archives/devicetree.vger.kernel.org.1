Return-Path: <devicetree+bounces-217553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02220B582D6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 19:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F24D81A231F3
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 17:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437B228B400;
	Mon, 15 Sep 2025 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MOZnr5NZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531FC28B4F0
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 17:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757956113; cv=none; b=Y7Kw4ZLlTUjuZXDKIA6J1gVeEozdUpZigvX0ndj00hP5zmLXuEXFBjULONcNYz7M7c1AP6qnpWJR0zkKfZXqt8TMKJ5UzsYkP6wXZnL3x/dcCM4AHS8fk3S60LZ499sjipOsV+xNgHjcePKgMrpWAB+iENunB2M0kUk8+KMJOQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757956113; c=relaxed/simple;
	bh=rA4oK+tFvW8saRL9hHBWOdi/CnB5VOu9oSDReal5vCU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HVlXvH4/X1OfQQdMbuk3edm7VM/7NUj2NsOySuPqvaE+/bMXKwtCXIVbCDf1d/PDv+tCrMhZWUGFn5tQqN848G0Z9G9BMHLYbmvmnC9eCqDYk6/bUV0yb51LwTjBTYR5/B4JpYf9/fnvUNY2fZo9evmJCd3xopWzNOWHaCeqa64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MOZnr5NZ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3e2fdddd01dso1195804f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757956110; x=1758560910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTwPZWRgNpDnHLSxSyIw8mfUUJjFauT8ZlfWIgp35xc=;
        b=MOZnr5NZlIxwnaNr/KbfScNKHPoF1Opi7eap+hhPKSKLBW3GMWL0I5nM9Bq7ptQaIj
         B3sni41yzCZs9LJTmm5+Ojfo+UQHT5JK7uBNL1wVYRLsgI6q64vIav7CvyRxGhwkUiTA
         YV8O9TI6KjuvTAGcj19p3Ua3JKVKe/dz4AiKUeIXtRc8Hq+yIAzbKufuU1pZV5Oyxw3o
         dbs0w6j9rFV2duREM0vglTQYzhGV+0PryTbDCpW6vO9UAxzlifdkv7m91QbcRYSGIzxO
         vJxFLxKw3wTLym9jBp2BgwkAs73Eu1rA19i9DJsLKgC1xA4zIYvDQH9lS1ghCiw3FIqL
         8ovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757956110; x=1758560910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iTwPZWRgNpDnHLSxSyIw8mfUUJjFauT8ZlfWIgp35xc=;
        b=LfUbiyFAtkGSVZBs+p/tQ0nUmkOpqX+8yvKQqlHXINYDGEzJ4o6H+ei8txZaFDoRqd
         XtVBdcqHyR4oJqgMCnQxo08V8i6kDrghAUPRz+kYRMf49lu1MPJNhWgiIbkWWAwNhOoV
         SzEV0MdacMyEda1ZANFVdfn3ZMpTwiC3NQvi8GZ33Jc2lmKe/gXYRe6FvKG5DDPBLDA+
         inhSt/s2VT/TURXCkJbaYFfg2qXVmwo72rmej3Yg06iRYiBqBd6++syI3sRvMKLNDcch
         KHOnTZXtlBSOdHvbf5S9DcewQMaEz4FPEHuv35jMQPxsWfZhKB+Ey7rh6n/uIG3uP8Gg
         LNVA==
X-Forwarded-Encrypted: i=1; AJvYcCXmXJmWRjz5A/TCuOTSNGy7CgaVKmF0kCmwH1ImNXyxeD5MwJwV8vljBf67UTSwmJqKCeCrxUXjwWUT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5OKpk3y5OyhoRdtKX7alnHY2VesOMBE40XYVqlADUlI1vjHCC
	MeVXi3ZvoZFFNkVuFsfNFhIqFrB3iKu7okwB7k4w9GIckHPDI1RieMCW
X-Gm-Gg: ASbGncsW/uTnd1eX1FWEvqMKinFgefcwYqqOTj6WF470yVgZN54hN++uCoUGV2Fe3IF
	rU6Lo+smAKuXCU1HVAMwtDT0Z5JhAzbYxcrTp4oXqVKX/BYqFfYkqMO0cT4aqmXjJRpek5hG9V1
	PWkk3cBUfWMQkXV64zL9VjNbFbggXJlszEXQYstJDb9nsA4tnHa5SAMcotQCtqLFL+BzWeqhHd+
	IdPD7FIuoHSTBlIBAGRipwAvpEPoOVtpqFy5nOO7Fv3PF1jZeH1E6nWxGAjUSa2S7zu16oU9JOu
	0Z1FT3B18XeCq0CvDI9dkB2uQztg1gi1msqTj88aZZTuo26pD/6+Y8l8oEJ0Qn1WzKGFLQ/ionp
	CgQTdUAGs8kwdq/IVjTBITjwu/ZF8XxZ05RlqmMbZcIFHUVNAyg7lu5WkypwfBjqCpt2Rlh1sEQ
	TQRnVQ0oNYZz/s3jA=
X-Google-Smtp-Source: AGHT+IFQFB1yQv+PaaUN5xBVG5IUrILWHiptNJo5/OGWy19Dj4NndkhYy6WTLYjr/FAFLigfT/gdGg==
X-Received: by 2002:a05:6000:1acb:b0:3e5:d2f1:403d with SMTP id ffacd0b85a97d-3e7659e981fmr13510546f8f.36.1757956109456;
        Mon, 15 Sep 2025 10:08:29 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.80.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7d369ea3bsm13146383f8f.0.2025.09.15.10.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 10:08:28 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flaviu Nistor <flaviu.nistor@gmail.com>
Subject: [PATCH 2/2] hwmon: tmp102: Add support for TMP110 and TMP113 devices
Date: Mon, 15 Sep 2025 20:08:19 +0300
Message-ID: <20250915170819.126668-2-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250915170819.126668-1-flaviu.nistor@gmail.com>
References: <20250915170819.126668-1-flaviu.nistor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

TMP110 and TMP113 temperature sensors are software compatible
with TMP102 sensor but have different accuracy (maximum error).

Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
---
 Documentation/hwmon/tmp102.rst | 21 +++++++++++++++++++++
 drivers/hwmon/Kconfig          |  4 ++--
 drivers/hwmon/tmp102.c         |  4 ++++
 3 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/hwmon/tmp102.rst b/Documentation/hwmon/tmp102.rst
index b1f585531a88..3c2cb5bab1e9 100644
--- a/Documentation/hwmon/tmp102.rst
+++ b/Documentation/hwmon/tmp102.rst
@@ -11,6 +11,22 @@ Supported chips:
 
     Datasheet: http://focus.ti.com/docs/prod/folders/print/tmp102.html
 
+  * Texas Instruments TMP110
+
+    Prefix: 'tmp110'
+
+    Addresses scanned: none
+
+    Datasheet: http://focus.ti.com/docs/prod/folders/print/tmp110.html
+
+  * Texas Instruments TMP113
+
+    Prefix: 'tmp113'
+
+    Addresses scanned: none
+
+    Datasheet: http://focus.ti.com/docs/prod/folders/print/tmp113.html
+
 Author:
 
 	Steven King <sfking@fdwdc.com>
@@ -27,5 +43,10 @@ operating temperature has a minimum of -55 C and a maximum of +150 C.
 The TMP102 has a programmable update rate that can select between 8, 4, 1, and
 0.5 Hz. (Currently the driver only supports the default of 4 Hz).
 
+The TMP110 and TMP113 are software compatible with TMP102, but have different
+accuracy (maximum error) specifications. The TMP110 has an accuracy (maximum error)
+of 1.0 degree, TMP113 has an accuracy (maximum error) of 0.3 degree, while TMP102
+has an accuracy (maximum error) of 2.0 degree.
+
 The driver provides the common sysfs-interface for temperatures (see
 Documentation/hwmon/sysfs-interface.rst under Temperatures).
diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index d6769288a76e..a5626277c95e 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -2341,8 +2341,8 @@ config SENSORS_TMP102
 	depends on I2C
 	select REGMAP_I2C
 	help
-	  If you say yes here you get support for Texas Instruments TMP102
-	  sensor chips.
+	  If you say yes here you get support for Texas Instruments
+	  TMP102, TMP110, TMP113 sensor chips.
 
 	  This driver can also be built as a module. If so, the module
 	  will be called tmp102.
diff --git a/drivers/hwmon/tmp102.c b/drivers/hwmon/tmp102.c
index 376e0eac8cc1..0df245d220d7 100644
--- a/drivers/hwmon/tmp102.c
+++ b/drivers/hwmon/tmp102.c
@@ -312,12 +312,16 @@ static DEFINE_SIMPLE_DEV_PM_OPS(tmp102_dev_pm_ops, tmp102_suspend, tmp102_resume
 
 static const struct i2c_device_id tmp102_id[] = {
 	{ "tmp102" },
+	{ "tmp110" },
+	{ "tmp113" },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, tmp102_id);
 
 static const struct of_device_id __maybe_unused tmp102_of_match[] = {
 	{ .compatible = "ti,tmp102" },
+	{ .compatible = "ti,tmp110" },
+	{ .compatible = "ti,tmp113" },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, tmp102_of_match);
-- 
2.43.0


