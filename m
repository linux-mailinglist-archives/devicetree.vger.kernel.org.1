Return-Path: <devicetree+bounces-85114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A70C892EF78
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:16:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C84DB21F9C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 19:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DD816EC13;
	Thu, 11 Jul 2024 19:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JmmgWgmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A658116EB77
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 19:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720725361; cv=none; b=MgcI82NfKfNf/vSek6I5DlikXq/AH1loIGnka3Vs2omIPMzAC9MF2+vupU62EQVol1RO5+d5TNqgj6zGB0hc4JuSBTBlV7HhNuFE7Y/cDs/BpOhKykdugN8qwqQhqZeD/h2qfJ8uA3e/ucVaMovhK7Ixcq9rOrc2NOyXh1GWO4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720725361; c=relaxed/simple;
	bh=rfl4NqLSWlS05DBQ/b/yyrEHhOHNJuLHuF0KFUBQ8WQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A217vcOhlWtJYKGZIO+V1imAoCSgpJndNn2aN4IWVfgDtQin+Dda4+HSWJGKUl0Ac/GAkaB3jANVhCN5/oliXcYTi8U3B27ewAnL/AWGAPL6YJc75jQpaiGP7YKwdG2kKqftxnD+k6fMC5yD3yvzcQSUjpdyKqNgnkuShl3SO+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JmmgWgmd; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-25982aa59efso541099fac.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720725357; x=1721330157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQsqhGLGVhBM8gUHS+cpX5FO8rzqQp9edFEv9d41aaM=;
        b=JmmgWgmdmS0xJrmZvb2FgnJj5GF4iYM830PTlPlE62YxEYFus5eG5kL2lF55Dp2JZi
         L1ceYnD9GcxutoEEjGcIRLd+uOJEkxR+PJ6cUtYAqFuafASFt88Cbk6iznfetJfuq5Y5
         SagQug/pT7aw9myDa9XT8phPnh9cfNpHzj7jAqLbIvp9/L7jwUxccv/VcRhmpte3iooR
         O6OUI9cfN+9XgmZBACHv+RZP9LuDvvZ76XG4YlHlmcLCB9Ptt9SyavRlr7Zb281jMycq
         4gdtzNmIGn6MAfjJ181wnfVh8ZBb0/0t1mZ17xIxxLktRJazb9C7U24d0y+BVOL9CSqb
         qdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720725357; x=1721330157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQsqhGLGVhBM8gUHS+cpX5FO8rzqQp9edFEv9d41aaM=;
        b=QllYeUd1J7d6HiYzfMhnaA9YK4pd+0bbjPcjn+Lv6U5KAmgBf9L7JUDoIlYRbeoEHM
         dXWfd4qVnbrM1ALW6KgFrulqrDQO7SpwaWI2G75YI7hgz07MYLDqH82E5KaBDHA7btKy
         5S342XH0J5u4zOXH+JUZE7bmiGk9g7UKX9PKFTjcS/UQprk82kVRcnTmv3l3mFKO0aaI
         hc5hbj02FeyHM+pUCGHF6K8OHHcOr5zb4eiIBZ1pPOgCqQKtBgF8muSsuQjg8XfymIkF
         dnZQbYcS+Y8GkJv0rGESKjNoZHrG/pLBjhvtwtAGTn/2lLSmpbgVxcSMqpgGi5+XDH50
         GTaA==
X-Forwarded-Encrypted: i=1; AJvYcCWyZytG+U9P8Ae921z+Vg0ACkDuzw22L0wpECmYUa3i49HsmApdddmjV/yixf4pbQJtVsLURPbau9BcjEcbm7NxvCWHtQD4h21UJw==
X-Gm-Message-State: AOJu0YxN0XJidM6mOlU6zzn+nq+o2sFXWjRI0C6cAIzmWi6HyFJfmHBP
	o9nr+/DbfNa6HD3s2cnS+c11XeGWL2Gy+xxSzhs27jqEtVC7vWNqm6lmi2NevEc=
X-Google-Smtp-Source: AGHT+IG0klzgerAO/xrKkUieBiUkvbWh4y2QvKVH/NtvFh0NkVz3/6q0epMkr/bBMKGH1LwyLmJt7g==
X-Received: by 2002:a05:6870:6587:b0:25e:1ced:744 with SMTP id 586e51a60fabf-25eaebc7d95mr8337902fac.47.1720725357602;
        Thu, 11 Jul 2024 12:15:57 -0700 (PDT)
Received: from localhost.localdomain (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25eaa083bbcsm1826670fac.26.2024.07.11.12.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 12:15:57 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH v4 3/3] Documentation: iio: Document ad4695 driver
Date: Thu, 11 Jul 2024 14:15:43 -0500
Message-ID: <20240711-iio-adc-ad4695-v4-3-c31621113b57@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240711-iio-adc-ad4695-v4-0-c31621113b57@baylibre.com>
References: <20240711-iio-adc-ad4695-v4-0-c31621113b57@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.14.0
Content-Transfer-Encoding: 8bit

The Analog Devices Inc. AD4695 (and similar chips) are complex ADCs that
will benefit from a detailed driver documentation.

This documents the current features supported by the driver.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v4 changes: none

v3 changes:
* Rework DT examples for DT bindings changes

v2 changes:
* Rework DT examples for DT bindings changes
* Fix wrong MAINTAINERS update
---
 Documentation/iio/ad4695.rst | 155 +++++++++++++++++++++++++++++++++++++++++++
 Documentation/iio/index.rst  |   1 +
 MAINTAINERS                  |   1 +
 3 files changed, 157 insertions(+)

diff --git a/Documentation/iio/ad4695.rst b/Documentation/iio/ad4695.rst
new file mode 100644
index 000000000000..a33e573d61d6
--- /dev/null
+++ b/Documentation/iio/ad4695.rst
@@ -0,0 +1,155 @@
+.. SPDX-License-Identifier: GPL-2.0-only
+
+=============
+AD4695 driver
+=============
+
+ADC driver for Analog Devices Inc. AD4695 and similar devices. The module name
+is ``ad4695``.
+
+
+Supported devices
+=================
+
+The following chips are supported by this driver:
+
+* `AD4695 <https://www.analog.com/AD4695>`_
+* `AD4696 <https://www.analog.com/AD4696>`_
+* `AD4697 <https://www.analog.com/AD4697>`_
+* `AD4698 <https://www.analog.com/AD4698>`_
+
+
+Supported features
+==================
+
+SPI wiring modes
+----------------
+
+The driver currently supports the following SPI wiring configuration:
+
+4-wire mode
+^^^^^^^^^^^
+
+In this mode, CNV and CS are tied together and there is a single SDO line.
+
+.. code-block::
+
+    +-------------+         +-------------+
+    |          CS |<-+------| CS          |
+    |         CNV |<-+      |             |
+    |     ADC     |         |     HOST    |
+    |             |         |             |
+    |         SDI |<--------| SDO         |
+    |         SDO |-------->| SDI         |
+    |        SCLK |<--------| SCLK        |
+    +-------------+         +-------------+
+
+To use this mode, in the device tree, omit the ``cnv-gpios`` and
+``spi-rx-bus-width`` properties.
+
+Channel configuration
+---------------------
+
+Since the chip supports multiple ways to configure each channel, this must be
+described in the device tree based on what is actually wired up to the inputs.
+
+There are three typical configurations:
+
+An ``INx`` pin is used as the positive input with the ``REFGND``, ``COM`` or
+the next ``INx`` pin as the negative input.
+
+Pairing with REFGND
+^^^^^^^^^^^^^^^^^^^
+
+Each ``INx`` pin can be used as a pseudo-differential input in conjunction with
+the ``REFGND`` pin. The device tree will look like this:
+
+.. code-block::
+
+    channel@0 {
+        reg = <0>; /* IN0 */
+    };
+
+If no other channel properties are needed (e.g. ``adi,no-high-z``), the channel
+node can be omitted entirely.
+
+This will appear on the IIO bus as the ``voltage0`` channel. The processed value
+(*raw × scale*) will be the voltage present on the ``IN0`` pin relative to
+``REFGND``. (Offset is always 0 when pairing with ``REFGND``.)
+
+Pairing with COM
+^^^^^^^^^^^^^^^^
+
+Each ``INx`` pin can be used as a pseudo-differential input in conjunction with
+the ``COM`` pin. The device tree will look like this:
+
+.. code-block::
+
+    com-supply = <&vref_div_2>;
+
+    channel@1 {
+        reg = <1>; /* IN1 */
+        common-mode-channel = <AD4695_COMMON_MODE_COM>;
+        bipolar;
+    };
+
+This will appear on the IIO bus as the ``voltage1`` channel. The processed value
+(*(raw + offset) × scale*) will be the voltage measured on the ``IN1`` pin
+relative to ``REFGND``. (The offset is determined by the ``com-supply`` voltage.)
+
+The macro comes from:
+
+.. code-block::
+
+    #include <dt-bindings/iio/adi,ad4695.h>
+
+Pairing two INx pins
+^^^^^^^^^^^^^^^^^^^^
+
+An even-numbered ``INx`` pin and the following odd-numbered ``INx`` pin can be
+used as a pseudo-differential input. The device tree for using ``IN2`` as the
+positive input and ``IN3`` as the negative input will look like this:
+
+.. code-block::
+
+    in3-supply = <&vref_div_2>;
+
+    channel@2 {
+        reg = <2>; /* IN2 */
+        common-mode-channel = <3>; /* IN3 */
+        bipolar;
+    };
+
+This will appear on the IIO bus as the ``voltage2`` channel. The processed value
+(*(raw + offset) × scale*) will be the voltage measured on the ``IN1`` pin
+relative to ``REFGND``. (Offset is determined by the ``in3-supply`` voltage.)
+
+VCC supply
+----------
+
+The chip supports being powered by an external LDO via the ``VCC`` input or an
+internal LDO via the ``LDO_IN`` input. The driver looks at the device tree to
+determine which is being used. If ``ldo-supply`` is present, then the internal
+LDO is used. If ``vcc-supply`` is present, then the external LDO is used and
+the internal LDO is disabled.
+
+Reference voltage
+-----------------
+
+The chip supports an external reference voltage via the ``REF`` input or an
+internal buffered reference voltage via the ``REFIN`` input. The driver looks
+at the device tree to determine which is being used. If ``ref-supply`` is
+present, then the external reference voltage is used and the internal buffer is
+disabled. If ``refin-supply`` is present, then the internal buffered reference
+voltage is used.
+
+Unimplemented features
+----------------------
+
+- Additional wiring modes
+- Buffered reads
+- Threshold events
+- Oversampling
+- Gain/offset calibration
+- GPIO support
+- CRC support
diff --git a/Documentation/iio/index.rst b/Documentation/iio/index.rst
index 9cb4c50cb20d..a12520b2138e 100644
--- a/Documentation/iio/index.rst
+++ b/Documentation/iio/index.rst
@@ -18,6 +18,7 @@ Industrial I/O Kernel Drivers
 .. toctree::
    :maxdepth: 1
 
+   ad4695
    ad7944
    adis16475
    adis16480
diff --git a/MAINTAINERS b/MAINTAINERS
index 1e97a4b929c2..18846fe48b91 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1216,6 +1216,7 @@ L:	linux-iio@vger.kernel.org
 S:	Supported
 W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
+F:	Documentation/iio/ad4695.rst
 F:	drivers/iio/adc/ad4695.c
 F:	include/dt-bindings/iio/adi,ad4695.h
 

-- 
2.43.0


