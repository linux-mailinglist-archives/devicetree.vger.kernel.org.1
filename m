Return-Path: <devicetree+bounces-35109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF983C561
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDD62B235F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930EF74E31;
	Thu, 25 Jan 2024 14:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NBTOpaF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0493745E4
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194220; cv=none; b=pSFC6fmgfyHfOmY7ucUVuq6czV2ludHAn3NQwL66HAw9ZCQLVM4VrTmFLOmcz5/wSwgvIGfveP36PQ3wUq0ETHiVFgj3V6DFlYaCSoHQ6dbcel/kVjdEfrpGnhz7GjyYZIlNzHo7vtqT3/HymzwwQwTRDTSnWZou8aSg5pRmwfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194220; c=relaxed/simple;
	bh=wja4sjDZUzyEJmTYDZeNeJO4ez4z4bixbTFjT7SJ0h8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FlhGcdGLSeST2H7RdwPaVuW/UQ9Uco6vuvl5w8xQ0Q/9uMx0N2YBV6Z+SoznqXhGEYdQSueV/lHKwysbcB/MQnLS+f4Xo0s7eUoU9moVduN+XZIoLRVlJ1ThOYs+1hX4JcBbvmvhiVbf/Kz3+fwfTZKzcykAwmhETEVlG31D/zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NBTOpaF7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e60e137aaso74620915e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194216; x=1706799016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2zGHL3l4HfFHILf65OAbwjVhYLd59O+yJnAHxlD6UM=;
        b=NBTOpaF7eeh0TPXlKqetNLy4En7VUv01JEA7geLtjIlbJ5KIpDYfy59qRgp2uedpLj
         V4SlkiZkPENc/uyHDmbAiBv5w85hniRZp2ysZS+d4U0go2g760lXxETKdNCfcIvDZJq7
         XUjDf/MPVb125HZ6beZyonNQ2LrA/MAtj9HlzX/Hh9SIpoXacLsKKEsWa/YWBQqDc/Eh
         m/ChNf1OFOFvI7aClLQ3agVREUk7CRO+8r+uVRdtjBjqplYv4rIaMUCgG5GknWk0mUHV
         CRNmVHs13Kc9Fzbi+BGuwqsz7LOTk53n0ikZjQuJOJ70/8+N0DjInJ4qBuCm0Lqf6hWA
         WGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194216; x=1706799016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2zGHL3l4HfFHILf65OAbwjVhYLd59O+yJnAHxlD6UM=;
        b=sfjQzqUgnEC4FpPcvCwiSGaqzboTVd35fHgDBTG6B0+2NarNNW/J5gw6MCqZ0tzLns
         1dZxNn49K0PhK71ouX+g10Jqtg7uu319SgUW8ypDx8huWbH/Ix4dT6T8k4ToGVqTNAWZ
         nPC5TS/EHjzMFDWXybuRBvi7gZpreGFUbBYfbv+h/2lUUE/t3f5FAGe+0oNWlWYGG8Ym
         nHBV3AvnIonC80vzCUIVPy27oP0+zmMGLcsVDk9jeGK1jHCQlKMmeC/t01Rcmyw384hH
         WrsAeRsPtHgwP/WouHPn6TizGFAL18RjtvJmaOuUY9Ag+iDixKzDKiazbYyOJKrVqY90
         IrVQ==
X-Gm-Message-State: AOJu0YzYe0135/Qj2LEbe7JPzsWBnvui1lgH72ImsWsQgv6qztgzLTSv
	eJOweyT+AvyzzT4uRNzUQPZq14QUad1JX63Ehfm3iPoTyfJujDuLhSC9KY1hPhU=
X-Google-Smtp-Source: AGHT+IEJ1CIdTrTRD4BA8d8gYFgNBWkIAgKqFXH8Q364GdBqOQzM962Dg8TpAX/PiqTFyXyRbfeI3Q==
X-Received: by 2002:a05:600c:17d0:b0:40e:5562:bcda with SMTP id y16-20020a05600c17d000b0040e5562bcdamr513612wmo.155.1706194215945;
        Thu, 25 Jan 2024 06:50:15 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:15 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 06/28] spi: s3c64xx: sort headers alphabetically
Date: Thu, 25 Jan 2024 14:49:44 +0000
Message-ID: <20240125145007.748295-7-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sorting headers alphabetically helps locating duplicates,
and makes it easier to figure out where to insert new headers.

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index c3176a510643..230fda2b3417 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -4,20 +4,19 @@
 //      Jaswinder Singh <jassi.brar@samsung.com>
 
 #include <linux/bits.h>
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/interrupt.h>
-#include <linux/delay.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_data/spi-s3c64xx.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/spi/spi.h>
-#include <linux/of.h>
-
-#include <linux/platform_data/spi-s3c64xx.h>
 
 #define MAX_SPI_PORTS		12
 #define S3C64XX_SPI_QUIRK_CS_AUTO	(1 << 1)
-- 
2.43.0.429.g432eaa2c6b-goog


