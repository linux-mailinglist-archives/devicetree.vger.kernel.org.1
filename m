Return-Path: <devicetree+bounces-130314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 939779EEDFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0D6216CFB7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D772A22541B;
	Thu, 12 Dec 2024 15:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z+J3FWX3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B3F2210CA
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734018403; cv=none; b=VkYcyKOaUr9FuZUlXUp8yPt2AsfI/sZoE2K1dWmUqFmXHBI+HVFtq+Diy4vVh11bjzqhOTpyxIcz2BfOke5RVN2BEH0e7npjEN9TKjGCIW+g1l4gbNMNjVPPqhso+P5CCKxtd27Sxipuld8+NwmrsRAunNjGUTbf/kwwDpkvpVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734018403; c=relaxed/simple;
	bh=0x417ocgxZZ5QKGgDLukuXtP9oxD0Y9ZNW2Fdua1JWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LOy0ytNhTo7EUjW5fWIiRmXUZPnSwS78vo2z68gfxX72REev2ovelj7byZ4uY6+Tmyqh5b5KcoQqnJjnS976uagYg8YKmWLCpzajYF8JS86qEHHs1OVbgjbX7djKR9pFXN9siEwBILwfZ6RsE8tBksVMheBlU3pqT0R3Yq01u0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z+J3FWX3; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43628e97467so1012655e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734018400; x=1734623200; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVrRE6XW5rU6HifNvQnEFiUjGXhcl5ON9ZAwVXIWqo0=;
        b=Z+J3FWX3hJtd2hQ/Yt+3+PsHSHljLLpoBNf84diMgtxChfBDDEaGvr4HHjGGODQVPS
         tj/FHEAfdt32LbIErhZPzoFjZACTFJ/npnmWJ+V1DMZj5eGsvMK6Fl0yFoNWuas+1YeL
         e+xBXdG51y+To7Cto38CTvkJFhxghHUByeJ/fkGHaXCKfLNxOmvBpy+Of/1a0RezJm7H
         iu/G3fQxCQYmzXvmVm2loCNba9rLL+4IJpqewl7kWjF1LYRc17nBzkQW5z+afxB7Tl6a
         Q91poTdUMsY850MWAYF4QFoMpR9Sk5XTt2IFEltRFcXFeR+bIi7BHIRcJtDQyyvLd3US
         QC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734018400; x=1734623200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hVrRE6XW5rU6HifNvQnEFiUjGXhcl5ON9ZAwVXIWqo0=;
        b=KI69wxyMVDrc1Q71IV0+XeLTrBiX0sAnaZRKVT59VxPV9E+EdyAkn8wHwhbZCoGmCu
         mXY1ggJJ6lvOWJz+j/nrBTpiMreeVPU8goKMqUnMjuBq0rtL9y6URXtGt1kAMx4OW9bS
         3S0DoM4BkY7ETzQFBP5zCpilmjHm799YtwV+TbfppUdA3713KO4YtZ6lN881UO5bh3o2
         0ODpNxVMn37x2oU+M4wiOeq1J3otIE32s4vCSZaozkdfApVASoluGft1s12a8aZJFpCk
         VbS9KdG+gsVGSrlxdIxQgvxcjEllCxENEiOVke685IupAlfx1ur8FInwXkwTrnxzoitz
         9EIw==
X-Forwarded-Encrypted: i=1; AJvYcCUrqu8K6ix60d98yTMV5/ugP6koH8tKO6kDyZz/JMTLPihC/naxylspxLAGy/JBzgmgFViqvxb9X/Es@vger.kernel.org
X-Gm-Message-State: AOJu0YwdEhMX12t0EewetwcvuPac8GQgRcNPU3V+byRh3zUlbfhm7MM+
	xAIQO1xGB8bLoij9oXh559UD5Xz6OKkl1NhxxpiQ6d4Ss7b2Ml3xOeFaCmISYKY=
X-Gm-Gg: ASbGncvEpjMnn1DyTUNoX96HbuXDByuMzM+4JKP6E/Dq6hF9kGL2buhKc0sxrAzpjG5
	w2Sk9WBWpB+buqlnN81WWSpOYMuz6MYzJvMrdF4/BXDWsfVvVu3g1oTRVrm4uF7xHcH2SgEAzot
	ZT89eFSz+LKbEKjsk5Qmjmy6Ih+9ycUqgDbu8IhLgtIZu6alD2likgLltJO/1yOf4EOaKtPphHa
	TgOQwVeY5TH/INTTNiZKie4TQPH5N34qzKGHRmmtwSkOjrozZMTVCCvLewSrwCgbKdXbE8Hsbeu
	n27typvHWApGOnSXiOhhbdGwte4mlhH5Zg==
X-Google-Smtp-Source: AGHT+IEmv9HsSiHLxj+MbudLFonDKiv9j3QNmqqpM+EEqlwltO/STEVmjTawSTry0YWT4U8rduGL5w==
X-Received: by 2002:a05:600c:4450:b0:434:f871:1bbc with SMTP id 5b1f17b1804b1-4361c35e4famr74531555e9.10.1734018400236;
        Thu, 12 Dec 2024 07:46:40 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625550518sm20273075e9.5.2024.12.12.07.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 07:46:39 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 15:46:24 +0000
Subject: [PATCH v4 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-b4-acpm-v4-upstream-firmware-v4-3-3f18ca64f1b9@linaro.org>
References: <20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org>
In-Reply-To: <20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734018396; l=1244;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=0x417ocgxZZ5QKGgDLukuXtP9oxD0Y9ZNW2Fdua1JWo=;
 b=npKxLebFrLzPiTFZxw1n5VtEgvFMwfWOTW7YSWg3qGnbPqy6agTmOeiCk6ysOs7G/4dXNELLx
 9tyEx0yCfyJAiSvUxmtXXrSGhms4XoyEnKcP8VGMLVkjU/FhIFOyE7w
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 17daa9ee9384..07d0a360cf66 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3023,6 +3023,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/firmware/samsung/
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
 F:	drivers/soc/samsung/
@@ -20715,6 +20716,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
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
2.47.0.338.g60cca15819-goog


