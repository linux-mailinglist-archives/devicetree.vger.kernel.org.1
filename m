Return-Path: <devicetree+bounces-100489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F1B96DDC6
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:19:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 918F9B23A5B
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1742019DFA4;
	Thu,  5 Sep 2024 15:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JlQcpuWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AA81991A1
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725549536; cv=none; b=VsiPJjbfg9IlD2EGtWeXAqwLVXMUDxQJ7ERIIlXkp1k3LLV/8ia1XbePd8KuVm8dwNqXk/m9UYH7bh+1DEGwM53+nRkk1WrmSDcWW+VSKoo0ks/t0RC2SHwfim3TRTTz88CPQXrahQSgQ+2jACYFUC1QiaiOiLUvEC5Vsqc8JmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725549536; c=relaxed/simple;
	bh=7mDmujuW9L23gvDEPfcAQPH04sCLGsDLCdPBzT9HWoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GQaSxLix/cLS9yguDow9X5e7nKKDZwT3sh5A4KBCuaf+WaCIOcX0wFX/a8b2SBl81qZUM1He7BGlUejAr+aQLS9+WMH7WD+EBJjDQVaSLp+zvNYklK4CQaJ/aCr/UWJmQil3V2KPQMyIlTlpiCF0PQqnD0LI9XhV1tFQNlJPs5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JlQcpuWZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42c94e59b93so11686895e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725549533; x=1726154333; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAGC06t4jFVXSncjE9DHaxIHM4cxIKLmC+jNq9K1LOE=;
        b=JlQcpuWZKBO6oDCRyVleW83Uzrgb+pgUsMHpJUgZda6rpQVYt523pes+pq6C2X7Cba
         pXscfz6DWlZ02ao5D76gGP+XZhaB6nEcpSeoqAlnrzrSuHci+YcB3tj3NNq1Aly40odd
         8WRoAHDHQ9eyr6hHk0DRQ7C72dA2FJpsEzWTkbvWGIq3OpXTpEnIw6Wm435bnhBTg3R4
         7puNVYbSPbWRGqiYCEOcm9zQ1UU3c9jM0PhsChg7VZ2RbUmjOaC9w2068SUayW1zjY0/
         zgXAZUglcGypU1FvBXhoI3y2kbi6I3JnDDTkUbiiqejKueyTNQax1VrmSF9Cw+67U/pX
         9p3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725549533; x=1726154333;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kAGC06t4jFVXSncjE9DHaxIHM4cxIKLmC+jNq9K1LOE=;
        b=bxCoTmEVzXB9Dd5IYuQYSe/llM1ip0pAbCSWG3fxvs7wsuYXtHBt5H8JSHPijLKm1G
         GzHVAZz/HhXSHMSAThcemv9dF45NRFvznTn5g9WGtEjTImF1v+eCYKH4v1fkaaNz1X6Q
         zlTrqL+ZLHYuDHo9Kj8JHZd19Qj2ATV72JCn2UWZ8prPsUEn+vWsBEv6Q7PAM1TruqHc
         eweUpEwjmzE5b3qrizyI1vvtJQHKz9/8mvvarZXjXLZTLrzG04jE5798uQ3K0YQzuMBs
         LoqJhns7/U12Oljlwfd4+UOdDw8QdThBPVeCYJnHBQlPoklIVbYxFP2PCQ/iZM4IMoIm
         xYpw==
X-Forwarded-Encrypted: i=1; AJvYcCXn4JUjhrzjcL54+KhpzN9R2Pq2Y8YMks3ctyPEE10kWVMtNxHePahUofJF76fVaqUzWuair7+7Seno@vger.kernel.org
X-Gm-Message-State: AOJu0YwQPhFSMargZg4KCwbJzPWdgPyPDnNr9oa5rrXFF0L9bpHASHlc
	9gs5UsULz6aEKh2s9yJvYIWeIwY8cauZnfZGqdRpmYCNuBCaD+aSexDy/EW9QOc=
X-Google-Smtp-Source: AGHT+IEj0EPzxJ72BXRwSGmQVESxYruu+cPifDeDKcs58e/d2y2rA/DPkYkIDxDAURV3CSqEkg/WYw==
X-Received: by 2002:a5d:55ca:0:b0:371:8685:84c with SMTP id ffacd0b85a97d-3779a70775amr3826341f8f.15.1725549532900;
        Thu, 05 Sep 2024 08:18:52 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c1de81b2sm14031076f8f.30.2024.09.05.08.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:18:51 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 05 Sep 2024 17:17:32 +0200
Subject: [PATCH v2 2/9] iio: backend: extend features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-2-87d669674c00@baylibre.com>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Extend backend features with new calls needed later on this
patchset from axi version of ad3552r.

A bus type property has been added to the devicetree to
inform the backend about the type of bus (interface) in use
bu the IP.

The follwoing calls are added:

iio_backend_ext_sync_enable
	enable synchronize channels on external trigger
iio_backend_ext_sync_disable
	disable synchronize channels on external trigger
iio_backend_ddr_enable
	enable ddr bus transfer
iio_backend_ddr_disable
	disable ddr bus transfer
iio_backend_set_bus_mode
	select the type of bus, so that specific read / write
	operations are performed accordingly
iio_backend_buffer_enable
	enable buffer
iio_backend_buffer_disable
	disable buffer
iio_backend_data_transfer_addr
	define the target register address where the DAC sample
	will be written.
iio_backend_bus_reg_read
	generic bus read, bus-type dependent
iio_backend_bus_read_write
	generic bus write, bus-type dependent

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/industrialio-backend.c | 157 +++++++++++++++++++++++++++++++++++++
 include/linux/iio/backend.h        |  33 ++++++++
 2 files changed, 190 insertions(+)

diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
index 20b3b5212da7..231bef4b560e 100644
--- a/drivers/iio/industrialio-backend.c
+++ b/drivers/iio/industrialio-backend.c
@@ -718,6 +718,163 @@ static int __devm_iio_backend_get(struct device *dev, struct iio_backend *back)
 	return 0;
 }
 
+/**
+ * iio_backend_ext_sync_enable - Enable external synchronization
+ * @back: Backend device
+ *
+ * Enable synchronization by external signal.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_ext_sync_enable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, ext_sync_enable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_ext_sync_enable, IIO_BACKEND);
+
+/**
+ * iio_backend_ext_sync_disable - Disable external synchronization
+ * @back: Backend device
+ *
+ * Disable synchronization by external signal.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_ext_sync_disable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, ext_sync_disable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_ext_sync_disable, IIO_BACKEND);
+
+/**
+ * iio_backend_ddr_enable - Enable interface DDR (Double Data Rate) mode
+ * @back: Backend device
+ *
+ * Enabling DDR, data is generated by the IP at each front
+ * (raising and falling) of the bus clock signal.
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
+ * Disabling DDR data is generated byt the IP at rising or falling front
+ * of the interface clock signal (SDR, Single Data Rate).
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
+ * iio_backend_buffer_enable - Enable iio buffering
+ * @back: Backend device
+ *
+ * Enabling the buffer, buffer data is processed and sent out from the
+ * bus interface.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_buffer_enable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, buffer_enable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_buffer_enable, IIO_BACKEND);
+
+/**
+ * iio_backend_buffer_disable - Disable iio buffering
+ * @back: Backend device
+ *
+ * Disabling the buffer, buffer data transfer on the bus interface
+ * is stopped.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_buffer_disable(struct iio_backend *back)
+{
+	return iio_backend_op_call(back, buffer_disable);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_buffer_disable, IIO_BACKEND);
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
+/**
+ * iio_backend_bus_reg_read - Read from the interface bus
+ * @back: Backend device
+ * @reg: Register valule
+ * @val: Pointer to register value
+ * @data_size: Transfer data size in bytes
+ *
+ * A backend may operate on a specific interface with a related bus.
+ * Read from the interface bus.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_bus_reg_read(struct iio_backend *back, u32 reg,
+			     unsigned int *val, size_t data_size)
+{
+	if (!data_size)
+		return -EINVAL;
+
+	return iio_backend_op_call(back, bus_reg_read, reg, val, data_size);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_bus_reg_read, IIO_BACKEND);
+
+/**
+ * iio_backend_bus_reg_write - Write on the interface bus
+ * @back: Backend device
+ * @reg: Register value
+ * @val: Register Value
+ * @data_size: Transfer data size in bytes
+ *
+ * A backend may operate on a specific interface with a related bus.
+ * Write to the interface bus.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_bus_reg_write(struct iio_backend *back, u32 reg,
+			      unsigned int val, size_t data_size)
+{
+	if (!data_size)
+		return -EINVAL;
+
+	return iio_backend_op_call(back, bus_reg_write, reg, val, data_size);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_bus_reg_write, IIO_BACKEND);
+
 static struct iio_backend *__devm_iio_backend_fwnode_get(struct device *dev, const char *name,
 							 struct fwnode_handle *fwnode)
 {
diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
index 37d56914d485..eb8c5bb74bb5 100644
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
+	IIO_BACKEND_INTERNAL_RAMP_16,
 	IIO_BACKEND_DATA_SOURCE_MAX
 };
 
@@ -89,6 +91,15 @@ enum iio_backend_sample_trigger {
  * @read_raw: Read a channel attribute from a backend device
  * @debugfs_print_chan_status: Print channel status into a buffer.
  * @debugfs_reg_access: Read or write register value of backend.
+ * @ext_sync_enable: Enable external synchronization.
+ * @ext_sync_disable: Disable external synchronization.
+ * @ddr_enable: Enable interface DDR (Double Data Rate) mode.
+ * @ddr_disable: Disable interface DDR (Double Data Rate) mode.
+ * @buffer_enable: Enable data buffer.
+ * @buffer_disable: Disable data buffer.
+ * @data_transfer_addr: Set data address.
+ * @bus_reg_read: Read from the interface bus.
+ * @bus_reg_write: Write on the interface bus.
  **/
 struct iio_backend_ops {
 	int (*enable)(struct iio_backend *back);
@@ -129,6 +140,17 @@ struct iio_backend_ops {
 					 size_t len);
 	int (*debugfs_reg_access)(struct iio_backend *back, unsigned int reg,
 				  unsigned int writeval, unsigned int *readval);
+	int (*ext_sync_enable)(struct iio_backend *back);
+	int (*ext_sync_disable)(struct iio_backend *back);
+	int (*ddr_enable)(struct iio_backend *back);
+	int (*ddr_disable)(struct iio_backend *back);
+	int (*buffer_enable)(struct iio_backend *back);
+	int (*buffer_disable)(struct iio_backend *back);
+	int (*data_transfer_addr)(struct iio_backend *back, u32 address);
+	int (*bus_reg_read)(struct iio_backend *back, u32 reg,
+			    unsigned int *val, size_t data_size);
+	int (*bus_reg_write)(struct iio_backend *back, u32 reg,
+			     unsigned int val, size_t data_size);
 };
 
 /**
@@ -164,6 +186,17 @@ int iio_backend_data_sample_trigger(struct iio_backend *back,
 int devm_iio_backend_request_buffer(struct device *dev,
 				    struct iio_backend *back,
 				    struct iio_dev *indio_dev);
+int iio_backend_ext_sync_enable(struct iio_backend *back);
+int iio_backend_ext_sync_disable(struct iio_backend *back);
+int iio_backend_ddr_enable(struct iio_backend *back);
+int iio_backend_ddr_disable(struct iio_backend *back);
+int iio_backend_buffer_enable(struct iio_backend *back);
+int iio_backend_buffer_disable(struct iio_backend *back);
+int iio_backend_data_transfer_addr(struct iio_backend *back, u32 address);
+int iio_backend_bus_reg_read(struct iio_backend *back, u32 reg,
+			     unsigned int *val, size_t data_size);
+int iio_backend_bus_reg_write(struct iio_backend *back, u32 reg,
+			      unsigned int val, size_t data_size);
 ssize_t iio_backend_ext_info_set(struct iio_dev *indio_dev, uintptr_t private,
 				 const struct iio_chan_spec *chan,
 				 const char *buf, size_t len);

-- 
2.45.0.rc1


