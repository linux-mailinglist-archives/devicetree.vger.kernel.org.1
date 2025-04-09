Return-Path: <devicetree+bounces-165019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36766A8326E
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6938544532C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594E321C9E0;
	Wed,  9 Apr 2025 20:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HfrGGi1L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FA6213E61
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231067; cv=none; b=a/s7u0XsJvcRlShi95tRXrnZQLwQxUcHl/fFa6vCm30Cs+vqLJGwqBCJ5ArxrmSLpoqGGt96oeg9OSfJM/KlLh4lEFqWUlIO8CouRdk8wKqn3nE0IePvRM9YYqRJSNnEz/P0SSxCVbQReQhxtT+RI7CtTyPY4G5eGse40vB2Vh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231067; c=relaxed/simple;
	bh=3Me2u0NhSmvUHUm87c5Lew65uoJBRoaotojNz31DdRA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mNi0IbRoA8AEYLmV2hxw6dsBYdnD8wD1BfPN5ygJu67trxEUIRn3w2/W+O8id0nG8NOzr3yyd12bITlibACmJ+lqKhTFrtv0aVC8y4UWdTr/bHJ1Gvs0CJ/xLWucLNIQKVrXZxSvcG8NxkK6KivUx1YvAeDjDL4kBlMYNGBg5Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HfrGGi1L; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2dfdf3c38so19198566b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231060; x=1744835860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8BAVD406cmjg3dX/fyGSMAhg9gbpo2Je5SUNU/Iu6Ls=;
        b=HfrGGi1Lp8vA1fc1S9V6LqqFdvvCXMBnAOE3R5cPH6fYJFe9V+5Q8AUA5kpr2kyAri
         2h6zgKTC+Ka50zQWTkQkU2SrAXjgwLHCzzviTX6AH+AZ4TmlCV4P7IWZiJXUILep/D42
         XqVvrtkEm3M7CDJm0bt+s2ETpetoz53BauLqhveCGTeLCx7dRaiGtR9eSQH8+OLqxv1J
         CL3xZb/mHz1K60wXG1sZ4eUgRYJTcfoslP5cIaE1+srpnhYMXsuNtFumIZBhZPhimjlm
         nfNCX+NkQ2qeJVrgW3yVaikbWdoA4cbniArOFzS/hOepywdoMrszHzLIhR31EC1cZRW/
         TWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231060; x=1744835860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8BAVD406cmjg3dX/fyGSMAhg9gbpo2Je5SUNU/Iu6Ls=;
        b=HxlsyjhPl5eLpOD3w/Dm8ZNpAKd2ldWea9Nl37QDoFS+gBa49QmK23qz60mWmNBb/i
         dV3Yv8c0h9Oms12YL5OM/NDrsEDjdCCPS1PjK7XDsL2AEiJrFbbnl+DMtyx61O2bQO4y
         cVY7556wpNgvBaTSMBd5PIlGiYT1U9qY/5jm6kTJgQnCwS9ylO12rgKNxMPxKoVZ/BvO
         2C7ujmyeprCe1Sw4GNRSDfTz1CacPd8hsjf7GMVkoFdYTABS3ByxcwTwfkzmN3AKCRtN
         PuBEMH98bUGLkgbJ+WpwqcglfSwFe2N0t4yJ5hMNV6dRNCM+D7T22RwYDPanmZvv18VH
         E67w==
X-Forwarded-Encrypted: i=1; AJvYcCWHvIbL7XGCa3mW9jq6LLLzdDLhylI8hu8Pl5TUk1y7OYQvMxSJiuDc4MfFvH40SPxyyN1uOg1lkUt+@vger.kernel.org
X-Gm-Message-State: AOJu0YyG0V7ADwjOfjr9npB7jUpCzOTyFdc5x/LVSK4iYJuo5kE8AGC+
	q7HEgONU/lVF+k4rCDN7N91ivoP0nmk7q6g0luUD9Z1RG5c+AdQuA/yJ0VkPAKI=
X-Gm-Gg: ASbGnctXt8q3IPjYjqGfZ0BKdHwBHo8InlamRhVcO3hWWM5PNh9760BgMZAlKnWg1bn
	X8fvC/e/cJXa8vUxV9GPoN2oLZSodBkg8cW7aZUieLCcFR3Hxp/mVjb3m6aieh2BKGb16dm452m
	Hm+ia7Cv8mk6hljQNgXk+ql2fQ9Dpmi2/Xx02pHMXhtfga5gEQQI3oEVM4VF/+yU1mLKEvAe/e4
	nua2hxOAOxdF1GhunMfe7DU8GdTFUCcZyDZt7zjWMZYF8RX20f54OVRIQkGus64OKtCSY7bc9em
	YGXUSz2NVO7N12JPF5Ws8pkMAJ50+3E9Schp28Bmstgtbx0357EmvEvx8sR9esxHJqFijSrZJyI
	DZT2JHNNd0D5oZmhjT2YRYbt+rWqti+wiW4d0mQ==
X-Google-Smtp-Source: AGHT+IFGuRopXUZBocg06rjmD3ZHp+XWR7FsT1M8CRyC7YTvs4QmmNCB4EgixbVEA8gphf+u1JLXHA==
X-Received: by 2002:a17:907:3f89:b0:aca:a539:be04 with SMTP id a640c23a62f3a-acabd1231fdmr10950466b.4.1744231059836;
        Wed, 09 Apr 2025 13:37:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:41 +0100
Subject: [PATCH v4 20/32] mfd: sec-common: Use sizeof(*var), not
 sizeof(struct type_of_var)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-20-d66d5f39b6bf@linaro.org>
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
2.49.0.604.gff1f9ca942-goog


