Return-Path: <devicetree+bounces-161609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A323A74B28
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37ED6189ED77
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91422376E6;
	Fri, 28 Mar 2025 13:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="En+/83zz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C6421CC44
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168675; cv=none; b=s24azxkgH2PWWB6BcS9D7YFF3GV8LdGM9gS2z7jBfqxxNs88kOrITl+9UmEG6IpPS7fL7OVFU92DhaN7UD8GMvt0gKtWSylKEN7GiS+Y7nGqLX+GizDsXbRpMUNsSr5pkWJ/P02X4q9bTMCPnrvGRSIjWmzCzOBYVntF9mAx/6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168675; c=relaxed/simple;
	bh=X0QQTgyZyBPIURJ3v2tympUyOwlqSVYuYyMtIMSpfpo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JgfFVRRuxuz4N80X3ERI7Jocjyy7uOvicY7l1oZM45U+cS5W0TREwmIR410WI+d8JuGJ2HFLtHd6jARnyk52F/qTR2pdfM3aBuek3ZkEpxw2OqAAj2pUiFvXRXJFNtjpLhkXqbvYayGE8HeHe+nvtjQKPjxj0xiipjBh4WElGzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=En+/83zz; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e60cfef9cfso3340291a12.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168664; x=1743773464; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kV75c5wurwfdiB4LfjbAT+jBLqgbz3xs0SfJTGIePwA=;
        b=En+/83zz2JnMpQOWtuk2jCDJ+XxaXrWiMelE/N8tSqAWNlQjxSxlMoVEEmE6b33Sfk
         NTdaOnhFa94eLQmjNm0kQX9LkllxVIDbU0jX95dZG3s26gd0JJk0H2UYYfLo62vvjKjf
         fnVNqpK0uxH3NSfbnQYY0Cs0UQD3VnK0PRhGQtW99BP2c0ZYhui+pddKFsu6/BbjMEJ8
         zN5/RQBoIdNDbbIDDtUR2jvqr3ZdbOGfRIpuIAf0rNr3I2aDjSfPDJgoqXvQSULs3eDe
         SHS86+6HeMQPVvrg6x0rJ2IHK5sir5Tjuqxtqg6lIo4mVJXez7M2lduvv1DNech54jG0
         6NOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168664; x=1743773464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kV75c5wurwfdiB4LfjbAT+jBLqgbz3xs0SfJTGIePwA=;
        b=w41zIr2VYTl2Qy3L4XOr+N6ME9Kqy0+mAqzG/GqHqEX5zpFFW9wam431GmVQ+5t2Gi
         Pxd9rZYj8QbbswDskB8xUCoKBMdU0vJKXUveLNj4Vp9D73VV936arSkvTHfeLUljXT9/
         EBehNyB1N4ZELz7YmtVHHePBZgmsbAhpGN1pAFlc9am0oNbtGLb+xLmnIUVrhpGxXLDM
         RYYTTg469fseRGzVQyme9Wn2SWiYJN+tqPwaz3EhnrccBpLeX7KJwXjyjSbfk7n4IVcq
         khVfNOhXQGD2KB4nrxonZ09POIZIEDD9PnMjhazq8XlwjFuC31JvhLeBqoGgZs39RyN6
         Wt+A==
X-Forwarded-Encrypted: i=1; AJvYcCWTcazX8W+5xZqxEIgGfd9rIkKeA9zNvyIk1ytJDNVAzULe4c7nOPLPRhetGQV52wTjPkinHWWt9/4I@vger.kernel.org
X-Gm-Message-State: AOJu0YyThsjAyXFjoVaHhjmo0tBdJ00CVoh3SZf+KZDtd9KKu1NUM7JX
	nba+YluxicXIPnSYEF0BECdkSJHd3nI4FIuxCYof08hp+KxX+6hmMXvX3GcgypI=
X-Gm-Gg: ASbGncvHp9bk2sMMSkdkySMW6uzTAv/CgMFSlFeD6IOt5b73ZmuDe+B0HttiXUAv2jC
	hn2DjMgqO7aFGFjtQ5bUJdQQU9k2S1ceiz5nYyeA6ES5/Qe1HpI2ufG8fBEzHcWkBEdEoDYc18M
	fJdz24oYG+R3iS3uiGtnidCXEhRLx5DO7TLdAUb3vAuK2DLh0Ky5isx6h7CNYyr+jBQ6uUfM2Um
	BIfy4iRKkwQ+nDGcwT8E9pJ5QuR2Be2UkvQ1WV57MnSUqFogxZmJboh2qM9wM2tii6nEFPoaIO6
	ytXsOMgl3okyZ0xoyKhO5RdVSXjKkSarTEsnxhsbcnNqVU1r8AiVX8g7p8410DtF+idmCkFrsAq
	tGoZ+r+yTxss+8iNSxGi1GoYnutPx
X-Google-Smtp-Source: AGHT+IH82jsJ04KqxSx2urRuI126Wc6BqmkR0wyKM63ai8QchgotV1y1Ewu8V3BijV087u2FKOXDPg==
X-Received: by 2002:a05:6402:26d0:b0:5e5:c637:b69 with SMTP id 4fb4d7f45d1cf-5ed8df6b334mr7910381a12.6.1743168664240;
        Fri, 28 Mar 2025 06:31:04 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:03 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:06 +0000
Subject: [PATCH v2 20/32] mfd: sec: use sizeof(*var), not sizeof(struct
 type_of_var)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-20-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
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

Using sizeof(*var) is generally preferred over using the size of its
open-coded type when allocating memory.

This helps avoiding bugs when the variable type changes but the memory
allocation isn't updated, and it simplifies renaming of the struct if
ever necessary.

No functional change.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 55edeb0f73ff4643f23b9759b115658d3bf03e9a..e8e35f7d5f06b522a953e8f21603e6904401c983 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -163,7 +163,7 @@ int sec_pmic_probe(struct device *dev, int device_type, unsigned int irq,
 	struct sec_pmic_dev *sec_pmic;
 	int ret, num_sec_devs;
 
-	sec_pmic = devm_kzalloc(dev, sizeof(struct sec_pmic_dev), GFP_KERNEL);
+	sec_pmic = devm_kzalloc(dev, sizeof(*sec_pmic), GFP_KERNEL);
 	if (!sec_pmic)
 		return -ENOMEM;
 

-- 
2.49.0.472.ge94155a9ec-goog


