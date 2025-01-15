Return-Path: <devicetree+bounces-138812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 303CAA125CA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80C537A28C2
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDB7139566;
	Wed, 15 Jan 2025 14:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KWbS0xyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4D07080A
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 14:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736950711; cv=none; b=SRg8dooQ+n17QACjQ5rkvoHkkNUImigGCVrIXFybr+u8FQ7hExNhjBVmZTIYbjSYlbfXDQ/XHDWb7JqhBYD+DSamcJJAGy0c+8JFQ10NdACDkr4jyu/l8MkFoUluVmd+GZly/MRTzbxwnXL2uoQB3xGis32uLL/10laYpB2XQrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736950711; c=relaxed/simple;
	bh=cvoRnokHeZzQ8VRShaM52NdG4d55CGIYxo5phUWuECU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hAJbeo0qdOmXjC2hb55B8435BiZKPVtQqdjRusbPtCC1sO/qAm59IYGmRb0jimDlNzX+iYqkSsQnXrQoe6HDP4JVeSDMUgegW9utWSRPjsx/iuyl7CPyEPt7/hyYxDlKEhlo+6TWNl77Goi0lew9O1Snq+ZwFgXt6KhWbrYcsKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KWbS0xyg; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso48522795e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 06:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736950708; x=1737555508; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HO4vKlD6tNCPtkuVgbWkA6ubwQYE8g7AVmr9ium5BE=;
        b=KWbS0xygiLEDDRJKI4oyLqlerGMYzPYubAWzfYAFVCZP8jffuUmJY2447cEavylOI/
         hQkygxhSO5VnYYi1kjbMqcGfinmI4hX6lbD8jDwjESrMFneBxD9fa6yKUHEFuEfdQr6b
         erFeLqtwjx9MtySLerQ7D1DGe4VJIzozFWk97C8naVLWmWdOIkS+eThJmoRy0pHYCOrg
         TaITWTqu/4l3F6+EvnlCNiLsa7N3KGUR/1zI7S5/5g88lFJLYw3J+Gkng/sInoWXPlVH
         hxRq4Hz15y/ZwecmmAVSOkyCCBVrS6xQpZhhp5Dn72YxikyAWraeczrcfRQaXB63Wv0f
         Worw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736950708; x=1737555508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HO4vKlD6tNCPtkuVgbWkA6ubwQYE8g7AVmr9ium5BE=;
        b=OF1ygncmrVPrFGsEyegysBqxPXKujFRSMwF3nH+WfnR/3ITUu6KSjv3uBx3tZAnGHp
         zDJAhJJ4K1c0QkFEp2SMLbSJTaz2kk7qBGZCr8KIyWQnQpG280pQJUvyJmny0Ga4tUYD
         CrdWsHBQv7ZXR+zNzvZ/MpmWOZmrGpBLe/zPdmIumJUUEEWRKMqKwu5HiuIRPZU3E/UY
         kF9J7WUfzXIElCgZAterrpRAxqrWA+B7LH3CyhIV8Mo9sE8TbP/M+yv7qS7cOu///3yG
         lYfyCKrNa3BzSqmEituNxICE8qtPiGnfBbIgyjd+x7h7oHEW/zN7quVDSVOIxf72q5aQ
         esuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAdasjxaevfhE1I4040NqWrC+68a9e5FtVk5i/BBJYTAlejGRvdeo+FbfGtTnJDMrzLJkKg8YhvV+a@vger.kernel.org
X-Gm-Message-State: AOJu0YyL8+UwmtFfaZxf1Kolzi9NzwMwNkb4lqE4kpJAGGQg1jooghBG
	IaV7boPseJhy/4nwA6WAhgHmgXnqKIA56ygcUWeUsKfZhuDOVIaf/wdNlUsWoPY=
X-Gm-Gg: ASbGncspMEWmfa336KiSOzniPdrMV+Flc99Dti7DbbyEHazIYMfnoTQZGDPU/BqhELd
	g7lxGoIuWneAiVZbxHGDZG/6Dwo35dnulcypvjdugytI1rB1bVqZ2lvKfNhVdQiOr6DAN1Tk2dh
	B2mdfw2dzjLCARDo0tGjT4GrHnhSxtUGlZD61TV2/iXarW7Txsna/BpIiVO5974Ud6KZo3N8Kba
	G4RItwzumekXXWJW+MpyqUDHcFF5iNsvnPTpE+JRVdNXc7sFphODnp0to1mlR7n0vRUaah3SFiE
	BLqdshG3YijC2JzKU1HXd4NhfnKJ+tDNR6Nh
X-Google-Smtp-Source: AGHT+IEqKXJJbnn3/1vrwEtWmevXHNqUju7YBJtvyvj3cj5u+nYmT0ONw6A52GmWC58UAHN28vy5fA==
X-Received: by 2002:a05:600c:35c1:b0:436:a3a3:a70c with SMTP id 5b1f17b1804b1-436e26ef06cmr220817945e9.28.1736950707824;
        Wed, 15 Jan 2025 06:18:27 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74d8e06sm25184555e9.31.2025.01.15.06.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 06:18:27 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 15 Jan 2025 14:18:16 +0000
Subject: [PATCH v7 3/3] MAINTAINERS: add entry for Samsung Exynos mailbox
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-acpm-v4-upstream-mbox-v7-3-948e09fcb5f2@linaro.org>
References: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
In-Reply-To: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736950703; l=1338;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=cvoRnokHeZzQ8VRShaM52NdG4d55CGIYxo5phUWuECU=;
 b=0aWQkFROnDt3ngWIx381mdcLAcbZApevkQbElAx12vy+BlWgFaRDh89nZsR0/9mv2HawEKvjC
 tyS3q9kEstgBSc7lvjrckxx1b0ySb/qAlqQh8J+vp2+hHZL+VT3G2E5
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos mailbox driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a87ddad78e26..20163d8a8d90 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3020,6 +3020,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/mailbox/exynos-mailbox.c
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
 F:	drivers/soc/samsung/
@@ -20712,6 +20713,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS MAILBOX DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
+F:	drivers/mailbox/exynos-mailbox.c
+F:	include/linux/mailbox/exynos-message.h
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org

-- 
2.48.0.rc2.279.g1de40edade-goog


