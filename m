Return-Path: <devicetree+bounces-151083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AC6A445D0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69C6E3AB2A7
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38CF18E054;
	Tue, 25 Feb 2025 16:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p6GXzx9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0290518DB3B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740500152; cv=none; b=gImNF9hIScnsuiKhoJU08rCdkphYGKc7p2jf2+q87w9x5Cm0oOaCCj79PXecCPDNb6f2My0uOKwxeFv3qjMTW97EEayCs0tqGDvflutFJBCgRB7dap3/t7dPTvE+RV1rHL95t31DogIRnOxEwpWHPeYR4X6kpnkZvm7H5HY9L1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740500152; c=relaxed/simple;
	bh=JnkVoJVEvt9wSbfZJwKuTmFUsqCBtk0hMWljeyVPBxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=teAE8k4bkPJi6c5PrWNZ1jEILGSJ+htcEkggp5xvDemTYVPQ+KCe0LpezxY2Mp/y/LHuX3SbjU3jSyRU5xbLJKuLp9sm7On8n2/P4tYwfuo8Ua6FddL2xPXjyGr0d1H6iPUaq4DZlwLWcL1z6pzisaHZSkTNEAjwLi7qtDg7y/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p6GXzx9i; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5452efeb87aso5819809e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740500149; x=1741104949; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MeJ7a/9Q7Y4DFP2keHrgY23a3sacV+V2x1QKfVZGDtA=;
        b=p6GXzx9iYpSnjmUdXqZGTmVqpQBLTDDHDRLpx/LJdX1CQQOp3ELAcCbqz5eOu9LmgK
         p+exlB1R6hdD9a/Jfln+V/TABntrAOb1ytmIUgRwt/gTSpcOeL9EKwkHRRdMcIkvaA3U
         mQSRjROKc4/uVdMvGu1DpS7S1vjiDHC4VpCfu9lgSiolelARDyEw+RHy5WzVQZBoc6ln
         COkcnV25N9gMwggT0TqRASpl3f5co55QC1DnJ3jiGcGIeG3Nz61UvUEN4QjyzeQPuIor
         U7P8ys7O4hrn0udS0cDqZBCb7m4D4skG6tmNYlKDxEMWkIj7LzsxaIutvHqmsN5emGMV
         KsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740500149; x=1741104949;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MeJ7a/9Q7Y4DFP2keHrgY23a3sacV+V2x1QKfVZGDtA=;
        b=S+RCXxSgzi7mqwtyX97F48DPLySr2AI5QdBarlo2n7iTVx5pSsHQdKjNPBqMScZ7Pq
         qaCmJ59ERpWobWIi9B/gRrpW/JC5NLNSduQRdFp4AdwEVCNy9tAd4SKhw+QaLcqBoAjU
         FOEU8GKEZYcWqZF07XGJwULsajxlkQ/eOQ8w8M/ToTSZ8Td1z+xEwM9lQ3O47HBO+jgZ
         2By5oDzOqI/Ll+njhDf54YSAGo8ECM14O9SQkkSpdqTTwtoH4cyeyd4lf63Lv/vCmGE+
         +yUVj5NjP+5zIAH+Y3LmFa92NRWarCaooLL79EeCfM4peLPszaiGJq/pSZrm9s0HqWdm
         Zetw==
X-Gm-Message-State: AOJu0Yw2qcfHIMeDZ8+W9klJJCuwvCoysZ7nZp7PO11UjVGtZXuvh6Z1
	NLaI4JgucLeCu2XaJxQD3u5BJGyp0swosaf61fI5j+HFXJdYQnTgU7hXmwpJMKw=
X-Gm-Gg: ASbGncsoQWtYHIX7FCLNrdu+2snbctOFc9hU2aKhAUaNiCNQZDsPUoQhxLHUvt5UyBJ
	qZHVHUsmVl3mJGpYMXfWb8zUNMBWjRHg3tPVSYnlLKXGitYW+eGyEL5hJLCs7TtGkKim1+P3euc
	ohHYJvynsGzurlQqHs07bWrVUdizngfSp+3WU43iITpbWL2LUUf0kSoojlIMGo6xUi8eYLj+Na+
	mBXVwgs7WV6tRiTOXOlsHG4PKE0QlD/OKjlgkQLK/nEfmo77y30KnAgtCj3KHkWUBXy9+A46zck
	17FFyrGnwiCqszOwtZKlvuEIt7dc0Lq6ns2J
X-Google-Smtp-Source: AGHT+IHDFqFy5T5AX9GqngoqEJ/mxO1vDf4PSBGFifn5ldQ4LUId8AmEPiotb+ECWFs58w0ck8wnLw==
X-Received: by 2002:a05:6512:3b97:b0:545:d70:1d1c with SMTP id 2adb3069b0e04-54838ee2993mr8619007e87.11.1740500149027;
        Tue, 25 Feb 2025 08:15:49 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f512dsm212587e87.178.2025.02.25.08.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 08:15:48 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:15:46 +0100
Subject: [PATCH v2 1/2] gpiolib: of: Use local variables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-gpio-ranges-fourcell-v2-1-8da9998fa976@linaro.org>
References: <20250225-gpio-ranges-fourcell-v2-0-8da9998fa976@linaro.org>
In-Reply-To: <20250225-gpio-ranges-fourcell-v2-0-8da9998fa976@linaro.org>
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Alex Elder <elder@riscstar.com>
X-Mailer: b4 0.14.2

Instead of modifying the contents of the array of values read
in from a phandle, use local variables to store the values.
This makes the code easier to read and the array immutable.

Reviewed-by: Alex Elder <elder@riscstar.com>
Tested-by: Yixun Lan <dlan@gentoo.org>
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


