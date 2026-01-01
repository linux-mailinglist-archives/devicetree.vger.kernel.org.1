Return-Path: <devicetree+bounces-250918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E160FCECEB2
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75DD03019BDA
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC4F2BD022;
	Thu,  1 Jan 2026 09:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfxJkw/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB3C29DB99
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258225; cv=none; b=Eha42o9je03hhz7sPoYgUC+psMPI/wV5dgJcS4wl6/vrgdx1XQWtH0JfXH0wOXpdAqXG0OhImdjUdFhNIUbQXEDi1Vj7fY39Otiv6skhKdp58bFRfM7ybX6756E4YEm9p2Sotwc4TlQJcXlUbPSzVEAk1nRW8elXQstI6VpsolY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258225; c=relaxed/simple;
	bh=2e/a3Ds8H9o2DJDRhuOCh9X1vWNSB/53Pgczil0A+/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nrmCTr+4YvI4ziUHToifKkpNKHi3yK3YVEz6ch/9JHMSPcnj09ugXixSMDaQNRzCXtHH6rwNpFQM9srsfwZP4IuesxRRLDv4d8OZFut01MKyTHYiIJBnKC/IyXJwpEdQmbPQdnuGDzo08/mbNRaWFE9eRls8T8AfQwaueMaSEL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfxJkw/B; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7aab7623f42so12557572b3a.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258223; x=1767863023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9XtdvBMU0gKAhP5ZVoa0pl/xHY6lC0zNp+vmjfClAxY=;
        b=hfxJkw/BiJDbVjkS4xOU8Lfz/FpLK+ucTlOhBwlWIOCUd0U45OSdxhJCZADsJ6ZIAa
         /9Ng/2Lod3p9hUC8CdH12OfVyavvsOP1OebVMjLpNqvT46pAuFKk8uEnohii6Tv9xO0V
         v8ecA/uYDAoxhy13YRI2BuSj62kE+qbrn75kKMW87S9gZt12PxdoABnokjE7BcpGledk
         zF/xD8K8P638wik7giLh+NR/rAhsusI+XFAixl7m4uVJbNFr9PsZ4QctddT7HAf2BS93
         u2olUQtGwD9KhmfBhN+2YSa9RGJr98U+z4kTeypOFxj9VEWI6w7+0WVNHP3hrfb/jmJ0
         B1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258223; x=1767863023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9XtdvBMU0gKAhP5ZVoa0pl/xHY6lC0zNp+vmjfClAxY=;
        b=QomSu0SQPK9sKWVAsGjHOgDU2yck+IAFcmIuclzOSm++/dujYI8kmZonuDD4gMJJ5G
         oc3CBRH+upSzVKyzcHWZZwKM5viFspHyJBpa72OmyA71PtTYTo+BrT3uOOjB8BumRH/H
         JsqgLRxAMUj8o4zNfSC9srHNqpZZMRGI2CeSQ+xL5yBCtSWVl4f3IPwhl8dANbRulrFz
         772iQbKuvpo5ceNpabIzTBw39LV3EdsmuNPHhIfKQo8Ad8f7LP1e+9PkuYwn8S/U0KQG
         ZeOXBdLCwZ0TaJFI6t+U9hu0gLdeXqzI/Ln6arXlJRe7ud7iuZGiG5VnbI+T96ymijNu
         nLKA==
X-Forwarded-Encrypted: i=1; AJvYcCX46tR0CSTggyUTTHFcd/hqo7Gf0z3zqjBbJ4yaayRfeWXFlr8f3KiZClEGmjiknHlYLEepl329qSdN@vger.kernel.org
X-Gm-Message-State: AOJu0YzNPduSactt+t3O8IVA1lwpA3BYCHZZc4mUED0aItbaz/Zph7OW
	sozFRrtx1kgbghZtSJDuh1mzOfFYiiTTrPP9Hv7hi4GuzsqCe/m2ViJQ
X-Gm-Gg: AY/fxX6XXqr2wcNh3BNxQkzU7KbllwUQq7SUnz+8eDxdAV0g1kkV+EJmMq6doIVJ/kX
	ly0a4IlmIvJDQPwuM8eL1uG8O0OobfyF3Ki7RubtHcAw88paDsvhEIJVFdBKwQ1s8XhRjMA4isC
	JRb6WT7PKBDvtoN2e0OUVUxHZw5pHWFWHj0LdSNlhJlKT+4yZYKArD9mXiwo7knnuBHDxykcwvl
	1ogQCgoewSUR/4e0OrevfVoSy3pWOenUgi2bn7pkXikAcJ0/aDPxVmukoX+x5mzpdd6QIBYXMBe
	CSCYlkfKCalNGXEPT72ZkmWHR/Cu3n0g9h6tBzLoNkjvcHl96Jzx/oe4nXNAgW1Vp97PwG1cn3j
	QR9G/sBOzqoZwsD+837BxCiSVI2XktdclxGw7pt/1DTFxnsRr6R4be5s59Ud7MwYk3kJVy44LAG
	YS2mohV8GcWFuZ
X-Google-Smtp-Source: AGHT+IFPVSjDn35If4JJdkAPCWUwApX7FF/dix6EAElR4Vim/M3LWWrzlOgnsMJu8g8CeCTO8KTRsQ==
X-Received: by 2002:a05:6a00:ab09:b0:7e8:4433:8fad with SMTP id d2e1a72fcca58-7ff6667b6d5mr37775009b3a.53.1767258222975;
        Thu, 01 Jan 2026 01:03:42 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:42 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:56 +0800
Subject: [PATCH v10 20/21] arm64: dts: apple: t8012: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-20-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=893; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=2e/a3Ds8H9o2DJDRhuOCh9X1vWNSB/53Pgczil0A+/g=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgpmSOXQD6QVHUKQIc9/wmCCvSC78EgImcU0
 Scj4chLGH+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KQAKCRABygi3psUI
 JKn6EACn3FwPUsnDwR26T9WGHQmSa56fVTYQz4qnaN0v762/bzKhEjyrbRif0DKEHu5nuhSjqD9
 K92s/a5OSvOdIUMek6dSroTK5+w/Fnpe4lYbW3XjOZgVi793XboetGLP9PSkvg+ec5iDvrJ+qJE
 rssKT+JHQH+nDD25xn/wTEbZM4wBmAgZrRbeliA6U44Z8y3pYcRcof9GBGaQhpj47QDJVDm97sB
 nWz4qWxJvBCoxeUJA6xvvbmKdC0CTtVDAh/1/pt0dEpQNvZxmqP5xoZ7LypgZsLUFJvVP6V8FOs
 FLHtg/0PtDkZ+wHehmLxRgBi7Sqw0mGqCpgOE1atAFOWH9f9kmjHSMw8eCAC3C2ZwCWQfWmONQZ
 k7pqZL6xAWI8YMwrAJf3iQrRzQqUjAd9W/EyJRCJiImh/IDywKXboA+rtWH3lVuSH0N1m4iJjld
 nNRTNgDfvcw7yLzawkM1zArnPy3s3IdMou/x93oTtmAKsoqFJt4QOxFw7YjPrSPfdKo/89OFSpM
 zTgfms2XNyxSDYruE9M+bH3mttGKIB6xU6jvd94vdd29KqRKwdScwqRfnuFhpFgKlhAx3G1pEwX
 gUf5HSVnNirL0ysxdAff3Yfy0MkUy7rp9FPDHfZ21MgZYIVqWa6FPWN+ziZBEYZy9rHwSgzh8qW
 E+aytyN6Uc6xWFA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple T2 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8012.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8012.dtsi b/arch/arm64/boot/dts/apple/t8012.dtsi
index e7923814169bd4060706945561910ed1d5c2e0c8..579560de1aef8c311cbf66c60a2111e2d5ac37c5 100644
--- a/arch/arm64/boot/dts/apple/t8012.dtsi
+++ b/arch/arm64/boot/dts/apple/t8012.dtsi
@@ -297,6 +297,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 89 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "t8012-pmgr.dtsi"

-- 
2.52.0


