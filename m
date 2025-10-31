Return-Path: <devicetree+bounces-233754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FAC251F4
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3645D35075E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562A534C997;
	Fri, 31 Oct 2025 12:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NkP7DDkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD48B34BA5C
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915375; cv=none; b=EO8GhLoJ4VJIRDhFz3Uv/3xLie38V9+DGdtiUmsgOSmSS2mesD/ApCPzqeR+6pnk0IVpbxn8u72yKux6rPwuwQBg4SpMk0b4Lhrml+lZuN9AnmUbzxuRlpYn85OAHer+b0bNScfm/cqZJhxbGSv+aljBWzu1A+8IVA4gEop1aHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915375; c=relaxed/simple;
	bh=FIHoekKrBczbbS2fXtyE+7Irx4O0EiIRwRvzO55FnY8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PX1/SfCLgZ0jbv7At0ixG+MDi152/yrrBtUKfCYSfWYz0Ca+MW6bvD/ZjpG5K+RkCrSZ6Q8LdvzEWpe84Mz1Yn5v/tx9zxvwciXEkXjdO1QPVxkPkI+m1daMAyCHD0HBadsVX6i9cX2LOcdgn7a4D6MDvtg9MgvMsA4hDqK39Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NkP7DDkJ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-475dae5d473so17864885e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915371; x=1762520171; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RV56NpH1lI5ED8FEKTPa6jAqZswvvDhZwVi486+R9e4=;
        b=NkP7DDkJqIfPwc30HpGIC9tTwvVmgvvX1iZq6OzQRMHEDLphKfqE31dFP6rHkWoRke
         IT6fGqav5r/lIgw0x8le9UkgTojnDyr9IjKYB6gH1D6XtAj8BNxnWoPU6cHj5ADN8piN
         1dI4lFWSixfuf2McCjGYAlSJAYJaZcsqukSyQ0tmRbHu97fK4VGHpuIt3cX5SAEABfXx
         ho5mQYj7uTylXD0ZW54JVIY7wjuIQbGOG3YL3usrkoU0x8XAIrdBuC3YrsVBPZn8doIB
         ZreiG92vzS6YWSc1ePsVHXF9SSAH9CxUhq3/mvby6jGmXkk3YqdgMH8eYt9a1khEChhe
         qRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915371; x=1762520171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RV56NpH1lI5ED8FEKTPa6jAqZswvvDhZwVi486+R9e4=;
        b=V7zH8+45vODrFdaSkI6oe/B1qCZDGfCnXeseEv1Ven3bMQzIV4Kdo1AB3NkKd/01NQ
         bhJLT+uH1DHJA9712uG/ERbq/i/UXH8RMf51SV9txYFHVwklCUEhdvqMLe76dXyqCnrH
         nPFiOw3fRgHB91qz41qGgQBA80jYJaSfuELbCRNvJzAKLbkHHMhO0/i3wcsYzDqk9gGs
         pXw9NrOJEkzIGk3odVmJ57cB7tUXEwEiGw1PH66jvTPkC8GlxEFM15oOS9glinNhWCP8
         LMG3d7QFOwOt+eijKW2QYeMkJZkYVgPaPbuk0A3ZVZ7k5gTq7yLHHavLa5JJvFkTNscQ
         jDTA==
X-Forwarded-Encrypted: i=1; AJvYcCXGueRf6IJtM6HzEQL6Nky0L5Y2WtzGaQiZAklwQ98VaCd89j7BCze2Wn71GQZdVM8jdvkXBYndna6P@vger.kernel.org
X-Gm-Message-State: AOJu0YyC+75ew7wR5qns6fzXJ9ZCyEOMrr1S9Y2KiVBVLE84K3AItcF9
	w3WZf28KBS6PsYY3lUXytRhD66RI0YizLhY4l64EiWQSnXxkhkUrYW2W67184wbQZ08=
X-Gm-Gg: ASbGncs1x4WRbUIYjWT5AKb+mjPahl4kCeR5qYKaOyRToQ3and52OKNTaYg1yD5Xkhy
	Ztj3oqGY2ONe7TsU4gxTFL5auDOxKyl6al0oL1gorOybItqcWJ/oPAbs1tYAIRu/I5hFAi4NoQa
	3Q1ylUcimkDAuKGvzh5/ZJBWDiTPPxrKP7vCECXggxvWktvtfb76C3/OYKDDs0/lJStIAzbtxIK
	kNLIV/7QTkye6DuulDHpYMx+CoMtLHAKwpjgpCl4+RS6q3jMIsvhBd6qRfbk/WOtvItvVzfJAUB
	OGu+awUQGIZiLBXyM6B2zZ1SwTAiAEV3Vo4VylK/a9x6h4vfx84CqRj8fcNbEqubZ8hGoaLag4Y
	5UuuxfNyGyC4/TICDlVHci+njY4mYdDCc7yU7Ax9sVbfOkGtLwHbha5OM54C0s+BBlCMZh4Fe6a
	PzlKIDLlncMoAsbJ4ncQhmjUVV+wRJ3k60MOybY8lMiyPWULkLobht
X-Google-Smtp-Source: AGHT+IFeggZ5me4AtsVkM9uFz8xqiFgrnYQxbJrRB9xgQZPpOldZCFch7kDit8HV51sz6CbJralSnA==
X-Received: by 2002:a05:600c:4591:b0:477:c37:2ea7 with SMTP id 5b1f17b1804b1-4773089c4acmr34565735e9.21.1761915370805;
        Fri, 31 Oct 2025 05:56:10 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:10 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:08 +0000
Subject: [PATCH 09/11] soc: samsung: exynos-chipid: downgrade dev_info to
 dev_dbg for soc info
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-9-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=1062;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=FIHoekKrBczbbS2fXtyE+7Irx4O0EiIRwRvzO55FnY8=;
 b=3OjTcS0UxbHqkoISucKjpZEuvX9vXYQp9nnD2kJ4+sGz7IPnIXZMCM6+YJE0WSVoEpcWN6fhL
 AHJDtb+21OcA7QBhRkXf2VyPH00dSPqRQdyZZ3BygbNy9FOa1XSl/mr
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The SoC information is exposed to userspace using the standard soc
interface. Downgrade to dev_dbg to stop polluting the console log.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 92cd5dfc0a9b641428d0d047cfefd4256a893ac0..70e09ac656e4b95d5d252272bbe02bcf0f6fb2ab 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -241,9 +241,9 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, soc_dev);
 
-	dev_info(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
-		 soc_dev_attr->soc_id, exynos_chipid->product_id,
-		 exynos_chipid->revision);
+	dev_dbg(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
+		soc_dev_attr->soc_id, exynos_chipid->product_id,
+		exynos_chipid->revision);
 
 	return 0;
 

-- 
2.51.1.930.gacf6e81ea2-goog


