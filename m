Return-Path: <devicetree+bounces-127637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EED179E5D86
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 518EC1884947
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF00229B1A;
	Thu,  5 Dec 2024 17:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hoCyBSCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D98226EFE
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420507; cv=none; b=TxLGwRVijLRTepBeTJU2+TiH1RPJiXXBmDZ5NM4VuCGcsb9P1YtJpCP8pL6yo0CQ4ShlZnXISm0OghfOMkQeJ8OD3ociBAuaVYHD8xKtizCmJdRHMqfL2Tqjv9vZ1RpwdHr0JSibcvzBKvfrFM/GVvNaErckIteId4k11gIIE1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420507; c=relaxed/simple;
	bh=xXPiygVHodTqiKWiUOsE0uULVZtvJJ1/Xa366WcUIss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=heNGulgB8YKNB784uxoIXxF649TWi7eW4LB65R9J50ochSzb41BZ+4y4s8Po4hAyt6nC+Pz88vJ0jzdBVBBhWiSQ2IRjj6TVvNr1lBHstkLzOJ8YMIgE2upVu8DG5FWLDhocsSjjM4do/pVIhGKGSI+DdnkbWK00qL+qKpqA2dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hoCyBSCU; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a83c6b01so8691215e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733420503; x=1734025303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jKhrlzK7pKMmsPY9TXNGvHHUZJEtDgIZ1kDt6TVOg0Y=;
        b=hoCyBSCUaa7B5i+frE52rQ8fgIzcpSk8Koqxe5fuGzIXJBy1emI+qFfO+8l3dS4i1A
         HeJSYgZ/RP8ibDf4Qrjn+8tQ3IKCc92UQqk1XwMGT5KBcXt2n7fL/txkL4Y8+xDi2825
         hi5ElMVngRN9O8TgOEq+S68vSSchHUiwO/Mry9A6q4+ztnki3sl7o2e3t6g4dQnPEokG
         XrxfAkxpzxaycP5G3bD9pUqYAXJDVYW5Jsf4XzXuZt9/vYFEBwdak42HVeu7q/TRRquE
         /zJ+hxLR9ZzVmQX2J0zdB2Tk1CqwZuZ5eOMW6h1lKGWCzFrwQa8l8d3Txl/xYAhVyguU
         uB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420503; x=1734025303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jKhrlzK7pKMmsPY9TXNGvHHUZJEtDgIZ1kDt6TVOg0Y=;
        b=UHvD8lkq7hAQmysbtt0xPjnIU2cezF811/SVnNR45f9xhkRHvJp3khxxRGRRRrVadI
         1ZjBMYLxJVziTGO3bbTW7wG5U9qldUEgtc8BVAgkuBeXko9ZjU4HjGLMtoGPJj5DNnwu
         045PbT8Thrt+nrxpQ220EP4Es03JeEHc/xvDdAhN9NhQyP6LB95WmjZx9w+uYw1qSENC
         10JNFhJINuZsCFw7ay+yWVpODyajDLMymCMqKq+4WQAOj1CZ208SGdYV8E3OzkeVRHvs
         hEnVky5jZ1KCLGMdGelXoLl5/vdVXlVqLSzluaZJa1MKMD7pcfPmyrjhHrrAiANpZcnl
         p3PA==
X-Forwarded-Encrypted: i=1; AJvYcCXLSVKnnujXtbdypcJcLb09BQTisB/dR25sYLDCv8ER6aI/DyoptRWB7jQmq1eFUtuf1rXHjV3HO+mw@vger.kernel.org
X-Gm-Message-State: AOJu0YykwR+RW6N0bIeshV1irj3pyQ8GsCU2X0N3Nfgs8GFNbZ4o51BU
	XI5PohEc5qnYHGQI4JhoL/Q9l+T8/CD2FkPpHvzcAEw5H2phXRXbq59yy6F750E=
X-Gm-Gg: ASbGncsJW/ekGoGh4HcXaeObwSzb6GTnAhhH3RBkw9p5qLIPEcTaGh9itIDciVTbNGN
	VoV+n5uKwlyG2bmG8CiJhNq1QGsPCUo2YD4X1hlqXjBeI2tPijrRL7O16ASCg1dGTl43IifbbCu
	KQPNBviztKoSykSJW5DrgDK/rclwE+k9R3OJFFlacUrRgRIzutfJHwylOzlXATInGjzpz0ddnDe
	h5SYu/UwMsOKeMcFER1S2pWt8vv/ekRUUzX3VAeiyr6tJli39O4Rg9bwqFkFA/suHpwnn2Qad1M
	0z4ACw5+F6lgUXx6iU69HDQn4SAKwx4Z
X-Google-Smtp-Source: AGHT+IETTIMwCAt1THUCSfAIoi1qf9ZFSIPgjGWfgvAXtjPszoHVRLgp6w2ts+qYW08bZrcEVzFXEQ==
X-Received: by 2002:a05:600c:350a:b0:434:a7e3:db66 with SMTP id 5b1f17b1804b1-434ddecfe72mr1375775e9.26.1733420502746;
        Thu, 05 Dec 2024 09:41:42 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0d6961sm30318525e9.12.2024.12.05.09.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:41:42 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: jassisinghbrar@gmail.com,
	robh@kernel.org,
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
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 3/3] MAINTAINERS: add entry for samsung exynos mailbox driver
Date: Thu,  5 Dec 2024 17:41:37 +0000
Message-ID: <20241205174137.190545-4-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205174137.190545-1-tudor.ambarus@linaro.org>
References: <20241205174137.190545-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entry for the samsung exynos mailbox driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1e930c7a58b1..41a29d1d6e4d 100644
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
@@ -20712,6 +20713,14 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS MAILBOX DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml
+F:	drivers/mailbox/exynos-mailbox.c
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org
-- 
2.47.0.338.g60cca15819-goog


