Return-Path: <devicetree+bounces-139028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60BA13B80
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56AA116A916
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5464222B584;
	Thu, 16 Jan 2025 14:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RkgHGp2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC9A18C03B
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737036064; cv=none; b=qRyc9VMetJ10CQZeRkERpR1bY55ysmz+ioOa9oLtWodw4/lvcwGS0VxNjAfBjGPvkZMkNX0iidirucfQuW2kYtWQffara1+gv0gHZZ6ZXwYv5KxxgIStdcX3sbzGD99EMto3A/mauYlMs06hxOJg5hf3cHctXIiZw2UKwAHskSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737036064; c=relaxed/simple;
	bh=RVUbs2WR3PHq/FjGa280/jrnw/yUQ7RV9eVzPoYZlyo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PbuVyAIBCMO0hXUGbSPS9CDvMxxkTt6F2psveT2a+synsyaZqEO1i+CObCHqVsSpla9KXStdfzHoa9aaBlsPlc30erHwptzKc9x6BHeQ4s6ZawCfPdffjAtIdCSkacWFBRcc0Q0qSIqRuPc1KHBd/vfzSYMMCoERZKg30BKO/HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RkgHGp2+; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso9159065e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737036060; x=1737640860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xntQcSlXFoGkTWBw240rIz1TyOhM7eOdWY/eEvFx0ZM=;
        b=RkgHGp2+kKNJuDtz2NSvf/0mtLvoY+KtfE1JPFgr0cTH32GL9sfxCZ9OjM95wBQiHE
         xNEbBC+Fxxk3yqdsUYWIAz9auIP9so2F95mwblvqxTmznv4SGALG0otCNtVo+WycH7IE
         zvcDPMnz/7f7bbc43uw6OKHN0kR/h2aPZt4Mk677Z5Xb4TVvSmRYQqN2Y7QeNiO+nuFY
         V3nCeOLkqYVnENTKAuAMKlMWIX8aFRli5qPuYipdr1zCKmtzPDiOrv+pTLsuSaQHI5xT
         cnFW1s4qQSt9R3yupJJC7TIQuk6DBDHEyFsLULVF9N0IQ5GCQ06ZmPw2gjhlaCbaKxq7
         paCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737036060; x=1737640860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xntQcSlXFoGkTWBw240rIz1TyOhM7eOdWY/eEvFx0ZM=;
        b=ksC7TKgmHCkKegIDh1K3p5EXXYEjfJocQHo5swW2cvpU9kM/hG9C2f0AuagCUTrG7Z
         Jlfu5U3kI+wGcwELv9BmaPjsP7erPDj8z8bqEkkoaH7AySANFHL009bAlkm6SljoZNrD
         Vv1eGM5lgKM4jURJyx3q07sTarrZSNosjpPU4WM/lAgj5s0ysZVYPzE4RAy9QQQjlBWo
         AeFEGz1gNBy5D3ZKAXhyVXUZdqw9lLGli2e/maEztWzEWTpaYP1fkxbr93IqcpK0oali
         d1hXeCNWSHpgTCms5uwbhLTk8epIKCmOR4Egab/LMNBvnmFDNReuFZg5TDlyF26z61sH
         dYfA==
X-Forwarded-Encrypted: i=1; AJvYcCUvcqEpasbtIZW5ODI/hVOjvuOw1FrZhgcXmgsdEKNMgFun3VV8unBLYQ8DI1nFv4PU5jdRm6D/RyNz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/wB/7fbXycVhGgPbhk7mD6pij/A4oo0qqMzoLZKjnf3T56/Y2
	fmD1yWQiVsZe+8v/rU/cQoy5jsgGYjWkdZYm5TBZCWXqJtYbFQl46lhTEls49B8=
X-Gm-Gg: ASbGncv0qkmM6phinTcn+qyTqpP7IL0rwCMXV+Vd4W780G0LhpePPIqHsgvfIc4G9RG
	hzI23hFfbdJuW9fNCSRjL9JLn+Ls4o86CgHeF5qKRSkzEsLs1o0R4Ro9vmWTE2OdW1bT4C7U28w
	G1yJZD1Sj2EG63294mq/yLN5e4oc+Sgulp66vkAd6fFy+Wl5SiJphpebfx4ML4WUK6CIJRFw7Gc
	WMXFMZ6mamwEecrUyuwgH7PCAs2NdlnxgJhVzDxP7iz/HXvtzqAzEwN6Ib3vRWVEjxNI4t6+Ksg
	OXrszmywu3US/ZGeaq0CuruCNMoi41q0YXXI
X-Google-Smtp-Source: AGHT+IH2SRtN9CpGsM4C0gXP+NC1NsKyk8FPQPBWXyMNGGxLW/xtgSq5XKpAgQPM584oCI/o9tArVA==
X-Received: by 2002:a05:6000:178a:b0:385:e35e:9da8 with SMTP id ffacd0b85a97d-38a872de3f3mr28972194f8f.18.1737036060360;
        Thu, 16 Jan 2025 06:01:00 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1f2esm20608846f8f.98.2025.01.16.06.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:00:59 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 16 Jan 2025 14:00:49 +0000
Subject: [PATCH v6 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250116-gs101-acpm-v6-3-e3a2e1a3007c@linaro.org>
References: <20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org>
In-Reply-To: <20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737036057; l=1248;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=RVUbs2WR3PHq/FjGa280/jrnw/yUQ7RV9eVzPoYZlyo=;
 b=/dukyhHyfsKWdjtkSkZop2IDZ3HvxK1tioPonZJyQLtUs4LUPlSzEJbp/JpVvOWr0Q9XMbs+2
 q9v7KT5kMo4AE1OKZJtJac4vvHgcL/rGRjdCtp1ocQPAwA4xGxkwdmg
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a87ddad78e26..076b6c1677c5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3020,6 +3020,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/firmware/samsung/
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
 F:	drivers/soc/samsung/
@@ -20712,6 +20713,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+F:	drivers/firmware/samsung/exynos-acpm*
+F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org

-- 
2.48.0.rc2.279.g1de40edade-goog


