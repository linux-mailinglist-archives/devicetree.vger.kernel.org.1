Return-Path: <devicetree+bounces-165030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BDFA83284
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A4887AC7B9
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EAE22331E;
	Wed,  9 Apr 2025 20:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uQ2JPrfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF18B20297E
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231075; cv=none; b=uhlz1B3RUhpx8yfz0KPKdF0uPwPEZB+Sxt8Qq8VNRf0J3OVxQZZxkGL1LpK86kzSuxbnK5vGrjwP2/4zFl0BQ2LzjXlBUdBB0TBgV1e+aKpfEKSGNBz40givctbHjuyo+SoIdTZ0+89jL/AW8zAy9XpYuhpLwZbJXeJuCsz7DcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231075; c=relaxed/simple;
	bh=CoKrSJInLiIXwlY1ZZ7M5lRUgwJwFwDmaqWcxDpmqQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mfhNaXMoZMtPrR71Sq79RC5Pw/KqYB4zsD6FWWTZjR+HLOg0OyEMA1/bZ1hMWETFXNmbXZs1D2tAuT2J0LU5K//Ygu6q3j/z5iVhh83A/1zgpHaele9WIWIfAdCcoaT688S7QdtCrV6RBWEorvWJGj0M8Rwpj0ga1+w4pls7zVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uQ2JPrfy; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac25d2b2354so16876566b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231066; x=1744835866; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Ow5hOPbiIZXZpWZ6Uu6oQmw7CcTYqg39bQG6yedoPQ=;
        b=uQ2JPrfyUL4InhIYJFfMorllx1mzrBQFlwuQghTNuTEbVA9uzUptUuwbdJBoR7sROh
         daTsVIxDMfBXo7w+dSyQIlEzyUb9SpHT0s+U2OejvKDOAe3f63hTr98Ocglgvzu0kOiW
         5aPEr7xyLzTl/SR6ZlMYr3KMb2J5nR6dp7PwMY4q7l3ifdl5qy1+OgUVTT277z/DVMtl
         2C09nOWOU+haKmfD+V5qqmX+QlaBeru5pUvZXVlQFAbDo2gCCRE1xllwbOGyryoVxG9o
         dXbAP/8Wj70FG/MrKFv2EC/bpoxg3391AilSGNJjDySBH7hlpRXOohBHIJSVpJIL6W02
         aTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231066; x=1744835866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Ow5hOPbiIZXZpWZ6Uu6oQmw7CcTYqg39bQG6yedoPQ=;
        b=ZFGGOuRai8DcBaUccc43ZHZMq0NDp5JYwSTLax4JRTgefIPCpa9KjJ27bmz8rF6dTu
         mETDp2HdsAGagQlNz/0VhaDxwQpH2INhWgPwMfwDAwFpgxDk1GLgzuCQ1nRyPU4ecEiY
         N29PkolZhLaMRIZnHdtBWUoiO+jOtenLg3b+KntSIlBBVNG9TK3O8af8/+ozQnDtt13i
         4OTiWf8joG4iiD4sNIK7V9oD/2LaeXfp9l7zGF6p1QlWR86UZrZamc422yrvCmTmERw9
         Bom48jv0ap/0WQkj8k01xc2jKsHIgHOt0G5xmDAYYTIwfgcGBKyd4ZYOT0EaPY9OVGYv
         9Kyw==
X-Forwarded-Encrypted: i=1; AJvYcCWHaMY9bU2KzeMQfBQvomJkfA245uHZyG9Lo+FuRsaOcIdP1fS0Q/nyx6W5pKO9KMFrh5qZTCr/hwGE@vger.kernel.org
X-Gm-Message-State: AOJu0YzVotjZ+qsU39LCjpxzeqPglpnLg1VSIhXLdqVIZ2XE6u2zjDbw
	nf9MigXMX3KnXkwFR+gfJs+bewaDvPWcu2SO1P/QJO8EWfuQ7M7ox+im66L9LLE=
X-Gm-Gg: ASbGncu6bOheMOtI07qlHORPi7HAcfFQ2dwez2q4ehevwsQG68ouXy1qOr6/6sDih7h
	TQYEtaXUrIP1ZoY10pHPheIvzEK4ngV+FRU4zMwnze39McwZWRKUJ4+DZyK2BGaMvuPaBZTYQrR
	QxNOO0KyvSDblBf1qCHqyfoV1l4meqB2zqDfafX52hSXUkI1TM4J3oJhc+N7a/QEtsxIIpGKGpp
	AtRTeZ0+7GayQmpgI/X/nShmS/L+PhQdjM8/XqOXQ4VjombrtfDZaqeCRPdYzqXnSPp7aVgF/u7
	LopVQTcU0mc7vtA4tCK8U8etZtMOVbbeboe87glqKrzYz5D7K2SrdOiYKawdO8mXexS+70AoG9W
	bbjMEA2SqGExvMiAQgWzMnhwT/gY=
X-Google-Smtp-Source: AGHT+IHIxFKwjUo5uFV6Jyj3wWXPZsF8lPwam2ydOiylWhWcuYhWeTd4XU5X8ZDB51XZhRzJ2FSu4w==
X-Received: by 2002:a17:907:7d8b:b0:ac7:9acf:4ef with SMTP id a640c23a62f3a-acabd4d7131mr6904366b.56.1744231066055;
        Wed, 09 Apr 2025 13:37:46 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:53 +0100
Subject: [PATCH v4 32/32] MAINTAINERS: add myself as reviewer for Samsung
 S2M MFD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-32-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
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

I'm working on a Samsung device which includes this MFD and would like
to be Cc'ed to further contributions and help on reviewing them. Add me
as reviewer.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d4d577b54d798938b7a8ff0c2bdbd0b61f87650f..9f05af52b062d8cab0f8b48b2625432108604c3e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21397,6 +21397,7 @@ F:	drivers/platform/x86/samsung-laptop.c
 
 SAMSUNG MULTIFUNCTION PMIC DEVICE DRIVERS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
+R:	André Draszik <andre.draszik@linaro.org>
 L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained

-- 
2.49.0.604.gff1f9ca942-goog


