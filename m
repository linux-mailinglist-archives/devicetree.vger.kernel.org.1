Return-Path: <devicetree+bounces-138209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E58A2A0C2FD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0E1C169E21
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 21:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C00240248;
	Mon, 13 Jan 2025 21:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fe4CfgQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A94B1EE021
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 21:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736802064; cv=none; b=S1IgzW2sUVTGVZwquowm3Q+Yh6NLVpFzbO2P+q1JXmpj6sDRAuxis+iUybUAlQhnEpq8f4qpZYnBntDk93wwEaGq5G8LIGSVUYp48XXAxabiH8MZrWT1g9jy0OtnlhOXjd2CMCljBCEkJjjG8VfeEtvwlIZcFxv4KLmI3H1TVQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736802064; c=relaxed/simple;
	bh=hhrTDYf9Yz0YjzHJdUtgDtplSZtqVfgawz89uRTVWw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p9Xdp06AFtgUDjGg0gR+jW3RKP6g1TWhi912kgopdPMmSatm1yLKvvrKcudxhJvBSzOJZ8azpzlN9EDZgFErj9mDzkz6jelIWaGiysaE6CjtelsYYHE1OXihXlPZupnoKDpgkPC+Rzep+3PVfDfQAYrSPVe2e5OTk2bnY+EQXE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fe4CfgQO; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e3f291ad6so3070999a34.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736802060; x=1737406860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DqtfQ5a9RIfdlxAFzvS7ToYQkKeW5R8Z3CGplxQ55Ys=;
        b=fe4CfgQOKoeFeovtbMbFXrDWmsf2IHma2XiybKuQ+l1zsXAlvuk2+2Q9C+/35aWV41
         Fvm90uXDdAFe9DaskiA2T0oWzEQ+TonwITDD/K6vUYkWqnw1lgCHbY8cM6ox58Uwm43T
         d0NnGEgvjTZBgfekAi3qNt9rGeGENlDyoVXyZWK5aL1HaNYR7nPqy/iwnOzirHL0tLS+
         n3bv9YH5asg7Qt5DmoXXuf4VMt+SisQrikkmsKrMqDOttBzofFBCb7Rgz0X9HFg5aQzl
         /lfP5mg/l2WZKpvEHOzChWzikEds5fkYGslwzsWOhyJB6lhs+/RhHv+MZMsydI4SNMlV
         Lt0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736802060; x=1737406860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DqtfQ5a9RIfdlxAFzvS7ToYQkKeW5R8Z3CGplxQ55Ys=;
        b=BC1vZwZmWNLJc0YbQKxpCLELq4y6Zj/eoXtqr+ij4pQjc1njkmgvIyyN/5wypcuEdW
         oCULNKyTQA1+qiQAhRV7unK2KB/dcou5PuBW1fWvUeiC4uHrt4yslKoWKjvX1+gdkqzJ
         tqw9zvawe1NbcAqqE4zb7E5OejkbNHKXCBmvFCz3fZ+wRLXJwQDwG71kwkNpabq7DIey
         vhJSwz95FOQxodrQcnyF6tRZ1vDs1om8WjtH/Vui6e7gpMCBYG+90Gp8MANsbEiNmUkq
         fUxWM6nezNfjr7POe2ZgdtNA7jDhoupC1EuG6P4SmZFyPeYn+O+HdP+9LgERugS21VoL
         IeXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk1Ntq3WZ8T6pAgyz/VT1zlPuZUY+V+PBY7lLAO5byKvNlCGHfNbBZuQgOTBERFNOx3DcyiX0D9j8q@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Og9lVih4yZZQvqJQmYsCCIngsLPApsqntBQ6Gw/OJNh9LbY7
	nPCDqST6Hepnj9NsTtANNIK1MjLZnRDZNizNghqKsRgKj+wZD1FL3wLRlb3TU/k=
X-Gm-Gg: ASbGncu7ZYe+uBSoYIF4PAIg32Q7o9PA+oKMI3xa2ai+ilslRZhTH/xh4y9XpcTwSfr
	Pwn3jj6/xsxk+oQ8MdHqGJ/d6CMBixho/ek27rfjkBfIC6szvSpR1yk31pooa7efjG3hCaWaIfT
	KvhmEFGuoEy9SqcTX1VhjVrLIzMrlqEOlDkccDbIBr7lEyFjA5ubKPj2KEArLrB7atf1rYpGP0u
	7Wfk/1xavvFgGwsMWEyE8/FK6P7x9Tjb6281ku3YFlFOdUzal0WmoutSg7Sblq9nCkXQ4cDpJP9
	QIA4xEggXxkK
X-Google-Smtp-Source: AGHT+IEMGJwBVMM/2s5t6FC3a9a2isN8G0zurzUhevPLzqGu7zzDSPip41/oAoQCrTauzfGSEWYfnA==
X-Received: by 2002:a05:6830:6502:b0:71e:768:a9db with SMTP id 46e09a7af769-721e2e9c421mr13009451a34.23.1736802058562;
        Mon, 13 Jan 2025 13:00:58 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7231855effasm3927744a34.33.2025.01.13.13.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 13:00:57 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 13 Jan 2025 15:00:10 -0600
Subject: [PATCH v7 05/17] spi: add offload TX/RX streaming APIs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-dlech-mainline-spi-engine-offload-2-v7-5-e0860c81caae@baylibre.com>
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

Most configuration of SPI offloads is handled opaquely using the offload
pointer that is passed to the various offload functions. However, there
are some offload features that need to be controlled on a per transfer
basis.

This patch adds a flag field to struct spi_transfer to allow specifying
such features. The first feature to be added is the ability to stream
data to/from a hardware sink/source rather than using a tx or rx buffer.
Additional flags can be added in the future as needed.

A flags field is also added to the offload struct for providers to
indicate which flags are supported. This allows for generic checking of
offload capabilities during __spi_validate() so that each offload
provider doesn't have to implement their own validation.

As a first users of this streaming capability, getter functions are
added to get a DMA channel that is directly connected to the offload.
Peripheral drivers will use this to get a DMA channel and configure it
to suit their needs.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Nuno Sa <nuno.sa@analog.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v7 changes: none

v6 changes:
* Update for header file split.
* Fix wrong kernel-doc comments.

v5 change:
* Remove incorrect comment about caller needing to release DMA channels.

v4 changes:
* DMA API's now automatically release DMA channels instead of leaving
  it up to the caller.

v3 changes:
* Added spi_offload_{tx,rx}_stream_get_dma_chan() functions.

v2 changes:
* This is also split out from "spi: add core support for controllers with
  offload capabilities".
* In the previous version, we were using (void *)-1 as a sentinel value
  that could be assigned, e.g. to rx_buf. But this was naive since there
  is core code that would try to dereference this pointer. So instead,
  we've added a new flags field to the spi_transfer structure for this
  sort of thing. This also has the advantage of being able to be used in
  the future for other arbitrary features.
---
 drivers/spi/spi-offload.c            | 70 ++++++++++++++++++++++++++++++++++++
 drivers/spi/spi.c                    | 10 ++++++
 include/linux/spi/offload/consumer.h |  5 +++
 include/linux/spi/offload/types.h    | 19 ++++++++++
 include/linux/spi/spi.h              |  3 ++
 5 files changed, 107 insertions(+)

diff --git a/drivers/spi/spi-offload.c b/drivers/spi/spi-offload.c
index 43582e50e279c4b1b958765fec556aaa91180e55..df5e963d5ee29d37833559595536a460c530bc81 100644
--- a/drivers/spi/spi-offload.c
+++ b/drivers/spi/spi-offload.c
@@ -18,6 +18,7 @@
 
 #include <linux/cleanup.h>
 #include <linux/device.h>
+#include <linux/dmaengine.h>
 #include <linux/export.h>
 #include <linux/kref.h>
 #include <linux/list.h>
@@ -332,6 +333,75 @@ void spi_offload_trigger_disable(struct spi_offload *offload,
 }
 EXPORT_SYMBOL_GPL(spi_offload_trigger_disable);
 
+static void spi_offload_release_dma_chan(void *chan)
+{
+	dma_release_channel(chan);
+}
+
+/**
+ * devm_spi_offload_tx_stream_request_dma_chan - Get the DMA channel info for the TX stream
+ * @dev: Device for devm purposes.
+ * @offload: Offload instance
+ *
+ * This is the DMA channel that will provide data to transfers that use the
+ * %SPI_OFFLOAD_XFER_TX_STREAM offload flag.
+ *
+ * Return: Pointer to DMA channel info, or negative error code
+ */
+struct dma_chan
+*devm_spi_offload_tx_stream_request_dma_chan(struct device *dev,
+					     struct spi_offload *offload)
+{
+	struct dma_chan *chan;
+	int ret;
+
+	if (!offload->ops || !offload->ops->tx_stream_request_dma_chan)
+		return ERR_PTR(-EOPNOTSUPP);
+
+	chan = offload->ops->tx_stream_request_dma_chan(offload);
+	if (IS_ERR(chan))
+		return chan;
+
+	ret = devm_add_action_or_reset(dev, spi_offload_release_dma_chan, chan);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return chan;
+}
+EXPORT_SYMBOL_GPL(devm_spi_offload_tx_stream_request_dma_chan);
+
+/**
+ * devm_spi_offload_rx_stream_request_dma_chan - Get the DMA channel info for the RX stream
+ * @dev: Device for devm purposes.
+ * @offload: Offload instance
+ *
+ * This is the DMA channel that will receive data from transfers that use the
+ * %SPI_OFFLOAD_XFER_RX_STREAM offload flag.
+ *
+ * Return: Pointer to DMA channel info, or negative error code
+ */
+struct dma_chan
+*devm_spi_offload_rx_stream_request_dma_chan(struct device *dev,
+					     struct spi_offload *offload)
+{
+	struct dma_chan *chan;
+	int ret;
+
+	if (!offload->ops || !offload->ops->rx_stream_request_dma_chan)
+		return ERR_PTR(-EOPNOTSUPP);
+
+	chan = offload->ops->rx_stream_request_dma_chan(offload);
+	if (IS_ERR(chan))
+		return chan;
+
+	ret = devm_add_action_or_reset(dev, spi_offload_release_dma_chan, chan);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return chan;
+}
+EXPORT_SYMBOL_GPL(devm_spi_offload_rx_stream_request_dma_chan);
+
 /* Triggers providers */
 
 static void spi_offload_trigger_unregister(void *data)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index a7a4647717d44e4983f7d6725d17e7321d59506d..10c365e9100a8401cee30e83c87b944b7a81e680 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -31,6 +31,7 @@
 #include <linux/ptp_clock_kernel.h>
 #include <linux/sched/rt.h>
 #include <linux/slab.h>
+#include <linux/spi/offload/types.h>
 #include <linux/spi/spi.h>
 #include <linux/spi/spi-mem.h>
 #include <uapi/linux/sched/types.h>
@@ -4158,6 +4159,15 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 
 		if (_spi_xfer_word_delay_update(xfer, spi))
 			return -EINVAL;
+
+		/* Make sure controller supports required offload features. */
+		if (xfer->offload_flags) {
+			if (!message->offload)
+				return -EINVAL;
+
+			if (xfer->offload_flags & ~message->offload->xfer_flags)
+				return -EINVAL;
+		}
 	}
 
 	message->status = -EINPROGRESS;
diff --git a/include/linux/spi/offload/consumer.h b/include/linux/spi/offload/consumer.h
index 5a0ec5303d600728959594bcdbd0cb2baeba7c77..cd7d5daa21e69b61c16eba6c10c855345a4f3297 100644
--- a/include/linux/spi/offload/consumer.h
+++ b/include/linux/spi/offload/consumer.h
@@ -31,4 +31,9 @@ int spi_offload_trigger_enable(struct spi_offload *offload,
 void spi_offload_trigger_disable(struct spi_offload *offload,
 				 struct spi_offload_trigger *trigger);
 
+struct dma_chan *devm_spi_offload_tx_stream_request_dma_chan(struct device *dev,
+							     struct spi_offload *offload);
+struct dma_chan *devm_spi_offload_rx_stream_request_dma_chan(struct device *dev,
+							     struct spi_offload *offload);
+
 #endif /* __LINUX_SPI_OFFLOAD_CONSUMER_H */
diff --git a/include/linux/spi/offload/types.h b/include/linux/spi/offload/types.h
index 7476f2073b02ee0f9edd3ae75e587b075746fa92..86d0e8cb9495bb43e177378b2041067de8ea8786 100644
--- a/include/linux/spi/offload/types.h
+++ b/include/linux/spi/offload/types.h
@@ -11,6 +11,11 @@
 
 struct device;
 
+/* This is write xfer but TX uses external data stream rather than tx_buf. */
+#define SPI_OFFLOAD_XFER_TX_STREAM	BIT(0)
+/* This is read xfer but RX uses external data stream rather than rx_buf. */
+#define SPI_OFFLOAD_XFER_RX_STREAM	BIT(1)
+
 /* Offload can be triggered by external hardware event. */
 #define SPI_OFFLOAD_CAP_TRIGGER			BIT(0)
 /* Offload can record and then play back TX data when triggered. */
@@ -40,6 +45,8 @@ struct spi_offload {
 	void *priv;
 	/** @ops: callbacks for offload support */
 	const struct spi_offload_ops *ops;
+	/** @xfer_flags: %SPI_OFFLOAD_XFER_* flags supported by provider */
+	u32 xfer_flags;
 };
 
 enum spi_offload_trigger_type {
@@ -75,6 +82,18 @@ struct spi_offload_ops {
 	 * given offload instance.
 	 */
 	void (*trigger_disable)(struct spi_offload *offload);
+	/**
+	 * @tx_stream_request_dma_chan: Optional callback for controllers that
+	 * have an offload where the TX data stream is connected directly to a
+	 * DMA channel.
+	 */
+	struct dma_chan *(*tx_stream_request_dma_chan)(struct spi_offload *offload);
+	/**
+	 * @rx_stream_request_dma_chan: Optional callback for controllers that
+	 * have an offload where the RX data stream is connected directly to a
+	 * DMA channel.
+	 */
+	struct dma_chan *(*rx_stream_request_dma_chan)(struct spi_offload *offload);
 };
 
 #endif /* __LINUX_SPI_OFFLOAD_TYPES_H */
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 98bdc8c16c20521c0a94e5f72f5e71c4f6d7d11e..4c087009cf974595f23036b1b7a030a45913420c 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -1093,6 +1093,9 @@ struct spi_transfer {
 
 	u32		effective_speed_hz;
 
+	/* Use %SPI_OFFLOAD_XFER_* from spi-offload.h */
+	unsigned int	offload_flags;
+
 	unsigned int	ptp_sts_word_pre;
 	unsigned int	ptp_sts_word_post;
 

-- 
2.43.0


