Return-Path: <devicetree+bounces-75453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4B890747B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07C3028247E
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE2F13CFA4;
	Thu, 13 Jun 2024 14:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QVKYbjMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0804AECC
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 14:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718287208; cv=none; b=YF75KW8Xsu6fbJ8hAz3c7bsshu4ZWdiXwM7og32IdmnZSW09u4Qfrd+77Je1/TUYVJHEbWspc2UnV6X10nBWMm0lXjUW2IEf8yvbZ7qlMOo9RBps08IMr1Ra14+NX0xd9SiwwE3TMbu6Crha9p99n/bwU9kgM0u9o/O7m1NSNN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718287208; c=relaxed/simple;
	bh=iebgPsxTODLUA0ZXcTqHjXyMBp8XIPW3O3ru3tyh/5w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Cx4qVSqqcCPzRMzb/OLxFactUYIdmJmc80V/WjikYFOhTaB0mBjRKetsGeBBf0AoYflzrZR1Xz9QNZBuy9DlSzet0EbkSg99Y3cSFBfR4DhvBV533HbgFl/si+NKCcknFgvrXJyLFuMo0p3szPxZWV7OuybA2VNXHtRhfABuhlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QVKYbjMH; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52962423ed8so1319427e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718287205; x=1718892005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F2RDidzm7GpI6kx4jm5uYVlPtBVF5KxxK5vmQkl3iB0=;
        b=QVKYbjMHsFoc8i5pRKI6g14+cjhcFO3VcBYwQYnB8/hKL9XVnnqtOmyli9ny8wbOaw
         hY0w9sQZUOxB8LmK3C0OMHY0y6tqqN7v+5dorSKJCUVuVyE98Zs9caygFJJbCqhAspmt
         ItCeUDfPS+jbeaWsdoxVX6iGcwAuTybmBth6Ypj+KBApNxtzVBEt1xTktSOLLh69JSjT
         3Qqho2nCFRU1Tz8XMMACynn5bCfTyss5JQGGWJLQroaYSKqYgXMsGDPIplJkZV7HxjHj
         CF5oNAEFvUlaBzv4ksFY1cJxeNC/dApOSq5PNCwbJmDqgTiNpdrT2AtAyJhxFClBm1js
         dnoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718287205; x=1718892005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2RDidzm7GpI6kx4jm5uYVlPtBVF5KxxK5vmQkl3iB0=;
        b=I7TXgIJDsNB+oT0fngt8UQgf72qIhMqqYyKHNUNy8uDZtM16Di8KSzl8EA3vNaJ2/1
         9mHi5s8VEAZ3U4wRqnoZ4fbG8dDE23wL5TDwoMo3RBY/2xpXP+YC2YjyxqNQokuIzrK4
         uaVIorkKbJhZgclPHsMiOmDfxSIVhxwTdY1EfovhQ6nnzn8v48Z/m0YKUad+Omg/5p1p
         6b14x3ysiGr10R2HoRQNh7vBnSqjLKpyJ7diWALLpULzhtZHEozKg6jnGxAOEvJ5G9uD
         /DNrgloT83i9xFhjWlwJITA0UHZxDmLcs1zOcctnVPpAp1HKDTO3Vf32xjyMsI/6xRqd
         TYAw==
X-Forwarded-Encrypted: i=1; AJvYcCWewC9GIRf4XF6M6edJ7qwsFYVyJApSyleU54AFKkibb4hTj2ahcuRbZSMLPN86ILe+Ir8C/N2VrVUkz1LlpMnRNoa8SNOTeKQmdQ==
X-Gm-Message-State: AOJu0YzvfU8i1BUConzjwzJfzthbOQLAzY30t0T8yAmEyG9PhiqpEouz
	P+z8IVRcMouW541HVj9ehJ7jg/0IR7QHqjjC607piuaziWQFVjLB/r7Bo/slHRUm/SLLwA87Jc9
	U
X-Google-Smtp-Source: AGHT+IG3A84sUkMMQsZJo4N+iSVC0jvNEqXBxVLO3aeIjcOTK4qYHH0z+w7CeXo0QEtY4uBZFdeLyw==
X-Received: by 2002:a05:6512:108e:b0:52c:7f12:61d1 with SMTP id 2adb3069b0e04-52c9a3b972dmr4185902e87.1.1718287205201;
        Thu, 13 Jun 2024 07:00:05 -0700 (PDT)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f5f33ccesm25578295e9.3.2024.06.13.07.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 07:00:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jonas Jensen <jonas.jensen@gmail.com>
Subject: [PATCH] MAINTAINERS: ARM: moxa: add Krzysztof Kozlowski as maintainer
Date: Thu, 13 Jun 2024 15:59:56 +0200
Message-ID: <20240613135956.8899-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no maintainers entry for the ARM MOXA ART SoC, thus patches end
up nowhere.  Add such entry, because even if platform is orphaned and on
its way out of the kernel, it is nice to take patches if someone sends
something.

I do not plan to actively support/maintain MOXA but I can take odd fixes
now and then.

Cc: Jonas Jensen <jonas.jensen@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Jonas,
If you want to maintain it instead, please go ahead. I send this patch
only because it looks abandoned.
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 60f2815f0453..fde9ef6f3f0f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2555,6 +2555,15 @@ F:	arch/arm/boot/dts/socionext/milbeaut*
 F:	arch/arm/mach-milbeaut/
 N:	milbeaut
 
+ARM/MOXA ART SOC
+M:	Krzysztof Kozlowski <krzk@kernel.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Odd Fixes
+F:	Documentation/devicetree/bindings/arm/moxart.yaml
+F:	Documentation/devicetree/bindings/clock/moxa,moxart-clock.txt
+F:	arch/arm/boot/dts/moxa/
+F:	drivers/clk/clk-moxart.c
+
 ARM/MStar/Sigmastar Armv7 SoC support
 M:	Daniel Palmer <daniel@thingy.jp>
 M:	Romain Perier <romain.perier@gmail.com>
-- 
2.43.0


