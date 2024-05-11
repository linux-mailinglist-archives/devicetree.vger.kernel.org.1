Return-Path: <devicetree+bounces-66399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C948C2E08
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:50:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 499AE284168
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 00:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0212C1758F;
	Sat, 11 May 2024 00:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I348MkFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB9010A19
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 00:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715388602; cv=none; b=VZY/Njf4vdhfqwpl4xGeY1tY9orBHxtuQEkcC77CQwcxhm/G+FtcPMWfS+vC40d8YNp6JG5s6Hd0BFx57s4wCgmJbjlBPUkOpSs5PlQ5WdKZCar3yKbUEEq7mlC7YS3+MGtKPXp6mlFeFx/79RRAcbq0ut62WqyS33H5azqyS9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715388602; c=relaxed/simple;
	bh=h8IEiY34+3Sx3CIFgaB3bbWMmMeu0qPkNGGmC8siC3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VDh50nt1hdMt+Ov7ovUOjGCTbp2s5FRLf7OcOxxeeEf71bypMZLngNGjeJ/ZZ0MupkM4OAX407/Ig+ueUIPpM5H+mmjpahfaNqKQZGBBunOWrhQNVIe1AzfGUd88hrHWv5WoxAacemF30sSTL4b2M9FAYE7GmzaU/H9yUcOImAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I348MkFP; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5b273b9f1deso1270365eaf.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 17:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715388600; x=1715993400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9avosEdgbBSX3dha6GG6j80VLMTNNyJjLCB0lyPzg0=;
        b=I348MkFPYgz4UGsp8pm08TTEs8rDAJdCzNDAolDrrHfWIlgJVdh/HqE5Th2DR/XD56
         yOz9sTIbVefJpSwAh+cNmAWCtPcKrinC7lMUFFTk97BJBs8GMaeLNv1vpshthz+g0GjL
         pbDNc0KC3COxrqUq4qyevIya45msb8rjpDVxCZBtGLAxyAaJyVtWBcm2jiNfkvX3c2oF
         yV+w6cEOUoLNPnbynSeKOz6XOtHE30Sg0QV7WrwTnZZH9CeZyq0V2ut9VFYzpLlDE2y7
         XYFpjlT6x2FZ6nL5nOPzDArQX4zzeWir3LwS9cH2zRw5BhFIBLdJyaeWRpoqguIOyg5j
         Ys4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715388600; x=1715993400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9avosEdgbBSX3dha6GG6j80VLMTNNyJjLCB0lyPzg0=;
        b=mGfLbrhwJIf1/Kb/cpAleGxvSdXqZ2Sg0e+XrYO/ezGfZ9GXH3eyZfmfPks+LgNrsn
         wX1I4v3j7ziiAbHlF7YfPD0ZFGlRcEO56C6GMtbt5DEtZOJhaeoQmUoM/HPJXh20qWUh
         2cXTRSzSn+ptiBhdhoCM4qCzY+mYFkxk7PhhNCrvKOPXVagJPjcjrvS8r79R3hJ9v4MC
         EpPKdsE+e6Ulc+uhxwZM8RhvXCAb6oNtIY5qPE52c8jmdPCWcVADKvDywnhvMhV3Bosz
         3l3m1OK67Fkn4hlame3BZihjiT4r7u4c44Ie8IAn91HaXJ41YiD14FvSWtmQT9fCbvFv
         Vk6w==
X-Forwarded-Encrypted: i=1; AJvYcCWWRfZk+xRQhiRL+uTLnBO9adqHpWswkwr26xsdOtThGX1bGQyzU7Buw2KNAxPVjW1I7jk2RcpfjG550WX+9X7+DJwwV6dZptz73Q==
X-Gm-Message-State: AOJu0Yw+vCtEgf8HkNSQ672wcPwnEALAt5Nta+0HBoBUhlVlJ33y0pHD
	+6PeJyqoxZVJrudJh00mE1WYcelRSBomcg7YYfz27l3ydSEkZqJMVYrbMJjjYtY=
X-Google-Smtp-Source: AGHT+IHUqtShftifs93lP5ZXYqlRl7bulmdlCopbK5h5izie+OAx3wEuV9iUi7VdLK8osidQhFAkdw==
X-Received: by 2002:a4a:904:0:b0:5b2:bc0:f38b with SMTP id 006d021491bc7-5b281956dc0mr4721017eaf.5.1715388600118;
        Fri, 10 May 2024 17:50:00 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5b29015a3dbsm321132eaf.46.2024.05.10.17.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 17:49:59 -0700 (PDT)
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
Subject: [PATCH RFC v2 4/8] spi: add offload xfer flags
Date: Fri, 10 May 2024 19:44:27 -0500
Message-ID: <20240510-dlech-mainline-spi-engine-offload-2-v2-4-8707a870c435@baylibre.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510-dlech-mainline-spi-engine-offload-2-v2-0-8707a870c435@baylibre.com>
References: <20240510-dlech-mainline-spi-engine-offload-2-v2-0-8707a870c435@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

Most configuration of SPI offloads is handles opaquely using the ID
handle that is passed to the various offload functions. However, there
are some offload features that need to be controller on a per transfer
basis.

This patch adds a flags field to the spi_transfer structure to allow
specifying such features. The first feature to be added is the ability
to stream data to/from a hardware sink/source rather than using a tx or
rx buffer. Additional flags can be added in the future as needed.

A flags field is also added to the controller struct for controllers to
indicate which flags are supported. This allows for generic checking of
offload capabilities during __spi_validate() so that each controller
doesn't have to provide their own validation.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v2 changes:

This is also split out from "spi: add core support for controllers with
offload capabilities".

In the previous version, we were using (void *)-1 as a sentinel value
that could be assigned, e.g. to rx_buf. But this was naive since there
is core code that would try to dereference this pointer. So instead,
we've added a new flags field to the spi_transfer structure for this
sort of thing. This also has the advantage of being able to be used in
the future for other arbitrary features.
---
 drivers/spi/spi.c       | 10 ++++++++++
 include/linux/spi/spi.h | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 9ad7b04c26a6..4d34ccf91fd4 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -4189,6 +4189,16 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 
 		if (_spi_xfer_word_delay_update(xfer, spi))
 			return -EINVAL;
+
+		/* make sure controller supports required offload features */
+		if (xfer->offload_flags) {
+			if (!message->offload)
+				return -EINVAL;
+
+			if ((xfer->offload_flags & ctlr->offload_xfer_flags)
+			    != xfer->offload_flags)
+				return -EINVAL;
+		}
 	}
 
 	message->status = -EINPROGRESS;
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index ec8d875d31ff..42c39c17ba5a 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -501,6 +501,8 @@ extern struct spi_device *spi_new_ancillary_device(struct spi_device *spi, u8 ch
  *	     This field is optional and should only be implemented if the
  *	     controller has native support for memory like operations.
  * @mem_caps: controller capabilities for the handling of memory operations.
+ * @offload_xfer_flags: flags supported by this controller for offloading
+ *	transfers. See struct spi_transfer for the list of flags.
  * @offload_ops: operations for controllers with offload support.
  * @unprepare_message: undo any work done by prepare_message().
  * @slave_abort: abort the ongoing transfer request on an SPI slave controller
@@ -751,6 +753,7 @@ struct spi_controller {
 	const struct spi_controller_mem_caps *mem_caps;
 
 	/* Operations for controllers with offload support. */
+	unsigned int offload_xfer_flags;
 	const struct spi_controller_offload_ops *offload_ops;
 
 	/* GPIO chip select */
@@ -991,6 +994,7 @@ struct spi_res {
  * @transfer_list: transfers are sequenced through @spi_message.transfers
  * @tx_sg: Scatterlist for transmit, currently not for client use
  * @rx_sg: Scatterlist for receive, currently not for client use
+ * @offload_flags: flags for xfers that use special hardware offload features
  * @ptp_sts_word_pre: The word (subject to bits_per_word semantics) offset
  *	within @tx_buf for which the SPI device is requesting that the time
  *	snapshot for this transfer begins. Upon completing the SPI transfer,
@@ -1107,6 +1111,12 @@ struct spi_transfer {
 
 	u32		effective_speed_hz;
 
+	unsigned int	offload_flags;
+/* this is write xfer but TX uses external data stream rather than tx_buf */
+#define SPI_OFFLOAD_XFER_TX_STREAM	BIT(0)
+/* this is read xfer but RX uses external data stream rather than rx_buf */
+#define SPI_OFFLOAD_XFER_RX_STREAM	BIT(1)
+
 	unsigned int	ptp_sts_word_pre;
 	unsigned int	ptp_sts_word_post;
 

-- 
2.43.2


