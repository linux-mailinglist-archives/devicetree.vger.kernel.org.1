Return-Path: <devicetree+bounces-87396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7BC93961C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D6F01F225A0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CDF4F1E2;
	Mon, 22 Jul 2024 22:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="H7PPIQfT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D4E481D3
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 22:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721685692; cv=none; b=hHQLb/D6Er/7RwEaa4oWJoPl2rI7XUee8cXHksSzojlSSRYoF+VhgiCB44G+1XdpUSQxIpLgaW0FIN3kfTd53yMrcsx1nziXjAVuKQdnHeBKVu94RQ7EZJmJaHCjqtOUrKV5JR6npUqD+pNPKtTjraVgj82sYcb6Yce3TQJCfZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721685692; c=relaxed/simple;
	bh=zGfSzq6+NZYNsIg6gm+v9kAPsniNOtWpWcNSLGE6Ezw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bOWeJQd2Qp3xz57rmfWmDacTmpKnegP/mvga+RKJu4vEqsiVdJnQwCFEg3rA/KRU0jDkkZ7UabYLZnv3UgCPF05t4ZiyLEyxScpMtqEqW2pbIqTHYEsbfkoGA8i4kw3U7qw3pLIJAGNGFqFcoujI4EJEZCKzcKXErVpv0Qeys4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=H7PPIQfT; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-25e3d8d9f70so2440103fac.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 15:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721685689; x=1722290489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxg0ajK3ioJYPGcpD9OfHJVUObaqfpkpD5oT3VXWIto=;
        b=H7PPIQfTitkOkqmZKNkmjKfCOyfCJ8fHHQGJGT+Q3BhDnDF6jtipHR5TCxdfjwViJT
         715ibDmjSOQ9bWMM5Wt/nYR3+8CQTqqW5MZsh3piJ8vpmKsdHo6CzbUBLSrrSpy4XO/P
         3ZlYyRIPPfsvQshROymiqFFkzCPmgT+7Wv8i7po6F7t89I8pYWUkrRLwiaCYbA9UNgWb
         b35igBCHDFZrLhDPZjhAd5oZcGXaGwvIdPaczHHLsI7YGp/ORVZdmVmNWQzoDi8QDZIC
         yPNxGfP5S4Tq69Zy9Tc/iC4REfUpPoiG5qbFFMpybcXQ8sCJJCtzaMdpATblGHVOKkIB
         KuYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721685689; x=1722290489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vxg0ajK3ioJYPGcpD9OfHJVUObaqfpkpD5oT3VXWIto=;
        b=L2XEqIpBVO/8g+w00PUBH0lQiYQVi/CKCHCxqwovBBEGfFn9+7V/0KCFZLZzHA9Cq7
         LACmByW9Q37ibUPcNhHBhA6Y90ilGVqFLeQ5LUSenEaVvmAWM91a/h56m4ZkEEp9FbAE
         O5vVUMmiVALLuZdYm75ElU0LKtyqRMACqOlrTnCW3B28t3pogHSksrsgjZBmItDIJI1r
         8Vrcj1z8UJrFxKuP1JOtyuGn6gpXsJ+o2WX1McVftguzJ7ZSH7Y54aLMB3gtp/P67Vvg
         rq+88DmHfBWwEDx0EIazPumFOL/+L0ErYXwQDMr/IzHU+bpn330gF+s9iFvie8Q5MrYo
         sLcA==
X-Forwarded-Encrypted: i=1; AJvYcCXHcH7E4cXdvgALqwuft/BD/J1gBiLyUYJ7JPcJX4YjXEZKkdFawja7HdEarQqmoIJSmGxwDJ7aAQxwED7KphJ1okwGNZn3Ci6IOg==
X-Gm-Message-State: AOJu0YxSaL1f6LMRpIV5+91npqM2JEnQO1T3t9PMZaQydovUq06zZHRu
	Vv5cnnFnjXBkdusGawrlry2t0FQk7Aoldj62hl2VNgPoloGcAjE4WiPqJiflr4o=
X-Google-Smtp-Source: AGHT+IHB2trKbSemE7wV84f/IpLJOdhW1QVUMqaLusjLceTiQK07D9n/6+mQwo/17/V/EwQ7masHbw==
X-Received: by 2002:a05:6871:5d0:b0:25e:1cdf:c604 with SMTP id 586e51a60fabf-261215e6bd7mr9296245fac.31.1721685688591;
        Mon, 22 Jul 2024 15:01:28 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-708f60a55e1sm1719911a34.11.2024.07.22.15.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 15:01:28 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	David Jander <david@protonic.nl>,
	Martin Sperl <kernel@martin.sperl.org>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH RFC v3 3/9] spi: add support for hardware triggered offload
Date: Mon, 22 Jul 2024 16:57:10 -0500
Message-ID: <20240722-dlech-mainline-spi-engine-offload-2-v3-3-7420e45df69b@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
References: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.14.0
Content-Transfer-Encoding: 8bit

This extends the SPI framework to support hardware triggered offloading.
This allows an arbitrary hardware trigger to be used to start a SPI
transfer that was previously set up with spi_offload_prepare().

Since the hardware trigger can happen at any time, this means the SPI
bus must be reserved for exclusive use as long as the hardware trigger
is enabled. Since a hardware trigger could be enabled indefinitely,
we can't use the existing spi_bus_lock() and spi_bus_unlock() functions,
otherwise this could cause deadlocks. So we introduce a new flag so that
any attempt to lock or use the bus will fail with -EBUSY as long as the
hardware trigger is enabled.

Peripheral drivers may need to control the trigger source as well. For
this, we introduce a new spi_offload_hw_trigger_get_clk() function that
can be used to get a clock trigger source. This is intended for used
by ADC drivers that will use the clock to control the sample rate.
Additional functions to get other types of trigger sources could be
added in the future.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

TODO: Currently, spi_bus_lock() always returns 0, so none of the callers
check the return value. All callers will need to be updated first before
this can be merged.

v3 changes:
* renamed enable/disable functions to spi_offload_hw_trigger_*mode*_...
* added spi_offload_hw_trigger_get_clk() function
* fixed missing EXPORT_SYMBOL_GPL

v2 changes:

This is split out from "spi: add core support for controllers with
offload capabilities".

Mark suggested that the standard SPI APIs should be aware that the
hardware trigger is enabled. So I've added some locking for this. Nuno
suggested that this might be overly strict though, and that we should
let each individual controller driver decide what to do. For our use
case though, I think we generally are going to have a single peripheral
on the SPI bus, so this seems like a reasonable starting place anyway.
---
 drivers/spi/spi.c       | 94 +++++++++++++++++++++++++++++++++++++++++++++++--
 include/linux/spi/spi.h | 40 +++++++++++++++++++++
 2 files changed, 132 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d01b2e5c8c44..7488e71f159f 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -4495,7 +4495,7 @@ int spi_async(struct spi_device *spi, struct spi_message *message)
 
 	spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);
 
-	if (ctlr->bus_lock_flag)
+	if (ctlr->bus_lock_flag || ctlr->offload_hw_trigger_mode_enabled)
 		ret = -EBUSY;
 	else
 		ret = __spi_async(spi, message);
@@ -4638,6 +4638,12 @@ int spi_sync(struct spi_device *spi, struct spi_message *message)
 	int ret;
 
 	mutex_lock(&spi->controller->bus_lock_mutex);
+
+	if (spi->controller->offload_hw_trigger_mode_enabled) {
+		mutex_unlock(&spi->controller->bus_lock_mutex);
+		return -EBUSY;
+	}
+
 	ret = __spi_sync(spi, message);
 	mutex_unlock(&spi->controller->bus_lock_mutex);
 
@@ -4680,7 +4686,7 @@ EXPORT_SYMBOL_GPL(spi_sync_locked);
  * exclusive access is over. Data transfer must be done by spi_sync_locked
  * and spi_async_locked calls when the SPI bus lock is held.
  *
- * Return: always zero.
+ * Return: 0 on success, -EBUSY if the bus is reserved by offload hardware.
  */
 int spi_bus_lock(struct spi_controller *ctlr)
 {
@@ -4688,6 +4694,11 @@ int spi_bus_lock(struct spi_controller *ctlr)
 
 	mutex_lock(&ctlr->bus_lock_mutex);
 
+	if (ctlr->offload_hw_trigger_mode_enabled) {
+		mutex_unlock(&ctlr->bus_lock_mutex);
+		return -EBUSY;
+	}
+
 	spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);
 	ctlr->bus_lock_flag = 1;
 	spin_unlock_irqrestore(&ctlr->bus_lock_spinlock, flags);
@@ -4874,6 +4885,85 @@ void spi_offload_unprepare(struct spi_device *spi, const char *id,
 }
 EXPORT_SYMBOL_GPL(spi_offload_unprepare);
 
+/**
+ * spi_offload_hw_trigger_mode_enable - enables hardware trigger for offload
+ * @spi:	The spi device to use for the transfers.
+ * @id:		Function ID if SPI device uses more than one offload or NULL.
+ *
+ * There must be a prepared offload instance with the specified ID (i.e.
+ * spi_offload_prepare() was called with the same ID). This will also reserve
+ * the bus for exclusive use by the offload instance until the hardware trigger
+ * is disabled. Any other attempts to send a transfer or lock the bus will fail
+ * with -EBUSY during this time.
+ *
+ * Calls must be balanced with spi_offload_hw_trigger_mode_disable().
+ *
+ * Context: can sleep
+ * Return: 0 on success, else a negative error code.
+ */
+int spi_offload_hw_trigger_mode_enable(struct spi_device *spi, const char *id)
+{
+	struct spi_controller *ctlr = spi->controller;
+	unsigned long flags;
+	int ret;
+
+	if (!ctlr->offload_ops || !ctlr->offload_ops->hw_trigger_mode_enable)
+		return -EOPNOTSUPP;
+
+	mutex_lock(&ctlr->bus_lock_mutex);
+
+	if (ctlr->offload_hw_trigger_mode_enabled) {
+		mutex_unlock(&ctlr->bus_lock_mutex);
+		return -EBUSY;
+	}
+
+	spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);
+	ctlr->offload_hw_trigger_mode_enabled = true;
+	spin_unlock_irqrestore(&ctlr->bus_lock_spinlock, flags);
+
+	/* TODO: how to wait for empty message queue? */
+
+	mutex_lock(&ctlr->io_mutex);
+	ret = ctlr->offload_ops->hw_trigger_mode_enable(spi, id);
+	mutex_unlock(&ctlr->io_mutex);
+
+	if (ret) {
+		ctlr->offload_hw_trigger_mode_enabled = false;
+		mutex_unlock(&ctlr->bus_lock_mutex);
+		return ret;
+	}
+
+	mutex_unlock(&ctlr->bus_lock_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_offload_hw_trigger_mode_enable);
+
+/**
+ * spi_offload_hw_trigger_mode_disable - disables hardware trigger for offload
+ * @spi:	The same SPI device passed to spi_offload_hw_trigger_mode_enable()
+ * @id:		The same ID device passed to spi_offload_hw_trigger_mode_enable()
+ *
+ * Disables the hardware trigger for the offload instance with the specified ID
+ * and releases the bus for use by other clients.
+ *
+ * Context: can sleep
+ */
+void spi_offload_hw_trigger_mode_disable(struct spi_device *spi, const char *id)
+{
+	struct spi_controller *ctlr = spi->controller;
+
+	if (!ctlr->offload_ops || !ctlr->offload_ops->hw_trigger_mode_disable)
+		return;
+
+	mutex_lock(&ctlr->io_mutex);
+	ctlr->offload_ops->hw_trigger_mode_disable(spi, id);
+	mutex_unlock(&ctlr->io_mutex);
+
+	ctlr->offload_hw_trigger_mode_enabled = false;
+}
+EXPORT_SYMBOL_GPL(spi_offload_hw_trigger_mode_disable);
+
 /*-------------------------------------------------------------------------*/
 
 #if IS_ENABLED(CONFIG_OF_DYNAMIC)
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 4998b48ea7fd..685548883004 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -634,6 +634,9 @@ struct spi_controller {
 	/* Flag indicating that the SPI bus is locked for exclusive use */
 	bool			bus_lock_flag;
 
+	/* Flag indicating the bus is reserved for use by hardware trigger */
+	bool			offload_hw_trigger_mode_enabled;
+
 	/*
 	 * Setup mode and clock, etc (SPI driver may call many times).
 	 *
@@ -1604,12 +1607,49 @@ struct spi_controller_offload_ops {
 	 * @unprepare: Required callback to release any resources used by prepare().
 	 */
 	void (*unprepare)(struct spi_device *spi, const char *id);
+	/**
+	 * @hw_trigger_mode_enable: Optional callback to enable the hardware
+	 * trigger for the given offload instance.
+	 */
+	int (*hw_trigger_mode_enable)(struct spi_device *spi, const char *id);
+	/**
+	 * @hw_trigger_mode_disable: Optional callback to disable the hardware
+	 * trigger for the given offload instance.
+	 */
+	void (*hw_trigger_mode_disable)(struct spi_device *spi, const char *id);
+	/**
+	 * @hw_trigger_get_clk: Optional callback for controllers that have a
+	 * hardware offload trigger that is connected to a clock.
+	 */
+	struct clk *(*hw_trigger_get_clk)(struct spi_device *spi, const char *id);
 };
 
 extern int spi_offload_prepare(struct spi_device *spi, const char *id,
 			       struct spi_message *msg);
 extern void spi_offload_unprepare(struct spi_device *spi, const char *id,
 				  struct spi_message *msg);
+extern int spi_offload_hw_trigger_mode_enable(struct spi_device *spi, const char *id);
+extern void spi_offload_hw_trigger_mode_disable(struct spi_device *spi, const char *id);
+
+/**
+ * spi_offload_hw_trigger_get_clk - Get the clock for the offload trigger
+ * @spi: SPI device
+ * @id: Function ID if SPI device uses more than one offload or NULL.
+ *
+ * The caller is responsible for calling clk_put() on the returned clock.
+ *
+ * Return: The clock for the offload trigger, or negative error code
+ */
+static inline
+struct clk *spi_offload_hw_trigger_get_clk(struct spi_device *spi, const char *id)
+{
+	struct spi_controller *ctlr = spi->controller;
+
+	if (!ctlr->offload_ops || !ctlr->offload_ops->hw_trigger_get_clk)
+		return ERR_PTR(-EOPNOTSUPP);
+
+	return ctlr->offload_ops->hw_trigger_get_clk(spi, id);
+}
 
 /*---------------------------------------------------------------------------*/
 

-- 
2.43.0


