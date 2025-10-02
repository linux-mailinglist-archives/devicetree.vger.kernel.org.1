Return-Path: <devicetree+bounces-223453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4C0BB5122
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 22:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4902F4E4E55
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 20:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF6028CF6D;
	Thu,  2 Oct 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KESQnFLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E431287503
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759435373; cv=none; b=tYuxFSEPOADCtoW6S/NNsnL8VgOCnRkVPg5TJ0f3VbjrxNfANEltZd2Mx8zNZrkuWeCSewDYa1JH4uH1Na6NmpPxF/W34RKl3fbhp4jyc7VUsBOUkI5aQEo2sd/+GyvKvRU12l+SO9q2Y64SSKmIBmev7hPqsTKqk0fE4/87xUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759435373; c=relaxed/simple;
	bh=xqA4WfL7S6BHVcS+M//q/p+VfDFq76/O5OymsIWiwqI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LkPmdcijFaDjT4WPwdrD7h1W9M8c8zlmX5wcARyAh2+SeAf6ZLz82lSD1XH6lXDGblTmmMArNWEMbcadGzAJbGW2zUrcV0NoEhoD9N8ywmuaDQSYH6QafYgz3vPxKow7j2ui7x/KZVX5E/oevs0QFPEn7ZL6eJN49ESIO8mSgJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KESQnFLB; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3e234fcd4bso258408766b.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759435370; x=1760040170; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTj76Kc5BTuQhN8FqnbvXwRLBgS3SMtN0BmmDUIv/k4=;
        b=KESQnFLBlMfbq+a1bsjHmWLrwW2dirpjFdLAp8Hv9qA5hlQJ/LUm6BI+w5Qh7KVJaE
         A3qjOYsZKUb9teywpoT0pWXeswOFVJ5q4mfMOTfUm5wAAAgtbXgfhiz7rgt8btrOfNCc
         QIAQDLLt/wJCxPG9EoRdz5qK5VAdtEQsjI34f75Fkknx8Uj0keblqdqJt4sYkR6JbnEq
         bG1/SD9yPDD3uM2DTtledgw1k/veFCRzXZscCjlrsJc5D3MpwGavsNUBxNf6H27/Npy4
         eYFSnej8e8eOsuU+3HkeBoS4vXkGgEVRueQvKct8tlUionGmX6+CQPzhBuctjYSBDf7+
         CZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759435370; x=1760040170;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xTj76Kc5BTuQhN8FqnbvXwRLBgS3SMtN0BmmDUIv/k4=;
        b=vnF/gud/sCCE5TpzzBhSL76feWvYgD69LAq+gMT1e55h+ok0gJxVGtK7r7jLJZLQaf
         ki83JGOpXXvXi//STQ4ilv8rhLCnpP3zEJiwxTc4SDpkMX0atGcG0Y+6iElJUwZn7Zt7
         J/YWqtbXAQA4Ddbs6gFJzx1lm0L8vz6bsJ0MGarARzjnLaM3xbNl63wIIYGu19o2DadI
         dlOMqo31f6rLm4nO0rCEnv+HbJZTNDaEA9+tICgt6Ug068RcSCYFKP8ljQTDG/GalnYS
         zXpoumR2UG68McbW2GZpMHawCJl3SLGcb8Kss0gZaK7pS2oR0eMaTs1QZ3bClull1GIX
         oumw==
X-Forwarded-Encrypted: i=1; AJvYcCWXW7sDSotmM8JrZ1j5dh2Yf6Wq1XGj6TgBZ7AH3BZpf6OHB1xp5E7ovhAHBvIROkatgMtM7kdMZUO0@vger.kernel.org
X-Gm-Message-State: AOJu0YxJzx9JlOBJMT5p9a9giBEtz32Eoa/8WazVdUK1icvdEPLF2ahx
	t5TEJW5J/EKKvc9UIWkX1QI+YUKB++V8fgn18Xmkv8juysKzZvWZXYj9
X-Gm-Gg: ASbGnctHH1oe3QjkKUWGlt0LaJ+rdlF5SgQ2K8KDOQQLo6SVqy5vUTbTsEoBcrMXizV
	eWFsQ1ZidcRYuCOECUmJq8ycfVTjyKaUDdmcaTQI2zrRieUUTqFjbaLYRnBcIDNABebcF0Er+JI
	ZC8TkLz6MeTqqWIHk1kLDs+w54hiX+KG3ITp28u9EANQEUAAY+FtMwyKSu1N9Odu5epN6Nr/z45
	+ftWebwx7rpEJrpHBs1DE35B2Ufsr/C0YfIWB879vEcSoP0KmuW4nwIBcQN5CIEFlsVIfUbb4Mv
	YTKBw3hChQQ0WTGGWZova2oOJ+bgnUarDagtN1bkH95akdpSP9tesl02xzwIoYqQa+D/4e1XCa9
	A6FKo1cH1ffLP6JKpHHWzuvkWEdwBv4ltjOelfyAzVqpf
X-Google-Smtp-Source: AGHT+IHirNV8dhsgxR2JvSGmnkIh+1Ct4YXCMozn1CUIlPWZh3N8EYqS2S96FuJZnf+B79k/VIzObA==
X-Received: by 2002:a17:907:608c:b0:b45:e8e2:ade3 with SMTP id a640c23a62f3a-b49c439483amr76122266b.64.1759435369591;
        Thu, 02 Oct 2025 13:02:49 -0700 (PDT)
Received: from localhost.localdomain ([78.212.167.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4c1f6sm270880466b.78.2025.10.02.13.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:02:49 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH v4 2/5] iio: mpl3115: add separate function for triggered buffer data collection
Date: Thu,  2 Oct 2025 22:02:03 +0200
Message-Id: <20251002200206.59824-3-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251002200206.59824-1-apokusinski01@gmail.com>
References: <20251002200206.59824-1-apokusinski01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Factor out the code responsible for collecting data for the triggered
buffer from the trigger handler into a separate function.

Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
---
 drivers/iio/pressure/mpl3115.c | 54 +++++++++++++++++++---------------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/iio/pressure/mpl3115.c b/drivers/iio/pressure/mpl3115.c
index 579da60ef441..1da78081ca7e 100644
--- a/drivers/iio/pressure/mpl3115.c
+++ b/drivers/iio/pressure/mpl3115.c
@@ -148,47 +148,53 @@ static int mpl3115_read_raw(struct iio_dev *indio_dev,
 	return -EINVAL;
 }
 
-static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
+static int mpl3115_fill_trig_buffer(struct iio_dev *indio_dev, u8 *buffer)
 {
-	struct iio_poll_func *pf = p;
-	struct iio_dev *indio_dev = pf->indio_dev;
 	struct mpl3115_data *data = iio_priv(indio_dev);
-	/*
-	 * 32-bit channel + 16-bit channel + padding + ts
-	 * Note that it is possible for only one of the first 2
-	 * channels to be enabled. If that happens, the first element
-	 * of the buffer may be either 16 or 32-bits.  As such we cannot
-	 * use a simple structure definition to express this data layout.
-	 */
-	u8 buffer[16] __aligned(8) = { };
 	int ret, pos = 0;
 
-	mutex_lock(&data->lock);
 	ret = mpl3115_request(data);
-	if (ret < 0) {
-		mutex_unlock(&data->lock);
-		goto done;
-	}
+	if (ret < 0)
+		return ret;
 
 	if (test_bit(0, indio_dev->active_scan_mask)) {
 		ret = i2c_smbus_read_i2c_block_data(data->client,
 			MPL3115_OUT_PRESS, 3, &buffer[pos]);
-		if (ret < 0) {
-			mutex_unlock(&data->lock);
-			goto done;
-		}
+		if (ret < 0)
+			return ret;
 		pos += 4;
 	}
 
 	if (test_bit(1, indio_dev->active_scan_mask)) {
 		ret = i2c_smbus_read_i2c_block_data(data->client,
 			MPL3115_OUT_TEMP, 2, &buffer[pos]);
-		if (ret < 0) {
-			mutex_unlock(&data->lock);
-			goto done;
-		}
+		if (ret < 0)
+			return ret;
 	}
+
+	return 0;
+}
+
+static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
+{
+	struct iio_poll_func *pf = p;
+	struct iio_dev *indio_dev = pf->indio_dev;
+	struct mpl3115_data *data = iio_priv(indio_dev);
+	/*
+	 * 32-bit channel + 16-bit channel + padding + ts
+	 * Note that it is possible for only one of the first 2
+	 * channels to be enabled. If that happens, the first element
+	 * of the buffer may be either 16 or 32-bits.  As such we cannot
+	 * use a simple structure definition to express this data layout.
+	 */
+	u8 buffer[16] __aligned(8) = { };
+	int ret;
+
+	mutex_lock(&data->lock);
+	ret = mpl3115_fill_trig_buffer(indio_dev, buffer);
 	mutex_unlock(&data->lock);
+	if (ret)
+		goto done;
 
 	iio_push_to_buffers_with_ts(indio_dev, buffer, sizeof(buffer),
 				    iio_get_time_ns(indio_dev));
-- 
2.25.1


