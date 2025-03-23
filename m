Return-Path: <devicetree+bounces-159938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63EA6D194
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82E861886508
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525AF1DDA32;
	Sun, 23 Mar 2025 22:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wektAsnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588BE1C863F
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769572; cv=none; b=S+buaId5JNrWaDAcezfya7cqqOeuImUAZ9YHJYJLUfzYIyc9zz0DMUdj+jXG53vNth1XYlztPp7I4XEWwcPQHMTh8NcTlR+2ww6OfiY01V52D4MmizBdipC4TO14/PvDCks1HMSoFmfndJYmIQOtHQYtuLZlZ3LxbaymFT6Wqqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769572; c=relaxed/simple;
	bh=BAdQgtrPovKD1iIkHpNo2/fj9h1pbImjAxhHF9j1z9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JS+XfUGKDWsUSPwjjMRPKn+FuW4s8mvIJ9RmDkYdeKxDlqckN0mCM1eOUXNqzZVLwg363dohVPRuksrXrb3MlewhzF6daWnckzO9JcPHRkRXSSgCU+x5KIcqWKYkplJ0Wy3XuZCFDQ4S4EWpMcKoU4GxY23AeQhEvtCn0dofr5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wektAsnB; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac2aeada833so704447166b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769567; x=1743374367; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ElO2IZ9G98m5zgbIKm9J2T+DEuKZxhIOZ2O4ti4VZ1Q=;
        b=wektAsnBPyMEZMxqYx/4ZkVYxXJkd/cRbrZr7cbw2Vl4uX5kwkPdagGjmHAKABKuNS
         xu/zT1cYWAhXAV0n2TpxFQMS+fTqx040UeHEDSb2Mr7E9hdnDt69PtBVj/IXN6aqiKYv
         YzK7o8/rUoAzEUC/ai2fYkT9CHGC7K3KJe68jIibInEdL/WprFJb/q5/KrJu0jsFR20p
         Dy3NyTGFWuYLegvxLwXNQy/4GbSZOUd2EVG+kGDjiapWxNO8NJCBXWbeTPdnT1bRurR7
         aoU7adxGY5Mu4/tDJOFHZc18mMsUUHlT0E/iWSIkhjpOR90keAJezSdJUWsE2KVRQ8Ig
         jI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769567; x=1743374367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ElO2IZ9G98m5zgbIKm9J2T+DEuKZxhIOZ2O4ti4VZ1Q=;
        b=jWz/TYEf1ZYOEjfEJe0QS6kEVarIuRje3woxF7ag0k/fWC0sr1wfquxxEg9fP4aV05
         V68O3SL4puOS/+OU3Z7/c2+46mYSdm1NY9AsMXWuu2SzhrDb3Hd9SB9UzJZWvfBfRrev
         KO+PBybXTX2wIKA+7Yk08NKQRA7ZB22onImW+/WbMa/VMDom7wqfvvavQOrzchqMV7FD
         Mdcn2EnGywmeC+vyeNvIWFrhewhPhfGaOMaNm4uWkPf6tioFCowSjhtS0CXIKjYR3XG5
         Pi+1ZuD1dBleuNGU16x7TLaZnsD4nX68YZUIH+S+Ua/BDhmJKFVI05qNOYVQOhK0PLLx
         vmCg==
X-Forwarded-Encrypted: i=1; AJvYcCWT/+NifmI3EEZuq6VfbkM42+4/IoTs2Bg0zwN2AJJ5gqGyDrlIZtlJB3xPAbKwag4pGZpWHvSaj3Zr@vger.kernel.org
X-Gm-Message-State: AOJu0YzxExoZXadT8ieqFvuhFa+F1SaXrIikUoJiKOZRUHcNyuRnjiPz
	ewLrv5zT9B9lIu1klD1CFcf0+5wVuGt4IJCd5YXLrpRk3QYgCocvYvRrXb5Fs28=
X-Gm-Gg: ASbGnctgjVaYm8HY0XA2DKarp+HaE0s9QKDE+91SL8gMdJPjZXsAT7zXoLCa7uO5I3s
	fzmuxF0HTc+W5Ib3O++8PuuRhS6qhuMA1I1lsNxWMc+D5vZHRHPVmyr/oYKOeNRBBwC8gq5MIc8
	ePg5+a1NImpIqAhznBGn9FdkhqadxC2qvHnW/wq7mrhJQshIhSpSfE0UjX17+ifsiNiWV91pLAz
	E7duc+2uQpJf24oALOIShgDnrnkZv9RSq5pBjlfpYA2IlDYgwU+bJxeVg/bCsaLp/Ke8TOd6yiz
	TcEbY6MHDyKzXycCnAN6tdGwCdMi68/USFfulDod303YkxOz9A3izi8/eNFNxE1OeddKvBORjjt
	f5QXa8FbBOLD4zpn/j8vehJXf+IDQ
X-Google-Smtp-Source: AGHT+IHK84mhAeYJUO60X9G/6jnyMUTEi3qcuoEP39r4Iheks7w5bAT6r9bNJMH9nKdB0JzRhkSGLA==
X-Received: by 2002:a17:907:d58b:b0:ac3:ef17:f6f0 with SMTP id a640c23a62f3a-ac3f00b5ff7mr1040036766b.5.1742769567137;
        Sun, 23 Mar 2025 15:39:27 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:26 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:22 +0000
Subject: [PATCH 06/34] mfd: sec: update includes to add missing and remove
 superfluous ones
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-6-d08943702707@linaro.org>
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

This driver misses to include some of the respective headers of some of
the APIs used. It also includes headers that aren't needed (e.g. due to
previous driver rework where includes weren't updated).

It is good practice to directly include all headers used, which avoids
implicit dependencies and spurious build breakage if someone rearranged
headers, as this could cause the implicit includes to be dropped.

Include the relevant headers explicitly and drop superfluous ones.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-core.c | 7 +++----
 drivers/mfd/sec-irq.c  | 5 ++++-
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index e31b3a6fbc8922e04a8bfcb78c85b6dbaf395e37..b12020c416aa8bf552f3d3b7829f6a38a773f674 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -3,9 +3,9 @@
 // Copyright (c) 2012 Samsung Electronics Co., Ltd
 //              http://www.samsung.com
 
+#include <linux/device.h>
 #include <linux/err.h>
 #include <linux/i2c.h>
-#include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/samsung/core.h>
@@ -17,13 +17,12 @@
 #include <linux/mfd/samsung/s2mps15.h>
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/mutex.h>
 #include <linux/of.h>
+#include <linux/pm.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
-#include <linux/slab.h>
 
 static const struct mfd_cell s5m8767_devs[] = {
 	{ .name = "s5m8767-pmic", },
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 5c0d949aa1a20f5538d8baf7a8aefc1160ffa14c..3ed2902c3a2634a6ea656d890ecea934053bd192 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -3,7 +3,10 @@
 // Copyright (c) 2011-2014 Samsung Electronics Co., Ltd
 //              http://www.samsung.com
 
-#include <linux/device.h>
+#include <linux/array_size.h>
+#include <linux/build_bug.h>
+#include <linux/dev_printk.h>
+#include <linux/export.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/mfd/samsung/core.h>

-- 
2.49.0.395.g12beb8f557-goog


