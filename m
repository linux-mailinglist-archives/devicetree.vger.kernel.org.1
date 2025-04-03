Return-Path: <devicetree+bounces-162839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CAFA79F22
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 203D7174FFE
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE9124BBF9;
	Thu,  3 Apr 2025 08:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="stMJ668h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2AF247DE1
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670755; cv=none; b=LGMvA/lWFeXiwGjbWRo4K703dSvqdQ7qis+wuonfYDrJQTT21UZg6BI8BZ7eNcTfxK0LV7ALaU3B+il/457sAapxPR/Rll3VswaFXfP1Ttyka/pttA23ym/RH9x5z6f8cCUhsHY6dpWoWotPcnJxXlSXs2NgPY8xIDpmXHn+v5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670755; c=relaxed/simple;
	bh=NTgWVUrUYjaObzH0fsi/8He5KrYlIX0x8gD4jTNG9uA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OpINbZ6wD8JVX84K/b4J1JShoVMLeV3xEGnG1sekBPeKtrZNt1PulKutpcD0PzIq2oHY/ERKkwtonx+GTnlVbBIQEzGO2bhrquGi1xNXLao9LEYtOH5Sb5EtVWKXfiQtrokKm4PpdghVvkWgKH334HHjbZm9WOfhYgW4tK8B2So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=stMJ668h; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e60cfef9cfso1043354a12.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670748; x=1744275548; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+VoGJVSU0pPXxfOhXBJG1TDUozXlWar2eJ++GWdYkqc=;
        b=stMJ668hBUruoNQosv6bNYKoCg/TQpJSc1KL1HVaA+7gGZzZy9V7BAqcAYRrX98pa1
         DjoPAdzaPb38J3N5dmgBHrCVMyhobkFcd8pzHPsUPFr6rawzuZNXFthreBDabhFXaRtD
         vbZLOx2JdHjRJC26mA7FV+TnOmlPxfrpBLyMPxv++KOTtlzI9TQfHwAFg4xQCD6CpVYk
         WdvchYKeNGCj7zelqouw6yU+hBFRJUFs63JoXB+9UyGjQsJvQyt8zYKlgy9fGS831WUu
         AtpXQOJJq8YhxdLVvWCxlffZJLVyB/kECYcaJerkSdsrxVuTdpcsU3/KN1pnC17Qbr7p
         8lhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670748; x=1744275548;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+VoGJVSU0pPXxfOhXBJG1TDUozXlWar2eJ++GWdYkqc=;
        b=pGw56u8at24iZfbPtJJGVYhdMex5CfMPvtlOOIYgPmP5a8rCfQNXXpYUWlCkFtT3aE
         mC1C3+p17peVbvKFB+dgRjM0T7RoAFJx3Qsc3buRAqPOOmZjQSqVrMEb5uaZfgTUA3Kz
         ieYHwd6gV3AZ7xU+stETTGHU+Zk49nY+ypZ/sCnt4MSnDTZIfQ2QPYZt3eSLT5nb0bXu
         hL/UL2PgnDAgUBLYn0lylnLmXR3kFMj9+qGO8ZhijT9agKtjRrkLyoIvt7Tq1ZNz3fNq
         6Yi25UFsVzDbVaK77fyarfjpgUmzcPkHkNNoHL/9lPAKOWxaJ/uy1BABCILZFNYdTE3E
         hQ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfTZfamGnv/XOveC6B0J3Lo9qu1KM+xA+EQyal3bwlsLpHMxHUWwgeO0LD3bspUTLFqyUVWHVsHNFR@vger.kernel.org
X-Gm-Message-State: AOJu0YzckeFTnHsReflj7buHxAH3fGkdgx1FsriiGeyb5AHLJooouQc8
	R++vc9fJ18Qgpy4DqQJr71V3dH4dzdoiyD144rvN4GmpC8eaLW8Dc4Km7+k2llI=
X-Gm-Gg: ASbGncu0lFXesaNeoKKIqauJtAhgteRB/i6A+0lZUnLId8GlYl4lhM5OJPM+SR8Ev8i
	f+obo+l7NwdYafIp7FJx2qnn5xzci4lE3u05zB4J1xAwOGJc/tIqJCdblMA+FTObG4ZpX1NnQwL
	XuH6m7nJ/Hladt/BzBtXJtrVlIVYlSsRr6OaAVDYLfpzObmoEqjIEbE2ZWx5d2p3iki/P2+cyFL
	ivGjppeAJA1zPjrLTZPi0UdEJAvOqtkKzJZho1eKhNnD1X3IY+AL4LizKspIXVaGmwkEQ/AEEZs
	5pjIKeL6CFDDjX1RA323yhjewWFEzb3Lsihk1Smg8bMkrPA6iWjDipkbhItDnk/zNGUJzEl0cl/
	xoqOLKBEEwJAXxJVvAzka+0elhe37
X-Google-Smtp-Source: AGHT+IHqXiYq96qJtZ3yqV0dm+q8a7Y9OXDNzTpX/U8kjT+jFNIA0/WaLQE/aqJwj+78Op+QK5nrPQ==
X-Received: by 2002:a05:6402:3495:b0:5e4:9348:72c3 with SMTP id 4fb4d7f45d1cf-5f04eacb1a8mr4769024a12.10.1743670748486;
        Thu, 03 Apr 2025 01:59:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:05 +0100
Subject: [PATCH v3 13/32] mfd: sec: use dev_err_probe() where appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-13-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

dev_err_probe() exists to simplify code and harmonise error messages,
there's no reason not to use it here.

While at it, harmonise some error messages.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c |  6 +++---
 drivers/mfd/sec-i2c.c    | 10 +++-------
 drivers/mfd/sec-irq.c    | 14 +++++++-------
 3 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 1a6f14dda825adeaeee1a677459c7399c144d553..f4c606c5ee5a809a106b13e947464f35a926b199 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -229,9 +229,9 @@ int sec_pmic_probe(struct device *dev, unsigned long device_type,
 		num_sec_devs = ARRAY_SIZE(s2mpu05_devs);
 		break;
 	default:
-		dev_err(sec_pmic->dev, "Unsupported device type %lu\n",
-			sec_pmic->device_type);
-		return -EINVAL;
+		return dev_err_probe(sec_pmic->dev, -EINVAL,
+				     "Unsupported device type %lu\n",
+				     sec_pmic->device_type);
 	}
 	ret = devm_mfd_add_devices(sec_pmic->dev, -1, sec_devs, num_sec_devs,
 				   NULL, 0, NULL);
diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 966d116dd781ac6ab63453f641b2a68bba3945a9..a107a9c1e760f90fcb59a9944b74e9a39a0d946c 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -134,7 +134,6 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	const struct regmap_config *regmap;
 	unsigned long device_type;
 	struct regmap *regmap_pmic;
-	int ret;
 
 	device_type = (unsigned long)of_device_get_match_data(&client->dev);
 
@@ -166,12 +165,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	}
 
 	regmap_pmic = devm_regmap_init_i2c(client, regmap);
-	if (IS_ERR(regmap_pmic)) {
-		ret = PTR_ERR(regmap_pmic);
-		dev_err(&client->dev, "Failed to allocate register map: %d\n",
-			ret);
-		return ret;
-	}
+	if (IS_ERR(regmap_pmic))
+		return dev_err_probe(&client->dev, PTR_ERR(regmap_pmic),
+				     "regmap init failed\n");
 
 	return sec_pmic_probe(&client->dev, device_type, client->irq,
 			      regmap_pmic, client);
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index aa467e488fb5ef79d5bc7110e1ba7c26fcfa9892..9f0173c48b0c8186a2cdc1d2179db081ef2e09c4 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -487,18 +487,18 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 		sec_irq_chip = &s2mpu05_irq_chip;
 		break;
 	default:
-		dev_err(sec_pmic->dev, "Unknown device type %lu\n",
-			sec_pmic->device_type);
-		return -EINVAL;
+		return dev_err_probe(sec_pmic->dev, -EINVAL,
+				     "Unsupported device type %lu\n",
+				     sec_pmic->device_type);
 	}
 
 	ret = devm_regmap_add_irq_chip(sec_pmic->dev, sec_pmic->regmap_pmic,
 				       sec_pmic->irq, IRQF_ONESHOT,
 				       0, sec_irq_chip, &sec_pmic->irq_data);
-	if (ret != 0) {
-		dev_err(sec_pmic->dev, "Failed to register IRQ chip: %d\n", ret);
-		return ret;
-	}
+	if (ret != 0)
+		return dev_err_probe(sec_pmic->dev, ret,
+				     "Failed to add %s IRQ chip\n",
+				     sec_irq_chip->name);
 
 	/*
 	 * The rtc-s5m driver requests S2MPS14_IRQ_RTCA0 also for S2MPS11

-- 
2.49.0.472.ge94155a9ec-goog


