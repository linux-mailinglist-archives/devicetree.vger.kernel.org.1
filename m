Return-Path: <devicetree+bounces-4739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E7E7B38BF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A0BB01C20B9D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19963658A4;
	Fri, 29 Sep 2023 17:26:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD951B88
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:13 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34DF1712
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:07 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57de9237410so2399935eaf.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008367; x=1696613167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bKd2JyQzTBZqficOTxYW/B6OToPwlC7WYvtiMW5PiI=;
        b=0xS7Th/BhhkVpTokJBaAWC3jdPj1Om6SEpgZsMToLFxqwaZ8uyRennXxR75UipWJBZ
         4xHlVXKvbTaL6GZC7cw2HHYEtH80/N+155zwuxeEe1MjKuPsBn6Krv19Ldlq7M4e41BT
         ch1qX/rehIOSb9mjnhR60T8c30hT5XFfPaa0RZQih5G68R84JwctDO57fVTOG3TG7ufo
         G2aCY36Wdo55BAFsTcUpE2qfrkVpFQVhsqrfMWJSnaVNVll1xTWjdjs0Kl5OpSgRGN3G
         zjffcE8nEeRoAsupUaZkGKa/S0eCqHwqvRUKK79H9QsuPDQu2MlXDOILFvWrsmjEWEiB
         JWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008367; x=1696613167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5bKd2JyQzTBZqficOTxYW/B6OToPwlC7WYvtiMW5PiI=;
        b=CisW3o0dcef3WmK4cNAwemB7LceJZxXdLP8a6tdX6VapmfR1WaEyMtZBUQj4iBXsZe
         7ywHwTb3dDbdjSnVklP1E8XcGUIkZY0TlOEycOwHl43JUnHS8zYpL63FgYgbi6SxYjij
         vx7nMzPNd6wcsg4Nw7aiR1816CGb120jf1loRPTOmoj7e8ew326oGaEKjqVNcRSVtcme
         6X412JLFdANYqlZjdXTBs6jOkfpFCmqHqLA4DSGgBVxMOYsqAW9sjYiMKQWNGvVvNE1B
         5N7779sN/+kSRtTDL/rjdpwGhKwXT+GSsyU5ObD29My4iWbdZkfcWaZEndgQNiG5VlCK
         jy+Q==
X-Gm-Message-State: AOJu0YzY9WBe+pS0hHWn0I5ehcSRQMiLBEjJ9OHr9pDr/zc+a36AosBv
	W8XB6rEaeTVmg+jvkg9uGQF0Kg==
X-Google-Smtp-Source: AGHT+IG7NE3PzSuo0IcMWaFoMDvIjF47cgTuzogAtpbL3N+vgEML4u/Ilf6FfJh4Rs/RkD/EAHP8xg==
X-Received: by 2002:a4a:9b43:0:b0:57b:5c28:4169 with SMTP id e3-20020a4a9b43000000b0057b5c284169mr4937720ook.1.1696008366821;
        Fri, 29 Sep 2023 10:26:06 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:26:06 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 22/27] staging: iio: resolver: ad2s1210: convert LOS threshold to event attr
Date: Fri, 29 Sep 2023 12:23:27 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-22-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

The AD2S1210 has a programmable threshold for the loss of signal (LOS)
fault. This fault is triggered when either the sine or cosine input
falls below the threshold voltage.

This patch converts the custom device LOS threshold attribute to an
event falling edge threshold attribute on a new monitor signal channel.
The monitor signal is an internal signal that combines the amplitudes
of the sine and cosine inputs as well as the current angle and position
output. This signal is used to detect faults in the input signals.

The attribute now uses millivolts instead of the raw register value in
accordance with the IIO ABI.

Emitting the event will be implemented in a later patch.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes: This is a new patch in v3

 drivers/staging/iio/resolver/ad2s1210.c | 75 +++++++++++++++++++++++++++++++--
 1 file changed, 71 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 5cc8106800d6..7abbc184c351 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -66,6 +66,11 @@
 #define PHASE_360_DEG_TO_RAD_INT 6
 #define PHASE_360_DEG_TO_RAD_MICRO 283185
 
+/* Threshold voltage registers have 1 LSB == 38 mV */
+#define THRESHOLD_MILLIVOLT_PER_LSB 38
+/* max voltage for threshold registers is 0x7F * 38 mV */
+#define THRESHOLD_RANGE_STR "[0 38 4826]"
+
 enum ad2s1210_mode {
 	MOD_POS = 0b00,
 	MOD_VEL = 0b01,
@@ -448,6 +453,38 @@ static const int ad2s1210_lot_threshold_urad_per_lsb[] = {
 	1237, /* 16-bit: same as 14-bit */
 };
 
+static int ad2s1210_get_voltage_threshold(struct ad2s1210_state *st,
+					  unsigned int reg, int *val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_read(st->regmap, reg, &reg_val);
+	mutex_unlock(&st->lock);
+
+	if (ret < 0)
+		return ret;
+
+	*val = reg_val * THRESHOLD_MILLIVOLT_PER_LSB;
+	return IIO_VAL_INT;
+}
+
+static int ad2s1210_set_voltage_threshold(struct ad2s1210_state *st,
+					  unsigned int reg, int val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	reg_val = val / THRESHOLD_MILLIVOLT_PER_LSB;
+
+	mutex_lock(&st->lock);
+	ret = regmap_write(st->regmap, reg, reg_val);
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static int ad2s1210_get_lot_high_threshold(struct ad2s1210_state *st,
 					   int *val, int *val2)
 {
@@ -706,9 +743,6 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 static IIO_DEVICE_ATTR(fault, 0644,
 		       ad2s1210_show_fault, ad2s1210_clear_fault, 0);
 
-static IIO_DEVICE_ATTR(los_thrd, 0644,
-		       ad2s1210_show_reg, ad2s1210_store_reg,
-		       AD2S1210_REG_LOS_THRD);
 static IIO_DEVICE_ATTR(dos_ovr_thrd, 0644,
 		       ad2s1210_show_reg, ad2s1210_store_reg,
 		       AD2S1210_REG_DOS_OVR_THRD);
@@ -745,6 +779,16 @@ static const struct iio_event_spec ad2s1210_phase_event_spec[] = {
 	},
 };
 
+static const struct iio_event_spec ad2s1210_monitor_signal_event_spec[] = {
+	{
+		/* Sine/cosine below LOS threshold fault. */
+		.type = IIO_EV_TYPE_THRESH,
+		.dir = IIO_EV_DIR_FALLING,
+		/* Loss of signal threshold. */
+		.mask_separate = BIT(IIO_EV_INFO_VALUE),
+	},
+};
+
 static const struct iio_chan_spec ad2s1210_channels[] = {
 	{
 		.type = IIO_ANGL,
@@ -803,12 +847,19 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 		.scan_index = -1,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_FREQUENCY),
 		.info_mask_separate_available = BIT(IIO_CHAN_INFO_FREQUENCY),
+	}, {
+		/* monitor signal */
+		.type = IIO_ALTVOLTAGE,
+		.indexed = 1,
+		.channel = 0,
+		.scan_index = -1,
+		.event_spec = ad2s1210_monitor_signal_event_spec,
+		.num_event_specs = ARRAY_SIZE(ad2s1210_monitor_signal_event_spec),
 	},
 };
 
 static struct attribute *ad2s1210_attributes[] = {
 	&iio_dev_attr_fault.dev_attr.attr,
-	&iio_dev_attr_los_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_ovr_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_mis_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_rst_max_thrd.dev_attr.attr,
@@ -847,11 +898,13 @@ IIO_CONST_ATTR(in_phase0_mag_value_available,
 	       __stringify(PHASE_44_DEG_TO_RAD_MICRO) " "
 	       __stringify(PHASE_360_DEG_TO_RAD_INT) "."
 	       __stringify(PHASE_360_DEG_TO_RAD_MICRO));
+IIO_CONST_ATTR(in_altvoltage0_thresh_falling_value_available, THRESHOLD_RANGE_STR);
 IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_value_available, 0);
 IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_hysteresis_available, 0);
 
 static struct attribute *ad2s1210_event_attributes[] = {
 	&iio_const_attr_in_phase0_mag_value_available.dev_attr.attr,
+	&iio_const_attr_in_altvoltage0_thresh_falling_value_available.dev_attr.attr,
 	&iio_dev_attr_in_angl1_thresh_rising_value_available.dev_attr.attr,
 	&iio_dev_attr_in_angl1_thresh_rising_hysteresis_available.dev_attr.attr,
 	NULL,
@@ -904,6 +957,13 @@ static int ad2s1210_read_event_value(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_ALTVOLTAGE:
+		if (chan->output)
+			return -EINVAL;
+		if (type == IIO_EV_TYPE_THRESH && dir == IIO_EV_DIR_FALLING)
+			return ad2s1210_get_voltage_threshold(st,
+						AD2S1210_REG_LOS_THRD, val);
+		return -EINVAL;
 	case IIO_PHASE:
 		return ad2s1210_get_phase_lock_range(st, val, val2);
 	default:
@@ -930,6 +990,13 @@ static int ad2s1210_write_event_value(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_ALTVOLTAGE:
+		if (chan->output)
+			return -EINVAL;
+		if (type == IIO_EV_TYPE_THRESH && dir == IIO_EV_DIR_FALLING)
+			return ad2s1210_set_voltage_threshold(st,
+						AD2S1210_REG_LOS_THRD, val);
+		return -EINVAL;
 	case IIO_PHASE:
 		return ad2s1210_set_phase_lock_range(st, val, val2);
 	default:

-- 
2.42.0


