Return-Path: <devicetree+bounces-161604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC975A74B19
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 866B217AF90
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C69235C1D;
	Fri, 28 Mar 2025 13:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nV1j4V4/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A7B21C161
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168671; cv=none; b=o2aA9xOlZIelYQRCGyB25k799oGxslm48JkrOqyxFmRyB2iyNR8HOCETJHFgC+9+HGWoi1kVzjsEPaDxa3nPaPFfeCsshd7eDzlvF8PsZYczbugPcPJ3PPMKI7k7YJX5m+qQHfzh8VyFhJI6s9hNE13dmSDdGDoR64Pw4Ezp/hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168671; c=relaxed/simple;
	bh=cUTy7Xx1YiX1UnRa4JT4b9qKBeo7MuQLQSe/ooLtKqM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b68wlIOFeu2twb+FNGjdg/VG6wXpgvaAhihqDL4NgxFNUwU2nTSedAD2OdDP9mgTAeK9VB11bVKJuFub5qLjIOBQVTINqiNXFq7zpVjLTmlTdCEF7zX/rQG0By5CjJl84GlNdiBdfbP60Z/mnPr0vWioYUI3TTmZjdOMX5GDnHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nV1j4V4/; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e614da8615so4054009a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168662; x=1743773462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOEB7IVKZaW1PZ6sIgI8umGsLZ0fzThiODmAgEs2dvM=;
        b=nV1j4V4/dIkxhlaR22kwv7O538NCkJMzYdChmNNNyYBx9gYBjA0u6F+qHKjj3HKTSI
         iAdNouE+c8Eu1nT7xfAv41KAsk+auq2GuC+/akczxKWFQmfmX/jc6PIFBlbdmPmZcP3k
         Bzk4Syk3oZBCDIkrUNHm23GHnyFsEEwW46dc6BrGiR6d1pGnPIF1/GTg/rsHaKE5hFQt
         LC7lrJ5cdCBcemqS+R0jAz+ExDU7hYQ7yQpOdthep0D7IiOhi59ZkxH8/qFxyQ0/kehn
         QgC6IEEHVHeNwl1bmRvk0Im0RwRTGWnTeaEAm9K3Y33ExqlUOJfY4jiUPiKYdAhWPgQK
         TqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168662; x=1743773462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOEB7IVKZaW1PZ6sIgI8umGsLZ0fzThiODmAgEs2dvM=;
        b=LjDg+ptovvGjaRCrhdLEHxPG5FKqHAYTAstPujKpMs2+4Ii5dCj3E/7VbAfe3azCGy
         ZSkd6PdJ4A/cNo+ukfYt+/4l4bZe7iCHz0PvGFmEPq4Y41cYYkw28ua3ngh7ooLu5fGL
         0fsgSwQ5ff03tWTYSg4IQ58nCffRcJx5S9KfK+NSaSkszO0q/Fag9ugnofQdUjre2sLG
         er7tHS0UwbWRM315pNuz+36YVY27TeOzGXZu+wdHKKwtgoFj24xP08MHLxRh1lKfO2sQ
         h8yxaRT3dpyx1Sel8X0PF/lvBKjirw49You2hH8BJke6ZZi5+kYnwiE/Myqh6OzLig2s
         uTsw==
X-Forwarded-Encrypted: i=1; AJvYcCW26AAPxVD3c5oRZohcsLIlq2KUxRneVnl88aZbWcHDTj1OqwKLrdP+C3jKZkD8SMDk4uRZ3B9cSeWu@vger.kernel.org
X-Gm-Message-State: AOJu0YybTwQkTX82lWD6B6zns09UJy/hYBGUFe5AJ3ibTjfe/KpaqzIs
	oDeLPxyvAw6dhlhC/8ak2sjL/UvN0RYqlc+WzLDdkJFQyQ1cU1cMlWSqjr4+UXs=
X-Gm-Gg: ASbGncvpHKKZS5gaTQSj5AeQGKs3as8A/xK05utysVk5HIhurDT2cwbByCUB3ETZPmO
	kwr00A8kwJNEFYzW4bEgw2y8umw8ZppRGjMBBGgjcvJM6dXKLQfs+towtbTj8bi+287uPDdKW5O
	K/1O6ZY/l7VLfdVWz+vwJ5m5aXpLMK/QnM5RKDMtjGjAcaFUQIySiUvLZjjnMzvvbZaw2gjww4+
	QZL6DOV46UIouC3cYewsL3f6eS/aA07anfNEwOeIycdVk8gQUY6ygoyMwHMd6xGdj0+SrGvQ6Zn
	VCK7ydTBGDJWc45R0l9CHYeUzB5UYmhri+7X+UaIonEy15DSnWHpEl9WgNQ2/ePays1Ios5zbDu
	EjCXp9J9NwIZbW4IscI4qrB87ve7E
X-Google-Smtp-Source: AGHT+IENTriv0ZKQDvxOFGqnTo7xSy+uELps+TAzZydZP4h3NfKqEFYmhwGmgFpAh/R37lkn+8E27g==
X-Received: by 2002:a05:6402:1ecd:b0:5e5:ba77:6f42 with SMTP id 4fb4d7f45d1cf-5edc44c9935mr2924122a12.4.1743168662019;
        Fri, 28 Mar 2025 06:31:02 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:01 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:02 +0000
Subject: [PATCH v2 16/32] mfd: sec: don't ignore errors from sec_irq_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-16-b54dee33fb6b@linaro.org>
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


