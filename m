Return-Path: <devicetree+bounces-2145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6437A9BBA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:03:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C3A7B21232
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1530948EA8;
	Thu, 21 Sep 2023 17:50:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE5A19BCC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:50:55 +0000 (UTC)
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 988A954922
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:50:36 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-9adb9fa7200so272070266b.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695318634; x=1695923434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dOWL8UFN0vGXrTIparX6s/KCVRR+pmZ6D/qH1lVsdWQ=;
        b=NVhNZEzecMGU+ylSTI5etqYG5qBG842oAqI9Vl+hJJfoWxX9Yfypea1Q53WercviN9
         yqusBVE3e1dva+ft124bECB7/P+TfYh/Ogn1JNkD/MvvdkfXChqpjY3DCASwX/kXJlqb
         3I7qNHdJANYsCCxwFxpSafMTmoiGvXqn4NCaZBukgTyyGLYezKOfwtcGQsXGZao/lyas
         +B4asXpYg/RdJmbtFRSZZ6q+5PjyA27Fic59Ldl+ezneRGQ+fk91iJLJZNRycAvGTuu0
         1i+VQs12TuMg/XkYxjA+0bPuCxN6ycx105j0H+s7DMK0LYzH5WSI8vmIjB2R1Pvl+0OS
         RkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318634; x=1695923434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dOWL8UFN0vGXrTIparX6s/KCVRR+pmZ6D/qH1lVsdWQ=;
        b=I6dQQnIHeA/gId+FjG/8xmnfnN1ZIjDT6fGXgsI74YPyiXxbGgIRuzOyh4kgkwyvEk
         ROdh7DwPmsZw6v8dUL/e0gXiqY8N6CTTT+zYpbVE8V7e7M3eRYfUCz3j3xTjEX1klJur
         4PtnuWfug4cuSBX6vZr5Cy3YvABPNdkrT8cknUKW//xtm3rHuurKCK/3MELf5zZHjr+2
         C9+Zwoz+7Ox74s1sF9jga/3jCJMwhDnaBosTwjaTECdUDFgsY8f7MOS4KrC52RpgFGEf
         zu5q7OkjogCAjjzpX0r0CCpFUyl8IYkXbk/wjL9sL2YpK3lg7JSl9wuJVtOs7dA7mCz1
         iIeQ==
X-Gm-Message-State: AOJu0Yw83pS9DIn6IOYVWp4rnsw1Gr5NgsVakiGYPLBScyA0G5aO5K/H
	IlRye1qH4I2xWiuzGHc2DKlNWg214PWFqnl6rJIH2uQKKLM=
X-Google-Smtp-Source: AGHT+IFzcBipIczu0UM4gStcHPA5qOTjVF5hSW6xMiN01FgCN7Y6ZAzNQO6cw/yOKmnG0hURQ665bQ==
X-Received: by 2002:a05:600c:3789:b0:3fb:c075:b308 with SMTP id o9-20020a05600c378900b003fbc075b308mr4598413wmr.12.1695307454403;
        Thu, 21 Sep 2023 07:44:14 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:14 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 02/19] staging: iio: Documentation: document IIO resolver AD2S1210 sysfs attributes
Date: Thu, 21 Sep 2023 09:43:43 -0500
Message-Id: <20230921144400.62380-3-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921144400.62380-1-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds documentation for the device-specific sysfs attributes of the
iio/resolver/ad2s1210 driver.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 .../sysfs-bus-iio-resolver-ad2s1210           | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210

diff --git a/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210 b/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210
new file mode 100644
index 000000000000..32890c85168e
--- /dev/null
+++ b/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210
@@ -0,0 +1,109 @@
+What:		/sys/bus/iio/devices/iio:deviceX/dos_mis_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Degradation of Signal Mismatch
+		Threshold value. Writing sets the value. Valid values are 0 (0V)
+		to 127 (4.826V). To convert the value to volts, multiply by
+		0.038.
+
+What:		/sys/bus/iio/devices/iio:deviceX/dos_ovr_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Degradation of Signal Overrange
+		Threshold value. Writing sets the value. Valid values are 0 (0V)
+		to 127 (4.826V). To convert the value to volts, multiply by
+		0.038.
+
+What:		/sys/bus/iio/devices/iio:deviceX/dos_rst_max_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Degradation of Signal Reset Maximum
+		Threshold value. Writing sets the value. Valid values are 0 (0V)
+		to 127 (4.826V). To convert the value to volts, multiply by
+		0.038.
+
+What:		/sys/bus/iio/devices/iio:deviceX/dos_rst_min_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Degradation of Signal Reset Minimum
+		Threshold value. Writing sets the value. Valid values are 0 (0V)
+		to 127 (4.826V). To convert the value to volts, multiply by
+		0.038.
+
+What:		/sys/bus/iio/devices/iio:deviceX/fault
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns a hex value containing the fault bit flags.
+
+		Bit	Description
+		---	-----------
+		D7	Sine/cosine inputs clipped
+		D6	Sine/cosine inputs below LOS threshold
+		D5	Sine/cosine inputs exceed DOS overrange threshold
+		D4	Sine/cosine inputs exceed DOS mismatch threshold
+		D3	Tracking error exceeds LOT threshold
+		D2	Velocity exceeds maximum tracking rate
+		D1	Phase error exceeds phase lock range
+		D0	Configuration parity error
+
+		Writing any value will clear any fault conditions.
+
+What:		/sys/bus/iio/devices/iio:deviceX/excitation_frequency
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Excitation Frequency in Hz. Writing
+		sets the Excitation Frequency and performs a software reset on
+		the device to apply the change. Valid values are 2000 (2kHz) to
+		20000 (20kHz).
+
+What:		/sys/bus/iio/devices/iio:deviceX/los_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Loss of Signal Reset Threshold
+		value. Writing sets the value. Valid values are 0 (0V) to
+		127 (4.826V). To convert the value to volts, multiply by 0.038.
+
+What:		/sys/bus/iio/devices/iio:deviceX/lot_high_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Loss of Position Tracking Detection
+		High Threshold value. Writing sets the value. Valid values are
+		0 (0 deg) to 127 (9/18/45 deg). The interpretation of the value
+		depends on the selected resolution. To convert the value to
+		degrees, multiply by 0.35 for 10-bit resolution, multiply by
+		0.14 for 12-bit resolution or multiply by 0.09 for 14 and 16-bit
+		resolution.
+
+What:		/sys/bus/iio/devices/iio:deviceX/lot_low_thrd
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Loss of Position Tracking Detection
+		Low Threshold value. Writing sets the value. Valid values are
+		0 (0 deg) to 127 (9/18/45 deg). The interpretation of the value
+		depends on the selected resolution. To convert the value to
+		degrees, multiply by 0.35 for 10-bit resolution, multiply by
+		0.14 for 12-bit resolution or multiply by 0.09 for 14 and 16-bit
+		resolution.
+
+What:		/sys/bus/iio/devices/iio:deviceX/phase_lock_range
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the current Phase lock range in degrees. Writing
+		sets the value in the configuration register.
+
+What:		/sys/bus/iio/devices/iio:deviceX/phase_lock_range_available
+KernelVersion:  6.7
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Reading returns the possible values for the phase_lock_range
+		attribute, namely 44 and 360.
-- 
2.34.1


