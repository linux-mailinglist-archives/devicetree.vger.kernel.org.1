Return-Path: <devicetree+bounces-138212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F14EA0C30E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88BC7169A24
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 21:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BABCC1F9F79;
	Mon, 13 Jan 2025 21:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pq2Lb64b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39501F9A92
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 21:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736802068; cv=none; b=kB1MMlo5qhJp4ztm+GiVsQABoddbSSRxEYDM+pdOpHnWWnxP4PSBGexeES9NX8uVyvfr9qTAGD1K3ZRrKCFd+DOQ0gRmgrqYvnxKKjO7CifZ1NSmU6tLRq7DCkEjczKplZs3zp9kKFM3PwYuHqPEsCUiBC+Jrzw4Xs2lf1a47O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736802068; c=relaxed/simple;
	bh=dzCJ6ZEQTNY+z2WK8kNiO9rUSbrCIMXdjhs/EOFJ84k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PTCo8Hu9PL3rpaIoG85YbeDqCgDaw264/P8dqNWzEj5ygm4lJlH6vtjS3S/+mJLvfzYuoSLJB9urGQyraM9OSxw5ZQ2vOIBd4VVXbVfSnapnYB300AVWFe3OJadeO08hP40oJu8tPmbdTipH/Or1o86AfCRizmhoBr0wwnwfSrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pq2Lb64b; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e157a79c8so1319024a34.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736802064; x=1737406864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxYYb5ciTauJBruXQRFcV6o6UAzHMKHqZuEnooTWOkc=;
        b=pq2Lb64boZlR/t/Zm11UfRQpsVpN0cogam3XtXna8J9hxpqRf9QyXjJJZS0YPUcYm6
         Ique8xDrTf91TnnfWFlIvsbsA9cQx2C41dZlVru/Bq1/M6YUP1c0mz6MGrZMQZMkdFcb
         10pj09flrirrF6WEg3OAxfL3MsUbQ8OxibhAHKhANfsskeS6tY8ofIwzQfjP0PDgk+ru
         0/aRXS5mdPrQK0Fv3/jKgDzt6lEpDlLQdRk/LJk8zasgZjH0j1f4ytiQ3z72tgiJ3K0L
         pD65AESecqlSpz+oHnq97DIy5EY9gNDJea2QwT3qxtiRezuRlyEQEo4zXiFwt/KvFT1O
         Eu0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736802064; x=1737406864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxYYb5ciTauJBruXQRFcV6o6UAzHMKHqZuEnooTWOkc=;
        b=X3/vr59x18rV+/L6v2sZ+1FCES72kkeMLNDwJVKTfoT7xeQxm0CKvC/cM+AHxlgiAM
         8D7VhWTijPDZyIpPwDpg8b1V/UJjTI/VfDJfB7krxxBqzVOqWqhJh9DX0W2nixZiCwTW
         Bnn3xt1gHcxOhVBSAJ9o5SjgQfyfCoV8eNAd1sh2bH1u3jXnTwDD/Bf8Pz3XEOz9lTM6
         zYiqnJX2ksaNrodA8rjqwbIIjhWhhu1m81VY+ylFSu7MwC9KtmDT+YuLjo/zKLoe2f77
         EojiQGfjygRkJMSCHKP+rB/3Cgh4r23AB8R8U+bvXxsgvISX9WFYryqT0LrO0PiElXkX
         DBzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsG7ItbrXMPgza7o8eYhCVeCO9EoaIy/2+erNDxGdjRLkJdnNhqBfo+wM6M8e2ySK3Qn8CGAduSPXm@vger.kernel.org
X-Gm-Message-State: AOJu0YzUzeDiwyvjWZpDj6SRUy1DQYqIt+L1v+chcwgZf2VWqqWCLAl/
	ja6JbWBrNkTly2JOMthyvwGyoqQJncKyydp7o5CZp6h4tWcVsySWdb3bUYUoI0o=
X-Gm-Gg: ASbGncsws0bIlkez1TUVgxnamWAldhvZ7gX2v7Udmx1GnW6cWka6tH5Of8c+cMvtNvT
	/F3ThcPV+UNw2I1dnJw3dbsoJQjSaVrFiV4EOslh3DiM9B1dIh4+8yn2Pls4qe4aoTQekxAqN18
	KR0E74VIh8eY/TryKwkqr2jxqZs1RONAN4mRos1rjXoe8wYe3r45OQMt3u5bMitSuJDlYc63lT2
	VfC8QR3RAwosU1TRha5PtwqO2DYWHw4bjtGHo89ThEH1yZsNUzwbwEdYgZOZwXIaakcWRxyOGMy
	Ufu91keYbPFV
X-Google-Smtp-Source: AGHT+IHc/6DbtaGBxjhYkdrm/LQRXlc6O2w8Y93CVrkI7N1pqF/6N0hFcyMkEAAtuzcIDXFS4nZRzw==
X-Received: by 2002:a05:6830:601c:b0:71d:3faf:b64e with SMTP id 46e09a7af769-721e2ebcfe3mr13545645a34.23.1736802063746;
        Mon, 13 Jan 2025 13:01:03 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7231855effasm3927744a34.33.2025.01.13.13.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 13:01:03 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 13 Jan 2025 15:00:14 -0600
Subject: [PATCH v7 09/17] iio: buffer-dmaengine: add
 devm_iio_dmaengine_buffer_setup_with_handle()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-dlech-mainline-spi-engine-offload-2-v7-9-e0860c81caae@baylibre.com>
References: <20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com>
In-Reply-To: <20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com>
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
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Add a new devm_iio_dmaengine_buffer_setup_with_handle() function to
handle cases where the DMA channel is managed by the caller rather than
being requested and released by the iio_dmaengine module.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Nuno Sa <nuno.sa@analog.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v7 changes: none

v6 changes:
* Rename from devm_iio_dmaengine_buffer_setup_ext2()
* This patch now just adds the new function - prep work was split out
  to a separate patch

v5 changes: none

v4 changes:
* This replaces "iio: buffer-dmaengine: generalize requesting DMA channel"
---
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 38 ++++++++++++++++++++++
 include/linux/iio/buffer-dmaengine.h               |  5 +++
 2 files changed, 43 insertions(+)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 02847d3962fcbb43ec76167db6482ab951f20942..e9d9a7d39fe191c2b6e8c196a08cdd26cd3a8d4b 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -380,6 +380,44 @@ int devm_iio_dmaengine_buffer_setup_ext(struct device *dev,
 }
 EXPORT_SYMBOL_NS_GPL(devm_iio_dmaengine_buffer_setup_ext, "IIO_DMAENGINE_BUFFER");
 
+static void devm_iio_dmaengine_buffer_free(void *buffer)
+{
+	iio_dmaengine_buffer_free(buffer);
+}
+
+/**
+ * devm_iio_dmaengine_buffer_setup_with_handle() - Setup a DMA buffer for an
+ *						   IIO device
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
+ * caller manages requesting and releasing the DMA channel handle.
+ */
+int devm_iio_dmaengine_buffer_setup_with_handle(struct device *dev,
+						struct iio_dev *indio_dev,
+						struct dma_chan *chan,
+						enum iio_buffer_direction dir)
+{
+	struct iio_buffer *buffer;
+
+	buffer = __iio_dmaengine_buffer_setup_ext(indio_dev, chan, dir);
+	if (IS_ERR(buffer))
+		return PTR_ERR(buffer);
+
+	return devm_add_action_or_reset(dev, devm_iio_dmaengine_buffer_free,
+					buffer);
+}
+EXPORT_SYMBOL_NS_GPL(devm_iio_dmaengine_buffer_setup_with_handle,
+		     "IIO_DMAENGINE_BUFFER");
+
 MODULE_AUTHOR("Lars-Peter Clausen <lars@metafoo.de>");
 MODULE_DESCRIPTION("DMA buffer for the IIO framework");
 MODULE_LICENSE("GPL");
diff --git a/include/linux/iio/buffer-dmaengine.h b/include/linux/iio/buffer-dmaengine.h
index 72a2e3fd8a5bf5e8f27ee226ddd92979d233754b..37f27545f69f761c3327c307cc6311b02a751096 100644
--- a/include/linux/iio/buffer-dmaengine.h
+++ b/include/linux/iio/buffer-dmaengine.h
@@ -11,6 +11,7 @@
 
 struct iio_dev;
 struct device;
+struct dma_chan;
 
 void iio_dmaengine_buffer_teardown(struct iio_buffer *buffer);
 struct iio_buffer *iio_dmaengine_buffer_setup_ext(struct device *dev,
@@ -26,6 +27,10 @@ int devm_iio_dmaengine_buffer_setup_ext(struct device *dev,
 					struct iio_dev *indio_dev,
 					const char *channel,
 					enum iio_buffer_direction dir);
+int devm_iio_dmaengine_buffer_setup_with_handle(struct device *dev,
+						struct iio_dev *indio_dev,
+						struct dma_chan *chan,
+						enum iio_buffer_direction dir);
 
 #define devm_iio_dmaengine_buffer_setup(dev, indio_dev, channel)	\
 	devm_iio_dmaengine_buffer_setup_ext(dev, indio_dev, channel,	\

-- 
2.43.0


