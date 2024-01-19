Return-Path: <devicetree+bounces-33187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9DF832805
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66B23286818
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D7950A6E;
	Fri, 19 Jan 2024 10:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YI7l/tdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CA94F893
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661147; cv=none; b=Z4ub9/hgMnS489+WKCRbUfv89dTGpnnv3B2RFoNTP5MWcG2zoa/Z3AgfT92aMoRFflydidTZlxsDoVSFXZencA8GrI8CYceCW6f2yfChZAW+jpUERvcZBerPx8lqFC5MT5sj25hNtW5BWnA0qeOXHXbFOmfieAzqy6vfNg4N9Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661147; c=relaxed/simple;
	bh=RBHphks9zozUQ6IZv2fw5WHYcbPHqrdUfQWDhKEBAjQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FL6jZEVeqSZV+rrxFU0uZ06DDpS+MO0vix62dawdKqL5uvWHn+hzfWEkype4NvMA9VKBy7Xhx4GNpYxAmWYGsDEh3yEOejLEZMkL0wq0tUrTOgxcs5YUj5lCMtvLMKkqAbMYUbWcoiqKB8YP9sUM9wclAZjiTUu9r2VzFN4BLG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YI7l/tdk; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40e586a62f7so7079105e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661144; x=1706265944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jN+fQndYHigW1BmW4SX4atdBHvISKmx6Ya22q2f2b7k=;
        b=YI7l/tdkzhYhHUgGzJ20OwGX3J/xxMwf0mAFL6UJO/cPeX+8XLmG3h3F0sV63jJ+fe
         0QZlPhqlgZwwQUObMnB26D9Y/kFrfXbwzbPp9LNR17NjN1eJF2L9o+UC76zhAaBJ5Omm
         ykwOQ+bISJ79lWa7TxiFH5M3uX+PxEClzJZJqaseU6mo/zHxT30wU8vZaQ1txnJfUgqO
         CjcHdER20E7sGI3ao88rCgShYrQ06utgg55/3lTgqS0d3Ko+MaI5zrJpKLd4FVp3UBNe
         MOia6kejw/o/QEjsIjw5nvwlh8vjRGcXUT2eLFAOlx2JLbH85TbWcmLPLN2/nsaUsSoK
         9Wmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661144; x=1706265944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jN+fQndYHigW1BmW4SX4atdBHvISKmx6Ya22q2f2b7k=;
        b=r7IV7vxUH4XPnsWG92c4QQxMlbnC1fFXN5h3uQghEzu0hpCKrEIVhqdIf5mQV10KVa
         3HWxY5P0sZ1XTnDdbQrMpdcv/8F6yTDbXBjAtYlqxVf74OiAzEallfA11YDahsTvllt/
         Sr8nxgpyxf8s9s/CCQI15OBwyA3ENzo3m1tVdJT3zrhUvE8rJ1+QHSF9BmRv9xA/3euf
         jW2SJN08Dj2Bfj/cW+1G9XmPS95DDevFsXti7R+/LNslQeIOrmMshnTEr6p6QZ4tg/rX
         PGU1/ijxmzYFMGw/sHcEqLQa1wl+cnIwaYSK9pdCIxwhunhSoWNfUxgt6nCgte1rqD+V
         BJOQ==
X-Gm-Message-State: AOJu0YyZf5VbWkMtdgA6v2iA8vknsIYMAFi/Pz1vsvcc6RUJaw86ovWp
	3DaVlZq37BgOU8mqLEA6QxlzQkxba5JaHVUFyooXguAEThKSJSby+zP7pW9S2lQ=
X-Google-Smtp-Source: AGHT+IESCI0xwQtlxycw4w9Pp/Uibs8E4kCALIGxSJJOl9KNU6Y0tZTNZnEhjSdZQgdmVkwjxlMlKQ==
X-Received: by 2002:a7b:c4c5:0:b0:40e:4576:53f7 with SMTP id g5-20020a7bc4c5000000b0040e457653f7mr1371128wmk.49.1705661144272;
        Fri, 19 Jan 2024 02:45:44 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:43 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 16/19] tty: serial: samsung: change return type for s3c24xx_serial_rx_fifocnt()
Date: Fri, 19 Jan 2024 10:45:23 +0000
Message-ID: <20240119104526.1221243-17-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the return type of the s3c24xx_serial_rx_fifocnt() method to
``unsigned int`` as the method only returns the fifo size and does not
handle error codes.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index bdc81ab4af91..149f618e22ce 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -590,8 +590,8 @@ static inline const struct s3c2410_uartcfg
 	return ourport->cfg;
 }
 
-static int s3c24xx_serial_rx_fifocnt(const struct s3c24xx_uart_port *ourport,
-				     u32 ufstat)
+static unsigned int
+s3c24xx_serial_rx_fifocnt(const struct s3c24xx_uart_port *ourport, u32 ufstat)
 {
 	const struct s3c24xx_uart_info *info = ourport->info;
 
-- 
2.43.0.429.g432eaa2c6b-goog


