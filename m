Return-Path: <devicetree+bounces-133108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA49F93C8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6843C188AAE4
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F1821B90F;
	Fri, 20 Dec 2024 13:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OGKP9bCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B3521A45F
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702608; cv=none; b=ap9ZL6Dp52qlAGgf9Eh8vQ3uHRCfwTnozcbQ+EiZvJJN6Ui7otoxUORimlAXOAThptwWBXESKKNBk2IWCdzonBDNnhTHJFOhRPv6+JSR5us/mq2YztDSEuaxInrOjOyT4HqhybVqb/O9pbWe8HhUlsmFX3JcahqKxJlYFzdhfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702608; c=relaxed/simple;
	bh=FADFf9WfzjcMmisKrO8yY+HCWLXOPKs8H/SA2SqLMyQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j9PtxGsnhogqew7ItxXhq1NAux9il2rKULbcsfayde501gExz+5jMxwujMCM0po3cr3wQQwaurH0UVtqjCmCfTxo878FWfbRYvEzOU2avJQuuk2IUmQ3WvM/gDUn6ImKft3XMa1zxHtlIWtdsDL60RLXu2E9uSbBdHm+FfuFaCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OGKP9bCI; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so25986f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734702605; x=1735307405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2h6pKpWNyOGCaw3yTYwiqZcJCt91K/pLDCAKswGUtgU=;
        b=OGKP9bCIfBgldblNmXgampEHN0kkPbvM7oZvzQpX83YC+QlbREAa6SnxIinB5kNtZZ
         7UGRjlHpHJyvWj9eU0CrBAcib28Sq54cZKihAG4I8d83daDpYMvVvskdnnDEHtx1tZnG
         nSZrGvY1e1455hsUSwd1sJQlm1T9Yx1dg2Oan1YhLRhGbXh87ggynItHxSl6oVxeKec/
         gb7TuwhAwL4IdiZk4lyVsvPfbVxlvNm3gvIltASm+XeF8iWP9FDYSTlPdmGqKhHwC7b2
         owneHQT0jz0ei/Va65oVNp2MYm4KncyXDoDwVqMOPXMdLi106SHasDB0uOg8J8BZb0gv
         ksQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702605; x=1735307405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2h6pKpWNyOGCaw3yTYwiqZcJCt91K/pLDCAKswGUtgU=;
        b=Rn3BrPdj3vI49JJeMMrmhpUIf9S9RG6b5I1LfwX8JarR7Mf4sS8DtDG41Mw0gs/pre
         LICYv/EHA57QUz2wdQTIq8wajimo32730DY8iljgumEfaW2Fi+kbx1gmiIEDpCsR+GMv
         5xitOgp8f2vsbNWo8ogCs9Np60N8YKqcLg+awx7g74exArkf49v+wuiYwJ27fbHDMUID
         ZEKcuYBfAEh+wNP6qYV74mxXlpvuNw4HbKzm8RgVTef4dC0aNdAtLp7YJn/geIlPkagg
         i/HJTBYzITT2gEx/4pqH3ReTKxcsdUE8fyPzBqraGN485P4lVMIDeNKxHUSeUfJ7WuHa
         x5Gg==
X-Forwarded-Encrypted: i=1; AJvYcCVnEbBShTljZ+yaPEHCvj74bxTGIq13rgJLZkv1CKGvbco/DVfYMVUD/No+c8fIFGk3zFEZOPqljtRu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9bGloSg2SyYVMHuouXAgnpgAdUMlsYlI7K4h0/tYryduv8BTd
	6lsvvU1q2F05ztJZSUMbs0xUY9jxj7LLveUh6YUAhRv4+DSIn+pZgk7uOPFYg/I=
X-Gm-Gg: ASbGncsr+/iAii1FHKc2qdmGzu2ASHo4sQpSMEAb50otZtLGIHeBjp+J3HizVIEXvfU
	kFZV3pBg/MV7/whPlsrYPotdjWUv/GoLcMykMUGRvEyWmUvEgcfxMsLALbKzXotGZCTmzoqSyxa
	2QMOUxo/BOzj3g5gNHOzHrUMqcDnzccWGT6mUqagBMwCjrYxRMWVD17s7SC/+UGCJvbLb5LmjOX
	IXBY6ewoZvgdDR9l3jw3qe5laCT6Ql7/CXKAWz7FVcnSpehAkLqDPTb9tQqTgSh39HE/I+UG2pE
	P6oEQf/tUi0RU7NAddmOxOs9u6rqIgr2J+bx
X-Google-Smtp-Source: AGHT+IEzk3FDr4mxRi9pcg64L4EH36p/AQ921KSU720SqVRUCT5e6SMqARYYJAMs7JhmbOKgemYFdQ==
X-Received: by 2002:a5d:648a:0:b0:386:36e7:f44f with SMTP id ffacd0b85a97d-38a221fb038mr2515751f8f.18.1734702604753;
        Fri, 20 Dec 2024 05:50:04 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e74sm4044313f8f.30.2024.12.20.05.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 05:50:03 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 13:50:00 +0000
Subject: [PATCH v6 5/5] MAINTAINERS: add entry for Samsung Exynos mailbox
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-acpm-v4-upstream-mbox-v6-5-a6942806e52a@linaro.org>
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
In-Reply-To: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734702598; l=1338;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=FADFf9WfzjcMmisKrO8yY+HCWLXOPKs8H/SA2SqLMyQ=;
 b=R/NhwDpi95hfet9uVWKydOIL9KS/J5QAVtPKjGibId5k5o46YPFi74GbUfbFSSKG+goXQpBoD
 DO8znrl5OuxCXJUd1qUWRkIqdil5rImUGzsy1AcnYVz0s/L8+wAW5B7
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


