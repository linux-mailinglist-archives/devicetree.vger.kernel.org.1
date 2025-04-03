Return-Path: <devicetree+bounces-162843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B3FA79F1D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B2B31896606
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF8B24C083;
	Thu,  3 Apr 2025 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AjHHOqvH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E34248897
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670758; cv=none; b=rTRskVbrs4BsByYTwn/uZwgdM5DXUDsGXrsm/3KMRdA/J8f9/dQDsc/OeSZ10j7QNm/yAi0G0tLtWeumYCMhJybBxm8HTaCWeFNPFR9kxwJGa3QYQEpHMYd/mb8Ykc2rYXNjgewnxOOv9GjIbib718vejliPK5iz2Zaxw83zxd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670758; c=relaxed/simple;
	bh=cUTy7Xx1YiX1UnRa4JT4b9qKBeo7MuQLQSe/ooLtKqM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OGh4h9mwNiBGlsYzT416o5IzAepf+BPVpzjP1c62zySYv26ZC+8bcM3Jy5Cny/iS5MoK4YXnd8EvrONlsNgtD/FbbPcfqw//gdzzzEcQe+DyW8N5eRqpEMK1xZGSTebhulrr4FdNXLpZR/qDcQvgWkRRlmBR7XwJ1W8nP03pjF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AjHHOqvH; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so1229822a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670750; x=1744275550; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOEB7IVKZaW1PZ6sIgI8umGsLZ0fzThiODmAgEs2dvM=;
        b=AjHHOqvHENCRlXPk94D5ol/0f3FDlfN75O8DcrWoeUFpHApwRG1syizNhakbRO5fd9
         TDldk5wN9yEWwM91+A/7wrcsgtlYWH7NJclHDGw/YCmoqq34vnKJxKf+kf2XGsUvQ4U0
         xiZXtlcQoLA96MXAestzlj1qh/U/HKvumc3cqkvpe9bbs3UUNrR/qHXiqQKOpZjjtGhU
         tfiljiY5j7J4O5kzHSEbShO0vzTEAuvMqPYHpWM8baPIf/a3LCoYpZp9U/SJhxWlT9yH
         sJbeHa2m7EI+TWTyBHbqcp3TiIR+ZiHXMsrV4zLwEbJ3RMyOlU+POuNiyufq7N57pTrx
         Pz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670750; x=1744275550;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOEB7IVKZaW1PZ6sIgI8umGsLZ0fzThiODmAgEs2dvM=;
        b=xVd+VJm3IhVgUmlxZ799MN0df6exPWa+8Wz2bXjBBL4z3KrRZPYrfZme6gcFneGs2G
         f12MEw2VDjB6Xms+7c0HFqzZJ/shdBuCYYwV0juf65c0b3pFe4IyLaF+mgyfBNVCTAPw
         +kY67b159W2Nz14MNa33IQFkKSscZrxTSKhGhL2FqaEZn+YOPeMzXN1BgPMcrTZ9ojhC
         1ILHOgwLOyHtsebUls2Sz/Ms8voZtXAhlJ19y1HmdebHqopO5yOJjWFH7VNyJx8I4TL4
         1zftbeMrl7a19tv0nmKinMGM6Hs7ll2vfNReHyHxfQr4LgU9uyNv1D1LOZEXe7QAnjbt
         +gxg==
X-Forwarded-Encrypted: i=1; AJvYcCXAcExB2I1JJpC7l1vm7Db6E3bFIhRM0Uj1yqqYXrecoGyM1Gvs7oriEfnn8eAHbfJg+FLn7cmDjhaD@vger.kernel.org
X-Gm-Message-State: AOJu0YwpgNjdCaxzUnPjeVg6cT0jMQkrOv1y5NzYh2+Op+XpSDDQWMFN
	EQ9R1yF+zZDtepn3Gb7A9OVACq7Co97JoMJffIACmZMHpKA4Xiz1E3isis8mx/E=
X-Gm-Gg: ASbGncspKBbg02xIq1cTk2BMHeSjItvzz7wTKpgV8mZ1uMwRvYHQM5LLRzIpPmQa7gK
	7XBSLLpIUkgvB2fNEgz/voGZSxjBOVfW+EITrGwYGIS0Yv98blVmuSqJoIltlZUEOfszW+dziwq
	4+DZ/R8KO5wx+dp+8ztRZNEy6DGuemebDhPQLVGCRxDDu+zuFE0E4j94FOlKJHlXomsy6LU48HL
	z6rtbElLlIKLB3/DiKGrLtsDiTrzrmGXmWNN7QI89VnPHoHEunEV4TfVvGj3na+jq8jRx4GRgt+
	A4EKBI/Tz81vBsMOcr0Q2hm6nTENXmbN9w4b1KQ8xgLR9SH6vnCrjZN04k7QvUZ8quiOP+rZsot
	tRobZW1irJ+Hqh5pV2noPOA8GYxBQ
X-Google-Smtp-Source: AGHT+IF/mj/FrJ8Kxms7tCENqFVdFFdcidKVA2nEXR0Y75YsHneWseB8Fi5sl71j96aNLNBmEO4yJQ==
X-Received: by 2002:a05:6402:2682:b0:5e7:7262:2b75 with SMTP id 4fb4d7f45d1cf-5f087184cddmr1440611a12.11.1743670750284;
        Thu, 03 Apr 2025 01:59:10 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:09 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:08 +0100
Subject: [PATCH v3 16/32] mfd: sec: don't ignore errors from sec_irq_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-16-b542b3505e68@linaro.org>
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

sec_irq_init() can fail, we shouldn't continue and ignore the error in
that case, but actually error out.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index f4c606c5ee5a809a106b13e947464f35a926b199..bb0eb3c2d9a260ddf2fb110cc255f08a0d25230d 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -183,7 +183,9 @@ int sec_pmic_probe(struct device *dev, unsigned long device_type,
 
 	sec_pmic->pdata = pdata;
 
-	sec_irq_init(sec_pmic);
+	ret = sec_irq_init(sec_pmic);
+	if (ret)
+		return ret;
 
 	pm_runtime_set_active(sec_pmic->dev);
 

-- 
2.49.0.472.ge94155a9ec-goog


