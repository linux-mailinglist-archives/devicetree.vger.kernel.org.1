Return-Path: <devicetree+bounces-175524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912FAB1190
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15FDB1BC1D6E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69158290BA4;
	Fri,  9 May 2025 11:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BaJbqu2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F62928FFEB
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788825; cv=none; b=fDUIkMLvCjqsI+UPBFXyms+uasNPMu4cTbjx9+15y+hzago+uO+hzlTMFloGMVgAmbrGXbJh+DowEI37ykkNZbTyypjJKIniGdlZJiDHsuZ9kSUmKdypCNivtQ8DlOsh3suEASYZwYCILuk6Z9tD+u22KrPp/vWtZaBl2l2pW3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788825; c=relaxed/simple;
	bh=D+fL2YJhn78smRy/FVA67pJck8oxKruZt+xjNMzmkhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QSXC8WpDWzhuf5z77HNpxiznk8r57IBu5eV9XWwLr6mAFjVn4abkxgxfCH5QSIwnehlSRHIHVL/d8/vrQfZ4dNaIuBURpl9xnYY8WR+Skrt2VlJvslOSutOABXIgucREpPZJueofnck2qnNeyPkcUDXZC1LIMjbYS6nN3m3Utfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BaJbqu2w; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a0b6aa08e5so1820267f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788821; x=1747393621; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82buFIB+rtX6lyncKzfqQ1BjFEonYyuZcyA3lmRU5C8=;
        b=BaJbqu2wieti/Q0iXiU+KNwCmkqfsm46IRcDT0Ic90dMo041YTrb3WmtPFulT0II0e
         L+yMYlMpzk0s7RWVxkjun3Yov7fspRHi8yldOAvdwqU9uXRzDNDmCqTalhdMqSkXVON9
         7B3Q2fxNae95yl5+xosoUTK15kaGYO31ca3SYoA2txh1cm8I5NaniZ4NemfEI94GyD1L
         17ANwzPmnIHbkL6ps4zGKecybSfSlV4Z5yTdloKCkEzsioap3E4GsvCe+6AH2Sh+UQBQ
         a1NHtQK3mjpP5NefEP0FX3uLP2FZDqmruTce93z7ga8x+sabKe+oCO+1eTOjuf+lgAm6
         Qndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788821; x=1747393621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82buFIB+rtX6lyncKzfqQ1BjFEonYyuZcyA3lmRU5C8=;
        b=MxAin87X3z5b6Et/pEkiMAVaqi+BwB4qVxLfTUP0O166ZaMWat8+XRLiaYiZkni4wt
         VEuXUzN4SNxwV9hAK9aXDNI/td9XBnxQCaV9BoNqu3+WJMuqurscGf6liOpg7yVJwQCU
         Q0y25p9oOJl4UE6AZP43CaUWGKFc9xoKAdnKWWr0YD2RgtIdQnyaHU19mNna9ljQ4nEO
         hUPzb1mCxW2agtj7OwqNlHv0TF886c2hdGIb71t7VSqziyoPKAD2fe+MCq3j2XJ8KP7K
         MypZYVRsuFkO59z1et4O9HNdNpVryDeg9LJQemzhLDiuoNuPxhoC0beFAF7vQDM+59/P
         ZvXg==
X-Forwarded-Encrypted: i=1; AJvYcCXbVkpcwW18fCumDWY/Ku+Tg2jPGTc0zZYU3Im0G3FSzeXcr6hVWgbFi+UUoP1TsPkaoQ398RSNsXSn@vger.kernel.org
X-Gm-Message-State: AOJu0YxRbiEyqDkqi3ys6yYEQu2veK/I8aDvZGVMtLpOTEqWTrffqg+U
	xmE24l2ZTmjNTst+fdqgurG+TOLgdAqg8j+z8+IZJb2dVxGYriwdgyLD6llurrU=
X-Gm-Gg: ASbGncvPM5BUyFoGzcphwTOs1owzMK33YTNBxCkVoO8SMgtpp7JNc/R6G24h0k3CWS8
	jR2A0pwGwcF9ICtK+V5KoeIMCsaS5rs5+GiPjmUG+hcaQfqew0MDs7E3kuVu/NqvSVQFkUK+ZWx
	SUvWKcj5rA0cXvYbU+ZlM7g6O38FNdfO/Y8+b+i3f9m6K0GErmhOCh4ksaqvnd0Om+QWavGT7Tx
	2o4GNKo6daPymrRJkZCuJprJr9nePThvSKcYasi/0nZF3uZVTCAMSxS/Bi+qP2iaQiCI/ErPudj
	W4zNQXMLd7jNgKk3HPjRTWWGV0mmpjujpksDDGScyiAfzaU=
X-Google-Smtp-Source: AGHT+IEE94+EF9/8yZCVzM9YnUpAQNsIoaIC6oYQfj4cjZjT31gCTBuncCPpzbHVyG2nFW+mquupKA==
X-Received: by 2002:a05:6000:220c:b0:3a1:f5d7:b041 with SMTP id ffacd0b85a97d-3a1f5d7b0d7mr3035935f8f.25.1746788821614;
        Fri, 09 May 2025 04:07:01 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:07:01 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:52 +0100
Subject: [PATCH 05/14] spi: spi-fsl-dspi: Use spi_alloc_target for target
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-5-32bfcd2fea11@linaro.org>
References: <20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org>
In-Reply-To: <20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org>
To: Vladimir Oltean <olteanv@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, larisa.grigore@nxp.com, arnd@linaro.org, 
 andrei.stefanescu@nxp.com, dan.carpenter@linaro.org
Cc: linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Marius Trifu <marius.trifu@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Marius Trifu <marius.trifu@nxp.com>

spi_alloc_target should be used for target devices. This also sets
ctlr->target automatically so delete that line.

Signed-off-by: Marius Trifu <marius.trifu@nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index df6f85122bfe..f7f9425a19e1 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1340,7 +1340,10 @@ static int dspi_probe(struct platform_device *pdev)
 	if (!dspi)
 		return -ENOMEM;
 
-	ctlr = spi_alloc_host(&pdev->dev, 0);
+	if (of_property_read_bool(np, "spi-slave"))
+		ctlr = spi_alloc_target(&pdev->dev, 0);
+	else
+		ctlr = spi_alloc_host(&pdev->dev, 0);
 	if (!ctlr)
 		return -ENOMEM;
 
@@ -1379,9 +1382,6 @@ static int dspi_probe(struct platform_device *pdev)
 		of_property_read_u32(np, "bus-num", &bus_num);
 		ctlr->bus_num = bus_num;
 
-		if (of_property_read_bool(np, "spi-slave"))
-			ctlr->target = true;
-
 		dspi->devtype_data = of_device_get_match_data(&pdev->dev);
 		if (!dspi->devtype_data) {
 			dev_err(&pdev->dev, "can't get devtype_data\n");

-- 
2.34.1


