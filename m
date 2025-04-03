Return-Path: <devicetree+bounces-162831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40466A79EEC
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0796C3B5A57
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B876E245027;
	Thu,  3 Apr 2025 08:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WiVmgiHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BCE243379
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670746; cv=none; b=CsjXApDewB7YkvuEgMvDiOBMuEnbdauogKFHdB4RPMfAodg/Bj/XtsnzHBVs6Y/mD5EHqz8+A84bAKVnj0zb0vvM3Crg3Dhwclrq9up8h2Ju8ee7BCKTle50dGr6oj2e69HSx9JPywynfIxrb4caG3YTf5xtmSXYAVCsfJccoCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670746; c=relaxed/simple;
	bh=UlkZld/wRLMptXmKQwcze511hrG+hJRq5bCGkApcG9o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tdGkgzAvLP2/bWstSDq4j7rLkyjEP3MtNIz65VSN+aliVEovgd9egu0807+GL4/GNi2DVtwa5IuiY4qcts0QxlVSZpyxFNDVrxIG7xudPU9nDx5Uzy0MZv4ssuvIKbAFWO9WEpDFi9LEDjY5ss7BIW8MsqpM0Zi26HbC6Sz9gUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WiVmgiHj; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so1271815a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670742; x=1744275542; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zvnZunCYyaEwV4fUoehy+lbIydvSzIujDoR6jNNiKRw=;
        b=WiVmgiHjyHP/0yfIw3e1J63bfZPyDlI1cSJVkfOg4jncxVrNobdRoMwudiWOkj8blU
         W4ryDzIrec9tDVjxilifV2VFYuMuSBAj53NFZFcbhGWCuBS6Uyu2sRcpSK/YIBEgRQ7+
         2nSj2z7VNTb4YbZYGzuz1x3i2R9ecKapUeGGGofoCYJpwDAmQyeU6MJHi2hZ7mlHtauM
         rwIe0VSStT/Xejb0/F1SK3BlnSChpG8KX/oKntAIQ5RHgPKaIpfrZOvGuHjVX3aV2u7S
         XbApIj5pGLkqzx0Yt4GWIL95XUJ1/8jfINBdutltzW8nZo366R3btRaGVAgkcSXLLs2n
         sxtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670742; x=1744275542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvnZunCYyaEwV4fUoehy+lbIydvSzIujDoR6jNNiKRw=;
        b=TEMeZZ4hV374SiZksghbA1WG5exOv48f3OG1slVXnnUHpk5nl5lkyEXimBSqx+eRHK
         8lCaT74CvNa96sUofp52a27qcysEGrO621NzzkYhkj5UEuKWE+7ysjOKATTZ77oQ6PeM
         n9hoCy7yihW2qOl/RrqwaBdXu8TxY3Nqv+VTk+FWV4BA5NQOfXsKCyLwDgTJcqprP4FB
         8FR9/HuxU2vsKwrhDz44+vtMkxRcNCNBGaI0HIijSKktl5jUVB4r94vRkC7JJA0/ugAG
         cwmkLP8QfXTbmNoZNTpXYJHdfeSxntNlI+bo9cW6X/LC2w2ZVr2Iule1R1+/XzMnPoU1
         MDmw==
X-Forwarded-Encrypted: i=1; AJvYcCWKUovGOuuqIGoMnox0b/aynKtxg9u7AMKSRWbXqKSWAbxf/KNbP000nr/ulj9Wts8NKVz1TlYCqqBS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8k9ePHihtaw/zoA9mmfDoW8ETMMUjC6SOBOmbtrf1yXKmdmEb
	Dsg0hrBzG94P7erSIkJq3sQPUAhIjBy+TarPUjRarVt6TZMVoRQqTt+/Rcpag3k=
X-Gm-Gg: ASbGnctHANV3sN0mBRsdd6fFk0RKOyNxVQFslRkZlnw98p7jVWY2X3+TfzpqQBD0LNu
	RO1TddpoGiuvlFQjRk+yaHQYAeQ6OUWyuRHj3/e5epUDcTDdWA2+M2Qq18jvFZy1M4kgEfaKWy6
	xSYHLizWFEeCnwKBCJfRDz3rCiBbzfwnb7N1THxe4VlaIO7Rzw0fHzyzOTGOok3XCU++KSPfiab
	gp1HpaZk79bEBX4wjJJtiPO9IRPIeOZbRV86xj0AMvzSHc5MB0knrtz4dbH/HpegbvKDzly2gNP
	Vsyidn0U9xtMnxdNMT/eYqskaXHOegOjHOFQSA9JyJRoD7k+ymQHwVB8vaWdaP6iTxWBpcMtCFB
	aqu+yPLL5SvlzKf4ytv0+HGSZXTXN
X-Google-Smtp-Source: AGHT+IHLPvSEymTsQ03JgORzrfz3sWcW5LSP8Sp0KzcMY46wC//GzsWqGdq35W45MXKHrK74iEdBWA==
X-Received: by 2002:a05:6402:51ce:b0:5ec:f769:cfa1 with SMTP id 4fb4d7f45d1cf-5edfdd155cfmr14720447a12.29.1743670742249;
        Thu, 03 Apr 2025 01:59:02 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:01 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:58:57 +0100
Subject: [PATCH v3 05/32] mfd: sec: sort includes alphabetically
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-5-b542b3505e68@linaro.org>
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

Sorting headers alphabetically helps locating duplicates, and makes it
easier to figure out where to insert new headers.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-core.c | 14 +++++++-------
 drivers/mfd/sec-irq.c  |  5 ++---
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index 3e9b65c988a7f08bf16d3703004a3d60cfcb1c75..e31b3a6fbc8922e04a8bfcb78c85b6dbaf395e37 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -3,16 +3,10 @@
 // Copyright (c) 2012 Samsung Electronics Co., Ltd
 //              http://www.samsung.com
 
-#include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/init.h>
 #include <linux/err.h>
-#include <linux/slab.h>
 #include <linux/i2c.h>
-#include <linux/of.h>
+#include <linux/init.h>
 #include <linux/interrupt.h>
-#include <linux/pm_runtime.h>
-#include <linux/mutex.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
@@ -23,7 +17,13 @@
 #include <linux/mfd/samsung/s2mps15.h>
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 
 static const struct mfd_cell s5m8767_devs[] = {
 	{ .name = "s5m8767-pmic", },
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 047fc065fcf17f5bde84143d77a46749111ea5b8..5c0d949aa1a20f5538d8baf7a8aefc1160ffa14c 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -6,9 +6,6 @@
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
-#include <linux/module.h>
-#include <linux/regmap.h>
-
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
 #include <linux/mfd/samsung/s2mps11.h>
@@ -16,6 +13,8 @@
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s2mpu05.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
 
 static const struct regmap_irq s2mps11_irqs[] = {
 	[S2MPS11_IRQ_PWRONF] = {

-- 
2.49.0.472.ge94155a9ec-goog


