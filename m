Return-Path: <devicetree+bounces-144096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EA0A2CDBA
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48D4B188DC22
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002DA1D9A49;
	Fri,  7 Feb 2025 20:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DI6HWuea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499E61B4153
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958984; cv=none; b=cyFeFEG+C8FqaJW9pT3wYgY9rjD7LpRzWvqjVn/q77eWqE4o/cY2yyrM/unxLhbQ09aQ/1lic69LDReB3Zc4TM+55IcRAz9FNE/4ZcH5wNt16b+zeJL6RcsaJ2wv8HY5NFMUdySVW7ewY9Cn5zWouGd5aTBfhVrciPsBV7mKspI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958984; c=relaxed/simple;
	bh=dzCJ6ZEQTNY+z2WK8kNiO9rUSbrCIMXdjhs/EOFJ84k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sWZMOzm1xznWC5FVnlddyPRycYvy9WIvvEBnr95nFG6RFFOcGlmuN5OMncUR3yuyO9/AsaR9ULXeI1ZfmTGXzgV81EO5HJfx1sGNfSYguNTKwA2Cj1sOoCtzGF3uqGB5Uya6xoxEIU2rkGY+l7+dYwCfVKkpY4Npxgg2Dse6yOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DI6HWuea; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-721d213e2aeso713153a34.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738958981; x=1739563781; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxYYb5ciTauJBruXQRFcV6o6UAzHMKHqZuEnooTWOkc=;
        b=DI6HWueadtJhGR5uJi9e9KVYO1+A5PR+jFKrX2fKL6yrbH0xI3CTA3i4DKhg17hVxw
         FzKbCk4Xm9qSM0Wxq8OHel0A3SLoj1EhG2nMOC8nPwYzm4TpZf8pD9KNrmN5oITEpnf3
         IeRPpytQHtSPIvmZEMcZUEB5g+gZexgD54P8eVFD8jxmcRoxS+9G4eKiYEZTUU2j2eg4
         Fika9spuMefO/ET7BUTU5lg61Mq0m3+FY02jkv36vFIa0vBoFAh7Wizdr6pEeSAINlvV
         dunDB6wZl+guyngpq5cKk/qfsnkkuZziBFcCSnYKrFxHMxqtj5BYmPc+EIWS4lqTVkZS
         02LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738958981; x=1739563781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxYYb5ciTauJBruXQRFcV6o6UAzHMKHqZuEnooTWOkc=;
        b=oeOOm6aYLupeVwcLwQYK83ocbhaRquZx9LAiHK/7QsH1h6wrqXTcN5EEqFrI9wlEqP
         zCLFLTGQGVYHBzg0yYdgMXIOKNFPJW5tG998G9Do4IbFIAY/eYwG58648f5Q0pRj6/0e
         Ek+nl6BbD4R2/7//vOSUgMBg9FELnKIDlpY47tj9rDLE09yDJ7LN7MV+9CISPn2GCdFb
         9TtlRHNtAVz+fvZnDT1x5kILfMFBJh9+ClCv2gVdBvwDbFNlalZA2kef/2jPRsz6dzCV
         OuoP4sANG/GW+QT7phjdsAhfXO5/jJagrlK29jqjZ05qtT3btfE2Ns6/blv+lopG2oBY
         fxWg==
X-Forwarded-Encrypted: i=1; AJvYcCU7eW5x0sODzcjlOhMdIkAiGueNiGVmBOIK8ne1zOKGsPsghRvxXBHAd20ztlBnEad5m7hukW47709O@vger.kernel.org
X-Gm-Message-State: AOJu0YzREWBYnsSuEne0QLzE75pVoW/Ro0zbbzv/2jk/M4LHicaadERT
	JBemJWMIgmvchp+6eV8fVKMWVoOk3NXNl9s/xKgUI1bodDLbWxF10CKNrFYhTJg=
X-Gm-Gg: ASbGncvHYfKgJSHsFveIV/EJ4Q4pLtJCPR9hyC87o7xVzZO7MLTInJRdyhJDZgAFhhk
	M3DCKQMeuLKA1zfHvytsGOZfPeeg6JH6UkgKfCY+vzGU4MsAAj353IZ+Rd0zROnckrLP8UowG/D
	Pn+h7i2aUHMqK2jfUUl8ISMMiEgrW4XmdJ+rsze+vz7MUKBUisBrVWiPgMfhGb0O4YqeeHpBhwH
	qYvlaWNCV9qKqzrVVJEpPc7ySbDV/wPPvCyn/rDPVkaTiEjAipb/ED2Gn9cII0zPlcpPU5aemTE
	6TmmeMFCB2aproAVoFrNVht+3QPAxAeDt4c6Jge7lQ3uIW8=
X-Google-Smtp-Source: AGHT+IGK4xYaEcxApiz7m2CUhej55WwAoBbiU+s2jpWUeCLtHUqStHqG/Dhk5gCjtlNGdzV0gWWPyQ==
X-Received: by 2002:a05:6830:4701:b0:71e:1392:80b5 with SMTP id 46e09a7af769-726b889856cmr3814221a34.24.1738958981445;
        Fri, 07 Feb 2025 12:09:41 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544b08d4sm930387eaf.2.2025.02.07.12.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:09:41 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 07 Feb 2025 14:09:06 -0600
Subject: [PATCH v8 09/17] iio: buffer-dmaengine: add
 devm_iio_dmaengine_buffer_setup_with_handle()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-dlech-mainline-spi-engine-offload-2-v8-9-e48a489be48c@baylibre.com>
References: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
In-Reply-To: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
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


