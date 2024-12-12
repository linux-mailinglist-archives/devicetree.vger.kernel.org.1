Return-Path: <devicetree+bounces-130311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3359EED5D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CA3628798A
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF18225404;
	Thu, 12 Dec 2024 15:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KzKjtM/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6A9222D4F
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734018245; cv=none; b=QyzYdz4cM6SDmDTLKVXlcwFjMjo9ilIWIMVGhcZXgG//6ZghplbBD0ZkEmsK+DW01akZU2m+V1Rdd3ZORiaz6Otjq8xEzo29oCTUS/E0V9PUrxcQs0lLeLzg12S3wIh2iOiBnTggSe0WO3zDBiE7++HiNdnxDbuvvofdgzklfv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734018245; c=relaxed/simple;
	bh=8mV9HZFeUbw3Rtv6RCuQBzzPvwJEiDZDgZep1nTSp4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y/8kec5YLwjBBaHiHf0fw3LvVE8lQF9g1GlAgdnZyMpRouaOP4u9gRy/jVwN3KBUer9pe8bM3mw03gLQekO9rJW/BxY8KW5LAK2UehvzONnH4iJTwwTFuEinONLKwEbbeu8jreTvg+9GJsdPdUWZhpGY2ho1Y/NnAbVruozAWuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KzKjtM/v; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436202dd730so5555805e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734018242; x=1734623042; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7jmpxBMmEPk/hDGZYt5vcaNwz+hoDqezVHu8V6ZILUc=;
        b=KzKjtM/vAxUhC/ipD/OXH+pEBuTLz15oWR50i/f8J3Gvc3RMiO1PV+3NBMwtKyXcRm
         gKKCfSSLNH/H2+vQxB39h6EDkKNDTE3Af4j+twoqFH5hBrKaKnou8bnhyDreezltbemT
         ge6SYujkqjzZqayzu6yeW9R9Q5T7RhJhplQT4ucEMnn0fi9eARa3Qpa9aNmQEH70BEqU
         inFfZavxD5ajisWpAO4R/UniJk+e/aNLRrdAPnCati1sC4K8AJzhz+J/hAlD3t+vHK5b
         17B4Hu/R/D5oCpcX7cZ2dlg9OfZ1O38kw9Sm/eYUqelYzuIlWuIlN4kZVF/OAnfCrLt3
         dL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734018242; x=1734623042;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7jmpxBMmEPk/hDGZYt5vcaNwz+hoDqezVHu8V6ZILUc=;
        b=Bab5P/3+5+Lu1SgFpbbkJBSp2QZC7LozqVXZZO5+vOye22DF/3imBgdZiLCR3r5ISL
         PrWO/yFF8/KwrMnOeZP6XDzTCiek4RcU5yhsv2Gm59NUXFPHUc2ybdeGonn9AugL+pCC
         0UvM7H7qRpv8xoIoE8ss2nWoMNB4krU6AoMMJNP83VG4v5vhQ9Jd2IuuF+5l9BOcD50i
         oP2G0cf6IwP+09Jdl1LgnXl9jOghnI0TBWPt8eVOJBKoCgwhedNPdSCvwKHJ0jMDazIW
         ea56PDnyAtgf3S94nXdlPXstYjTHGlEhED8ymlbX58uPX929C48sgtKX0WfPoRs5Kuht
         vw7A==
X-Forwarded-Encrypted: i=1; AJvYcCX3KqhgOQ+TNovJcWdj7WlXdgIXTOWV98A+MRyxoNz+Dr0fbqe4OC77Zm0pRb/TsuUtRA+RJlOcEn5c@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf8RMLh7Ot1L6gy0CouDWKs44w78frkuE6zotLTlgl3ioi4e3H
	2ISHsT8HAi+CC30hekLzobZULTOBcY1nVkTUlht6vpSgw11vLsz2ic8QjjI8WUw=
X-Gm-Gg: ASbGncs3W8XZceA4KaMrvLlDqR4Z9bjRRC2vo+CbTxOFNoNe+E+v7py33JmY2Bgtk4g
	vga1m1bZDzGuLzgMsT1waRQozVBGdZuXdUoNCZ+dfcNpPWH+fpcQ1kVEuPpB/jkS542CfB2caP2
	vKbTefXxosxuEYvR6/gRBa5PhFQ5A+FPPOe3DPH5AJt44Qg9pQAl08/q0uBSqSCgMyQ1i9weTD9
	ySIrIn3sMxR12pSHdYgy9se8S50A+KTAvq9d0MhukzDO0M7K90lUFEHeaIl5SK/CwbF3ltHe3X/
	cIeZ5HhT175lD+NZzReXutwRqmSUfAKfnw==
X-Google-Smtp-Source: AGHT+IHcg+gCbENXrOnWdym/CCFPs4XNPvTW5TwhNoQhFdCZwrQBeC1rscXUkfAVw1V8vMafB1xEDw==
X-Received: by 2002:a05:600c:3d1b:b0:433:c76d:d57e with SMTP id 5b1f17b1804b1-436228236bfmr33478765e9.5.1734018241710;
        Thu, 12 Dec 2024 07:44:01 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625553208sm19992375e9.9.2024.12.12.07.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 07:44:01 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 15:43:47 +0000
Subject: [PATCH v4 3/3] MAINTAINERS: add entry for Samsung Exynos mailbox
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-acpm-v4-upstream-mbox-v4-3-02f8de92cfaf@linaro.org>
References: <20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org>
In-Reply-To: <20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734018238; l=1216;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=8mV9HZFeUbw3Rtv6RCuQBzzPvwJEiDZDgZep1nTSp4k=;
 b=yeuoS/sNPk65uWseJnVuPuzWQtD58gzxjfTW1Kw/0dd1iXCyllusrv6nI04K9dKfxAk86WG2E
 olThScAHX1mBffXV+8E8qd53mstn3yY00cjPYRoq6hqenWh0IjLvpyL
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos mailbox driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 17daa9ee9384..b3b472771476 100644
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
@@ -20715,6 +20716,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
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
2.47.0.338.g60cca15819-goog


