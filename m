Return-Path: <devicetree+bounces-227773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB7ABE4672
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C288584AA4
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED52C36CDE0;
	Thu, 16 Oct 2025 15:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MCnEECuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EB03570C9
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630335; cv=none; b=cXZZtpshraWd0qPtciSsymVODKt3kGRqyOoLklNc9A2e/YqUbG2o+UkwdX6a2m4x5l7Bp3TNzr6BVud4PGpxiitmdjwOJCdcOOG4CqiWhgSzUYsAxdUp1A/dfKzlPMd/gtgaOLqTQ/VfJcn0lx1ZxT7TACVt7NEpAvfUzszORrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630335; c=relaxed/simple;
	bh=1qxgK+yguVHCcnwDi73qQ+fgj7/mfA7XkqtibLKJhdY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fR+b9m/0CnlMCKiDX69NiPvQHrItS9T8/n/sbYfx7Iyj0KoTncsOnwcNb1mrP/A6R76nHK9j0otyYpBv7r13vkP8zOvl9mVMwRVtHJJuuzvS/trAmKXYdv5mnpIgFDLvll2BjCCO2qNmikw6V8EQ+paxJ8NTmECD7jKzskt+Jc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MCnEECuQ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b3b27b50090so162354166b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630330; x=1761235130; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOMGO9xFi2Mtx7k0vCEAwcztQ4BN53A74nGNrcyF4+o=;
        b=MCnEECuQZ63xg91QP3qRlhQIprh2xr5VltFR8TlKpDgQWqc2VD/LEzIRK2yP8aj5et
         gbUYXbNQ13iBSv/NIPITtcwoyOtO8rRiznH82NhSqa6eccO+KtupDrWAUz/h7Kbw4VZ9
         LlAlK5yiPbqyVxb73cwHmHIOUYT7C0AxQBPdHscUDSML/kkYLNHXdJxwGbtjs28MjL2H
         aYRUHa/wdvRhwCHd6SWdvOylYk+7FwucbMQT07gd7k5xLZfyPgWcQ8hHW48PQ79wn1Sm
         Fel+gFCuBr2wNtiyltsutGysXd4XlxcuFnc9XeBEHJETx+7lKTN6goOfQSKumMB9MQPc
         K4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630330; x=1761235130;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dOMGO9xFi2Mtx7k0vCEAwcztQ4BN53A74nGNrcyF4+o=;
        b=IS+TwS+B+pUarF33szGlRauIk8zKyoKC+polCnypIM//8vCV4UC5Teznlg9pIoptcQ
         Dt0ETE2XKYeCe+2t0SreOTNu5MGvetTNyJGRXT62zmhxwjMTBlLbVK2Bg6s87FMByZVY
         vPW2+MI7FhNBZ6PjKg+LW9DA92wGVBSpWaOLyK41Uu2HRzxzzzm2NPuCTvkNjhL2j9NM
         YwsOENX+k2bb71R+QgRZ9nLa3Gd+JnoFV9J2ZKmA+lVU2GLmwFutlR8qOLpcvJWuwlOR
         M3Ue0orvRLxr1hfB1vfL8IGCWy54++Qz3oLVSDaLr7SxuCfPmapSvXdX1ZJS4VkR6GjA
         2A0A==
X-Forwarded-Encrypted: i=1; AJvYcCWVOugpct4ybcc2YZm5tkGvP3hTNSvR0qRjetmqsDSYtLCVDMoBz6j++IWSVGJseJJ+aXDaVR2Wi5e5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3k4brQVbTujxSx3YIOtrXMqo8aVHNymHgOCmWxJhbViCIlAyv
	+NYTKyphuSp60yz1blq5i0u3Tia+mr+pzjVDYbQQBY5G+AP+NcpfogmzU9F/hDc1vuQ=
X-Gm-Gg: ASbGncuIYTSKLWJnDXPRy3hy2XFMGwgRQw9ANNCLsTVmv+aPanDJK+DW+soeSTdn34M
	aHSy9Vs3H7PI4dEbyOQmYgvMB0Td0mntkbJ7ffyeTqLZP1kDP64PHSjq9EovpopfAVKxcZij8sC
	tJXspw4YR/oixu+n7DtGSlA76+RxOeJyo2IeWs5H9SaPDVWN28vBvJ42YVYDe5kRkn9bNNfWHz3
	yh3eF1pcIMFe2RMoCxsM7PaM2oMpv4Eg66W4eW9n9Y/YZYuWbjgeSodXuTgsSHqXSWV4m+3uNNc
	TVZ5uPC2T92cjuOq55wV9QRk51/vC3DilNVPX5C4xGBH+im3lODH11v9ntbI/kgUPP8xSIW/BRM
	Zl8g+3XLS3k9NFwAA73vloBGWiz38RkaBeBYdfTq4hlAKjwbRq20GqI5MicLCRabaCW/QRfQy9e
	Y4eXU+yn2MOZZVTAkVQjZiP7ffgKBs3jEcrG4ErR9upFkZ1Ll9PdpDK0ghdHA10FRkCE7lwGgYC
	mETjR+7Lg==
X-Google-Smtp-Source: AGHT+IFYdstIK88h2DzNqSnXkoNZZTxC+NFmDH+MQK4MClgJpcEBcvp9PSTTwQIBKBRNe89kOYx4bg==
X-Received: by 2002:a17:907:d0d:b0:b41:873d:e226 with SMTP id a640c23a62f3a-b6472d5bbcfmr52909966b.1.1760630326396;
        Thu, 16 Oct 2025 08:58:46 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 16 Oct 2025 16:58:39 +0100
Subject: [PATCH v3 06/10] pmdomain: samsung: convert to
 regmap_read_poll_timeout()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251016-gs101-pd-v3-6-7b30797396e7@linaro.org>
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Replace the open-coded PD status polling with
regmap_read_poll_timeout(). This change simplifies the code without
altering functionality.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 29 ++++++++--------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 383126245811cb8e4dbae3b99ced3f06d3093f35..431548ad9a7e40c0a77ac6672081b600c90ddd4e 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -13,7 +13,6 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/pm_domain.h>
-#include <linux/delay.h>
 #include <linux/of.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
@@ -35,7 +34,8 @@ struct exynos_pm_domain {
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct exynos_pm_domain *pd;
-	u32 timeout, pwr;
+	unsigned int val;
+	u32 pwr;
 	int err;
 
 	pd = container_of(domain, struct exynos_pm_domain, pd);
@@ -45,25 +45,12 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	if (err)
 		return err;
 
-	/* Wait max 1ms */
-	timeout = 10;
-	while (timeout-- > 0) {
-		unsigned int val;
-
-		err = regmap_read(pd->regmap, 0x4, &val);
-		if (err || ((val & pd->local_pwr_cfg) != pwr)) {
-			cpu_relax();
-			usleep_range(80, 100);
-			continue;
-		}
-
-		return 0;
-	}
-
-	if (!err)
-		err = -ETIMEDOUT;
-	pr_err("Power domain %s %sable failed: %d\n", domain->name,
-	       power_on ? "en" : "dis", err);
+	err = regmap_read_poll_timeout(pd->regmap, 0x4, val,
+				       (val & pd->local_pwr_cfg) == pwr,
+				       100, 1 * USEC_PER_MSEC);
+	if (err)
+		pr_err("Power domain %s %sable failed: %d (%#.2x)\n",
+		       domain->name, power_on ? "en" : "dis", err, val);
 
 	return err;
 }

-- 
2.51.0.788.g6d19910ace-goog


