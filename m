Return-Path: <devicetree+bounces-33172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3FB8327C7
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57E43284066
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDA54C612;
	Fri, 19 Jan 2024 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WhkE8z2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002F94C3BF
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661133; cv=none; b=PQ1om/Cj4hwrb/7wxGJwPdDEFYnE98Md3cUea2i+aseCkb0xzl2tGUepVAV5zKB8fgeB70ARgxIkqqa3gIAj7iJaO3/jc8kytmFobx/ki9ZXWCSXVKEl5iM2SuMpWoD48kSmQ/XPrDQxN88ZEWKVhUqC6pHqrRgLsnPfXmJwrQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661133; c=relaxed/simple;
	bh=t7gRYgG5bMRtFTVmk9IzLAC+h3lcEvsViPIBwnpUPb8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K+LO8paUNlnd2Bf78uzj8FjTKf4zwY1JtXj4uO0l0YV7TiQTuFUzO6Ga17dA/wIqMP7Qsr93kuAaTKkbGmY21fNjXJHHiVHK++o5+thgfz6oTxcdsM+lbnr581VxwXBHWhuHy9VWB/IyXqJYG8Qk7ZFTmWYzFos893PvwyHBqkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WhkE8z2L; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e87d07c07so7155935e9.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661130; x=1706265930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4JVTKruPLtxL591cRzZcEtaSDrfblTI6Ru/0UXyWKbE=;
        b=WhkE8z2LZ3XLGVEFQPjgSScKrabwDOlbkk2JQB5HCq65Ztqd1w+1c3s+s1Vmu9rBv0
         Yr3Pp/2oc4eaiaZcCtySlSLf/nnqc2wqvM9uk5WCUTdlBossWZU4EvopMm0LCXt1qssq
         685FcRO0coYPFOJqGMOYbqpfpYkWLOmUjpjF6KQXoHenhB0hgdO/t2rblOt20FAyr7Lw
         mSync90pBPoUY7iB6gQibDHoCkmuhheDbpqZoalnTpTvdcYbsi1yh0uXp9I65xAnN9MG
         K5T+vA/cFnbgWnzMWIvNqvpBVg1FzoCLrURfQJez2evjbnx7CsP1Aqo30rIbMl3wLM9l
         M0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661130; x=1706265930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4JVTKruPLtxL591cRzZcEtaSDrfblTI6Ru/0UXyWKbE=;
        b=W33XM/ZJKjquwwnugOY0jbt9b5q+B+Xhk4yH1VVOZMQ1hCyT8ZVYMQ0+j95NprjWce
         SX6zvP3GQsD/IxsjnXgc06+aZxQBaD4CsI5EflORTakyOfoSNh64iMPcWfFCsy8HETfN
         0ZV+qzfusvQ29sLQTC+uypnrbQ8Slluf8RjKPwumVfZXh/uuy9IbD9Y3onaPCkgghgjZ
         hL/oWN0YU3gzJiKzCbY0poCMMbocaDpfQIOtfPtTcPi3g1TXVBSTVXmLJ+9ttbWraoiu
         VirvzXFO2hXDQErMGkIzjAnD5T+Mfd+n28gdMNhFOn2RNmYHhS1v3MBAwdPRyIpCoD+z
         pHHA==
X-Gm-Message-State: AOJu0YykiAAf9UKNgwqDfqkoVvgDS7yIt44HlNuKJY6nVDNThy0kastR
	WWmXsp2a6PpcaRjAVjXKQK5nrrUgMT/6CBPPZ/j5E6XfJn73TfvzLYbDNwwBOrg=
X-Google-Smtp-Source: AGHT+IF68W0CE7/RmrCIDeyTMK59Z+AGRACrkjEoAPxJPcDwNgTNmegWpv1XXTv4rh9h1rjoCKS7Hg==
X-Received: by 2002:a05:600c:5106:b0:40e:9699:141e with SMTP id o6-20020a05600c510600b0040e9699141emr932166wms.54.1705661130155;
        Fri, 19 Jan 2024 02:45:30 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:29 -0800 (PST)
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
Subject: [PATCH v2 01/19] tty: serial: samsung: fix tx_empty() to return TIOCSER_TEMT
Date: Fri, 19 Jan 2024 10:45:08 +0000
Message-ID: <20240119104526.1221243-2-tudor.ambarus@linaro.org>
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

The core expects for tx_empty() either TIOCSER_TEMT when the tx is
empty or 0 otherwise. s3c24xx_serial_txempty_nofifo() might return
0x4, and at least uart_get_lsr_info() tries to clear exactly
TIOCSER_TEMT (BIT(1)). Fix tx_empty() to return TIOCSER_TEMT.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 71d17d804fda..6fdb32b83346 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -987,11 +987,10 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 		if ((ufstat & info->tx_fifomask) != 0 ||
 		    (ufstat & info->tx_fifofull))
 			return 0;
-
-		return 1;
+		return TIOCSER_TEMT;
 	}
 
-	return s3c24xx_serial_txempty_nofifo(port);
+	return s3c24xx_serial_txempty_nofifo(port) ? TIOCSER_TEMT : 0;
 }
 
 /* no modem control lines */
-- 
2.43.0.429.g432eaa2c6b-goog


