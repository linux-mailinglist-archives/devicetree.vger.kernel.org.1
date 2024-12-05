Return-Path: <devicetree+bounces-127644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7B99E5DB5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:54:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE9E818851F1
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE5D229B19;
	Thu,  5 Dec 2024 17:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EXY5r2CL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA32227BAA
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421236; cv=none; b=ZjA8e9Pw7Va/ISC1mPwJbYzoh9TIWlanoeuOJGEKxzhYT5+jwGmvsIG/MOPlT84NsSQo3RV+EXlGKIMA50W1JsGjljoALSUgfDDTbejmSorZj0cbvhgbU9FNsxpbqhtQlFQDjqyR0WZY2qIT+C/nNZwiUL+zPtO2DSO04XsOLwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421236; c=relaxed/simple;
	bh=8/1zyw3Y2D1EAPmlvkuWT0eqZ0o1r4sI1K0ufpWK6b8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KA2TnS/OCY9gIBpRkl3+SECYQ/TzmAEDpv1IfZRCD2qlv1+P9Sre2fnwuL0nxyPLSWLTqHNMpulw/P/8PFVVk8r4XX0H71DQZCbBZRhRaZ3L92D3nlXq1wOnRFC8RRuadmLnn04IgcsMqeeCkRy8xw8Q7bWMtQwusbcnPdIAdt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EXY5r2CL; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434acf1f9abso12235235e9.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421233; x=1734026033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUjYGZM8Wn9lXxLMeS6SbGdYzdUSKeJjfxwmycYz8PI=;
        b=EXY5r2CLXQ2400Juovm2sIS5YM2q+v5bT+JxqdUJx0ZQW4gJ3W1BG5IwC4ieLluKH0
         nbeyRW98UW3Zv2MV0E/iyulywftheXUqHhgqyqCeJT4Sq/RJ2EBQmOpjD1RroJ5PTqFZ
         nWbzqE05t4t9idBO+Y8jNB2o3W0+iuFJZoCKkOLCcI63zwtmdvndgZ1G5j3Q3m3Y3BEO
         aldsQfCfZ0bQizpdAxwRJxtKUm421adJ2GAVjMrMF7wLwUdpX0uP2a7d4Edp3peSFhqF
         6EqN5KEm5Qe1WbmfZwoJ/2gROl8uohueS9F1HSlvWa7AfGF8PKAcvrxBIBFOVgxXyesN
         i6Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421233; x=1734026033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MUjYGZM8Wn9lXxLMeS6SbGdYzdUSKeJjfxwmycYz8PI=;
        b=DLQMFzO93wRtyeYvWf71/WddrdvXQhCd3WVeH4RV+uA7VGCP2CbGUL8N786IeYR6ml
         rRSOH2w/E/1i+/G/vDyTar9bfe5LizoiZKbTI/ROVJ7lUIxcwwCTRGuMMvq7r83IzGpW
         wg+URwvtZ2EABIfjtPLJGi8a//E+/NZjnlZQZhkmP26v1n6Lex7FxfM459lim9yQXzWu
         5lRFIFa3IwuKXK3x8FEaLMKPHlsihrPPDgWCiy8gBbzq8CgNUyq5nICSVMRRY0mtXHlk
         DeIhn31Ps/jSQZoSx/N3DhG7FFPcIT5rqeO4/aRv7d+wxaZz3eL16M5XOKXO0jCEi6fH
         bsDg==
X-Forwarded-Encrypted: i=1; AJvYcCUVng23XY7/E14+Ih9/K3fncbeoGZhKj6zR0r+6UvSCZRGyWehj8LdpUYWFDE+bicFTTRq4bknzNeQo@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfn4SrvfKqLZy914T9+FVDfKrDZYhzO+1WSikMvMsy5LZXQ3Au
	b4dWYVQdnddawxHQ9hcz8KBScTww5PWu9SHnM9KbONYKf0AsNEiPonRjDBv/6+w=
X-Gm-Gg: ASbGncufUPHsrgv49hNe0QJzRq8aHNoCRIlPI8yQY48qEp0Az++9a6yQVkG0YVV6iSa
	yRmmVnIWOtYYL+TTaHi7PHrV6pb7TQJ7dNwqbwSxGGx5rVT66mJHaRu4D5JEtZV52QuQD3HqJe/
	yUCzBZXEs7oNYnyG4qbu0SKmRRRFmtBHIC9neRjtxxN2NNSfLWkqGgjppoZOaq23mhyioO4aFfO
	+MkSJLtVP4z2JZZYht/WjLD2Z3JSXbmdr3RBa1yOnMC0auDb+aCl2R9muXD7nVScOTVU5MSzRya
	d/Fp3hNG7/zLjs5f2XQKX1sphd8mefgn
X-Google-Smtp-Source: AGHT+IGVQz+uq4dtBtqtBu1Y8X22ebMDa5YP2r6YCdjfCnpf2qvqcplq7ge2zv2BqYCM+IMoonQK5w==
X-Received: by 2002:a05:6000:188f:b0:385:fa3d:1988 with SMTP id ffacd0b85a97d-3862b33d273mr12625f8f.8.1733421233156;
        Thu, 05 Dec 2024 09:53:53 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5280fc4sm67882835e9.24.2024.12.05.09.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:53:50 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 3/3] MAINTAINERS: add entry for the samsung exynos ACPM mailbox protocol
Date: Thu,  5 Dec 2024 17:53:45 +0000
Message-ID: <20241205175345.201595-4-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205175345.201595-1-tudor.ambarus@linaro.org>
References: <20241205175345.201595-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entry for the samsung exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1e930c7a58b1..5cff01641f23 100644
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
@@ -20712,6 +20713,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml
+F:	drivers/firmware/samsung/exynos-acpm*
+F:	include/linux/soc/samsung/exynos-acpm-protocol.h
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org
-- 
2.47.0.338.g60cca15819-goog


