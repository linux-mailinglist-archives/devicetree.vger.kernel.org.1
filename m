Return-Path: <devicetree+bounces-97981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B915964492
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 14:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 619E51C2486D
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E281AC430;
	Thu, 29 Aug 2024 12:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aON/8Fow"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA001AAE06
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724934801; cv=none; b=iV0pul5OIKQ6AHhq9w3iNN+r1mV6wrGdWTiwLEVrWMsYLKEPUrirxYGytRiKzR9wdRSPhJrQhpPd3Oj2kWkhpRUefQLNjAMSGkWNNfc5wPbCkGTw5CopgSeolAXFWHGdo0WV+hLw5UWLE2NnmWl8H6zbi1enhQ1huzSSkEGcLcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724934801; c=relaxed/simple;
	bh=wkT2eJbbHDn6CRJOE1bDAGFMpoQwugJ7/2FLRi0phuE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h5Ss3WylSrR+5ooftFm+zcSVqCJtX4vZziFVGy2tLdZI58jni1Bejf7/O6+z6I4Ar/yAsuSV3RQojn4y+LDiECT21tbLeCEEaX/JdJumbzPqzPSNflbwxZc5BpYzboPboe3sbiMsjkOSacEGiLb9yfvK+P+K3dl6koYnri9sWn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aON/8Fow; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3717de33d58so367545f8f.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 05:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724934797; x=1725539597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZIJdxGSLG1ZplmaRmfbX1A1WfdoHrvq2/x6TRvaEig=;
        b=aON/8FowPkPPqjWFjYXBZ35+EcLA4TatYUQfrmFabPZuW9dAquEOgOKCVqPbf/fvWU
         U0Mz9SQpo53iJimseo4Jq9V3QU06AlCSyQiz3YLJZz95oLi0knJseGNYrBhnSt0gsQfC
         jvzcY2m79yqpnpcf+ssNzaRQVrPSXpeM20XJRGuB/ri+ndpeqJwm/cblnWy7rky1qmtL
         c9rwCHM0OcdIk8I+SRGEcy3k3+3C2LXf957sWB5Mrkfrn3zOGI2PplyeBTlzxfMG1+PO
         1KARjRv9Pa4xKlV3D8Cv795BsXjb3E5BD4bYyiNE6fwLBg3mZoa2f5gSeHfAC22FZOKQ
         yUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724934797; x=1725539597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZIJdxGSLG1ZplmaRmfbX1A1WfdoHrvq2/x6TRvaEig=;
        b=cWKfGedOrInil+Muvle4YpWZCwfmqdbUBTSnh9P5RXGJqdr0frjDDcIZzjxQxYy8xJ
         yXAFbfGPK2zC6msEV34Gcq/blxnG9zFVWINDG7ya9tb71SPTwjMFpOOyoPhHlh2k6V6g
         WlHXQuC6pcfjuTntZ9KewxILsMp4BK+HOj7OgXmXlO45FKmnpZAZIiLvSBVBSqzs+qqn
         d05/i91ZoAkA8KFAL1N+8TK0YKMDP4CggoN2HWY/CJsapW/upoEabX5Jq52Z2sYzXkck
         lqDpbSH/0++uAhfI9vkGmUTMCkfQHbGIQtscuRAn5ju8OBk2/DPaOURG7boUar1N8msK
         a2oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyQ2MA3wxEPzyG9QYvZVmWTUW2tkybsPoiFuouTias6LQEHyixkIfInxfESSf8sviCTHLWzp4sxJlg@vger.kernel.org
X-Gm-Message-State: AOJu0YzWjYc1s1xn8T/dokhEOONGPxEW7PCFFFby9c4VPUQKsl2jw3st
	dmvfU2zzFtx9FJxqrLGgp019QX2EAyozl2QAXxaZCuBWpb4ic4m2eFUbP3GV3oA=
X-Google-Smtp-Source: AGHT+IGxh2bfPlBBmwr4Sxe/plUtt/ia6yuDkXt54pFc4P2rQUsQSwLDRtoC2rHcz/dySAce2HwbBg==
X-Received: by 2002:adf:f410:0:b0:368:74a8:6c34 with SMTP id ffacd0b85a97d-3749b54d4ddmr1763573f8f.36.1724934797327;
        Thu, 29 Aug 2024 05:33:17 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee9978bsm1315042f8f.49.2024.08.29.05.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 05:33:16 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 29 Aug 2024 14:32:00 +0200
Subject: [PATCH RFC 2/8] iio: backend: extend features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240829-wip-bl-ad3552r-axi-v0-v1-2-b6da6015327a@baylibre.com>
References: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
In-Reply-To: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dlechner@baylibre.com, 
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
 drivers/iio/industrialio-backend.c | 151 +++++++++++++++++++++++++++++++++++++
 include/linux/iio/backend.h        |  24 ++++++
 2 files changed, 175 insertions(+)

diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
index a52a6b61c8b5..1f60c8626be7 100644
--- a/drivers/iio/industrialio-backend.c
+++ b/drivers/iio/industrialio-backend.c
@@ -718,6 +718,157 @@ static int __devm_iio_backend_get(struct device *dev, struct iio_backend *back)
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
+ * iio_backend_buffer_enable - Enable data buffering
+ * @back: Backend device
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
+ * iio_backend_set_buffer_disable - Disable data buffering
+ * @back: Backend device
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
+ * iio_backend_buffer_transfer_addr - Set data address.
+ * @back: Backend device
+ * @chan_address: Channel register address
+ *
+ * Some devices may need to inform the backend about an address/location
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
+ * @size: Size, in bytes
+ *
+ * A backend may operate on a specific interface with a related bus.
+ * Read from the interface bus.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_bus_reg_read(struct iio_backend *back,
+			     u32 reg, void *val, size_t size)
+{
+	if (!size)
+		return -EINVAL;
+
+	return iio_backend_op_call(back, bus_reg_read, reg, val, size);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_bus_reg_read, IIO_BACKEND);
+
+/**
+ * iio_backend_bus_reg_write - Write on the interface bus
+ * @back: Backend device
+ * @reg: Register value
+ * @val: Register Value
+ * @size: Size in bytes
+ *
+ * A backend may operate on a specific interface with a related bus.
+ * Write to the interface bus.
+ *
+ * RETURNS:
+ * 0 on success, negative error number on failure.
+ */
+int iio_backend_bus_reg_write(struct iio_backend *back,
+			      u32 reg, void *val, size_t size)
+{
+	if (!size)
+		return -EINVAL;
+
+	return iio_backend_op_call(back, bus_reg_write, reg, val, size);
+}
+EXPORT_SYMBOL_NS_GPL(iio_backend_bus_reg_write, IIO_BACKEND);
+
 static struct iio_backend *__devm_iio_backend_fwnode_get(struct device *dev, const char *name,
 							 struct fwnode_handle *fwnode)
 {
diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
index 37d56914d485..6f56bbb9e391 100644
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
 
@@ -129,6 +131,17 @@ struct iio_backend_ops {
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
+	int (*bus_reg_read)(struct iio_backend *back, u32 reg, void *val,
+			    size_t size);
+	int (*bus_reg_write)(struct iio_backend *back, u32 reg, void *val,
+			     size_t size);
 };
 
 /**
@@ -164,6 +177,17 @@ int iio_backend_data_sample_trigger(struct iio_backend *back,
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
+int iio_backend_bus_reg_read(struct iio_backend *back,
+			     u32 reg, void *val, size_t size);
+int iio_backend_bus_reg_write(struct iio_backend *back,
+			      u32 reg, void *val, size_t size);
 ssize_t iio_backend_ext_info_set(struct iio_dev *indio_dev, uintptr_t private,
 				 const struct iio_chan_spec *chan,
 				 const char *buf, size_t len);

-- 
2.45.0.rc1


