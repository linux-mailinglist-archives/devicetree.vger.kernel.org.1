Return-Path: <devicetree+bounces-204767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F7EB26C16
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B6DFA040DB
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4804288C1E;
	Thu, 14 Aug 2025 16:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qpw4hO0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99903248894
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187628; cv=none; b=aeyUk1vVg9zsCJFYFuaVUo/0rMVsHv8wSyrozN9nOkzeWWvfmZX5V0LH1RrMEJ0FfjgA6DCH86QgjjyiSibNCmY2P5xkb52Xgz61V6QmyXeYtpZCR9cbNenoJCT8apsT7cToCLW/S76MS7TaxubI+aZGcssDRf4hwEkUY9cXebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187628; c=relaxed/simple;
	bh=tGr7ZdC9lWhIzCCUsw+rFlJmgOHa5c1oy9NRasjlofM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hg4PL+GXRKATMtbe+78lxE7iUMHmTfSP9UA76QjWWdRtZ5OKb6aUTZoI+9T288oWeTkoD2mO4IBmWK2dTPI9it89AYsoofmJ6dnZMl5FPhrm7SZRBoYSD/9GxUh3PWN0rLhAR5NV6GgJzEt3UiGap3TxCzMbHVn+Wd9bVLqzsjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qpw4hO0d; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a1b05fe23so5990725e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187625; x=1755792425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIP40WisTeT4zrEy6wQwK47oVAaa0UgJRrDSFCcyNWg=;
        b=Qpw4hO0dtRi+GaLCNUcinFGipsBEL+i/BFhL4ouvTZeBy/fZfOYCvQ2LXd3+6CXxa1
         X4BXls5DLFYyej9wdnEspJL5svTXa/N+SvA8rDaTrkKbNxozcnwgqzpQm+0huOu7wdYc
         Xt0N5GQ9XhwMm9fk7fHmsFsCE+QiY54o9y9So6k6ATPg4QcESDo5C9p37CbwOwHgowA3
         WshOA4B8nMzBqLQXB3csqDJ0WmchHB0lRAp1VT1T9eKUXvN355UyF0iBYEMrzdd/IeS9
         CaVC0ZqpeTZv1yWUGhUDpRG510PE4aMR4sTZ96h1f8lFGIJGtMC0WaeP8IkjfooyVTLb
         oeHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187625; x=1755792425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kIP40WisTeT4zrEy6wQwK47oVAaa0UgJRrDSFCcyNWg=;
        b=A0ukWQ5xoaDRCIWscrNQdv2tIP6brWn/AMq3IpSkocf88+0qUluGsbPje8oTlchkWW
         uO3P30sHh9JGZVWQmFkyh0oam2jfNfJ5ey+sDoD/rnadXOWD4fwFx8WJHZxXyxLZiwlq
         s2QIxjDwT1CAmN9caD2JPYXDaMcyf9RIqjnCbC8h+xx4dvLauVlM8Uj5exM1gVlGjU/h
         KwjcSiWd6CvqrfLLfTjKYv0jgcbLAQccWinA2KtMJfSDY+nY/kfTYoHiPZnZoiOFSL4T
         uGv6o7HJA5GZxo848H8nYhXJU2yfCo7fUsMC9OLiEUjhR7R6KWAVcvdNj+LNjCw1V+4o
         eZlA==
X-Forwarded-Encrypted: i=1; AJvYcCXqgMrOCvXaBd+byI3rD4I2VUwEGEgIAS5NCTKj0Q0XOOv/zUEUFzd8cgPSk2NgnoN6RR3Sn8hcmp/Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ICNkLmSQZ4GLb6bqlXC+QGHIgNGHDfVPkpneUJOs2cojlZWR
	tUA5mNO+HS7cRxr4Ljkzk9DeSGVdx/NBuuGtE9+cHjfoLLybkAZiu5dep51FhYsgH6g=
X-Gm-Gg: ASbGncswtv/8n8ie0C9p1QaoimGsQtnPWoSJvaulTm9bP5BKYN6E/Q69cyslbgBZX0n
	dSgKb+xeX7HBxEJFseQm8o4fy68LrPRHC5lg3DJ5ulLDmXGzGurtNq1Lo0sEwUaWbD0S8ixjZr8
	AzDlS4aBiyWzGqVyoglxyQ2i0CWFrUku/+OGw/9dXC1zp+jbVsmsxb3kdKnu6VYBYmQz16vjH3h
	+T+dyxUdWG56LQvlqkSodvdAgGiBTTHcP6K3Mkgd7LV1GW/mPqiqb2QmxnAXQsJg5+heFVkV6iU
	3+g2AqfjImtMQ8XZHTQ7Pj5s2f3Xxyp1hrfv4gbHb5Na2CdKZBxIiIj+jRimpfNMgNxWXMNyMsG
	7PB+q+uy+jfEDT/rO+LmxfCuarHkuWt4=
X-Google-Smtp-Source: AGHT+IFHK7GjTXRXCwZAe8/WmOBTSJ+eME2lZCidVPBvgVxCWAF3s0hzjYhWMNTNHWm2p91GYyv0Yw==
X-Received: by 2002:a05:600c:4715:b0:459:ddad:a3a3 with SMTP id 5b1f17b1804b1-45a1b657876mr28054405e9.25.1755187624778;
        Thu, 14 Aug 2025 09:07:04 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:04 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:43 +0100
Subject: [PATCH 03/13] spi: spi-fsl-lpspi: Reset FIFO and disable module on
 transfer abort
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-3-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

In DMA mode fsl_lpspi_reset() is always called at the end, even when the
transfer is aborted. When not using DMA, aborts skip the reset leaving
the FIFO filled and the module enabled.

Fix it by always calling fsl_lpspi_reset().

Fixes: a15dc3d657fa ("spi: lpspi: Fix CLK pin becomes low before one transfer")
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index c65eb6d31ee7..aab92ee7eb94 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -734,12 +734,10 @@ static int fsl_lpspi_pio_transfer(struct spi_controller *controller,
 	fsl_lpspi_write_tx_fifo(fsl_lpspi);
 
 	ret = fsl_lpspi_wait_for_completion(controller);
-	if (ret)
-		return ret;
 
 	fsl_lpspi_reset(fsl_lpspi);
 
-	return 0;
+	return ret;
 }
 
 static int fsl_lpspi_transfer_one(struct spi_controller *controller,

-- 
2.34.1


