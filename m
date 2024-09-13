Return-Path: <devicetree+bounces-102749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE43978202
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 16:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 541581C21790
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7E261DEFD0;
	Fri, 13 Sep 2024 13:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PNxrspRp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09131DCB3E
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726235875; cv=none; b=FG26xH366hGblaogFpl3MSjJ2pLKTT2QesMMr2xY/wH2Vgoepa/c0bQfyQlwZE9tAZgmHDaMEr1xbZ1gra8MMmoWh0Wulg7yTR5JmPVPTQuOjiKS64gACmNq/0HMCbAQa3SERrauGrER+osQrNbRECBNEo1x0BjgPaCucLqG9Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726235875; c=relaxed/simple;
	bh=ykUyvmQc/5wbFyrFRMV34ty22I9dWMk9TBb47ILEe4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a9xXE8ZB0HFjgvoPeSOVbMOLC4j5ogGvNVy08dzOQmLdkv8TU8DB/7V+kK+AI9QjPXit/xmQbcNtuexLCS95njMlo40um68MrdB2ll7l4h82EaJfKMHtC61R+TOlWkDWixpGeYQDrtzNm9+rBZQ1yqW1Ieg9GY5uwSqEJmQBOFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PNxrspRp; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cb6f3a5bcso12798515e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 06:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726235872; x=1726840672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4rgjfNfx6m5HjjB8s+u7qEdTS2g8HjBiOKrDc5NZNs=;
        b=PNxrspRpc13iD1sNcrmh+vlfA30bQP+dBSSKqCwFDTRYJ/bqQv8h+08bQoB1QyzxPJ
         MtvHXTqtSheWngYZANTmeJ7HqXN0RUIRgrCKo3EHfQjcWL4JryUfFHHIx43Xn6oAlBWy
         QJgRzllQXNntOpv5ASwIsLxRtdVzU54ZkMmE5qa+DgLlB6YovuOA4twtIEBqvQS55EjE
         5E4ip+hCjbh3ertfR2EhsPu0QnRpz9XzL6eiScDMrg327B82eEEQe4uxjv8nttEsRR3N
         Qohfy+88u/y5DtnXkqFDG1W7hPJUB8HURHaoKf/wg2QuqjKY2TW6vEGKT+svQSyP07jx
         2JxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726235872; x=1726840672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4rgjfNfx6m5HjjB8s+u7qEdTS2g8HjBiOKrDc5NZNs=;
        b=otjtPsoATX5gu+RPwl2S0YffKzT8WmDkczOCOP5w5qqSlI+IdvxfO1DlwG/nQndlnd
         nAGrfluHg/ClR/logZ3r0A+B9lXoH/gL2F0vEW9YkRB4Vw2+2AqZs17qENlGRT5yl+2D
         M4Rp7N+4fPX+6Gy2hA6r4g5P2kn5cDOvyIwNxrb15t7SQG/rLh/+WQzo119xnSY+6vu/
         B89KdhXxKn639swF5x/DhYrYLigCW/J/gKcblIDDJYjg4cSuC+MxGeDP+nmC8I6MzTBG
         F5fGwOCGiF+OMxO85qnXVzkCzWToutaZ8MzS//X7XNtVwdKUHD+2wvBGhxQTURfTvLS6
         4NCg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ2iiHO5zrUQ67Gq+G6nbnRk8oTqAC6NkW+LIaxFvNY3+hSAEZz4V2MIwOF1XkBSK3l/pveXOZKYsr@vger.kernel.org
X-Gm-Message-State: AOJu0YzQO+6ttBJpTpoIZgCNxjEsh9zIUI/Ju9RE2r7TdM9sRshDkZMX
	zs3VaMOeSVshguBrVWOHKKlMnRB6M+8G36hobOeFFzCpJ3oDJonBmWIJK03vXUM=
X-Google-Smtp-Source: AGHT+IHKl/sekJF8kry63CsXxWoyv5gAnBtahL/o0D2gWDcZ37fkQHvGiSnOeYrYCCK3s3dcaZ0Iug==
X-Received: by 2002:a05:600c:46c9:b0:42c:a8cb:6a5a with SMTP id 5b1f17b1804b1-42d908267d1mr32500025e9.15.1726235872095;
        Fri, 13 Sep 2024 06:57:52 -0700 (PDT)
Received: from neptune.lan ([188.27.129.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956d3941sm17104749f8f.84.2024.09.13.06.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:57:51 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v6 2/8] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Fri, 13 Sep 2024 16:57:37 +0300
Message-ID: <20240913135744.152669-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240913135744.152669-1-aardelean@baylibre.com>
References: <20240913135744.152669-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ad7606_scan_direct() function returns 'int', which is fine for 16-bit
samples.
But when going to 18-bit samples, these need to be implemented as 32-bit
(or int) type.

In that case when getting samples (which can be negative), we'd get random
error codes.
So, the easiest thing is to just move the 'val' pointer to
'ad7606_scan_direct()'. This doesn't qualify as a fix, it's just a
preparation for 18-bit ADCs (of the AD7606 family).

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8ebfe8abc3f4..032a8135c912 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -114,7 +114,8 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	return IRQ_HANDLED;
 }
 
-static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
+static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
+			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
@@ -128,8 +129,10 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
 	}
 
 	ret = ad7606_read_samples(st);
-	if (ret == 0)
-		ret = st->data[ch];
+	if (ret)
+		goto error_ret;
+
+	*val = sign_extend32(st->data[ch], 15);
 
 error_ret:
 	gpiod_set_value(st->gpio_convst, 0);
@@ -149,10 +152,9 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
 		iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
-			ret = ad7606_scan_direct(indio_dev, chan->address);
+			ret = ad7606_scan_direct(indio_dev, chan->address, val);
 			if (ret < 0)
 				return ret;
-			*val = (short) ret;
 			return IIO_VAL_INT;
 		}
 		unreachable();
-- 
2.46.0


