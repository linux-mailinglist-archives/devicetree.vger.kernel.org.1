Return-Path: <devicetree+bounces-133119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0C99F9472
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07F877A41E3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDD621859E;
	Fri, 20 Dec 2024 14:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kravGRXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6D0216E2D
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705184; cv=none; b=sOXE6qzLvjXHwAONrMCHzw6saPRvTTNsykZ6Cj/kNxRWAHuAtuCfOhKJgaMLAwK5NkFKLEg/UQmzDUHY93dn8Tn8BdG2Op60fhEAvEc4gWAqAETiz/eZOZLFsngXTM0yjWma53Ih+WKzBOMKRdXzKAIzLePmq0aIH+oLjvuM7aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705184; c=relaxed/simple;
	bh=eSZdwYGKTRLMLKjhMwehJVR3CZn1udCQMKHYP9Vi+QM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kkbKtxmYWlUFsp9AK+Ae16G/cXcePR0OSyO+dgbEOBNqWr+l/XsFChg/oFTqeQL4AZ6VIyGTKVtTShM9xfgWBz8Iu3AZ6/okgkZhfDXna3uHTMdgl4WhK7Wfhs3spOZnLGRXDCRjO5ndb/rVT7AhT3LipSXoHQuowMMMietbaN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kravGRXK; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso13577165e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705180; x=1735309980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mYnhokjNt0uDzSYYfMK2GDmQyVt4apt3y0nj5Xm9bw=;
        b=kravGRXKsHZNwFKmTC2MMKhGHCw+uMTcxZ8ovt2ZnkNkj9aIjd6TzEGgWsSb/Oo+rH
         FlxB48zi9/pXic8jLb885VYGzS/H0hKXxEOhK/Gj7jKqtvmZJ0bJ1H4YVcISaxdGxkJW
         PlGpvmaHP3qs4XYe+Gd0OoQeQE90Cjz+71XQsLxnJJPVTuqZf0050ndV/fA9FxTN46Iq
         lgofMXr+kaLU0UomgZl7+D5ANeXEel/jAMi/dUm9JTawIYsODeUHds3rTAbsruU1faC8
         VeAieWdaXDmsXxrc0VyrS1Ykh6UWHsDPjvsfD5QuVNHk6mskTBiq/0bfRRGSDSlebnMQ
         l6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705180; x=1735309980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mYnhokjNt0uDzSYYfMK2GDmQyVt4apt3y0nj5Xm9bw=;
        b=rSTtKokslDvHZwlHef2e0NgzzQYbw+kRuboy5cxXflvThhK+cogCG639ln34SdmN9C
         A9LahqS6z98PCISg5DovigtSY9Wko6p64sCNAs/TJ8OMEoIQKpglWkQhouL4muEUZume
         VzgcO8SoluXh+XrnmcVn52/OAceC/F792F4zcrass9mF2owKHXlcwmS9irNVDa3P5ORu
         pD0detakJA1jgLCQi7GF/EZ3Qw75a5tYlpoBMelbrC82V66h3XlOdMtTvShEiMiWMPGg
         0VjbnTchhxj8eFOqdbacC8Tv7S8dmszQtJNIguFzKNcCzTs6f4hM3o52Tvv5rYJsudLG
         CsSA==
X-Forwarded-Encrypted: i=1; AJvYcCU+sXksnkzT5q5nQP9yEVOsWPXXTNiH+KHP46y9foHt//Bt40zwjMmVxyOxwak5w+AV+pJw+OM0e6nG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3VhyVxekhIyl4k5oIlve6MRveIY4OXVtxYdc2pROcmN7mHUBj
	O00BS6Yb7l5+tagIMomskXmKKqTQtlv6bhYPsJKVdAkP3f2nrN+eAEGEirJKmsw=
X-Gm-Gg: ASbGncvDqrNyTPMdbOx0khoh7ZQ9pv/7aZpAUIA2nYzxPxD5+N3F+ZEDf5kFvyJVSj+
	g/3aqq55YU4X8QlWJfcranqJLUQimNiVjEfnKVoMOSi8MqWYtM1y2HvBGlALBYtpq96ByjotYhU
	xd1PaMQmHWXPwYyABnmIR6qNYX0Ibt9s+0moSsNOkNz3YfVi91Wqp+PAe7U2xaOzSLxs/idAhsW
	8V9ILVyTtZtDheUrfJQupkMFa725ks7PoQnBUgd9dJyvmbCeS6lbRBnm+SCGq6II0oBkDcOo94o
	vw1qJdQav3hyK21ojLKkn+cfB5RefOO3XLc3
X-Google-Smtp-Source: AGHT+IEySYUHs5Msg3dUau73lIpORU8/P7Ekp5SpHvtYJlD2/+BIvX/q40CI3mk0cfTV9g2X9nmu9Q==
X-Received: by 2002:a05:6000:1fae:b0:385:dea3:6059 with SMTP id ffacd0b85a97d-38a223fd3e5mr2354097f8f.49.1734705180210;
        Fri, 20 Dec 2024 06:33:00 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c829235sm4140321f8f.15.2024.12.20.06.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:32:59 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:32:53 +0000
Subject: [PATCH v5 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-v5-3-4f26b7fb3f5f@linaro.org>
References: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
In-Reply-To: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705176; l=1244;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=eSZdwYGKTRLMLKjhMwehJVR3CZn1udCQMKHYP9Vi+QM=;
 b=7GpgLiWRUZQf2xjdHsJ+TT73a5wVceNgNw3meXcEv0/TbaflXZPWfg6NcpISW+QoinH5dAbYr
 zPhMUOl56SyBjUEhDYjCcNqbdOqEE21RAuDAUJ4U3f+gkEjNZnJmEJ1
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index baf0eeb9a355..5cfec7cac9eb 100644
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
@@ -20717,6 +20718,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
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
2.47.1.613.gc27f4b7a9f-goog


