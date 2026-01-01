Return-Path: <devicetree+bounces-250915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F39CECE85
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F1753097A3F
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1964C293C44;
	Thu,  1 Jan 2026 09:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jUfIdPi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E10E288514
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258215; cv=none; b=HazAOo1npnm8IuvU2Kre3eQx6bIrRlWN/ayJBZp+NP+cNr9xFFPNpKKHqdO/dVRbEVRKzPef8PBa8j68lhy+rR6++1oxmYRH6SyGtSqpAWwY0uMPKGn+8jWKzEXO5dUOOf+O15rCA/HQP6BHwRdaHIOcEgumH4X749b4NnHSzl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258215; c=relaxed/simple;
	bh=PzJR4btrOIgWAbbA9/PgDRkfL56Q2zFHfShoVsaxiHQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R8VrMT12vIizxBJpyPztO1z7mfjlIsXpsxp7J60lYM6kdsm6O8MaAXdoxu9YYw5h1stKJC+bOWNKMfycu5RbCpS2UGjrVzarUY4OYqdDJpN3GpGx/ICZa6Varv6bOJVA02UM2qxxR/Cd4HDRmOqaHHHLF71I/T7OLxNMrOY1z5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jUfIdPi9; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso13359143b3a.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258213; x=1767863013; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XIbviOhDk9tWhSGjjMU+OiN82Iat2rqIxD675mZ2oo=;
        b=jUfIdPi9p+R8qstHg+y5fe8yF38nqtYbQLWzWxEZgXhqfJ9iN/aJFKgi08raKHAzkQ
         FYhBPOa1Q1Kw8hxGlhgAkEkHHIHtiNTvMxRVvMqWXl/VquyWR2lXZ2PIOeIUO82gu8iE
         D8wcJV9ViB22LQ5cdoPv6XkxIhm0RhLH9c4227rsC0yeSXqjEIePph4pww5RMYEPX4Ad
         Xr4Kgi40w1jr6Ksvig/7SVKglHagomkDq2OLW5+eeVuT4ub1AylpIVdYqkg+aCP8GyRi
         jX5FJgy0B8yHX2/QHTcSyfOH5dZbUZVdUYm2H7jXjV/C2jv2JxQmY2W8MVLmmO0UxM47
         yXAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258213; x=1767863013;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0XIbviOhDk9tWhSGjjMU+OiN82Iat2rqIxD675mZ2oo=;
        b=TUUbNMYgLTiOt+laVp1a2NY7rc7vnBJp6084Dsl068uX7FEZA7Y9W3b/AYI0ymatbn
         YMnyQbiKlQZkHPfEDUcvASrFnG4jCYfnBxidGIqAvmOWDaTy0YVf2HtrDovFNwJGSTNh
         x3Ug6FQrGXJLy5u5GPTn9v+AswT37uCQOfg35nAWgJs0JtmChQN/XYCL70yaX+sTMphz
         zHYRwUK4Xm5aljPN+x9tp/wtwTmS8bgSZzQznP3f/N/DBdFV5a+sTtybO99XctnmIta1
         gRFutyd8JCESWJEyIhxgmvQw8d4xBGh4Ad4nYok3AoeniTqAHvCVdgcMcahhuiCm5rsc
         nbcw==
X-Forwarded-Encrypted: i=1; AJvYcCUWklR2uNDzfGKcixFfWwqUi29qj4rGZi/GIDUURZ35w+uqdNNxae8M6IUAtFrMb0bi3wGzNnSq7M9g@vger.kernel.org
X-Gm-Message-State: AOJu0YxC6yipcbmshBtGB+mZhALVn+R87uu9qXC6WxBWXKP3j5Vaa2+S
	aN96Lty9S0JU3MURwKDgX7Tx63i4SPbI0F9qKEVnovJFyvmUKsyaZQJs
X-Gm-Gg: AY/fxX6YYBLjXjL+E18i8ZF7wbRutlgWY1NHb4rW76JA6Fh4oCjrqhSM4bZ2PeLPQH2
	LP3xvNiwYQJ6YK4vRdrpT7BfD9X0ajQo3oukj0q6x8KJv5f4UV0P6yKIqoge42u6/wlCbK6tIOg
	evLF1xO/ROGwWGKn4b3cc0zbl52urIOwVwRPIrxg+63Y/m1oWDKKhet2QT0E0xy73FKZYP6lGR+
	Lwbr1m+WHTsekjp+ebl5B5cnWJOo7k6s3AXxiQSLNASAEmhHyph/2p2ykUUaAxZTZpjA6gyA2KD
	A4JRJgm4DZrHXiWFyzkk+eTb1w/OmzMuRQWtwtuFrbCB5xqmkWkruUpIKuDWJSKTIgibUL/LGmL
	T9XY/07IRc8MYaFOzg5HsIkrnmy+a1AZV2c9vMuzHIhnIbjBDEHopFyXecmNw1ZPvhVGSf15XxB
	hB+SItwXiAIHk0
X-Google-Smtp-Source: AGHT+IH4BL4lHRkhONes0fdA+rHZZ+C01+zvYr+yNbWzj90rU1liW8WFWGCqkV1LgfbNxTjIvc81bg==
X-Received: by 2002:a05:6a00:ab0d:b0:7fc:da5:f849 with SMTP id d2e1a72fcca58-7ff6607b356mr29575181b3a.39.1767258212664;
        Thu, 01 Jan 2026 01:03:32 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:32 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:53 +0800
Subject: [PATCH v10 17/21] arm64: dts: apple: s8001: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-17-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=895; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=PzJR4btrOIgWAbbA9/PgDRkfL56Q2zFHfShoVsaxiHQ=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgoK+DoXHphAWKwsrnBV7SEEWyskBmkLmcO0
 34oC6Ola+mJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KAAKCRABygi3psUI
 JJlMD/4j+35bm1G+5hjgR8AIua2VY6BzbY7LRgxLVyF+dm2Vb2IetnHbkgyrOHUXp0nZuKUSEzC
 +RVJwzOuM3ayrzUaXl5OmNSiKnLtz67LQA2nKMnITYzfyO1wXuEIcJTqpk9qacP4miFMGeCL4Nb
 LOUwcoH/MqvbQA6VAuYB4tWCSviHOisxqRjv+nS+JUkvBw6ePeF7sjHvOEpdvgNjYpR0JFUs+p1
 yem2nsi+rRGV2z9nBqLu7Os+0IK2Y2QCkTkbTTsfKYMXdqcqGr+E7+Fn8DxOaGEdYg1FF1i4R/p
 Y+z1hpbC3jxKS61EKRrrzztRqYabktsMdcSJRgPuygZfbGabjjjy21gnXDcQqOya8dTEb3Apwun
 4PWNA6mJz1vmDQGwjW4X3oe62Dn92c8TTdz4EUgFNyp9t2VHbyL7KSXlZ6PYBXeXr+ULKXnG1ql
 jXugAiTWcwNkAIIVzFuEXAc/1G7/fQd3RzIedO6pkFEdG3hy/zS932un24FA969+xAYb1vF+vh7
 WAd4R6ByIczyEgvTyOmq4rQq6Z2RV8Q9iLaYsRV4ZciimE0h6eJw5MPy6QjbYQTql0sKttYgAH7
 s94Blmnncp05d2unlK1gK4b04CMteufpf6uOrTLbDQDmnGw0n+tDJm0Na4S7qTWu2XTw9mcwRqZ
 vqTHTsH5+i6w+1w==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A9X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s8001.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s8001.dtsi b/arch/arm64/boot/dts/apple/s8001.dtsi
index b5b00dca6ffa4caa1d504860693da001a8ced80e..83c5c479c87fc1ae1bb7c6889aed9a71fb55d29c 100644
--- a/arch/arm64/boot/dts/apple/s8001.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001.dtsi
@@ -298,6 +298,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,twister-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s8001-pmgr.dtsi"

-- 
2.52.0


