Return-Path: <devicetree+bounces-14579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D73B7E5920
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F33B1C20DBD
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 14:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259662A1A2;
	Wed,  8 Nov 2023 14:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oVABV4XW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633B22A1A8
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 14:34:06 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9402A1FEA
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 06:34:05 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50949b7d7ffso9335185e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 06:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699454044; x=1700058844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pGzclwbFLS82d1Yy6hJpVSYEp7mUVdHhXoDoAeHaQ9o=;
        b=oVABV4XWqQX4uB44dRsT21hjjoqdkvOgsOImOXTAtpUICemdRUdvYHEH8YLYH5PtT3
         4fyTASLfBvHLpqJ+VPkTw1r+RqvuyPD4stWb5qv0K/DHFOyqz1udM4zi4zXIbb95DMzZ
         bkH6Qv7nvR4e7n752njaUhxNhOR0TRIzGwjn71sdhhcP0G/8yeKfUMGFcZgJvdB29RWe
         tcU8zC1LztlpGR0/g7NiI8vWMjazb4cccWzCjlvsloZetpCM/OmJ3WnRIZIU4C3MzmWU
         dVSneU0XTqZRu1ZlBGClW9kI4CWBNBVoiZlZ6er2n3MHMa3zBvArToJ26mp35Q6526Y0
         ogYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699454044; x=1700058844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGzclwbFLS82d1Yy6hJpVSYEp7mUVdHhXoDoAeHaQ9o=;
        b=qg0bcm+GMBsaZMT5MoDKQRuXqvwca+Xtko3KizZqrwfWXcmDXoxvWcBk9MnsqmPpG8
         M3CXLxLrjM7wa7c/3E8sCPzeRKjHweYuUuZJ7WIUjNS4wZklCcQ0aJVDqjh4M2EAe4QQ
         veXI5V118OI6/eqTglQv/t6P2YScllkp9ETakKMMiCr+OtmI3pFekt53ZIh4jKrpQOS8
         v+6/brAqYMBQP641/mZMyTxPJuSefqQzUJKrD4O0bMa3OoTyaiJvKfig/eagWoh9FM3M
         6FYWLZnOn6r5gVT2uRc/yTXJsPlovJZ6gxG3DW2xCb2vrdfL/SQVuO6+v8zQCGm1EHEh
         RtPA==
X-Gm-Message-State: AOJu0YxtrTrZ5zHDXhuQr4PUaxJAyu/UBmtWtmgP1XhXvr/py/Pgi3Pg
	bByqUm8M41B/dzjmZxpuWwixCg==
X-Google-Smtp-Source: AGHT+IHO/EX+mYFpXV9cnozSua00aYKVLxHpApEI0ijPX+/t/mJFnU4RbkNl70WWo+NHt88Fl9uYmA==
X-Received: by 2002:ac2:5a1a:0:b0:509:4541:5e97 with SMTP id q26-20020ac25a1a000000b0050945415e97mr1368218lfn.29.1699454043887;
        Wed, 08 Nov 2023 06:34:03 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id q10-20020ac24a6a000000b00507a3b8b007sm686773lfp.110.2023.11.08.06.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 06:34:03 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 08 Nov 2023 15:33:53 +0100
Subject: [PATCH 5/6] mtd: rawnand: gpio: Support standard nand width
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-fix-mips-nand-v1-5-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
In-Reply-To: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Ben Dooks <ben.dooks@codethink.co.uk>
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

The standard property for describing the band width of a NAND
memory is "nand-bus-width" not "bank-width". The new bindings
support both so make Linux check both in priority order.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/mtd/nand/raw/gpio.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/gpio.c
index 5553101c709c..d5bd245b0c0d 100644
--- a/drivers/mtd/nand/raw/gpio.c
+++ b/drivers/mtd/nand/raw/gpio.c
@@ -183,7 +183,15 @@ static int gpio_nand_get_config(struct device *dev,
 {
 	u32 val;
 
-	if (!device_property_read_u32(dev, "bank-width", &val)) {
+	/* The preferred binding takes precedence */
+	if (!device_property_read_u32(dev, "nand-bus-width", &val)) {
+		if (val == 16) {
+			chip->options |= NAND_BUSWIDTH_16;
+		} else if (val != 8) {
+			dev_err(dev, "invalid nand-bus-width %u\n", val);
+			return -EINVAL;
+		}
+	} else if (!device_property_read_u32(dev, "bank-width", &val)) {
 		if (val == 2) {
 			chip->options |= NAND_BUSWIDTH_16;
 		} else if (val != 1) {

-- 
2.34.1


