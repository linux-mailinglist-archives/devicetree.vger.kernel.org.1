Return-Path: <devicetree+bounces-42383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB96C857670
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09D2D1C22519
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7361AAAE;
	Fri, 16 Feb 2024 07:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hhhqgbgK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0121F17BCF
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067168; cv=none; b=oVOjeW+cV57/+kGEPWGdQFt4ZB9N6QmaTD0qK3fGAHfYeujHoK8XzzSMMxl1ofSOHIt7/U+sbPe9IwSjPFZf4nLmzXFxqjDv2+m9Mv8SrTyK9ZP1uB3FpR+zFe28d9N8q59ov5vjGqOYkTOpZpVrFbirrP1QphRa1Zs2LSEkhW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067168; c=relaxed/simple;
	bh=A6brHfiw3JDp5JkUp4QyeFF8EuAKOKzvuHfjCHdzjtk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m7t+W8urYhO78sR7X5uUEAlKpXdZgp4DYoyIVJqDBS6Em+/mRWOK7awH8Zo5Gc02XCoup1k3AfOjVLXxKwmjJ/sj5Lg3PUvgZvx3aZjmRdr/MF0Iqnpb0PNAaUf+bnzeVVl1NXemsXbs2imrlnfVoVsNZmys0qgs/lrxSGlWJsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hhhqgbgK; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-411e71d8a2bso12046775e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708067165; x=1708671965; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hs676vE1oPrjFgO93552CvPBZ3kPEUhKELlxqPQ87Xc=;
        b=hhhqgbgKwqAfvCySjHTt9sGCLKlL2A7CJ7SmC9fZhG44dNv78FIP1zSPAgIxtTA7lg
         7TbCAjWLj9IggIjOVZAB6yFrYoFKizKXbLkoALr7kI1E/5+b9RVmyZkaLdrIvNdE+qqw
         Fdb5mSuh0vmqXWfHiVgcH3qUMrP9ym2Asy8lDED9iBNQPi4JECOGoMAg4OhE390NEDcn
         R4W23LxdZsZFw71UHTF9/A4RKRf8eiBv6eZF7M4yIj3oxT/Gb9I70e0Q7VaZJfEm+T7Q
         LC6c8d6lcg+b7RNXrZ0PaBScUN5EMIzouSAmI2TMsP8TvtjWfWEPMD2yNSnnYOkMczaS
         5wsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708067165; x=1708671965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hs676vE1oPrjFgO93552CvPBZ3kPEUhKELlxqPQ87Xc=;
        b=BF/fRhDcZaIhb6eheydDdLMAEA3WbwUaUFCHLsDpU8/xsiztyjtzWthgEKNeyPYle5
         RXZC64ZviD7P7tUPcYwSIo8MzTV8bUdGGMv/Y5R9nGablDBU+1mpsww5tT5SLgdp3hIQ
         aE5mabxWNx4subTkbW3kmKYuFHp9N7+yexenZkB0Z811WRIJ+880Dwt2+b8CWySuvWVL
         rA5bqzUn/hDwTQZvxTZMlBvZi81U1ptQivZT29AX6IBW/JPe/yfiXhtDyX31NBAKJHTl
         XZuIA63ApH+52JuyP8tsmTWimD30HfcWavgrC8b/zyTaIz3QOjaUWKpC+utewYaQQGOb
         COQg==
X-Forwarded-Encrypted: i=1; AJvYcCXs9HZTQbljjC/n2osmjUAa2MBmaZVd8vpjKn/H6Msxg2GdxKiUGyHGpq2ZAZGTxUCGx0deVns2Q3oZbuqopCQ5kcoSk41nD8SjLQ==
X-Gm-Message-State: AOJu0YxUdJlI+igq14DObMSRA3swfDgDONpHLwF3pAkjEBdTpZp+J+Hr
	75+QaxNHLDySAgk0x9M2L5amc50jrAjMom8bGY4XqMSpzJfwHPZN0Hi7iw+nAtQ=
X-Google-Smtp-Source: AGHT+IEX/hwRNYuZKtcSXuowtu9eyX6oqcbcAj35MgfKoCBlzipRM+KMcdgRqx7r5x1whfKYCDnT4g==
X-Received: by 2002:adf:a446:0:b0:33d:4fa:5e0 with SMTP id e6-20020adfa446000000b0033d04fa05e0mr2453175wra.66.1708067165166;
        Thu, 15 Feb 2024 23:06:05 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d66d2000000b0033940016d6esm1298839wrw.93.2024.02.15.23.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:06:04 -0800 (PST)
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
Subject: [PATCH v3 05/12] spi: s3c64xx: retrieve the FIFO depth from the device tree
Date: Fri, 16 Feb 2024 07:05:48 +0000
Message-ID: <20240216070555.2483977-6-tudor.ambarus@linaro.org>
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

There are SoCs that configure different FIFO depths for their instances
of the SPI IP. See the fifo_lvl_mask defined for exynos4_spi_port_config
for example:
        .fifo_lvl_mask  = { 0x1ff, 0x7F, 0x7F },
The first instance of the IP is configured with 256 bytes FIFOs, whereas
the last two are configured with 64 bytes FIFOs.

Instead of mangling with the .fifo_lvl_mask and its dependency of the DT
alias ID, allow such SoCs to determine the FIFO depth via the
``fifo-depth`` DT property.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 72572e23cde5..b1c63f75021d 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1263,7 +1263,9 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 		sdd->port_id = pdev->id;
 	}
 
-	sdd->fifo_depth = FIFO_DEPTH(sdd);
+	if (of_property_read_u32(pdev->dev.of_node, "fifo-depth",
+				 &sdd->fifo_depth))
+		sdd->fifo_depth = FIFO_DEPTH(sdd);
 
 	s3c64xx_spi_set_fifomask(sdd);
 
-- 
2.44.0.rc0.258.g7320e95886-goog


