Return-Path: <devicetree+bounces-103495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C949597B04F
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 14:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F0201F22345
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 12:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97FB175D27;
	Tue, 17 Sep 2024 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lemAkq+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3913174EFA
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 12:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726577093; cv=none; b=CViz9c/MEqgbk45kodX5ei4MfHD7+WxibQgvjN9xzDKMfejQxbSORhLx1yB2cnfxJpXfXZWdQ5Qu737hxVXYzlaWexh/nnmVxnjg0ExQWmsTZeX4ry1xj/Ab33cSSdsENs6bA2EhDRwx+GFSsj9OO55J1DQYpNNwfhZYfOBcG3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726577093; c=relaxed/simple;
	bh=nXHnldG644VsrdOSHjncXVqPmLG1B3QJ365TlI8J5h4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MBonuBCQ9sRbFvRrAVu7Nsftouka67xWqP1lnClpjBGIgJVAZ1owPfcXJO7G7M5koL8H1x9Q897N9MBdea2DfVZHgLGerB1GyXdIrvVIiQW2peiQJtuYAnQaJpl/cg9EAQ0Ch2jIxX5o65/8das7MAYP6Gw2zkyGcpfQ57qJ5vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lemAkq+6; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c3ca32974fso6895159a12.3
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 05:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726577090; x=1727181890; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FNih/OpkxebL+Nm59FftF8rR7sLspIHRp1QflSm/SJY=;
        b=lemAkq+66ghIT5dNVhE5wjLbWHQK8ygOSb4hTAQ2PRDW+2dyz1Vid0kHBxrckNpFqP
         Dwil6HMg8/lf0s21uZ+IIdX93k+chTlaaNCcZlkDG4wXFq65ytIAhTiOiu9ZbeBfTDrc
         Q1S0sjnS1mnMzzhXlvjU49v/cx2xqAg4pIBxcLBouGVQzLe3KYbvYi7LCZDOblSh1M9T
         mmS7mH4bdPCmmHiMrYqO02aQIKc9lwIU1MSU9Z6Wjaledd8xYticDSr61MLO48/DuHHb
         AL4f5Q4D922hq8mbw9lO9v0n3OjxpJaxF4zh9HxoeuqeFlxCE0KA34iixdvvAtdoT8Ib
         t59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726577090; x=1727181890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FNih/OpkxebL+Nm59FftF8rR7sLspIHRp1QflSm/SJY=;
        b=AErutktRHdeokQkbtR79ZSU785NIae0beElAJ+E7Oteqa3vDsE0WosATvebdxBwdcd
         9WAarKU369DE6wgf8rhRPxBF8ZekA2CAlPKTd5+5aNafZw01TZ7uzsTXx6fVAaggy6E3
         Q5e641Cm8ngWbdSVbSQ0zpSSwF3WxAWifgYpuBK7oiQE5VDW8t/0SnufSmu7xB+zvO7f
         nQCOJQBbhxJhVs6F+oI39BSb7VV7GQvtg/t3WKZ7WcXrqi+1FcgAQY10KxS2GDKmGVMD
         tiHFROhrAG+XGhWDEK47aGY5/ltgKe6gv9LCRMW14aO6uVwvVRy4dOINZvdMmn/mk/Q3
         wPVg==
X-Forwarded-Encrypted: i=1; AJvYcCU0njVoYtstzViz17XTVedj3SQzT5u28eE5f/lEVCTxNTWnW/EDiu4auLgrNiQeJxrl5ifm1P5uyi8K@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy+mqqhJyi0VzYNHUyDjm8u3XnHvRn0pfxi9+mvikqlMScbx17
	BQkXI9wX0WWw9FivMq6u2Oz90njpBa3wronBb9is2kgPhFqCkYWXQgyW7BSX0bpSgYzcP+V2bQ7
	u
X-Google-Smtp-Source: AGHT+IENl7rof5KL9wc7qpKXnx+V/yAilTEirjoDfWowSqojJYHbm0y5QxjvqWSp6Iy28dC6ey4FPA==
X-Received: by 2002:a17:907:e61c:b0:a8d:2faf:d33d with SMTP id a640c23a62f3a-a90293f8ec0mr1673277966b.9.1726577089903;
        Tue, 17 Sep 2024 05:44:49 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f453asm443317666b.88.2024.09.17.05.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 05:44:48 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Sep 2024 14:44:40 +0200
Subject: [PATCH 2/2] gpio: mmio: Support BCMBCA GPIO compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240917-bcmbca-gpio-mmio-v1-2-674bae8664cc@linaro.org>
References: <20240917-bcmbca-gpio-mmio-v1-0-674bae8664cc@linaro.org>
In-Reply-To: <20240917-bcmbca-gpio-mmio-v1-0-674bae8664cc@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The Broadcom BCMBCA (Broadband Access) has a very simplistic
GPIO that can be supported directly by the MMIO driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-mmio.c b/drivers/gpio/gpio-mmio.c
index d89e78f0ead3..af095ddb3bd5 100644
--- a/drivers/gpio/gpio-mmio.c
+++ b/drivers/gpio/gpio-mmio.c
@@ -685,6 +685,7 @@ static void __iomem *bgpio_map(struct platform_device *pdev,
 
 static const struct of_device_id bgpio_of_match[] = {
 	{ .compatible = "brcm,bcm6345-gpio" },
+	{ .compatible = "brcm,bcmbca-gpio" },
 	{ .compatible = "wd,mbl-gpio" },
 	{ .compatible = "ni,169445-nand-gpio" },
 	{ }

-- 
2.46.0


