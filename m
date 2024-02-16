Return-Path: <devicetree+bounces-42380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D836E857663
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8401CB226A7
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36324171D2;
	Fri, 16 Feb 2024 07:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zKJejbt3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F514A90
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067165; cv=none; b=uLhNRdkMBM8nhqj3YU0t7f4RwuIErF0AtlBEhzU0lvhyMIq8oApLv7RCjIATXwt3cT9Xk6pyec4RxK2Tq77rZ6B86YLxInvBYrOUd1WgKljxeoCFrYPs+6vQ3/smUJ1sShZ+b1CYi7yabU+uOtxurygzKB08Wk/V74KfqMhvGHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067165; c=relaxed/simple;
	bh=p2Q2nW4uvqPu31oXeDNl/7frQRBtH2FL2b3+8nc0Fo0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M5huVPZ8U2KgxYAJBekbaIpfoDLXqQAx1XBpk3E36+sWZFdkzZFn3Uy7Obw/WqitU5m+p3Qw1CG97koV1U/EJtXoObpHwrCLXv3jt8gtuY6luTvdYRbalcVT22vU22p4z1iqrPfnwuhaqbWF56WKweEP6zFzkqVaFew3pp3k2Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zKJejbt3; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33d118a181fso616656f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708067161; x=1708671961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4fweEbO97J5QIjA941SE8yy8/h6DEGER6dvQE2i+PI=;
        b=zKJejbt3F0sw2TkTyfWYiXE7wdwiaJQa5+OIeS+We1wNwxmDYErO848GhgZK32DsBs
         /7AMhwDX1lVYEYH+B6pQra12B/FLGfn8LzjmemOtUFEWuBAHrjAuaZSu5RpVe6PQ9xb0
         OUkmI9/6GBEe9PDipC/ELCoADC5KmTi6GSK7+bNsCeIuCA4Tcpt+d/QGj70B+TXOLzeK
         yLzH8OBXlJ3DdX1e/doO0akIX5JX7s+St6UNb06stphLpRbWCNWRLN6vf3QjRcAE8wBA
         b71VKDEngY19QsjbLu5hChPXmZ0IigJKKCTCyqTFrCaa7DzCKW5hvL/RyOsnKBKl9WzW
         YA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708067161; x=1708671961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4fweEbO97J5QIjA941SE8yy8/h6DEGER6dvQE2i+PI=;
        b=NJtaKNuFrqHa9BUsuWTHWK10zjC9SfFmOcNpN5E7U0QcloQDazT+WQ8ZijUKaoElgG
         Fif4KxfEkD340OPBiTc7jJJUgVs/ZHscdZsHRl6asGcaslSn35FOp+OuzgrFBLBsoTKW
         5QetmPoH/e6f90yyfv0CUYVsnxhheFphzXpbyNp2c0mdFycfuGcsvYQFAU580PHE4nO1
         77MRYbeH6YjXAF/7/lgI0nOFSjKDlfkDv8G+k7/MmSCiklCDPMrv8Azc2rsuiv+UBEC+
         7M2ZK3BTRl81cgyMMi6e/XV1rkG8DSatiVkm0qX0auys0jhl/UCDeskZKuUKAuJeIDOq
         cgSg==
X-Forwarded-Encrypted: i=1; AJvYcCW1CtZUDMcZOL79wpfXUzJIG3lKYcIszmJXhaquvik8OjTdH/VKkBAKT96yKEHYtRdO3/fC9udRnr76t4EO08QwJZeYVO0MWvnNWQ==
X-Gm-Message-State: AOJu0YyGIEEJxuLddw9dodBL/W/BmUH95Z1sFAtsiotBtEUwTz/CALMk
	hGFRVL3qO4Zi2gi8qzNCWE+xPyVkLbfbWoIwWllwrxzyFEa5hTxov5LAota+EQY=
X-Google-Smtp-Source: AGHT+IGNTDNcX3yLe4cA7IBsE2D0ybjAgGYV+Vet+w3kDi3fkoc8XRRHeXTdsbbg8juxa8VlLjF5Fw==
X-Received: by 2002:adf:fe86:0:b0:33c:f638:ed0b with SMTP id l6-20020adffe86000000b0033cf638ed0bmr3032323wrr.8.1708067161478;
        Thu, 15 Feb 2024 23:06:01 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d66d2000000b0033940016d6esm1298839wrw.93.2024.02.15.23.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:06:00 -0800 (PST)
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
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 02/12] spi: s3c64xx: define a magic value
Date: Fri, 16 Feb 2024 07:05:45 +0000
Message-ID: <20240216070555.2483977-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240216070555.2483977-1-tudor.ambarus@linaro.org>
References: <20240216070555.2483977-1-tudor.ambarus@linaro.org>
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
2.44.0.rc0.258.g7320e95886-goog


