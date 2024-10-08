Return-Path: <devicetree+bounces-109108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AC69953AA
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCBFF288EFC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5721D1E1044;
	Tue,  8 Oct 2024 15:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SI82wWsG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AD784A35
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402316; cv=none; b=N/BVe8nw/uudtsfk9UMTvLUpKU7vFEUHDJFoUSNXgHTKoxMmpah36IWGl/sTuHTELu1rHBnH2nvTq4LoVzeefIvsnIYJSbrD+9x9w5RCiTUO1geJ1sYVNxvi+at76KfxpaJ73RLcscSRGcdQu4gV4pmEAr1gY4LlROA0QJqMekU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402316; c=relaxed/simple;
	bh=LxueuFxmo9eqCPcEFKQnCEYuhpW+ruGyaqGPCU7jEUY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aGR87W0C5A+8qnycQWsOCq1L22bX7mNBtY13Lbd4XIxmgBvWxnqdpu271NT5KUI+CXPVv4czFvnpd7MTUSuNeSBhzXKfGRhtB9a+BkERYNnY4scYV/e32a7M6DFme+GzevsZ3pqsbJO1Xs5vWb8et1R5+9D+x9MnhBUQ7MIdzZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SI82wWsG; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-37cd3419937so3513103f8f.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 08:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728402313; x=1729007113; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OXx0hlXVbd6g8bLsULX1osPD47VdU7ReIoZerBeSxZI=;
        b=SI82wWsGTeWDIjG0PRj6eA3YkCl0DwOAJ3kP0uKLIQiiS/6bZXljatWTkk+DyvD3aB
         FWFS63evmdtfbBOEWpTovQcVBKu4chG7jsqprxR/l6Q8I5hHHzfuD3AsDMHGSC0L6dzS
         jD3ucOtprlNh3Nld3W4oNliidqW30PBYSshLBn7mE+y9FNlnRhJaoK/8tprmJvYG6dLR
         huOss+gxr7pkUSscF+xLFACDKFFLVS6fQJSSg/jd6+U/Xub5UZpshBorKbFgfc/D6HKY
         GrW1V7X+yDxDE/eyXGsyfsXLa91rNYG2AAGp9Cp29PQb0SHVDEljpLOF7XoGQA9fM2+M
         hW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728402313; x=1729007113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXx0hlXVbd6g8bLsULX1osPD47VdU7ReIoZerBeSxZI=;
        b=FLmtnGpE/i7kAXelKoqP/E7HwAc8Emb5FMI9R+IGTo0z/8VjZGXEs75JYMQCRb+Jfw
         ADuZy01J5zaSVnXfkFzwpOAYcpILsTwx91Zu/1mrqqo88S8zdYLp1TC7xU+dniTp92gv
         J0wY8vNrLrqjWOYLsGEZmPlU1nJTh+R55kopH3ZIghlzjXDWpobyAMnbu35hlL/CWAoR
         z9KUKRuVe/TtceVsJGhNm90SXmP08e0s3sbxMrb6bRapBpdu72e6FJ+iidIgh8gOp/hD
         kGRBbTUbpnQHTC+IMe9nSrn1n9WMrZjXIULQXEdDBDqDTfoO5opETOK3E3g4UV8MlP2A
         LMOA==
X-Forwarded-Encrypted: i=1; AJvYcCWyGDlrsHkM+Q3+wLnYovnqF/I3T+Vs9pNh4p+LaJY0XewS000Zzq9l8zgamdB73S2iYIKIwWymvMbG@vger.kernel.org
X-Gm-Message-State: AOJu0YxJcZIdHMDAig0TvzboXxhjopa2PzkNFXnYO/KK/wBTVNvjbBGq
	fW5P27FlPT6n1tSxX1IeGwQKhceJwVdwGPBWPZQSZYylSYBRducn5dJD2Fap5eQ=
X-Google-Smtp-Source: AGHT+IF6amztYI6f0fNeILm/a6AAEGjf5kTQ1XdPZfSlyJYwsQ7g8Ufeq96DbnYBlQDVUIX7Drf4mA==
X-Received: by 2002:adf:e88c:0:b0:37c:d2d2:7f5a with SMTP id ffacd0b85a97d-37d0e778bd5mr6707408f8f.32.1728402312709;
        Tue, 08 Oct 2024 08:45:12 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b1d826sm129591215e9.26.2024.10.08.08.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 08:45:11 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 08 Oct 2024 17:43:37 +0200
Subject: [PATCH v5 05/10] iio: backend: extend features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-5-3d410944a63d@baylibre.com>
References: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
In-Reply-To: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dletchner@baylibre.com, 
 Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Extend backend features with new calls needed later on this
patchset from axi version of ad3552r.

The follwoing calls are added:

iio_backend_ddr_enable
	enable ddr bus transfer
iio_backend_ddr_disable
	disable ddr bus transfer
iio_backend_data_stream_enable
	enable data stream over bus interface
iio_backend_data_stream_disable
	disable data stream over bus interface
iio_backend_data_transfer_addr
	define the target register address where the DAC sample
	will be written.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/industrialio-backend.c | 78 ++++++++++++++++++++++++++++++++++++++
 include/linux/iio/backend.h        | 17 +++++++++
 2 files changed, 95 insertions(+)

diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
index 20b3b5212da7..81f3d24f0c50 100644
--- a/drivers/iio/industrialio-backend.c
+++ b/drivers/iio/industrialio-backend.c
@@ -718,6 +718,84 @@ static int __devm_iio_backend_get(struct device *dev, struct iio_backend *back)
 	return 0;
 }
 
+/**
+ * iio_backend_ddr_enable - Enable interface DDR (Double Data Rate) mode
+ * @back: Backend device
+ *
+ * Enable DDR, data is generated by the IP at each front (raising and falling)
+ * of the bus clock signal.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_ddr_enable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, ddr_enable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_enable, IIO_BACKEND);
+
+/**
+ * iio_backend_ddr_disable - Disable interface DDR (Double Data Rate) mode
+ * @back: Backend device
+ *
+ * Disable DDR, setting into SDR mode (Single Data Rate).
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_ddr_disable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, ddr_disable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_disable, IIO_BACKEND);
+
+/**
+ * iio_backend_data_stream_enable - Enable data stream
+ * @back: Backend device
+ *
+ * Enable data stream over the bus interface.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_data_stream_enable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, data_stream_enable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_data_stream_enable, IIO_BACKEND);
+
+/**
+ * iio_backend_data_stream_disable - Disable data stream
+ * @back: Backend device
+ *
+ * Disable data stream over the bus interface.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_data_stream_disable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, data_stream_disable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_data_stream_disable, IIO_BACKEND);
+
+/**
+ * iio_backend_data_transfer_addr - Set data address.
+ * @back: Backend device
+ * @address: Data register address
+ *
+ * Some devices may need to inform the backend about an address
+ * where to read or write the data.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_data_transfer_addr(struct iio_backend *back, u32 address)
+{
+	return iio_backend_op_call(back, data_transfer_addr, address);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_data_transfer_addr, IIO_BACKEND);
+
 static struct iio_backend *__devm_iio_backend_fwnode_get(struct device *dev, const char *name,
 							 struct fwnode_handle *fwnode)
 {
diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
index 37d56914d485..10be00f3b120 100644
--- a/include/linux/iio/backend.h
+++ b/include/linux/iio/backend.h
@@ -14,12 +14,14 @@ struct iio_dev;
 enum iio_backend_data_type {
 	IIO_BACKEND_TWOS_COMPLEMENT,
 	IIO_BACKEND_OFFSET_BINARY,
+	IIO_BACKEND_DATA_UNSIGNED,
 	IIO_BACKEND_DATA_TYPE_MAX
 };
 
 enum iio_backend_data_source {
 	IIO_BACKEND_INTERNAL_CONTINUOUS_WAVE,
 	IIO_BACKEND_EXTERNAL,
+	IIO_BACKEND_INTERNAL_RAMP_16BIT,
 	IIO_BACKEND_DATA_SOURCE_MAX
 };
 
@@ -89,6 +91,11 @@ enum iio_backend_sample_trigger {
  * @read_raw: Read a channel attribute from a backend device
  * @debugfs_print_chan_status: Print channel status into a buffer.
  * @debugfs_reg_access: Read or write register value of backend.
+ * @ddr_enable: Enable interface DDR (Double Data Rate) mode.
+ * @ddr_disable: Disable interface DDR (Double Data Rate) mode.
+ * @data_stream_enable: Enable data stream.
+ * @data_stream_disable: Disable data stream.
+ * @data_transfer_addr: Set data address.
  **/
 struct iio_backend_ops {
 	int (*enable)(struct iio_backend *back);
@@ -129,6 +136,11 @@ struct iio_backend_ops {
 					 size_t len);
 	int (*debugfs_reg_access)(struct iio_backend *back, unsigned int reg,
 				  unsigned int writeval, unsigned int *readval);
+	int (*ddr_enable)(struct iio_backend *back);
+	int (*ddr_disable)(struct iio_backend *back);
+	int (*data_stream_enable)(struct iio_backend *back);
+	int (*data_stream_disable)(struct iio_backend *back);
+	int (*data_transfer_addr)(struct iio_backend *back, u32 address);
 };
 
 /**
@@ -164,6 +176,11 @@ int iio_backend_data_sample_trigger(struct iio_backend *back,
 int devm_iio_backend_request_buffer(struct device *dev,
 				    struct iio_backend *back,
 				    struct iio_dev *indio_dev);
+int iio_backend_ddr_enable(struct iio_backend *back);
+int iio_backend_ddr_disable(struct iio_backend *back);
+int iio_backend_data_stream_enable(struct iio_backend *back);
+int iio_backend_data_stream_disable(struct iio_backend *back);
+int iio_backend_data_transfer_addr(struct iio_backend *back, u32 address);
 ssize_t iio_backend_ext_info_set(struct iio_dev *indio_dev, uintptr_t private,
 				 const struct iio_chan_spec *chan,
 				 const char *buf, size_t len);

-- 
2.45.0.rc1


