Return-Path: <devicetree+bounces-114915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4DB9AD61A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 23:01:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D5082829DC
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0FF200BB8;
	Wed, 23 Oct 2024 20:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wiA5mGCC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D791F9424
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 20:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729717187; cv=none; b=YaMjvw8KccEIBaZoLfsdUV6wcitu1KQvrfbo6G8LQeQwmi6TXA4xgboe01J0xsOLakyQC0MFBSyjTcmhe2CfT4+dnCT6+6RBkktXAlwjJ7VS4TMCd/j7iQywL3vlYszCLS1dxQEZEVuCVIf7FI1sSOM4wcHF3sN3ZZATHouo8+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729717187; c=relaxed/simple;
	bh=8WC+VN7A55DeabbVSHIKBLCpzt57GwTTXx9MLZvCANs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iOhfo2w6GlMDT9P+2WCsARbaoMVZCOP7tEWsGcSLmRBhTQdO7oQje2FjVTF5HIfv+19ZgiA6+kzTwD6Wbq43uQYZZV1lZcfUDN9yoj70FIC/aqobbefvjvRz518qWV/vMIW3H351kQyiAyClMos33EGniQbdfEM2yOS3tbWonAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wiA5mGCC; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7183a3f3beaso157853a34.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 13:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729717185; x=1730321985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dziSJ5L8e9Gfyu+zY9UJSJKgJ8ld7SkYEjpA8rh44A8=;
        b=wiA5mGCC/pBQoSkumLTcsiiC1nDjp7voUPWN8bH7oSxGXPgM+1MmbZpwSv/cq5Vona
         NmIkKY1sNKLlHkT6S7kGcE5j8ug6wl6rdyW1Ml/zXLDxfmJ1x3EfTjXoXJEmQfqRTZk7
         Vnca/Qqy7x1ZsXX6PvfmYAEHri3RUy47oTGvGMMVgk7j9Gyxp3jt01A0vhPcYo6uRFiF
         j5cOjT/5ahj1XMuGXyRc+WN45sgefweBOOFtg+f0741mti2dLGzCwdSoYVQmeIbMYIJz
         pE7U+jxwcQW+Rd4VaZzQh1dpTDcapERLUOnPSUqpuw/fsx+TO+uxcosJyVh8XjHx4xji
         VGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729717185; x=1730321985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dziSJ5L8e9Gfyu+zY9UJSJKgJ8ld7SkYEjpA8rh44A8=;
        b=jyrGo6TWHhMXZOxjPV4KtJqBvdvAehpSrKO554DMOi2C9zF0u47SbdbjXOYe6TUvlP
         sIQ2Xa6sTMVUO1x4lwqX9dn5APWmCVWWWNvlPH9oiaDnB/7dF3RPIwC6TNcMs4rIiehi
         3QSoP6u4/vyt+d71CCbAp/nH8nxDIKYaoj5bmyciHGlw0P9K42rruXXZ3algpiLEWDzP
         /MDiaHETPsVqtw0xM8zsnLflahskr9jHV313s9u7/nX0xj9v420ic4fZMMzG7Pt9hzIE
         P1HUWiyZHdCGZZj1UrRIPONO+bsfu46iDYDtas1sGCtbNM9qHiHyKt68vXOcj4uUeGnQ
         OceQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbhlFO61zhLFFnmnwokD6pi0zS/QDsrkTRYnTO+A/Zw7iVeQOGkXNigF9Ay/6xC0CphdtP/iC23+Zi@vger.kernel.org
X-Gm-Message-State: AOJu0YzAZOU/py1/ho1BDddaMxZ5frjwRVvLR6mNmbj4zF5qqs2WPdPu
	l873cZN4yLfQmUkKxfjDyuOM4SjM6MwfBz7ocgDTHgFvVP3Ql8/j5UF2019XUw4=
X-Google-Smtp-Source: AGHT+IGx5OB1bCOiAcDzHn/B3rUnWv3xs/ZYAHkPOIih0OURil4uKA5bFpwt6OnHkytn90KhkCzQmw==
X-Received: by 2002:a05:6830:6489:b0:718:196c:c811 with SMTP id 46e09a7af769-7184b350ea0mr3741387a34.31.1729717185084;
        Wed, 23 Oct 2024 13:59:45 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec02c2c157sm52730eaf.44.2024.10.23.13.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 13:59:44 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 23 Oct 2024 15:59:17 -0500
Subject: [PATCH RFC v4 10/15] iio: buffer-dmaengine: document
 iio_dmaengine_buffer_setup_ext
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-dlech-mainline-spi-engine-offload-2-v4-10-f8125b99f5a1@baylibre.com>
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
In-Reply-To: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

The iio_dmaengine_buffer_setup_ext() function is public and should be
documented. Also, while touching this, fix the description of @dev in
related functions. @dev does not strictly have to be the parent of the
IIO device. It is only passed to dma_request_chan() so strictly
speaking, it can be any device that is a valid DMA channel consumer.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v4 changes:
* This patch is new in v4.

Jonathan, I think this patch stands on its own if you want to take it
earlier than the rest of this series.
---
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 19af1caf14cd..054af21dfa65 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -206,7 +206,7 @@ static const struct iio_dev_attr *iio_dmaengine_buffer_attrs[] = {
 
 /**
  * iio_dmaengine_buffer_alloc() - Allocate new buffer which uses DMAengine
- * @dev: Parent device for the buffer
+ * @dev: DMA channel consumer device
  * @channel: DMA channel name, typically "rx".
  *
  * This allocates a new IIO buffer which internally uses the DMAengine framework
@@ -288,6 +288,21 @@ void iio_dmaengine_buffer_free(struct iio_buffer *buffer)
 }
 EXPORT_SYMBOL_NS_GPL(iio_dmaengine_buffer_free, IIO_DMAENGINE_BUFFER);
 
+/**
+ * iio_dmaengine_buffer_setup_ext() - Setup a DMA buffer for an IIO device
+ * @dev: DMA channel consumer device
+ * @indio_dev: IIO device to which to attach this buffer.
+ * @channel: DMA channel name, typically "rx".
+ * @dir: Direction of buffer (in or out)
+ *
+ * This allocates a new IIO buffer with devm_iio_dmaengine_buffer_alloc()
+ * and attaches it to an IIO device with iio_device_attach_buffer().
+ * It also appends the INDIO_BUFFER_HARDWARE mode to the supported modes of the
+ * IIO device.
+ *
+ * Once done using the buffer iio_dmaengine_buffer_free() should be used to
+ * release it.
+ */
 struct iio_buffer *iio_dmaengine_buffer_setup_ext(struct device *dev,
 						  struct iio_dev *indio_dev,
 						  const char *channel,
@@ -321,7 +336,7 @@ static void __devm_iio_dmaengine_buffer_free(void *buffer)
 
 /**
  * devm_iio_dmaengine_buffer_setup_ext() - Setup a DMA buffer for an IIO device
- * @dev: Parent device for the buffer
+ * @dev: Device for devm ownership and DMA channel consumer device
  * @indio_dev: IIO device to which to attach this buffer.
  * @channel: DMA channel name, typically "rx".
  * @dir: Direction of buffer (in or out)

-- 
2.43.0


