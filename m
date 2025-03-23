Return-Path: <devicetree+bounces-159961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B057A6D1F1
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BC4116F668
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E651F0E5B;
	Sun, 23 Mar 2025 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F/adUMDC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2045A1EDA14
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769591; cv=none; b=HBHntLjlIicKdmF3vqhubqLoNa5Gm3SzxGU2XHa2e9gNeWo/3NZ6InESPnc7Qx2D1zRQqR34ISJdTVg4if/zGiiXZzTRZvDNX2a208sUpAiuWlgwOmZWZTgnRkQpthLNJ8efSd5N3RinPhmDMkL2P5yyaO1cCLY7MDINQaG/BKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769591; c=relaxed/simple;
	bh=4+DMC9tlZSVxGow8DqTZFfBGSmBCzD9dumGbvfgv2jM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vp6F48mediEU8fQ4fj2+Y1aTbpgHCViMUWv3/ZNm0J3cDb0G7WcBpZ5xi+ZkO5rfLPdhLY+48m8oUhXhBs1Xc5PW1sek91Ytp7seJZhCqOXD71CPGZyHCNXsqPkimRH2mY2lguB1tTA1tD2LYY6Al/9dpY3ckY45Sx2ljjpQaDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F/adUMDC; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac29af3382dso635630066b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769582; x=1743374382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VFl8ti8LLZE4LPxCWkejP2QjcAENJxbtxTGfboQDJno=;
        b=F/adUMDCgeIQn48hezFMzA3iy9ykNsZxAZujlYI+2S5mAqvxAzFPzEBrS3DaHa2mgT
         K+RFpDFGFP927W2pvEtsJARxOiru3g+7gXLhda41gu2k28r8NIdvW15xjUlV1WU2Y6K5
         NNBqOGi4qlbsupsM2T83kv3uKX3q7ql+ZcWNvYBfIA+ajJP2PFCAuDmBrsldUl54fizf
         7EHB2dtdHXta9MuVueZ/g4vuUKVmlk73VYuYTzJFs9cRs6rmUt5H3YcZPckXthRH+EYx
         FEGUORCiF00Bpt199J+2EyueV4DIBgiDW3oe0uipdXmp55mE+jKN4/9pjm6nTatarjOf
         RkbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769582; x=1743374382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VFl8ti8LLZE4LPxCWkejP2QjcAENJxbtxTGfboQDJno=;
        b=OaFlgguh9ebwL3QVqh+m/ReqNY1cjw9PzuDRKUD9fk5eQhGZoXxvbHDFL8iyRJsERb
         aTDJCmCXYtQrvTOC8hazfEzM5h6q8hlIcqgSOwUgekzka0B+stQSpjsdPdLbATynTWHW
         G2nlm5tnuh5pH72+iupdaI5vRpHX8SMed4HKCPzh5vEFHualnyBbZyoeFuhydexblE0H
         djjOahkZRYGk9Xx4GPmWEJhTWdzRINCnMcBkMC4CX+4JsPP4s5IbnEZ/IU9ZENgQZIM9
         0Uyr88FoGtcBLkXsVVG3LyWML0nN+7UHjwbtUhwSZREc+/IMeaT17+EzEQWg78tVoj++
         nMPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYYIzEAbXMs1luIspyV3WF8HUpKZw4kCHXhO6fA2T3ty/boVOXwQVH8LfEsdPlWMqes0bCaFDy1kzx@vger.kernel.org
X-Gm-Message-State: AOJu0YxXSYA/M8X778+lykvLXalDju5fyAWXs/Dyszk5KT5POv9FFu8j
	rzDrP+HcF2wKdQ9Sx4jUu8HzmaS+gkFbNRTG7wdZz7OFaImZAvLFyTjhxH+IQ4w=
X-Gm-Gg: ASbGncuUn69MbBdFl3TuyfyX7QY+57GsfLuBdXDnya50CJYI/a1tS8qEEfWEInUMstb
	j8DAbPn4goL36heKUO80kC+6dxNpZNDIhirL3JKas6oCyLmyJoNtZzISMnUMyQ5UdhhGvo6VM+s
	f6iln2ZwPq9IxQcBwb3MtkHHAIMrWykxq/4wW0eD1MbzeMhTML2qKGII1g9STR6eYrTHvaZ5EMm
	Gp8Cd9I0FZYXaNfWQXdRxSRG2hUTq4d31dMMFW7hB0harCunOWzKhn6NrkRg5tsBRJd7qJmju2i
	RNUa59tivGBePEz5qE6HvXHTT2Aeg1l3KchKmQ9mNJgqGJk1C1yxA9Ao+yo+3CiCTqBYT7+v91a
	ElDRdyK7cfQopNDCvhf8J39e8Badj
X-Google-Smtp-Source: AGHT+IG4c/ltmFn+ZYM2U03LWJ2WSMibTI8JvVco3lTM01jqnuwgY40zG7FK43Yn/mRbbubKlLsYtw==
X-Received: by 2002:a17:907:c1c:b0:ac3:422a:76dc with SMTP id a640c23a62f3a-ac3f22b52f7mr1161510866b.34.1742769581788;
        Sun, 23 Mar 2025 15:39:41 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:41 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:47 +0000
Subject: [PATCH 31/34] rtc: s5m: switch to devm_device_init_wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-31-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

To release memory allocated by device_init_wakeup(true), drivers have
to call device_init_wakeup(false) in error paths and unbind.

Switch to the new devres managed version devm_device_init_wakeup() to
plug this memleak.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 7b00e65bdd9c25b3426f92355f8ea36e66c3939f..e8e442c503064eb4e570af5bf7dcff6bfa7f4656 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -779,7 +779,11 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 			return dev_err_probe(&pdev->dev, ret,
 					     "Failed to request alarm IRQ %d\n",
 					     info->irq);
-		device_init_wakeup(&pdev->dev, true);
+
+		ret = devm_device_init_wakeup(&pdev->dev);
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret,
+					     "Failed to init wakeup\n");
 	}
 
 	if (of_device_is_system_power_controller(pdev->dev.parent->of_node) &&

-- 
2.49.0.395.g12beb8f557-goog


