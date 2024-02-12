Return-Path: <devicetree+bounces-40797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7CC85169C
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDB8BB27795
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 947C33D556;
	Mon, 12 Feb 2024 14:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qhMfyoMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC053D3B1
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 14:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707746629; cv=none; b=cGCjKRNaNgrek3xdyT41sUSYqphsl9JUy6LSrlx3ToNmw7aRR4XdfuclHbyS+PvmmKsY+anun/GlwnKJopcz8LRQKyvPlDqROs2NOwdgCEySH174XBJCiUOj52NRV8XwbrIz+V+kXP+dhrCTWEa5Ctdi3fm/18a4DvNbLDdUG2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707746629; c=relaxed/simple;
	bh=1ZMGRL2bdDrzE8jpO2TRP5Gv5JmPakVuDy7jd5uzp9g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=owqOMQ7xcjiC9YBoAXCC3cbDhYsZzC7/Mz4Mtj6S+viu2LmR90hxh3pA/1FIqPWTTaNuCjCf7zIxA3n50JeALhOqlBWMzWNAkwaR3tV26HA90oIdgicDo9521qiAifQ7thEVMNyqEwQyg9AAWEVAYyEHQfGzdWjSnXS5f+Fg4Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qhMfyoMh; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-410e820a4feso3530315e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 06:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707746626; x=1708351426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/YEBZ5QgPmZi1uvEzjonJi8xfKR7wdfW/zkTSEaERIc=;
        b=qhMfyoMhv6kO3y6XvrZHzeQ3EtdSZdIiVNO44hMWpr0tpH/1oLtV4sE69FOE+eCgEi
         q0HPP+X3I2fOy7G11ATwX1zt9QwfZ6UqtUQi8L3Ks57tIPTklpy0SO8QXXR7iL77T1Fa
         G6tecTfAJF27E+bIIO3YBvqzZ6M1kwqU1+kC/jwSY0yPrMlo0NN3hYElPssf9p+hmx6c
         xm59ixdVwA5GqrrRSUTREShuFti9aWfHZ3diwMrsTVL50OjKmlPkQFIc1ubs9T/+r3SB
         +ssEbNMaMJ0rIX6BRi6tK0rBDagtJqanE9PFI9s2GyAPVBEupeAJdaJB1zVnzs2p8h+S
         wlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707746626; x=1708351426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YEBZ5QgPmZi1uvEzjonJi8xfKR7wdfW/zkTSEaERIc=;
        b=CqlCZ4pB1Oer7JU6XsGdy5EZ/bvHulKcBwgaYmW3LXF1Gbiq4KnIoUAgIZupxuf2fB
         PSUWYSwf2K36mOlfJVBWbew9KnFK+RxR09fvoYC68a+LVzBSDOy9QjcuNrrQV4riC466
         ye7kKexBmXNECzkadvghOw6oYj1OLtCK5rXdxeLet/ypv01Ba1LJ/0X3pkFQ6ll0m0OM
         7xkU5/xmTzsCd2jfMEXmMw2K3tiQkmBkG7F+rEpwTolevOeMr4r7j8E74CAZAJx1d5uX
         +S9diPu/00CebngHcvgjaBazGWiiBEwVDB/x8UWIL/1v2XBs2sJw4v6J+MwNtUoJi3ma
         IIPQ==
X-Gm-Message-State: AOJu0YwIMMeKdGYUNqjZNA2Wtm2NOpGjG/fEtOhx/YRG//apAF9oglA5
	DKaVJLE29YOR7pHjmAxc1zkD5/9J0xrqBBazzx6fHTCh/ING3a6mKrSyHI5AuNw=
X-Google-Smtp-Source: AGHT+IEMUn/Ujlv8/99OYN9W93mnczYnQYRRrEaW3In2VMr/6ZWLFAs8f8nYbCIs3nWugXOejnzsxA==
X-Received: by 2002:a5d:6388:0:b0:33b:8604:5068 with SMTP id p8-20020a5d6388000000b0033b86045068mr1747857wru.14.1707746625898;
        Mon, 12 Feb 2024 06:03:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU+avd8wL8iuEOUD3YPGF+15CK03P0cMjdZum0FGwAAFhBEXXM8bcsjtPURQ+6z2liFzq4eodzK1auoo5Q3JYv/PdEKLDtyJzaOjX5EZOUxC3hUcXyz5J6AJBEeVbrRKek2MaBBETDKc0GPmJSG3fdAUpvmsSIgmOlIBpComLX4JWaCLaNU3GIhjR2nmPqwY6hp3wpaiotOLOQFA7ymTcaZtYpqt5wfnJDkhhnjsPYgNDgo6ebbf0VThnJs+83vsKZBe1gIyB9bzhivHNCUFQKotEI/rqlAZrhyHeJPL1NVNoIdgJ17Cyd+jj7SHtE7VBU6x7VPFkAruymYIKUVoUlgax0uWFtAFFVtD5Q5AgwVfcMkR/IRpujPBRn27Xkd8Abb61qxvfZOfe+wxHciX9o9MxXHM6cgGAFQ+A6OdUFhWGLbt9n0cLXZ2aLW2xzn60WEBJznrlbSY96JSrm0s7pGz2xLqAlcLRQDBQHufKZWANCRNcbw5+MsxpWsrKcLIGyrPCmmv0+F187ecNSQeOhLD1e+frqyOzQH1q084u+IKoy2fNRUL/cF8VXbPr4KRr2F3S4nBraBQGjgbOpMJHx0RRGQjrYnj/jZU6CVt6eaSe/BVxE=
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d4b09000000b0033b843786e1sm2135356wrq.51.2024.02.12.06.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 06:03:43 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	krzysztof.kozlowski@linaro.org,
	semen.protsenko@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 02/12] spi: s3c64xx: define a magic value
Date: Mon, 12 Feb 2024 14:03:21 +0000
Message-ID: <20240212140331.915498-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240212140331.915498-1-tudor.ambarus@linaro.org>
References: <20240212140331.915498-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a magic value, it will be used in the next patch as well.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 6f29dca68491..6ff3b25b6feb 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -78,6 +78,7 @@
 #define S3C64XX_SPI_INT_RX_FIFORDY_EN		(1<<1)
 #define S3C64XX_SPI_INT_TX_FIFORDY_EN		(1<<0)
 
+#define S3C64XX_SPI_ST_TX_FIFO_LVL_SHIFT	6
 #define S3C64XX_SPI_ST_RX_OVERRUN_ERR		(1<<5)
 #define S3C64XX_SPI_ST_RX_UNDERRUN_ERR		(1<<4)
 #define S3C64XX_SPI_ST_TX_OVERRUN_ERR		(1<<3)
@@ -108,7 +109,8 @@
 #define FIFO_LVL_MASK(i) ((i)->port_conf->fifo_lvl_mask[i->port_id])
 #define S3C64XX_SPI_ST_TX_DONE(v, i) (((v) & \
 				(1 << (i)->port_conf->tx_st_done)) ? 1 : 0)
-#define TX_FIFO_LVL(v, i) (((v) >> 6) & FIFO_LVL_MASK(i))
+#define TX_FIFO_LVL(v, i) (((v) >> S3C64XX_SPI_ST_TX_FIFO_LVL_SHIFT) &	\
+			   FIFO_LVL_MASK(i))
 #define RX_FIFO_LVL(v, i) (((v) >> (i)->port_conf->rx_lvl_offset) & \
 					FIFO_LVL_MASK(i))
 #define FIFO_DEPTH(i) ((FIFO_LVL_MASK(i) >> 1) + 1)
-- 
2.43.0.687.g38aa6559b0-goog


