Return-Path: <devicetree+bounces-4741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4AA7B38C1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 11CB21C20B53
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE053658B4;
	Fri, 29 Sep 2023 17:26:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F9151B88
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:15 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 843BE1723
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:09 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-57b635e3fd9so6089677eaf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008369; x=1696613169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/pCkF6s/z1t5Ue29EtXGzP9/ybnd8/CP4rJlUtuFjv4=;
        b=MHQe7D0y2dXTm8feXVUrNLO/JSmKhdA+E4vHysDO9Oo80mYFzVe9rAexNv+qbEEjxV
         GJh45FIP0Ppl4ElgWmAXaPlOVMg7RMlQIeLMZUl06ixoyMBaSeTE6aQEgQNMXEAhCu7o
         Vq8tVupF5k8NmbiFYBRnbkz5DJX3xJ74VcQdfK/j35ch0ypoYeiToTJ64HiNojuxTLbp
         jMG1ad6e7oaHazPXomwgl++K2W6RzJ5jlGTriaMJPBm8tKvD0w9R8B1mWN4Fdwi5B1Z1
         /hT7cN06uaoHjonWkwTJQsTVyYoO0rLYRkqAEPElRi+j7AVxUWMG00br0ljHzchIjAPa
         XtPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008369; x=1696613169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/pCkF6s/z1t5Ue29EtXGzP9/ybnd8/CP4rJlUtuFjv4=;
        b=PvrlPJTut1Oxui+tRQJh4In+Kge6Jw39h8cPdc5sXNsiSb2FDtSdx7xg/5sqhHIfhW
         eEnsd7WHgOYJlK+GMnalJxD/y3MSjhJiLWOBVyHVHK06p/5KK02zHcIw3qaxE0OwLxNW
         7d4ij8rq2Tb4tqD586J543KxQ7GhJDbTAC3B6pC3fT0a5cVtfPWmiWraT9lTcHeeSM0t
         WAQF1hHrOJEJIQH4YLyF2HSB9hkg5hFSOfFLFf03QLAhyWSY+tadpeKd2nqkCGGAWlgg
         Rt3J856yTqLYgMCRS7MhaixO7jjKd8oRYFKACXvqMD7yPZ9aW07NQ5eQIJmZkEBCZHj1
         x32w==
X-Gm-Message-State: AOJu0YwzfFUXru9jzDlREdUzoNP39it71SC7/K5/75nhV3giHPN+at6z
	r3Q+orfu1rSXQG5NGY5E9jQ8Yw==
X-Google-Smtp-Source: AGHT+IHipuREXbkFczmit9VvG4Wc397pdD8A6tTva0q3Sf2PyH3Zb7ZgpWVPbxt6AV9XWMn3CDOYMw==
X-Received: by 2002:a4a:6219:0:b0:57b:86f5:701c with SMTP id x25-20020a4a6219000000b0057b86f5701cmr4881314ooc.4.1696008368636;
        Fri, 29 Sep 2023 10:26:08 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:26:08 -0700 (PDT)
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
Subject: [PATCH v3 24/27] staging: iio: resolver: ad2s1210: convert DOS mismatch threshold to event attr
Date: Fri, 29 Sep 2023 12:23:29 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-24-fa4364281745@baylibre.com>
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

The AD2S1210 has a programmable threshold for the degradation of signal
(DOS) mismatch fault. This fault is triggered when the difference in
voltage between the sine and cosine inputs exceeds the threshold. In
other words, when the magnitude of sine and cosine inputs are equal,
the AC component of the monitor signal is zero and when the magnitudes
of the sine and cosine inputs are not equal, the AC component of the
monitor signal is the difference between the sine and cosine inputs.
So the fault occurs when the magnitude of the AC component of the
monitor signal exceeds the DOS mismatch threshold voltage.

This patch converts the custom device DOS mismatch threshold attribute
to an event magnitude attribute on the monitor signal channel.

The attribute now uses millivolts instead of the raw register value in
accordance with the IIO ABI.

Emitting the event will be implemented in a later patch.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes: This is a new patch in v3

 drivers/staging/iio/resolver/ad2s1210.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 66def9f1dd1b..aa14edbe8a77 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -743,9 +743,6 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 static IIO_DEVICE_ATTR(fault, 0644,
 		       ad2s1210_show_fault, ad2s1210_clear_fault, 0);
 
-static IIO_DEVICE_ATTR(dos_mis_thrd, 0644,
-		       ad2s1210_show_reg, ad2s1210_store_reg,
-		       AD2S1210_REG_DOS_MIS_THRD);
 static IIO_DEVICE_ATTR(dos_rst_max_thrd, 0644,
 		       ad2s1210_show_reg, ad2s1210_store_reg,
 		       AD2S1210_REG_DOS_RST_MAX_THRD);
@@ -791,6 +788,12 @@ static const struct iio_event_spec ad2s1210_monitor_signal_event_spec[] = {
 		/* Degredation of signal overrange threshold. */
 		.mask_separate = BIT(IIO_EV_INFO_VALUE),
 	},
+	{
+		/* Sine/cosine DOS mismatch fault.*/
+		.type = IIO_EV_TYPE_MAG,
+		.dir = IIO_EV_DIR_NONE,
+		.mask_separate = BIT(IIO_EV_INFO_VALUE),
+	},
 };
 
 static const struct iio_chan_spec ad2s1210_channels[] = {
@@ -864,7 +867,6 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 
 static struct attribute *ad2s1210_attributes[] = {
 	&iio_dev_attr_fault.dev_attr.attr,
-	&iio_dev_attr_dos_mis_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_rst_max_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_rst_min_thrd.dev_attr.attr,
 	NULL,
@@ -903,6 +905,7 @@ IIO_CONST_ATTR(in_phase0_mag_value_available,
 	       __stringify(PHASE_360_DEG_TO_RAD_MICRO));
 IIO_CONST_ATTR(in_altvoltage0_thresh_falling_value_available, THRESHOLD_RANGE_STR);
 IIO_CONST_ATTR(in_altvoltage0_thresh_rising_value_available, THRESHOLD_RANGE_STR);
+IIO_CONST_ATTR(in_altvoltage0_mag_value_available, THRESHOLD_RANGE_STR);
 IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_value_available, 0);
 IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_hysteresis_available, 0);
 
@@ -910,6 +913,7 @@ static struct attribute *ad2s1210_event_attributes[] = {
 	&iio_const_attr_in_phase0_mag_value_available.dev_attr.attr,
 	&iio_const_attr_in_altvoltage0_thresh_falling_value_available.dev_attr.attr,
 	&iio_const_attr_in_altvoltage0_thresh_rising_value_available.dev_attr.attr,
+	&iio_const_attr_in_altvoltage0_mag_value_available.dev_attr.attr,
 	&iio_dev_attr_in_angl1_thresh_rising_value_available.dev_attr.attr,
 	&iio_dev_attr_in_angl1_thresh_rising_hysteresis_available.dev_attr.attr,
 	NULL,
@@ -971,6 +975,9 @@ static int ad2s1210_read_event_value(struct iio_dev *indio_dev,
 		if (type == IIO_EV_TYPE_THRESH && dir == IIO_EV_DIR_RISING)
 			return ad2s1210_get_voltage_threshold(st,
 						AD2S1210_REG_DOS_OVR_THRD, val);
+		if (type == IIO_EV_TYPE_MAG)
+			return ad2s1210_get_voltage_threshold(st,
+						AD2S1210_REG_DOS_MIS_THRD, val);
 		return -EINVAL;
 	case IIO_PHASE:
 		return ad2s1210_get_phase_lock_range(st, val, val2);
@@ -1007,6 +1014,9 @@ static int ad2s1210_write_event_value(struct iio_dev *indio_dev,
 		if (type == IIO_EV_TYPE_THRESH && dir == IIO_EV_DIR_RISING)
 			return ad2s1210_set_voltage_threshold(st,
 						AD2S1210_REG_DOS_OVR_THRD, val);
+		if (type == IIO_EV_TYPE_MAG)
+			return ad2s1210_set_voltage_threshold(st,
+						AD2S1210_REG_DOS_MIS_THRD, val);
 		return -EINVAL;
 	case IIO_PHASE:
 		return ad2s1210_set_phase_lock_range(st, val, val2);

-- 
2.42.0


