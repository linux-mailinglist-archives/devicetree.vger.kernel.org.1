Return-Path: <devicetree+bounces-147841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D0A39968
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D8023B93A4
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 10:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD60239579;
	Tue, 18 Feb 2025 10:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s+TxVqOz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA22397BF
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 10:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739874488; cv=none; b=WjzfruRNd6kbUdbgNTo9bW4I3rIKW4M//7TX1d7vsCFJ8IyOaVqfNlrQMBuIot7eU5m/qsw6NGp+LGJYc70L/Iy44M2uCdlORlWWHZOUASJlLyEp3g26dF6KchavjcrQfpp2U/x5J2ZwymWMCfWL4b7n8Dv8kNJ0eG13Kz64a4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739874488; c=relaxed/simple;
	bh=5m7IEuqjTOk0xuSmoP9VMtnChopWqtVY7I9zYzyUWLQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=efi6AqZ+7gsF1djw1YNNo/ROUdQsfLYkqXiXLEVPIXD3l5TJNQrc1z764zs1taKZeEA2BkTcC4b34Q35Nwp7k4YbbcH3YcZayxQV6g0Ydw7TA8JhMmgehW2QUjcES2ZTR7/l28EuDwvuyETJD3BALmTVk4vewzsonYKxEqCC2nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s+TxVqOz; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5461f2ca386so1842506e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 02:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739874484; x=1740479284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NlYPz1W0XXxDMXL7vX3M+/OOt1iQJihziblj+Wiubyk=;
        b=s+TxVqOzD67SQX726yJWzXwmLwgwLgNomrVvwwaKamZg9wtcpJiXBOXa4o6M/e3uNw
         Zf/9XDOX2BOEtXo3goZMt/HQuEzLqyBDyqOslLFxBbZo5CH+JzdHocw4BdL0/aHb531N
         ZZfC7szi4sNxVNhF0Bl5pdIvNSSz2rmE1QsUIZvWzlu6lTUSZtR1U80x8CmBOjzMIYCw
         cb1S14chjwYfyQ+/aX3DOU28uoFvsg55texwnghjrQSLoN2pT1sNLt6U3hXf7oWUwwdP
         BhU9iBOoENItEp2V6cphWRhr5dj/TTYTB8R4hpsPSgzp/ht29zZF6IxR4zGpR+hiXRkI
         t1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739874484; x=1740479284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NlYPz1W0XXxDMXL7vX3M+/OOt1iQJihziblj+Wiubyk=;
        b=m+M45vNTYWKyVIEVa+f2v43uyDKM8dEdcchIgTV0eyDUNgbtbJrDhHKuvxJX7qCsJW
         0AfiZ/FetTmQfCKVMe6Sk7KSJvlD+NsMX5yJoGPdDHpKAmbu5peuaDiCB8GiBWSzzE2j
         9t0TPSrnLoNZtszPoIx6V1v/vz8ryJn45Bf6qCcyX5Aqu8I3gjozV2tmneCG1rBrzcM3
         E3lwakL5i4S0euDEXbjYMOmd+oIf7xqdRb8TxUAp1Yl7Ow6CMCAxqQQl5pB4Fg1CNOnf
         8TW8cpi+D4INxvx1m3bsVf1Y/I99bTln23XeHNiqZ22ucDOhv/qi7wwEmuPMsWT9zY95
         kmRw==
X-Gm-Message-State: AOJu0YzmuNJ1qF0nUKo3ioo0oR4moLjx380OUxlfMkt7PdTTuTLouo0o
	1xekE6ADM4zLDLwmx2Z2PnJ4CJCU8XzE/wULmAdt7b7o4I2REiIgHZd/IpTH+zw=
X-Gm-Gg: ASbGncvnZUH/rMEqDE8VLJwgDQJRpHt/UFMqZ7LstpKierf0PCBC9xOqcefF2KF4TNt
	RmFmHLBkb+9XsJoeu4d9PX9Wp/SpOcJ+EVbhPrAHw68QTYzkgU0xVxJGYT1daPDB6Fx8HIkdLwE
	gWizDJeuYkidqWxpDSdpdAXT+2j4GhEjtbZ4TAXEo/Yr40VoC4GR8HnfBj/Bg/nfjyU0wln1LtO
	EYFG6L0V7V2WaSXotBQGD4GVQE0NstVTMKkTGXPTGypeW3/lT9XCVjj71ho56fcxV2zvcKaVVLq
	QKfrm1OZf6BayhEkKy0M5saiag==
X-Google-Smtp-Source: AGHT+IFwtsLM/+sS4eETwVp/OBL4ztcHeKB6TjRIA9MjXPdkOuFYUIl7utDiOa0003NcetAuCTQd5Q==
X-Received: by 2002:a05:6512:318c:b0:545:2f9f:5f6a with SMTP id 2adb3069b0e04-5452fe3a89cmr3733546e87.14.1739874484339;
        Tue, 18 Feb 2025 02:28:04 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461e202368sm830756e87.61.2025.02.18.02.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 02:28:03 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Feb 2025 11:28:01 +0100
Subject: [PATCH RTF 1/2] gpiolib: of: Use local variables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-gpio-ranges-fourcell-v1-1-b1f3db6c8036@linaro.org>
References: <20250218-gpio-ranges-fourcell-v1-0-b1f3db6c8036@linaro.org>
In-Reply-To: <20250218-gpio-ranges-fourcell-v1-0-b1f3db6c8036@linaro.org>
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Instead of modifying the contents of the array of valued read
in from a phandle, use local variables to store the values.
This makes the code easier to read and the array immutable.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpiolib-of.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index 2e537ee979f3e2b6e8d5f86f3e121a66f2a8e083..86405218f4e2ddc951a1a9d168e886400652bf60 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -1057,6 +1057,9 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 	const char *name;
 	static const char group_names_propname[] = "gpio-ranges-group-names";
 	bool has_group_names;
+	int offset; /* Offset of the first GPIO line on the chip */
+	int pin; /* Pin base number in the range */
+	int count; /* Number of pins/GPIO lines to map */
 
 	np = dev_of_node(&chip->gpiodev->dev);
 	if (!np)
@@ -1075,13 +1078,17 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 		if (!pctldev)
 			return -EPROBE_DEFER;
 
+		offset = pinspec.args[0];
+		pin = pinspec.args[1];
+		count = pinspec.args[2];
+
 		/* Ignore ranges outside of this GPIO chip */
-		if (pinspec.args[0] >= (chip->offset + chip->ngpio))
+		if (offset >= (chip->offset + chip->ngpio))
 			continue;
-		if (pinspec.args[0] + pinspec.args[2] <= chip->offset)
+		if (offset + count <= chip->offset)
 			continue;
 
-		if (pinspec.args[2]) {
+		if (count) {
 			/* npins != 0: linear range */
 			if (has_group_names) {
 				of_property_read_string_index(np,
@@ -1095,27 +1102,27 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 			}
 
 			/* Trim the range to fit this GPIO chip */
-			if (chip->offset > pinspec.args[0]) {
-				trim = chip->offset - pinspec.args[0];
-				pinspec.args[2] -= trim;
-				pinspec.args[1] += trim;
-				pinspec.args[0] = 0;
+			if (chip->offset > offset) {
+				trim = chip->offset - offset;
+				count -= trim;
+				pin += trim;
+				offset = 0;
 			} else {
-				pinspec.args[0] -= chip->offset;
+				offset -= chip->offset;
 			}
-			if ((pinspec.args[0] + pinspec.args[2]) > chip->ngpio)
-				pinspec.args[2] = chip->ngpio - pinspec.args[0];
+			if ((offset + count) > chip->ngpio)
+				count = chip->ngpio - offset;
 
 			ret = gpiochip_add_pin_range(chip,
 					pinctrl_dev_get_devname(pctldev),
-					pinspec.args[0],
-					pinspec.args[1],
-					pinspec.args[2]);
+					offset,
+					pin,
+					count);
 			if (ret)
 				return ret;
 		} else {
 			/* npins == 0: special range */
-			if (pinspec.args[1]) {
+			if (pin) {
 				pr_err("%pOF: Illegal gpio-range format.\n",
 					np);
 				break;
@@ -1140,7 +1147,7 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 			}
 
 			ret = gpiochip_add_pingroup_range(chip, pctldev,
-						pinspec.args[0], name);
+						offset, name);
 			if (ret)
 				return ret;
 		}

-- 
2.48.1


