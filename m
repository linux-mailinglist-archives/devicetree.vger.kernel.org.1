Return-Path: <devicetree+bounces-122272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F37ED9CF5DC
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 21:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEF97B2EEC7
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9E41EF951;
	Fri, 15 Nov 2024 20:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sJ8yRa/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E321F669B
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731701948; cv=none; b=XdiBQVmNr35chVIAOmC44YY1L5gbCEQ9WnbwZhq6MT6pG3Y/oTpMZbl+LYReO94qu5CpgKoNAnmeXt7Xtni1B49Ac4Io6peECveCyy92YMO9W75r0xLxdBolf+CXejFkD0XhG3+u6v0diLVqhHRNZgTDbZJVzoMtIbKbyjKP0WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731701948; c=relaxed/simple;
	bh=nByoFKUVSmX22QOrB5tKOE6hy2vdogrk8IlWYmMb7iA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tcyq0PUQMTYdSCnNY+Ezwk1f3Ut55cXcS9szT1WBWdrA8e9KLUcSYWfLEroIMEn6SBkMvCo+RugLUeigm7z8DzqBN5VTgA9S3n3e3ZLgwg1Ebzuqy4chaVDQb89+KEvp/Bn7Rk8o1T4PbK4tGOobjsodK9f9XFfAhC5dGOdFdmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sJ8yRa/U; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5ebc04d495aso1202081eaf.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 12:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731701944; x=1732306744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQ9TBdpHxWzvzSyVZJpMzkKE9PvbJoCuWgBYWs06guk=;
        b=sJ8yRa/Utq4US7mqGjtp09jKg2wwKGJuVrHGEesX5c7N7HAPjhNBipsa+NlrX0nL8K
         wL/UOwxJgIG81dqzE+jo36b+szK8oGAuvBEtXkTUtGWyr6tiJfwbXAysivb81Hy8ut8l
         lc0W3Jz6fJsEgrko/e/H+JTKL/a9HFFvdxrv27SJqZicxZQ1VBVEi/IPcqz7xxsLtwlP
         ge3wSeHSbVaZK8AB+xSfZyR/Ox+xhj3i/hxisdhISUs05k6Xu3i7KW1S81qMaOfj1d1o
         2bL6gICF0X0osl8nrPnUSC1E0mBul9Q2Y9fM4ged6EMHZ4ad1zZKI/3gp7pMwtm5z+cn
         FlCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731701944; x=1732306744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hQ9TBdpHxWzvzSyVZJpMzkKE9PvbJoCuWgBYWs06guk=;
        b=scOCfdHfNkzpREwIjdLVSC0CkMamId2qc1DXBgXXwY29RoJThfyQbSTQsO2SL3Suca
         E1r/lQFrSeSArwFowO7Poma0VY6TJHhphFnoS1Wo24BY9xheaBj7hptvfS0sHReCLa2z
         AQGhEyRjGZvjwpEsEwEfmGJIIhqpP4Sl75zmNglasrvYmX85QwOmFa4gqqhqp2nj3f3h
         ZWPcCZyQ7TLeIJMYmad159WQRNArS3bYfzu9n6GHRhzviLCuKQ32ddpNu50gtnddOz8B
         JXm3MjL0m36fTRSA/EzcM16YuKmfnEnsGB++bkT89zr0I69cB0Rn2yHnKxUsoI/WZ790
         Ehjw==
X-Forwarded-Encrypted: i=1; AJvYcCVCz7gkaEX7gosEZAKl3V0se8tKCNbwuwSZL/MvHU4Dq/zrexfDNreTVKOl714LcaPC8fJRg8u0fpyl@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh+oPhR/o7wh8r8pKFwbMxzzwKsJjI1rWQmY0sm0/hNdIGX/lT
	SH4A7LLUxjM2CMSGKIbMokgh7WXaPtn24DzHb1qqLNEd4E5YnfqDmshvNwGSHGs=
X-Google-Smtp-Source: AGHT+IFpIObwug+gjtaFB8EYgLYodh+d7CpNa3uZrjGmbI+QPIYY+qYFAjZ6xzpN4D9Z/f4yyjISHA==
X-Received: by 2002:a05:6830:64ca:b0:718:194d:8ab with SMTP id 46e09a7af769-71a77a55f3cmr4663542a34.27.1731701944380;
        Fri, 15 Nov 2024 12:19:04 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a780ea62esm748978a34.5.2024.11.15.12.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 12:19:03 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 15 Nov 2024 14:18:49 -0600
Subject: [PATCH v5 10/16] iio: buffer-dmaengine: add
 devm_iio_dmaengine_buffer_setup_ext2()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241115-dlech-mainline-spi-engine-offload-2-v5-10-bea815bd5ea5@baylibre.com>
References: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
In-Reply-To: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Add a new devm_iio_dmaengine_buffer_setup_ext2() function to handle
cases where the DMA channel is managed by the caller rather than being
requested and released by the iio_dmaengine module.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v5 changes: none

v4 changes:
* This replaces "iio: buffer-dmaengine: generalize requesting DMA channel"
---
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 107 +++++++++++++++------
 include/linux/iio/buffer-dmaengine.h               |   5 +
 2 files changed, 81 insertions(+), 31 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 054af21dfa65..602cb2e147a6 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -33,6 +33,7 @@ struct dmaengine_buffer {
 	struct iio_dma_buffer_queue queue;
 
 	struct dma_chan *chan;
+	bool owns_chan;
 	struct list_head active;
 
 	size_t align;
@@ -216,28 +217,23 @@ static const struct iio_dev_attr *iio_dmaengine_buffer_attrs[] = {
  * Once done using the buffer iio_dmaengine_buffer_free() should be used to
  * release it.
  */
-static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
-	const char *channel)
+static struct iio_buffer *iio_dmaengine_buffer_alloc(struct dma_chan *chan,
+						     bool owns_chan)
 {
 	struct dmaengine_buffer *dmaengine_buffer;
 	unsigned int width, src_width, dest_width;
 	struct dma_slave_caps caps;
-	struct dma_chan *chan;
 	int ret;
 
 	dmaengine_buffer = kzalloc(sizeof(*dmaengine_buffer), GFP_KERNEL);
-	if (!dmaengine_buffer)
-		return ERR_PTR(-ENOMEM);
-
-	chan = dma_request_chan(dev, channel);
-	if (IS_ERR(chan)) {
-		ret = PTR_ERR(chan);
-		goto err_free;
+	if (!dmaengine_buffer) {
+		ret = -ENOMEM;
+		goto err_release;
 	}
 
 	ret = dma_get_slave_caps(chan, &caps);
 	if (ret < 0)
-		goto err_release;
+		goto err_free;
 
 	/* Needs to be aligned to the maximum of the minimums */
 	if (caps.src_addr_widths)
@@ -252,6 +248,7 @@ static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
 
 	INIT_LIST_HEAD(&dmaengine_buffer->active);
 	dmaengine_buffer->chan = chan;
+	dmaengine_buffer->owns_chan = owns_chan;
 	dmaengine_buffer->align = width;
 	dmaengine_buffer->max_size = dma_get_max_seg_size(chan->device->dev);
 
@@ -263,10 +260,12 @@ static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
 
 	return &dmaengine_buffer->queue.buffer;
 
-err_release:
-	dma_release_channel(chan);
 err_free:
 	kfree(dmaengine_buffer);
+err_release:
+	if (owns_chan)
+		dma_release_channel(chan);
+
 	return ERR_PTR(ret);
 }
 
@@ -282,12 +281,38 @@ void iio_dmaengine_buffer_free(struct iio_buffer *buffer)
 		iio_buffer_to_dmaengine_buffer(buffer);
 
 	iio_dma_buffer_exit(&dmaengine_buffer->queue);
-	dma_release_channel(dmaengine_buffer->chan);
-
 	iio_buffer_put(buffer);
+
+	if (dmaengine_buffer->owns_chan)
+		dma_release_channel(dmaengine_buffer->chan);
 }
 EXPORT_SYMBOL_NS_GPL(iio_dmaengine_buffer_free, IIO_DMAENGINE_BUFFER);
 
+static struct iio_buffer
+*__iio_dmaengine_buffer_setup_ext(struct iio_dev *indio_dev,
+				  struct dma_chan *chan, bool owns_chan,
+				  enum iio_buffer_direction dir)
+{
+	struct iio_buffer *buffer;
+	int ret;
+
+	buffer = iio_dmaengine_buffer_alloc(chan, owns_chan);
+	if (IS_ERR(buffer))
+		return ERR_CAST(buffer);
+
+	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
+
+	buffer->direction = dir;
+
+	ret = iio_device_attach_buffer(indio_dev, buffer);
+	if (ret) {
+		iio_dmaengine_buffer_free(buffer);
+		return ERR_PTR(ret);
+	}
+
+	return buffer;
+}
+
 /**
  * iio_dmaengine_buffer_setup_ext() - Setup a DMA buffer for an IIO device
  * @dev: DMA channel consumer device
@@ -308,24 +333,13 @@ struct iio_buffer *iio_dmaengine_buffer_setup_ext(struct device *dev,
 						  const char *channel,
 						  enum iio_buffer_direction dir)
 {
-	struct iio_buffer *buffer;
-	int ret;
-
-	buffer = iio_dmaengine_buffer_alloc(dev, channel);
-	if (IS_ERR(buffer))
-		return ERR_CAST(buffer);
-
-	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
-
-	buffer->direction = dir;
+	struct dma_chan *chan;
 
-	ret = iio_device_attach_buffer(indio_dev, buffer);
-	if (ret) {
-		iio_dmaengine_buffer_free(buffer);
-		return ERR_PTR(ret);
-	}
+	chan = dma_request_chan(dev, channel);
+	if (IS_ERR(chan))
+		return ERR_CAST(chan);
 
-	return buffer;
+	return __iio_dmaengine_buffer_setup_ext(indio_dev, chan, true, dir);
 }
 EXPORT_SYMBOL_NS_GPL(iio_dmaengine_buffer_setup_ext, IIO_DMAENGINE_BUFFER);
 
@@ -362,6 +376,37 @@ int devm_iio_dmaengine_buffer_setup_ext(struct device *dev,
 }
 EXPORT_SYMBOL_NS_GPL(devm_iio_dmaengine_buffer_setup_ext, IIO_DMAENGINE_BUFFER);
 
+/**
+ * devm_iio_dmaengine_buffer_setup_ext2() - Setup a DMA buffer for an IIO device
+ * @dev: Device for devm ownership
+ * @indio_dev: IIO device to which to attach this buffer.
+ * @chan: DMA channel
+ * @dir: Direction of buffer (in or out)
+ *
+ * This allocates a new IIO buffer with devm_iio_dmaengine_buffer_alloc()
+ * and attaches it to an IIO device with iio_device_attach_buffer().
+ * It also appends the INDIO_BUFFER_HARDWARE mode to the supported modes of the
+ * IIO device.
+ *
+ * This is the same as devm_iio_dmaengine_buffer_setup_ext() except that the
+ * caller manages requesting and releasing the DMA channel.
+ */
+int devm_iio_dmaengine_buffer_setup_ext2(struct device *dev,
+					 struct iio_dev *indio_dev,
+					 struct dma_chan *chan,
+					 enum iio_buffer_direction dir)
+{
+	struct iio_buffer *buffer;
+
+	buffer = __iio_dmaengine_buffer_setup_ext(indio_dev, chan, false, dir);
+	if (IS_ERR(buffer))
+		return PTR_ERR(buffer);
+
+	return devm_add_action_or_reset(dev, __devm_iio_dmaengine_buffer_free,
+					buffer);
+}
+EXPORT_SYMBOL_NS_GPL(devm_iio_dmaengine_buffer_setup_ext2, IIO_DMAENGINE_BUFFER);
+
 MODULE_AUTHOR("Lars-Peter Clausen <lars@metafoo.de>");
 MODULE_DESCRIPTION("DMA buffer for the IIO framework");
 MODULE_LICENSE("GPL");
diff --git a/include/linux/iio/buffer-dmaengine.h b/include/linux/iio/buffer-dmaengine.h
index 81d9a19aeb91..7bdb979b59f2 100644
--- a/include/linux/iio/buffer-dmaengine.h
+++ b/include/linux/iio/buffer-dmaengine.h
@@ -11,6 +11,7 @@
 
 struct iio_dev;
 struct device;
+struct dma_chan;
 
 void iio_dmaengine_buffer_free(struct iio_buffer *buffer);
 struct iio_buffer *iio_dmaengine_buffer_setup_ext(struct device *dev,
@@ -26,6 +27,10 @@ int devm_iio_dmaengine_buffer_setup_ext(struct device *dev,
 					struct iio_dev *indio_dev,
 					const char *channel,
 					enum iio_buffer_direction dir);
+int devm_iio_dmaengine_buffer_setup_ext2(struct device *dev,
+					 struct iio_dev *indio_dev,
+					 struct dma_chan *chan,
+					 enum iio_buffer_direction dir);
 
 #define devm_iio_dmaengine_buffer_setup(dev, indio_dev, channel)	\
 	devm_iio_dmaengine_buffer_setup_ext(dev, indio_dev, channel,	\

-- 
2.43.0


