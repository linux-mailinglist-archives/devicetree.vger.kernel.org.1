Return-Path: <devicetree+bounces-100154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24C96C745
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 21:14:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E939D287428
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 19:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E191E5033;
	Wed,  4 Sep 2024 19:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F/OCdHX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF511E4937
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 19:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725477269; cv=none; b=OhK1J+FecdceoQFKc81JdxqP0aiy+vA6YSzEkey1aihbeFOsxm0uk3hKVrOpcy8JPZuxZk0fc2QC47k8+85ihh4JBEjdCqNxQRWTLBm+sUwOXZV/BwtZYlErA7ByQqhLC6kP/rmGrNYuctyU17tyE0PqB2sFf+D6IJwCX63RKQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725477269; c=relaxed/simple;
	bh=CGZ9TfH82xYtf2SZDvwZlx08DxnCJf+sySQ8GbSU7/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GXtb2u+sLioM/TnIVPmApToF+ZQ2EHflEYeITPyG7B3oQo2cZDUxifSVCgJhbZoo0bdJ40n/TYRBRgm1AuBtHRh1W5qVGEu2Fen4WKOiEhNjoyH+GFfNg/6U/HJcgfedFq+J2pj6xSqXWn/EBe2uvJcWggqK80ItiKDaCAvpKtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F/OCdHX5; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7a80aeabb82so417835085a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 12:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725477266; x=1726082066; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zSvZYoHybDPnZClgnrcppHDQUUEDcvsxsQCuR8Zqm6s=;
        b=F/OCdHX5/UUXjJwNOrsfcWrVI1cyxEHpfIRnAN8GZFhZ+98/BxGg8oKyByUvMCpAYM
         s/GR68fsxdQUlQoCLg/iW0/a7cYjU/V/qPlREfTTe+R3rFKKwiykM50G+WGhzeaK1Fqn
         bG801zoMZO7rd4v8B9LA17hIJeo2d0I1KQkq7kkklKcw9Tq+hb5r2Fsx8NTYP7QYQTsM
         FXPrSO8qGcbv7GLtkSfIJksQIRCIcMb78YP6IVm7h564SQlYFuwVkDZFceZR5y+XbttC
         eKfIFV04vFmUOZyeTj1gMiwBOSAYabc1lIc78m8XizJGRQmzeWnVk10GCOGJdXwooOQ1
         EihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725477266; x=1726082066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zSvZYoHybDPnZClgnrcppHDQUUEDcvsxsQCuR8Zqm6s=;
        b=D3uKRUwUkf7kmc0MLWfqDJnhPLAWn62Sv/CwJnQngDwsevI0MhsSzOK3LM3OSs4M6k
         WrA+AcQxOUUyid4AFCHZ7mssfS7WHkcJMCWq9TmmiURasLlgI94OMYQO/gBsLNuK/WDL
         JQi4fOuzMS8waLgnT2ucgxE/ebtMpD1nibU4SsdExWgMQncKpfdKyULthHUIe9iRxvM7
         nuk0cCk2BkW6yyo2dYjF5YjfNB5oQSObFEN1pSJl0QBQqZyvsaKJIfUDJEq1J/9QWaJU
         NgaVX8j9aBHmjqlmiwA0MmCV9c0WjKZwP3JnsR28lzOOtTVUoA3un4qmHC5YWMDwZgdY
         mmRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhuU7g4gPGVTfrrt/7gv7QAlaypcULS2zEZEeEIFZrpxcXKbH2qtPVahFTg+caaaZA0ekoKjs/+Jg0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9TjHvRxuvu5u54INZOqh9YvF+1cLd1hJ+YuWwxrkE1JsC0tfK
	QH18+PkaZ1NKd+VexO4SEIWIwJjQYSNQss4BR7psoM1McBNo8/Xy8jRd5vnobAQ=
X-Google-Smtp-Source: AGHT+IHfNAVRkX0BXfCeeLgwXDETbxHr52dcf84Hv2nlOAa9aerS4GX8z0C7xywe2K8y04FTipGSaQ==
X-Received: by 2002:a05:620a:1907:b0:7a1:c431:3bc2 with SMTP id af79cd13be357-7a9788c4dc8mr1055319185a.44.1725477265888;
        Wed, 04 Sep 2024 12:14:25 -0700 (PDT)
Received: from [127.0.1.1] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a98f026caesm8861085a.135.2024.09.04.12.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 12:14:25 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
Date: Wed, 04 Sep 2024 15:14:20 -0400
Subject: [PATCH v4 3/3] docs: iio: new docs for ad7625 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240904-ad7625_r1-v4-3-78bc7dfb2b35@baylibre.com>
References: <20240904-ad7625_r1-v4-0-78bc7dfb2b35@baylibre.com>
In-Reply-To: <20240904-ad7625_r1-v4-0-78bc7dfb2b35@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 David Lechner <dlechner@baylibre.com>, 
 Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Trevor Gamblin <tgamblin@baylibre.com>
X-Mailer: b4 0.14.1

Add documentation for the AD7625/AD7626/AD7960/AD7961 ADCs.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 Documentation/iio/ad7625.rst | 91 ++++++++++++++++++++++++++++++++++++++++++++
 MAINTAINERS                  |  1 +
 2 files changed, 92 insertions(+)

diff --git a/Documentation/iio/ad7625.rst b/Documentation/iio/ad7625.rst
new file mode 100644
index 000000000000..61761e3b75c3
--- /dev/null
+++ b/Documentation/iio/ad7625.rst
@@ -0,0 +1,91 @@
+.. SPDX-License-Identifier: GPL-2.0-only
+
+====================
+AD7625 driver
+====================
+
+ADC driver for Analog Devices Inc. AD7625, AD7626, AD7960, and AD7961
+devices. The module name is ``ad7625``.
+
+Supported devices
+=================
+
+The following chips are supported by this driver:
+
+* `AD7625 <https://www.analog.com/AD7625>`_
+* `AD7626 <https://www.analog.com/AD7626>`_
+* `AD7960 <https://www.analog.com/AD7960>`_
+* `AD7961 <https://www.analog.com/AD7961>`_
+
+The driver requires use of the Pulsar LVDS HDL project:
+
+* `Pulsar LVDS HDL <http://analogdevicesinc.github.io/hdl/projects/pulsar_lvds/index.html>`_
+
+To trigger conversions and enable subsequent data transfer, the devices
+require coupled PWM signals with a phase offset.
+
+Supported features
+==================
+
+Conversion control modes
+------------------------
+
+The driver currently supports one of two possible LVDS conversion control methods.
+
+Echoed-Clock interface mode
+^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+.. code-block::
+
+                                                +----------------+
+                     +xxxxxxxxxxxxxxxxxxxxxxxxxx| CNV            |
+                     X                          |                |
+                     v                          |    HOST        |
+          +----------------------------+        |                |
+          |      CNV+/CNV-   DCO+/DCO- |xxxxxxx>| CLK_IN         |
+          |                            |        |                |
+          |                            |        |                |
+          |       AD7625         D+/D- |xxxxxxx>| DATA_IN        |
+          |                            |        |                |
+          |                            |        |                |
+          |                  CLK+/CLK- |<xxxxxxx| CLK & CLK_GATE |
+          +----------------------------+        |                |
+                                                +----------------+
+
+Reference voltage
+-----------------
+
+Three possible reference voltage sources are supported:
+
+- Internal reference (only available on AD7625 and AD7626)
+- External reference and internal buffer
+- External reference
+
+The source is determined by the device tree. If ``ref-supply`` is present, then
+the external reference is used. If ``refin-supply`` is present, then the internal
+buffer is used. If neither is present, then the internal reference is used.
+
+Unimplemented features
+----------------------
+
+- Self-clocked mode
+
+
+Device attributes
+=================
+
+The AD762x is a fully-differential ADC and has the following attributes:
+
++---------------------------------------+--------------------------------------------------------------+
+| Attribute                             | Description                                                  |
++=======================================+==============================================================+
+| ``scale``                             | Scale factor to convert raw value from buffered reads to mV. |
++---------------------------------------+--------------------------------------------------------------+
+
+
+Device buffers
+==============
+
+This driver supports IIO triggered buffers.
+
+See :doc:`iio_devbuf` for more information.
diff --git a/MAINTAINERS b/MAINTAINERS
index 7f77a1c1110b..cd5a18bf5e3a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1279,6 +1279,7 @@ S:	Supported
 W:	https://ez.analog.com/linux-software-drivers
 W:	http://analogdevicesinc.github.io/hdl/projects/pulsar_lvds/index.html
 F:	Documentation/devicetree/bindings/iio/adc/adi,ad7625.yaml
+F:	Documentation/iio/ad7625.rst
 F:	drivers/iio/adc/ad7625.c
 
 ANALOG DEVICES INC AD7768-1 DRIVER

-- 
2.39.2


