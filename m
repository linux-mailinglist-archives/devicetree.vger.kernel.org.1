Return-Path: <devicetree+bounces-162834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E2EA79EFA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE260174376
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E514F2459F1;
	Thu,  3 Apr 2025 08:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="levw/Q2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E08024336B
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670748; cv=none; b=hg4Jj3jHY8vY41XNBNAgfGeR6qtb6M4XY0BXfKiBPt1Gp+40whkXoFm3Zg+Wkpk2S0G/iIfGf9HrvDpxUz+DuGXpuXtwsFD+T3Ry+oUvOlGa/0LuvseCqVL5b9susJQO1UtndgqpN7BgsulG7o1RkpEePR5nYdV3VtlU8H2UVIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670748; c=relaxed/simple;
	bh=IlL7av/XZ94MO9yKdjGRUMlQhb8Bpg73uC0VJ87ssYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=STKM6G4n3D7SvA+ebtplSFomjRk5SPIDSeqGLBz+WDvLnZNNkmLNHy276s39AzHES+a6D7ZWuiwuf5X+3DnKbtpHPh7wJ566RXpUpCICWSbem8CsU54kTBHhZZpmndkePukFCUJ4OqCjkOQV5dFEckEtPJAu3jwymNbJf25tbTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=levw/Q2B; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso101823866b.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670744; x=1744275544; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6nQmrd18TxOApmP9ZbnJeIx1ckVKc9UGQ9P+sqT3y24=;
        b=levw/Q2BARYjso4u1EbIZt9wvNnTI1sRcgYNjuDoMU66nukLmh7AUGwFJ2nMQNk8E1
         IZBYBrWgogNkLp+w0WoA4Rnwae6WrMZZLAJV6LW/PV6PaREwMj/Y7zkuaQdntxoYrboN
         +NwQOfrKEew0K7EhHJkSg9t07MrnCGpAyi4Lm+XHuTOCJz/ATffcU8r+U4g8hmrxxBNU
         sGgucLCRMNX1DbRoJzuxpaanT5XjWNZnDV4pnhgmdQ/Vi7xpWNno0ViMcVZ4Tfr6eYO8
         1hoH1NCSd6jQBQMxWcgpH1rpEYINplQkHKsB+S8rxQR/ZAzPYsxaZWB9pO+esvU8wAE6
         tUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670744; x=1744275544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nQmrd18TxOApmP9ZbnJeIx1ckVKc9UGQ9P+sqT3y24=;
        b=Aowm2LafkOZLnlW2Jj6It1ev+h8iVB635SyJl++9vb0QTyw2F/WcXTS/H653xMDTd5
         6fh3SqMaSmFuVTLwSBpjGwafiWF/7QicG1d5Pzsn9BDp/g67ivujlKN4sb7u5ChnHjNP
         EQkWBvMo3hx4i74Bg5KEPFH1cOFayKQk6Blc/pZTriQcoIi848uJOdsrzx9ZkSDbHWQT
         whRUkEcS3j9GZCEM7KsC0ci+Z4exN30rrvKU0+vUZvZl3IuY5LctX/YQsqxyUEDcvj8h
         9W+oU9DXvQquIjRGfD3dlwX8EPR8hOOft0ad873MIU9vfACuP5IS7ZFJH3kDhRRST5ra
         rG/w==
X-Forwarded-Encrypted: i=1; AJvYcCXrtbva6e079EALNNyzmnqzXtIKwI24Zhhy2ShmAZP0XOmB4gaq1YvKwYZZjdl7jPD1uuOKPPzSz5KZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwGLOBDaONlcc7IO0cK91a6NCmOWtExoD4HXJQhszIvhSpznN76
	NRJ478cZK9Qaf53ANvMBAODxLXjITogrWmBWfzrAUQIdMl2cpwf1O3uIm57I0io=
X-Gm-Gg: ASbGncu98LK66fauKS4GqOIt2bHsURgjSJAK6Os6c+Ek8fKHOH9x4XY3N2DeOvXXAOD
	TScJrmAA/qD0CWhYstxz712o4I7j66JLz1+DHVjtWvMZ5aUGjihFL9olqiAY/Sa2wsHyt0QHNOb
	SIpeXkGioiOadAlphIYm8ENzirqbOYqGE7misomb9Qh/VWcZKfTbeMSPnPi8JzNdfNInsYrZJLh
	mg/dcxuviT9p8NtQmVLCiL/cQylKjVwJfEpovv33t+wI4xnrQ5KAy1ene1yle91CPEZTOJV4evM
	4rOcsrDynSmSQ9Q6DVsI39JepS4DEEE8NQJsQKfy1OEI/OtPIWGxYrCQmfgIcnjRm30P1mm3w4Q
	Z1yvevYuaTXP8EFj+8wcepBC7wdI0
X-Google-Smtp-Source: AGHT+IGIWTCEvGgQQzD/67aqQ+onG4uBURQ37h1HwUWRbYYu+VD7A44v+HEWQ+TW3vqt1mLDE4QMoQ==
X-Received: by 2002:a17:906:c153:b0:ac6:fcdd:5a97 with SMTP id a640c23a62f3a-ac7a1972b9emr446196566b.48.1743670743773;
        Thu, 03 Apr 2025 01:59:03 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:03 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:58:59 +0100
Subject: [PATCH v3 07/32] mfd: sec: move private internal API to internal
 header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-7-b542b3505e68@linaro.org>
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

sec_irq_init() is an internal API for the core driver, and doesn't
belong into the public header.

Due to an upcoming split of the driver into a core and i2c driver,
we'll also be adding more internal APIs, which again shouldn't be in
the public header.

Move it into a new internal include.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS                      |  2 +-
 drivers/mfd/sec-core.c           |  1 +
 drivers/mfd/sec-core.h           | 15 +++++++++++++++
 drivers/mfd/sec-irq.c            |  1 +
 include/linux/mfd/samsung/core.h |  2 --
 5 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 322ee00547f6e494a96d2495092f72148da22bd0..d4d577b54d798938b7a8ff0c2bdbd0b61f87650f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21407,7 +21407,7 @@ F:	Documentation/devicetree/bindings/mfd/samsung,s5m*.yaml
 F:	Documentation/devicetree/bindings/regulator/samsung,s2m*.yaml
 F:	Documentation/devicetree/bindings/regulator/samsung,s5m*.yaml
 F:	drivers/clk/clk-s2mps11.c
-F:	drivers/mfd/sec*.c
+F:	drivers/mfd/sec*.[ch]
 F:	drivers/regulator/s2m*.c
 F:	drivers/regulator/s5m*.c
 F:	drivers/rtc/rtc-s5m.c
diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index b12020c416aa8bf552f3d3b7829f6a38a773f674..83693686567df61b5e09f7129dc6b01d69156ff3 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -23,6 +23,7 @@
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include "sec-core.h"
 
 static const struct mfd_cell s5m8767_devs[] = {
 	{ .name = "s5m8767-pmic", },
diff --git a/drivers/mfd/sec-core.h b/drivers/mfd/sec-core.h
new file mode 100644
index 0000000000000000000000000000000000000000..b3fded5f02a0ddc09a9508fd49a5d335f7ad0ee7
--- /dev/null
+++ b/drivers/mfd/sec-core.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2012 Samsung Electronics Co., Ltd
+ *                http://www.samsung.com
+ * Copyright 2025 Linaro Ltd.
+ *
+ * Samsung SxM core driver internal data
+ */
+
+#ifndef __SEC_CORE_INT_H
+#define __SEC_CORE_INT_H
+
+int sec_irq_init(struct sec_pmic_dev *sec_pmic);
+
+#endif /* __SEC_CORE_INT_H */
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 3ed2902c3a2634a6ea656d890ecea934053bd192..4d49bb42bd0d109263f485c8b58e88cdd8d598d9 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -18,6 +18,7 @@
 #include <linux/mfd/samsung/s5m8767.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
+#include "sec-core.h"
 
 static const struct regmap_irq s2mps11_irqs[] = {
 	[S2MPS11_IRQ_PWRONF] = {
diff --git a/include/linux/mfd/samsung/core.h b/include/linux/mfd/samsung/core.h
index b7008b50392ab857751b89e0a05d2c27f6306906..8a4e660854bbc955b812b4d61d4a52a0fc2f2899 100644
--- a/include/linux/mfd/samsung/core.h
+++ b/include/linux/mfd/samsung/core.h
@@ -71,8 +71,6 @@ struct sec_pmic_dev {
 	struct regmap_irq_chip_data *irq_data;
 };
 
-int sec_irq_init(struct sec_pmic_dev *sec_pmic);
-
 struct sec_platform_data {
 	struct sec_regulator_data	*regulators;
 	struct sec_opmode_data		*opmode;

-- 
2.49.0.472.ge94155a9ec-goog


