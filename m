Return-Path: <devicetree+bounces-131757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC919F47C5
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A0B71883D3D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204AA1DF99D;
	Tue, 17 Dec 2024 09:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tjtpFszZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEF71DEFD8
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 09:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734428452; cv=none; b=R1Eam9n8nSljtBYN3Bgy/Houv8pbmBVD8d6UOjIKIIMIflV5IQzKOzCcWFxs8hIu9ptbC3W5ioIziq21Yp7iTPIowskbo3VLE/7/yoa912wrTy9GDQoVLgmTC9Hs05q16T3ZjfPKxVLm9qm/676L02yK2NWOh8WSlYQmqTus5tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734428452; c=relaxed/simple;
	bh=9mXBYawofpPepE2BF91P/arRig7nezklsaAdla8ShbI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Io7tjlNlumGrUmgBuzUlq+pDWXigKt0fjnVMv5H9yfy8qcKLVVc5uhXg9TgXbdmA/ESZO6zJBt51DP6xdMOycD3iWmtFUr8SY2BW6m6pLcCiAv2cCl/A0JVxL6ZX7SY1uvFiflQEQjNaKRe7KBu49kL/2aRTo2zgvFyVfOzz160=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tjtpFszZ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-436345cc17bso24816365e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 01:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734428448; x=1735033248; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1rzC8vvycH/Cp0hUw6Wfj4qRoaSuoHKIpGfYrmHMjP8=;
        b=tjtpFszZBqyEWbGzafu9eK0SUpTkJSX3dM2pIUF6obToLzLDDqttBgCpOOwvKRwk34
         8g1xd6Tf3hY77JRmUguI0+PvKA+nvGfXZGhn3TsQ47ttT3qsJzuO23JJxDGN/BfJazW2
         rev1is6gfjvMCZ1jK8cWbiTWs+UPCJWmx/NQlspo9yeDOyfihG+k8hGGrg92hgGhUb8P
         xejFm3xFgMuOpkiL2ZGDOW750hmSZOiDlW1RiHzQmvCWxKJUrZBrEio2E0jcpnSSD0ri
         l/Avs/5DhVJ76I4jYYpONbUDuFUGLH/6SpaX/yZSEG0dDeanwJbg7VweXrRLuJW3HUvL
         ylcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734428448; x=1735033248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rzC8vvycH/Cp0hUw6Wfj4qRoaSuoHKIpGfYrmHMjP8=;
        b=gUaxe4SzdYeXbr6I16Iq6DnWGCCDMELKD+7pdRDFxVm2NikrtL9mqrrBSRotD9rCwc
         ouwxZdTZ/0r5E2PNqwOE38I4m0fCt/yHEatZvXPiCt2lirT0yEtaICR/ZUgz8M4keRhn
         uH+cSeePUP4iXI09ADCplPW9y4R95eXDM5YqkGBUDwx3a3R3Nyta7SqZk1wejxXzaxSl
         oStJ11vgCrWiuhPeJca+scyKpIU7BCMnBhkMv9HlXc1Mm1t/nErNqjE6Rr92sjP7hfEA
         5i+/kRD0Zod6r2IamnD9GwaXD440tPmKuxdJNTue3ElJbSFSMv9w7c+9wmbEXp54N9/F
         6tqg==
X-Forwarded-Encrypted: i=1; AJvYcCV1/e8YFGeq3kXvfvse7H8ceEorWZmcDws11ElJlOLShZpYhlOlXC/knb/Uc684b72K9Je2PYJiC7vt@vger.kernel.org
X-Gm-Message-State: AOJu0YwdfNbB9J0aErZBFJrv+pvN3J9jpyMl0ozDn+/8YUJlwIBFqiY9
	K460SiczDM+3ZYXvka/RnEzsRULIdE2L+DdLpWt95ucsQgwQAFIoc2uo4JBov74reI4WP7N1Jrl
	j7IU=
X-Gm-Gg: ASbGncuiiDZqrtSfOZxLa13beUM5p6UH6ndPbONmOuecWI2OUfTgdOlNlUV1j2hRdF7
	F6Fk90Uc/ZFUwrNf87+VUiAyO0OK+wpmBuDIFiGzqp30GTJgiGyhZ0bbykErMRSNtRTfYF5eAEw
	T9KobD07+n0qOCI2O9GEH9rEn+dEhWvsG5Ygn9TsPj7+qNhk7/4VQ7AsTn5Gq5U/KwDg/xg88RJ
	dgVWgFBIPF9uguiP+KJK2lT1f2D1OOpVSa7SpYKRlrbYHBLNiF1FC9uAlbFuCgpJatWVyVwAW68
	Mg/x/DTfQ2e3vJOgdU7COVRJ7/0wQQCz9Q==
X-Google-Smtp-Source: AGHT+IGdL77URRUUDel/620o0E15cA6VUq4GPfffaHhqeuBMk65coFdHp1nDn5rm38NPj5m5jvSG6g==
X-Received: by 2002:a05:600c:1d1f:b0:434:f0df:9f6 with SMTP id 5b1f17b1804b1-4364767f087mr28742535e9.3.1734428448580;
        Tue, 17 Dec 2024 01:40:48 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362559ec46sm167475755e9.20.2024.12.17.01.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 01:40:48 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 17 Dec 2024 09:40:22 +0000
Subject: [PATCH v5 3/3] MAINTAINERS: add entry for Samsung Exynos mailbox
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241217-acpm-v4-upstream-mbox-v5-3-cd1d3951fe84@linaro.org>
References: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org>
In-Reply-To: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734428445; l=1216;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=9mXBYawofpPepE2BF91P/arRig7nezklsaAdla8ShbI=;
 b=Z0AXVvEDLX3dGQQUU6S7FG2YiVuEm8f4RKNyhHzyRa5O41uaawalfgmZW9iW5t8kzyPwvDlhN
 g3py0lZDyAoDARc+CygZuhG7TGX1DhEtmkfDDEsBIZmbJzbmsW3NitI
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos mailbox driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index baf0eeb9a355..6bef5fc5e4ee 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3023,6 +3023,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/mailbox/exynos-mailbox.c
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
 F:	drivers/soc/samsung/
@@ -20717,6 +20718,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS MAILBOX DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
+F:	drivers/mailbox/exynos-mailbox.c
+F:	include/dt-bindings/mailbox/google,gs101.h
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org

-- 
2.47.1.613.gc27f4b7a9f-goog


