Return-Path: <devicetree+bounces-33184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA488327F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF8D51F25169
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0684F201;
	Fri, 19 Jan 2024 10:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MQsE4ZIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EE74EB41
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661143; cv=none; b=mr+kcOuv3xxGF37fbt314tWA235daXOD2PXucBTtpEgi+yjIEknUCe2T61ywsVtLpH/IYNfx5OWZIbL2WjBsZuwkVrwtnnOXtbbYNrS8iJe2/uTDQ68TrBtUy6e7d/qBtRxX85E6JpNOChDDp9qhdo6/PEKtxEniDGklurjbh9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661143; c=relaxed/simple;
	bh=Jz188uwP5LRaM+CsdGI2KPSSsJyfUc0rsQSvFPr5zcE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=emboNsXe+D1bLdBYcLoQK0xERStsDctkjJHEdv1/gyBRJ6je76jeZynQ/dmuUD8HEiWzM4Rd6O8WQ87kOHJCb7X9xUqCWgWGSnPpFkrP5Q5j+o7s23enwqYrkqje17Qt7Mm1NIZwM7AjyQZbQfXdrHI9AWwfvPAhwUCfbmfq5tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MQsE4ZIY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-336746c7b6dso488801f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661140; x=1706265940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z2lQIakjCIKG/8t5br1DwDXAqAW0N+QdSof5GZ/rHIk=;
        b=MQsE4ZIYVDNmVYjVenFQMZenm5kXZ7to+qH2HF24EioLR/eLeCwRFJV1nmPwf/6i3j
         +A78rR9mM6cxlp2rCAxRWoWBpM1KsXU94DyDbRd4qR/kbqxCSr/XyVgJ1jbXpXAofMmw
         Z3ztzeqfwPvVnhXJtBBC0bWwES2+uKoQ/LL1uVTa5p603VbTbN2nQhDyD4ELkWArP8PL
         xGOFeb9V0ts1hzWV3vn1xy90Uum6FDxrC3Q9eqmqx+bU5NKJczir+5NdMxz35vWLE35h
         zRQj/Y+1TQrVrB2BOuERtCigy+wZMYTzR5ars+0UdMXXjdr6hyOfbQUOjz3udaay5nR4
         GzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661140; x=1706265940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z2lQIakjCIKG/8t5br1DwDXAqAW0N+QdSof5GZ/rHIk=;
        b=YNInxfRmK6Vhhr9tvzZhGdfWopUN7ohzK+zC7QBw4axRA/RRSvXjtrtSfYWZP3U5+Y
         VxhXiJSZKX9oldlyN8B3BUTCEsM8pHDjt5dtWEOO5h/rcac/+6kUQe35mBvs+Sza3E1g
         jtDjNfpHJSAuNMWipPw32iv+5gmEFCEZSVSA/9iRqeCxRMKDazN3keFpaJ+wAOuM+BVd
         3SNwbmrRR4Dbcw3whe5zZ//PbO6FrZnXqcLuX2DnFqqGFL3eXdi3CtzOasyLCiAPu3KF
         cTpYI7ZQMKpN5xa5mjmq94vQ+ygxYBRua5XmBflptovTnHZwqr9v5S6IlFoPUrGJPGpd
         syPw==
X-Gm-Message-State: AOJu0Yyp03fvJM5nyHCA1q7M9FmIZAFgsdn6fxVSIZNWtghXPr+dJQjQ
	t2amrP1rdsgG2dBl13iOwWeit+5twE8mO4Py9+xFw4QKAV9k4T8XerqDuwxCrKg=
X-Google-Smtp-Source: AGHT+IHooBhyW3xlDtUtOrRtWsnJD3eWRLbdkXu0zI8InTcaCbu308wM5VwUc4M2ZuUJ65W1vn7Buw==
X-Received: by 2002:a05:600c:3b26:b0:40d:88c6:b9b with SMTP id m38-20020a05600c3b2600b0040d88c60b9bmr1315643wms.123.1705661140719;
        Fri, 19 Jan 2024 02:45:40 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:40 -0800 (PST)
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
Subject: [PATCH v2 12/19] tty: serial: samsung: make max_count unsigned int
Date: Fri, 19 Jan 2024 10:45:19 +0000
Message-ID: <20240119104526.1221243-13-tudor.ambarus@linaro.org>
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

``max_count`` negative values are not used. Since ``port->fifosize``
is an unsigned int, make ``max_count`` the same.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 4bb75b1eceef..f8a8b459a86b 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -760,8 +760,8 @@ static irqreturn_t s3c24xx_serial_rx_chars_dma(void *dev_id)
 static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
 {
 	struct uart_port *port = &ourport->port;
+	unsigned int max_count = port->fifosize;
 	unsigned int fifocnt = 0;
-	int max_count = port->fifosize;
 	u32 ufcon, ufstat, uerstat;
 	u8 ch, flag;
 
-- 
2.43.0.429.g432eaa2c6b-goog


