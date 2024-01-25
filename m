Return-Path: <devicetree+bounces-35118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 447E983C593
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:54:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77D2E1C24B4A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CD286ACF;
	Thu, 25 Jan 2024 14:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xq00kVaa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA59981208
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194228; cv=none; b=XLookv+c5Jz2Dft91m/STHI6ZTCkRIWPnfJsRUvOUy4ENdFE8BbEG3FU6aIZmBDbmDNkSdpKuXGoBJ9/5TYsS55eZGqrd9bKT+JnzKDgq++TaXmfl6abeKU49ETeYALLGLQ1o5b0bzuu4Qimv/Ey7N+8ZLbE+ZYkxLHMnXhJNoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194228; c=relaxed/simple;
	bh=BMnHD2dtw0Q+/VBvgqPiw6zeufZq9wG7qlcCmbu3aCw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rCZn3GP8Lq7WheqQ17zVia7mHu/bZe/cFYItY+3/ScART1MBkVjVR6hY42Rfihw8gNHzd4SnYl9QpF7Za7FSGoAbHN/XkZAEYyaPA1HpNWJgZTSLmDyKdFaFuy3GyaZkOAQLytCjLvKOSM2BqoQ0O1gvTEIVvvoqvJ/Veb2PM0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xq00kVaa; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso79949365e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194224; x=1706799024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YODKSwwosS+Boh3Md8IudPiFt2ZVlyI0co3V0SoeDA=;
        b=Xq00kVaaLgJocw69dajORWZrvF+jg106QL8zKSK1pE4yZgFFl/8JVExa3PbN0oezme
         0oJvTkVdH7VOx/i63chNWnZ2UZe83zryqZr3TqFLkXaLRHekP7bpZfEyXWHAKBY+dbL2
         gQuRqkWqnaTxJe1qo8resDhFcuW1h6SAqWI+qcH8/v6lrdMpYgDoiaF1f2QtsUugoGlC
         QBsTpWgsIaysBUWMIggNh+eo6Fpq86E3+bKTroSDA84cYoYFvKpfNzfSRApQ9e9R6vur
         vijPxe3guc/gX5ECGeufRmtDCnQMvNU7tT9llhGPZ9rM68VzQC2a0VEQsHkqCWVlmhIx
         MgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194224; x=1706799024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YODKSwwosS+Boh3Md8IudPiFt2ZVlyI0co3V0SoeDA=;
        b=pHl1OPSwWxOrwSiyqYFl4S+hIrntoNivksACatDj9qWnK1BMFIK9A77I8L1HBJSqXJ
         CXBOuuqZlxP/OMZMsIPZ/TUqYmpyxuaj8DPDEIngid1VmmEszRYnjj05SucXhTGm6Cao
         Vjxrxq0WzzrdTMwNAVdBC3boUxjHwjD9r4Wf7ZaP9a6c5+4xAJugLo0vFocFvXG6R+6x
         PwwKY3+5fGEq+u8qzhZFJ7TmgMxMb6B+T8AkLAAY5JZdYx3J6JWW/cYMH9JXER9/4UfX
         bhoE+SGL7+LcwMFytEV12+4xXSMxjBnQKRv3u/oS5h0JHMpgfhhjMppLU05tZKyb8sn2
         2oMA==
X-Gm-Message-State: AOJu0YydWmzEJ2gIWQbHseL+qFahNQQiyXy/hemfFPKDZ26ZTe0ea4m8
	8E2z/SQKIKFUfjbn9Ls7RDY5L41RW5N+1nPTNRM9vT7HYqg6R7PJIbV6W6zvrro=
X-Google-Smtp-Source: AGHT+IHQibS5o6WlTuiDCwT7ZjkLtBnPKNQkGAG1I79CB9wOZ7GILO1eVGmHw8GQaGabYq+jMXwkKQ==
X-Received: by 2002:a05:600c:6b03:b0:40e:6f03:45b5 with SMTP id jn3-20020a05600c6b0300b0040e6f0345b5mr390308wmb.261.1706194224044;
        Thu, 25 Jan 2024 06:50:24 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:23 -0800 (PST)
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
Subject: [PATCH v2 15/28] spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
Date: Thu, 25 Jan 2024 14:49:53 +0000
Message-ID: <20240125145007.748295-16-tudor.ambarus@linaro.org>
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

ETIMEDOUT is more specific than EIO, use it for
wait_for_completion_timeout().

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 447320788697..d2dd28ff00c6 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -523,7 +523,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
 
 	/*
 	 * If the previous xfer was completed within timeout, then
-	 * proceed further else return -EIO.
+	 * proceed further else return -ETIMEDOUT.
 	 * DmaTx returns after simply writing data in the FIFO,
 	 * w/o waiting for real transmission on the bus to finish.
 	 * DmaRx returns only after Dma read data from FIFO which
@@ -544,7 +544,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
 
 	/* If timed out while checking rx/tx status return error */
 	if (!val)
-		return -EIO;
+		return -ETIMEDOUT;
 
 	return 0;
 }
@@ -574,7 +574,7 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_driver_data *sdd,
 	if (use_irq) {
 		val = msecs_to_jiffies(ms);
 		if (!wait_for_completion_timeout(&sdd->xfer_completion, val))
-			return -EIO;
+			return -ETIMEDOUT;
 	}
 
 	val = msecs_to_loops(ms);
-- 
2.43.0.429.g432eaa2c6b-goog


