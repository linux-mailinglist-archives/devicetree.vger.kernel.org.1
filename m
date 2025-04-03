Return-Path: <devicetree+bounces-162855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A61ABA79F4B
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A07773B64DE
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6736224EA9F;
	Thu,  3 Apr 2025 08:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X1RH6upS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2E824C074
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670767; cv=none; b=SHhiLFdKIjAeATyW7xevhi87TmfeVRX9LCPGvOG/kO14F+tMnJDBJ6bCJnECHby0Gb6QawgMEZe1wrx4qmT45sfOvktrZADotJOanDgKxE6jPe98JWZfH4OREN+1hD0Gx+pcDZyHKhTJgHOG8sbsV7cY6rKbz9FZXb6KsZ8DTUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670767; c=relaxed/simple;
	bh=YO4AyBJQaRYJNR3M/qB00qaKZDbH/de1lTqDCM4IY8M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PnGC3t1iaP9PMpul1GXN917daSyA35VT073tonXApUOAO7YalJmIo2qDAU9P6ir+tmuL5jlNUSp5On0GDTzZaXGOJtghltDMwI7rmOB2EgF5IaTKZpQV5rLss1N09PRzYR1BcUQ8h3BBfOMxi4DVvTUQFc1W0+IDDUpiZt2n4y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X1RH6upS; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so1167991a12.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670755; x=1744275555; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6KRr6Qm0gpuwraE+pyT1hJyit2ZkidoO0SCeL3UgR+0=;
        b=X1RH6upSsdAkhrGpjvWV0AGKa7tgjMzroifdz8pTqH6ypmDij0g7wIDQtWMZiEOleN
         iGwfYIBvgmhPs9fdN+NJcRskFUpHJhvpjwuCZFmG+t8m6qSoX7ut5vmuKHsadcArO45r
         +VQr+eSDc15poiMUVuzlqxKD9zielLTF8BaZwG2n/HC1s5PWdwmOw/Kdvc0EW/aJc2Qb
         9Z+OkwRrAJ1ZhVxffceK2m5Kr7bTvsTosDHahGF73rWXiRfyt6AB7wMGZeOT5/cPqt2C
         Kake5TGuBnd7Wg9cn6L8yi9BVCiVxp8Sd+YvsYHNAlmMT+3CbtB1bHfszg5hMfYoDsOt
         ttDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670755; x=1744275555;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6KRr6Qm0gpuwraE+pyT1hJyit2ZkidoO0SCeL3UgR+0=;
        b=kwZlAmI6BYsqIS74KbgMScUK0l1adeAdH6MJjZF3AHacrcZq+ekewcUjCyd4/SY4s2
         nt6JbpHd8MC8+ow0m8LJfFoOU4qWpUD3iFkEh5uYC4ym0rdyVEadJ+rwnOFvOoPGyla/
         etob06RvnEM7OAIjPSbzneSjTojbr8Mptrcm24xOTdt5vLcHFw5c90c7kOv5G9Xl0wlP
         h8D7xSywPlvq209LZgV4zoAFO2tDFMDS9vdoZopCjmiJQh0i1J3YyriuHSbKj5xNonBa
         XegM1+ZkEW/7R9XjzWZpX6WbF9BkV3zEu4xuRT6bL4eudd8TKqLUVEDeuw/3+QFvuJ4p
         Ea1A==
X-Forwarded-Encrypted: i=1; AJvYcCWjpR6aIXX9idrvNK63G19CA+neK1dp3ROKBjxX3sIk/aNniH6VD0yJSzM7tT5yHB630VO4WpQTkPJc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfk3yJzzIgLZ64zHeT06qQ2eTd3/5oRMBogxEdEJlblzH1vnZZ
	w514ZK3DtFMuMBSV8gBT49Fu+tsCdwOdNN5kXchTVzowLswxVK0K/MtR6azmhh8=
X-Gm-Gg: ASbGncvzWIhY8m1MOnKDcHEuE2021/aegd3H358zuxMURolQVeJwrSv/FXCqo9mqzDV
	huz43HM0XGXqBk/uqk/NPf5x5vl0x1kOdZynCbdRyOOM55tZYfWvIR8xvWSG/TdfNiyPMC60Nzh
	tytm5QdeH4PcnrzUgv+IOY+ZWi/NcMvq2/IV7Wubv5wM9I+J0HFhth4m5sNJROsmo+Mc5HzEuxj
	vSC9GSPWkUqHVoCuVoIJy1mhOCVwd3fYpdSM2PcWEt0HDiaYWLQD6GRHzbHoDJz0hF4h8GB+MGq
	qxbjgitfO6gN/f3AZ0usGQ+owxwT8yOkedMF6JfWRnIBhRmmV6fJZeqfZIivTQVO1N2RjtGr/vA
	K3xqCENBTKZcd6D/hAGC5tRv8kBQq
X-Google-Smtp-Source: AGHT+IHEdGFmSr6KJkifyjVrc0xIRhrTNMltNPXKgSl8ywP+14sm3GrLINtRDwSb2RF2kU14UFLFrw==
X-Received: by 2002:a05:6402:40d3:b0:5e5:437c:1daf with SMTP id 4fb4d7f45d1cf-5edfd156c0amr18247266a12.16.1743670754722;
        Thu, 03 Apr 2025 01:59:14 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:14 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:16 +0100
Subject: [PATCH v3 24/32] clk: s2mps11: add support for S2MPG10 PMIC clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-24-b542b3505e68@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for Samsung's S2MPG10 PMIC clock, which is similar to the
existing PMIC clocks supported by this driver.

S2MPG10 has three clock outputs @ 32kHz: AP, peri1 and peri2.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/clk/clk-s2mps11.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk-s2mps11.c b/drivers/clk/clk-s2mps11.c
index 8ddf3a9a53dfd5bb52a05a3e02788a357ea77ad3..92c8d36dafcf8a448873567fb3541a1b90cd9837 100644
--- a/drivers/clk/clk-s2mps11.c
+++ b/drivers/clk/clk-s2mps11.c
@@ -11,6 +11,7 @@
 #include <linux/regmap.h>
 #include <linux/clk-provider.h>
 #include <linux/platform_device.h>
+#include <linux/mfd/samsung/s2mpg10.h>
 #include <linux/mfd/samsung/s2mps11.h>
 #include <linux/mfd/samsung/s2mps13.h>
 #include <linux/mfd/samsung/s2mps14.h>
@@ -140,6 +141,9 @@ static int s2mps11_clk_probe(struct platform_device *pdev)
 	clk_data->num = S2MPS11_CLKS_NUM;
 
 	switch (hwid) {
+	case S2MPG10:
+		s2mps11_reg = S2MPG10_PMIC_RTCBUF;
+		break;
 	case S2MPS11X:
 		s2mps11_reg = S2MPS11_REG_RTC_CTRL;
 		break;
@@ -221,6 +225,7 @@ static void s2mps11_clk_remove(struct platform_device *pdev)
 }
 
 static const struct platform_device_id s2mps11_clk_id[] = {
+	{ "s2mpg10-clk", S2MPG10},
 	{ "s2mps11-clk", S2MPS11X},
 	{ "s2mps13-clk", S2MPS13X},
 	{ "s2mps14-clk", S2MPS14X},
@@ -241,6 +246,9 @@ MODULE_DEVICE_TABLE(platform, s2mps11_clk_id);
  */
 static const struct of_device_id s2mps11_dt_match[] __used = {
 	{
+		.compatible = "samsung,s2mpg10-clk",
+		.data = (void *)S2MPG10,
+	}, {
 		.compatible = "samsung,s2mps11-clk",
 		.data = (void *)S2MPS11X,
 	}, {

-- 
2.49.0.472.ge94155a9ec-goog


